/****************************************************************
 *  File: esp8266.h
 *  Description: Contains all functions related to esp8266.
 ****************************************************************/

#ifndef __ESP8266_H__
#define __ESP8266_H__

#include <Arduino.h>
#include <AltSoftSerial.h>
#include "error_handler.h"

void setup_ESP8266();

void send_ESP8266(String data);

char receive_ESP8266();

bool available_ESP8266();

void send_AT(response *res, String data, int timeout, String expected);

void AT_setup(response *AT_response, String wifi_name, String wifi_pass);

void AT_TCP(response *AT_response, String wifi_ip, String wifi_port, String data);

void ESP8266_ping(response *AT_response, String wifi_ip);

void ESP8266_tcp_start(response *AT_response, String wifi_ip, String wifi_port);

void ESP8266_tcp_data_send(response *AT_response, String data);

void ESP8266_tcp_data_receive(response *AT_response);

void ESP8266_tcp_close(response *AT_response);

#endif // __ESP8266_H__
