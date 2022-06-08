/****************************************************************
 *  File: ssd1306.h
 *  Description: Contains all functions related to ssd1306.
 ****************************************************************/

#ifndef __SSD1306_H__
#define __SSD1306_H__

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "error_handler.h"

void SSD1306_setup(response *SSD1306_response);

void printafo(response *SSD1306_response, int n);

#endif // __SSD1306_H__
