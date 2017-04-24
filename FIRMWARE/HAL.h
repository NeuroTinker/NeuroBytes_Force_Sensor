#ifndef HAL_H_
#define HAL_H_

#define PORT_LED_FAST	GPIOA
#define PIN_LED_FAST	GPIO5

#define PORT_LED_SLOW	GPIOB
#define PIN_LED_SLOW	GPIO3

#define PORT_LED_FIRE	GPIOA
#define PIN_LED_FIRE	GPIO2

#define PORT_LIGHT_OUT	GPIOB
#define PIN_LIGHT_OUT	GPIO1

#define PORT_DARK_OUT	GPIOA
#define PIN_DARK_OUT	GPIO4

#define PORT_IDENTIFY	GPIOB
#define PIN_IDENTIFY	GPIO7

#define PORT_ADAPT		GPIOA
#define PIN_ADAPT		GPIO3

#define PORT_SENSE		GPIOA
#define PIN_SENSE		GPIO1

extern volatile uint8_t tick;

void systick_setup(int freq);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void adc_setup(void);
void setLED(uint8_t led, uint16_t val);
uint8_t readButton(uint8_t button);
int scale10bit(int val, int zero, int span);


#endif
