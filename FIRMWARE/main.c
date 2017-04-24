#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>

#include "HAL.h"

int temp, zero, span, output;

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

	zero = 165;
	span = 3000;
	int prev = 10;

	clock_setup();
	gpio_setup();
	tim_setup();
	adc_setup();
	systick_setup(100000);
	
	for(;;)
	{
		adc_start_conversion_regular(ADC1);
		while (!(adc_eoc(ADC1)));
		temp = adc_read_regular(ADC1);

		if (readButton(0) > 0)
		{
			zero = temp;
		}

		if (readButton(1) > 0)
		{
			span = temp;
		}

		output = scale10bit(temp, zero, span);
		
		setLED(0, 1023 - output);
		setLED(1, output);
		setLED(2, 100);

		prev = temp;

	}
}
