#ifndef HAL_H_
#define HAL_H_

#define PORT_R_LED		GPIOA
#define PORT_G_LED		GPIOA
#define PORT_B_LED		GPIOA
#define PIN_R_LED		GPIO1 //TIM2_CH2
#define PIN_G_LED		GPIO0 //TIM2_CH1
#define PIN_B_LED		GPIO2 //TIM2_CH3

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/adc.h>

#include "comm.h"

#define PORT_LED		GPIOA
#define PIN_R_LED		GPIO1
#define PIN_G_LED		GPIO0
#define PIN_B_LED		GPIO2

#define PORT_SENSE		GPIOA
#define PIN_SENSE		GPIO3 //ADC_IN3

#define PORT_IDENTIFY	GPIOA
#define PIN_IDENTIFY	GPIO10

#define PORT_AXON1_EX	GPIOA
#define PORT_AXON1_IN	GPIOA
#define PORT_AXON2_EX	GPIOA
#define PORT_AXON2_IN	GPIOA

#define PIN_AXON1_EX    GPIO5
#define PIN_AXON1_IN    GPIO4
#define PIN_AXON2_EX    GPIO7
#define PIN_AXON2_IN    GPIO6

extern volatile uint8_t main_tick;
extern volatile uint8_t tick;
static const uint16_t gamma_lookup[1024];

void systick_setup(int xms);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void LEDFullWhite(void);
void setLED(uint16_t r, uint16_t g, uint16_t b);
void setAsInput(uint32_t port, uint32_t pin);
void setAsOutput(uint32_t port, uint32_t pin);
void adc_setup(void);

#endif
