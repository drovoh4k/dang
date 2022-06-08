/****************************************************************
 *  File: pn532.h
 *  Description: Contains all functions related to pn532.
 ****************************************************************/

#ifndef __PN532_H__
#define __PN532_H__

#include <Arduino.h>
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_PN532.h>
#include "error_handler.h"

void PN532_setup(response *PN532_response);

void getuid(response *PN532_response, int timeout);

#endif // __PN532_H__
