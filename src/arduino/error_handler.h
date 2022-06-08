/****************************************************************
 *  File: error_handler.h
 *  Description: Contains all functions related to error handler.
 ****************************************************************/

#ifndef __ERROR_HANDLER_H__
#define __ERROR_HANDLER_H__

#include <Arduino.h>

struct response {
	int status;
	String data;
};

//void print_response(response *res) {
//	Serial.print("\r\n-- RESPONSE --");
//	Serial.print("\r\nStatus: '"  + String((*res).status) + "'");
//	Serial.print("\r\nData: '"  + (*res).data + "'\r\n");
//}

#endif // __ERROR_HANDLER_H__
