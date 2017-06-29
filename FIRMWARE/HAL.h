#ifndef HAL_H_
#define HAL_H_

<<<<<<< HEAD
#define PORT_R_LED		GPIOA
#define PORT_G_LED		GPIOA
#define PORT_B_LED		GPIOA
#define PIN_R_LED		GPIO1 //TIM2_CH2
#define PIN_G_LED		GPIO0 //TIM2_CH1
#define PIN_B_LED		GPIO2 //TIM2_CH3
=======
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/adc.h>

#include "comm.h"

#define PORT_LED		GPIOA
#define PIN_R_LED		GPIO5
#define PIN_G_LED		GPIO2
#define PIN_B_LED		GPIO3

#define PORT_LED_FAST	GPIOA
#define PIN_LED_FAST	GPIO5
>>>>>>> a443fac2d081c7f31d32bba888a6cb8e538ad706

#define PORT_SENSE		GPIOA
#define PIN_SENSE		GPIO3 //ADC_IN3

#define PORT_IDENTIFY	GPIOA
#define PIN_IDENTIFY	GPIO10

#define PORT_AXON1_EX	GPIOA
#define PORT_AXON1_IN	GPIOA
#define PORT_AXON2_EX	GPIOA
#define PORT_AXON2_IN	GPIOA

<<<<<<< HEAD
#define PIN_AXON1_EX	GPIO5
#define PIN_AXON1_IN	GPIO4
#define PIN_AXON2_EX	GPIO7
#define PIN_AXON2_IN	GPIO6
=======
#define PORT_SENSE		GPIOA
#define PIN_SENSE	GPIO1

#define PORT_AXON_IN    GPIOA
#define PORT_AXON_OUT   GPIOA
#define PORT_DEND1_EX   GPIOB
#define PORT_DEND1_IN   GPIOB
#define PORT_DEND2_EX   GPIOA
#define PORT_DEND2_IN   GPIOA
#define PORT_DEND3_EX   GPIOA
#define PORT_DEND3_IN   GPIOC
#define PORT_DEND4_EX   GPIOB
#define PORT_DEND4_IN   GPIOB
#define PORT_DEND5_EX   GPIOB
#define PORT_DEND5_IN   GPIOB

#define PIN_AXON_IN     GPIO9
#define PIN_AXON_OUT    GPIO10
#define PIN_DEND1_EX    GPIO1
#define PIN_DEND1_IN    GPIO0
#define PIN_DEND2_EX    GPIO7
#define PIN_DEND2_IN    GPIO6
#define PIN_DEND3_EX    GPIO1
#define PIN_DEND3_IN    GPIO14
#define PIN_DEND4_EX    GPIO7
#define PIN_DEND4_IN    GPIO6
#define PIN_DEND5_EX    GPIO4
#define PIN_DEND5_IN    GPIO3

>>>>>>> a443fac2d081c7f31d32bba888a6cb8e538ad706

extern volatile uint8_t main_tick;
extern volatile uint8_t tick;
static const uint16_t gamma_lookup[1024];


// uint8_t     read_time = 0;


void systick_setup(int xms);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void LEDFullWhite(void);
void setLED(uint16_t r, uint16_t g, uint16_t b);
void setAsInput(uint32_t port, uint32_t pin);
void setAsOutput(uint32_t port, uint32_t pin);
void adc_setup(void);
<<<<<<< HEAD
void LEDFullWhite(void);
void setLED(uint16_t r, uint16_t g, uint16_t b);
=======

>>>>>>> a443fac2d081c7f31d32bba888a6cb8e538ad706

//void tim2_isr(void);

//extern volatile unsigned char ms_tick;

#endif
