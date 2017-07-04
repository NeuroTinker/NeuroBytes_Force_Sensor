#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>


#include "comm.h"
#include "HAL.h"
#include "neuron.h"

#define BLINK_TIME			100
#define DATA_TIME			10
#define DEND_PING_TIME		200 // 1000 ms
#define	NID_PING_TIME		200 // 1000 ms
#define SEND_PING_TIME		80
#define BUTTON_PRESS_TIME	2
#define ADAPT_TIME			6


int	adaptation_rate = 0; 
	int	adaptive_zero = 0;
	int	sense_input;
	int	sense_10_bit;
	int	current_sense;
	int	zero = 0; // 165 circle
	int	span = 10000; // 3000 circle
	int	fire_time = 0;
	int	fire_led = 0;
	int	zero_freq = 150;
	int adapt_time = 0;

int scale10bit(int val, int zero, int span) 
{
	/*	Scales input based on zero and span calibration points. Returns unsigned
		10-bit integer as output (i.e. 0-1023). */

	if (zero < span) 
	{
		if ((val > zero) && (val < span))
		{
			return ((val - zero) * 1023) / (span - zero);
		}
		else if (val <= zero)
		{
			return 0;
		}
		else 
		{
			return 1023;
		}
	}
	else 
	{
		return val;
	}
}

int main(void)
{
	uint32_t	blink_time = 0;
	uint32_t	wait_time = 0;
	uint16_t	data_time = 0;
	uint16_t	message_data = 0;
	uint16_t	send_ping_time = 0;
	uint16_t	button_press_time = 0;
	uint8_t		button_armed = 0;
	uint16_t	button_status = 0;
	uint32_t	nid_channel = 0b000; //debug
	uint32_t	message = 0;


	neuron_t 	neuron;
	uint8_t		i;
	neuronInit(&neuron);
	commInit();

	clock_setup();
	systick_setup(100);
	gpio_setup();
	tim_setup();
	gpio_setup();
	adc_setup();
	setLED(200,0,0);

	//	MMIO32(SYSCFG_BASE + 0x0c) = 0b1111 << 12;

	
	for(;;)
	{
		/*
		adc_start_conversion_regular(ADC1);
		while (!(adc_eoc(ADC1)));
		sense_input = adc_read_regular(ADC1);
		sense_10_bit = scale10bit(sense_input, zero, span);
		
	setLED(sense_10_bit,sense_10_bit,sense_10_bit);
	*/
		if (main_tick == 1){
			// 5 ms
			main_tick = 0;

			adc_start_conversion_regular(ADC1);
			while (!(adc_eoc(ADC1)));
			sense_input = adc_read_regular(ADC1);
			sense_10_bit = scale10bit(sense_input, zero, span);
			adaptation_rate = 0;
			current_sense = sense_10_bit - adaptive_zero;

			if (++adapt_time == ADAPT_TIME){
				adapt_time = 0;
				if (adaptation_rate != 0){
					if (current_sense > 0){
						adaptive_zero += current_sense * adaptation_rate / 100;
					} else if (current_sense < 0){
						adaptive_zero -= -1 * current_sense * adaptation_rate / 100;
					}
				}
			}

			if (nid_ping_time == 0){
				nid_keep_alive = NID_PING_KEEP_ALIVE;
				nid_pin = 0;
				nid_pin_out = 0;
			}else {
				nid_ping_time -= 1;
			}
			
			if (send_ping_time++ > SEND_PING_TIME){
				addWrite(DOWNSTREAM_BUFF, DEND_PING);
				//downstream_write_buffer = DEND_PING;
				//downstream_write_buffer_ready = 1;
				send_ping_time = 0;
			}

			if (identify_time > 0){
				identify_time -= 1;
			}

			button_status = gpio_get(PORT_IDENTIFY, PIN_IDENTIFY);
			button_status >>= 3;
			button_status &= 0b1;

			if (button_status == 0){ // !=
				if (button_press_time++ >= BUTTON_PRESS_TIME){
					button_armed = 1;
					button_press_time = 0;
				}
			} else if (button_armed == 1){
				if (identify_time > 0){
					nid_channel = identify_channel;
				} else{
					if (adaptation_rate > 0){
						adaptation_rate = 0;
						adaptive_zero = 0;
					} else{
						adaptation_rate = 10;
					}
				}
				button_armed = 0;
			} else{
				button_press_time = 0;
			}

			adaptation_rate = 0;
			
			if (nid_channel != 0){
				if (data_time++ > DATA_TIME){
					data_time = 0;
					message = DATA_MESSAGE | (uint16_t) current_sense | (nid_channel << 19) | (nid_keep_alive << 22);
					addWrite(NID_BUFF,message);
				}
			}
			neuron.leaky_current = sense_10_bit * 11 / 10;
			membraneDecayStep(&neuron);
			neuron.potential = 0;
			neuron.potential += neuron.fire_potential;
			neuron.fire_potential += neuron.leaky_current;

			// if membrane potential is greater than threshold, fire
			if (neuron.potential > MEMBRANE_THRESHOLD){
				// fire for determined pulse width
				neuron.state = FIRE;
				neuron.fire_potential = HYPERPOLARIZATION;
				neuron.fire_time = PULSE_LENGTH;
				// send downstream pulse
				addWrite(DOWNSTREAM_BUFF, PULSE_MESSAGE);
			}
			
			if (blink_flag != 0){
				setLED(200,0,300);
				blink_time = 1;
				blink_flag = 0;
			} else if (blink_time > 0){
				if (++blink_time == BLINK_TIME){
					setLED(200,0,0);
					blink_time = 0;
				}
			}else if (neuron.state == FIRE){
				neuron.fire_time -= 1;
				if (neuron.fire_time == 0){
					neuron.state = INTEGRATE;
				}
				LEDFullWhite();
			} else if (neuron.state == INTEGRATE){
				if (neuron.potential > 10000){
					setLED(200,0,0);
				} else if (neuron.potential > 0){
					setLED(neuron.potential / 50, 200 - (neuron.potential / 50), 0);
				} else if (neuron.potential < -10000){
					setLED(0,0, 200);
				} else if (neuron.potential < 0){
					setLED(0, 200 + (neuron.potential / 50), -1 * neuron.potential / 50);
				} else{
					setLED(0,200,0);
				}
			}
		}
	}
}

