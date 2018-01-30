#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/usart.h>

#include "HAL.h"
#include "comm.h"
#include "neuron.h"

//#define DBG

#define BLINK_TIME			40
#define DATA_TIME			10
#define DEND_PING_TIME		200 // 1000 ms
#define	NID_PING_TIME		200 // 1000 ms
#define SEND_PING_TIME		80
#define BUTTON_PRESS_TIME	2
#define BUTTON_HOLD_TIME    100
#define LPUART_SETUP_TIME	100
#define CHANGE_NID_TIME 	200
#define ADAPT_TIME			6

static uint32_t fingerprint[3] __attribute__((section (".fingerprint"))) __attribute__ ((__used__)) = {
	7, // device id
	1, // firmware version
	0  // unique id
};


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

typedef enum{
	CURRENT		=	0b0001,
	ADAPT 		=	0b0010
} parameter_identifiers;

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
	uint8_t		fire_flag = 0;
	uint8_t		fire_tick = 0;
	uint16_t	lpuart_setup_time = 0;
	uint8_t		change_nid_time = 0;

	int16_t fire_data = 0;
	uint16_t fire_delay_time = 0;
	uint16_t fire_delay_time_reset = FIRE_DELAY_TIME;
	fire_delay_time_reset = 40; // temporary
	uint16_t fire_delay_overflow = 0;

	message_t message;

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

	#ifdef DBG
	blink_flag = 1;
	#endif
	
	for(;;)
	{
		
		// adc_start_conversion_regular(ADC1);
		// while (!(adc_eoc(ADC1)));
		// sense_input = adc_read_regular(ADC1);
		// sense_10_bit = scale10bit(sense_input, zero, span);
		
		if (main_tick == 1){
			// 5 ms
			main_tick = 0;

			adc_start_conversion_regular(ADC1);
			while (!(adc_eoc(ADC1)));
			sense_input = adc_read_regular(ADC1);
			sense_10_bit = scale10bit(sense_input, zero, span);
			adaptation_rate = 0;
			current_sense = sense_10_bit - adaptive_zero;

			adapt_time = 0; // debug
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
			
			// check to see if nid ping hasn't been received in last NID_PING_TIME ticks
			if (nid_ping_time > 0){
				nid_ping_time -= 1;
				if (nid_ping_time == 0){
					// nid no longer connected
					nid_distance = 100; // reset nid_keep_alive
					nid_pin = 0; // clear the nid pin
					nid_pin_out = 0;
					nid_i = NO_NID_I;
				}
			}

			if (lpuart_setup_time < LPUART_SETUP_TIME){
				lpuart_setup_time += 1;
			} else if (lpuart_setup_time == LPUART_SETUP_TIME){
				lpuart_setup_time += 1;
				#ifndef DBG
				lpuart_setup();
				#endif
			}
			
			if (change_nid_time++ > CHANGE_NID_TIME){
				change_nid_time = 0;
				closer_distance = nid_distance;
				closer_ping_count = 0;
			}
			
			// send a downstream ping every SEND_PING_TIME ticks
			if (send_ping_time++ > SEND_PING_TIME){
				// send downstream ping through axon
				addWrite(DOWNSTREAM_BUFF, downstream_ping_message);
				send_ping_time = 0;
			}


			if (comms_flag != 0){
				switch (comms_flag){
					case ADAPT:
						adaptation_rate = comms_data;	
						break;
					default:
						break;
				}
				comms_flag = 0;
				comms_data = 0;
			}

			// check for clear channel command
			if (identify_time < IDENTIFY_TIME){
				if (identify_time == 0){
					if ((identify_channel == 0) || (identify_channel == nid_channel)){
						nid_channel = 0;
					}
				}
				identify_time += 1;
			}
			
			// check identify button
			button_status = gpio_get(PORT_IDENTIFY, PIN_IDENTIFY);

			// if identify button is pressed and identify_time < IDENTIFY_TIME (i.e. NID sent 'identify'' message), set new nid_channel
			if (button_status == 0){
				// debounce
				button_press_time += 1;
				if (button_press_time >= BUTTON_HOLD_TIME){
					button_armed = 2;
					blink_flag = 1;
				} else if (button_press_time >= BUTTON_PRESS_TIME){
					button_armed = 1;
				}
			} else{
				// button not pressed
				if (button_armed == 0){
					button_press_time = 0;
				} else if (button_armed == 1 && nid_i != NO_NID_I){
					nid_channel = identify_channel;
					identify_time = 1;
					button_armed = 0;
				} else if (button_armed == 2){
					if (adaptation_rate > 0){
						adaptation_rate = 0;
						adaptive_zero = 0;
					} else{
						adaptation_rate = 10;
					}
					button_armed = 0;
				}
				button_press_time = 0;
			}
			
			// send current membrane potential to NID if currently identified by NID
			if (nid_channel != 0){
				// send data every DATA_TIME ticks
				if (data_time++ > DATA_TIME){
					if (fire_data > 0){
						if (fire_data == 1){
							message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) HYPERPOLARIZATION);
							fire_data = 0;						
						} else {
							message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) fire_data);	
							fire_data = 1;						
						}
					} else {
						message.message = (((uint32_t) DATA_MESSAGE)) | ((uint16_t) neuron.potential);						
					}
					data_time = 0;
					message.length = 32;
					message.message |= (nid_channel << 21);
					addWrite(NID_BUFF,(const message_t) message);
				}
			}

			neuron.leaky_current = sense_10_bit * 9 / 10;
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

				fire_data = neuron.potential;

				if (fire_delay_time == 0) {
					fire_delay_time = fire_delay_time_reset;
					fire_delay_overflow = 0;
				} else {
					fire_delay_overflow = fire_delay_time_reset - fire_delay_time;
				}

				fire_flag = 1;
			} else if (neuron.potential < HYPERPOLARIZATION) {
				neuron.potential = HYPERPOLARIZATION;
			}

			if (fire_delay_time > 0){
				fire_delay_time -= 1;
			} else if (fire_flag == 1){
				if (fire_delay_overflow > 0)
					fire_delay_time = fire_delay_overflow; // TODO: make this an actual FIFO buffer of fire timings
				fire_flag = 0;
				addWrite(DOWNSTREAM_BUFF, pulse_message);
			}
			
			if (blink_flag != 0){
				setLED(200,0,300);
				blink_time = 1;
				blink_flag = 0;
			} else if (blink_time > 0){
				if (++blink_time == BLINK_TIME){
					setLED(200,0,200);
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

