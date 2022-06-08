/****************************************************************
 *  File: esp8266.cpp
 *  Description: Contains all functions related to esp8266.
 ****************************************************************/

#include "esp8266.h"

AltSoftSerial altSerial;

void setup_ESP8266() {
	// Start the software serial for communication with the ESP8266
	altSerial.begin(9600);
}

void send_ESP8266(String data) {
	altSerial.print(data);
}

char receive_ESP8266() {
	return altSerial.read();
}

bool available_ESP8266() {
	return altSerial.available();
}

void send_AT(response *res, String data, int timeout, String expected) {
	// Clean ESP8266 buffer
	for (int i=0; i<3; i++) {
		send_ESP8266("AT\r\n");
		delay(150);
	}

	// Clean altSerial buffer
	while ( available_ESP8266() ) {
		char c = receive_ESP8266();
	};

	// Clean data in res
	(*res).data = "";
	(*res).status = 0;

	// Send AT command
	send_ESP8266(data);

	// Store response
	long int time = millis();
	while( (time + timeout) > millis() ) {
		while( available_ESP8266() ) {
			char c = receive_ESP8266();
			(*res).data += c;
		}
		// Añadir un if data contains \r\n exit while
	}

	// Clean altSerial buffer
	while ( available_ESP8266() ) {
		char c = receive_ESP8266();
	};

	// Check for ERROR or OK in data
	if ((*res).data.indexOf("ERROR") != -1) {
		(*res).status = -1;
	} else if ((*res).data.indexOf(expected) != -1) {
		(*res).status = 0;
	} else {
		(*res).status = -1;
	}
}


void AT_setup(response *AT_response, String wifi_name, String wifi_pass) {
	// Disables Echoing
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		send_AT(&(*AT_response), "ATE0\r\n", 500, "OK");

		if ((*AT_response).status == -1) {
			Serial.print(F("\r\n[-] ESP8266 not detected\r\n\r\n"));
		}
	};
	Serial.print(F("\r\n[+] ESP8266 detected\r\n\r\n"));


	// AT+CWMODE_DEF=1 (Set wifi mode to 1.Station)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		send_AT(&(*AT_response), "AT+CWMODE_DEF=1\r\n", 200, "OK");
	}

	// AT+CWAUTOCONN (Enable Auto Connect AP on power-up)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		send_AT(&(*AT_response), "AT+CWAUTOCONN=1\r\n", 200, "OK");
	}

	// AT+CIPMUX=0 (Set Single Connection)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		send_AT((&(*AT_response)), "AT+CIPMUX=0\r\n", 200, "OK");
	}

	// AT+CIPRECVMODE (Set TCP Receive Mode to 1.pasive mode)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		send_AT((&(*AT_response)), "AT+CIPRECVMODE=1\r\n", 200, "OK");
	}

	// AT+CWJAP_DEF='SSID','PASSWORD' (Join Acces Point)  
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		String at_command = "AT+CWJAP_DEF=\"" + wifi_name + "\",\"" + wifi_pass + "\"\r\n";
		send_AT(&(*AT_response), at_command, 10000, "WIFI GOT IP");

		if ((*AT_response).status == -1) {
			Serial.print(F("\r\n[-] Join Acces Point failed\r\n\r\n"));
		}
	}
	Serial.print(F("\r\n[+] Joined Acces Point\r\n\r\n"));
}

void ESP8266_ping(response *AT_response, String wifi_ip) {
	// AT+PING (Ping Packets)
	int failed_atempts = 0;
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		String at_command = "AT+PING=\"" + wifi_ip + "\"\r\n";
		send_AT(&(*AT_response), at_command, 1000, "OK");

		if ((*AT_response).status == -1) {
			Serial.print(F("\r\n[-] Ping packets failed\r\n\r\n"));

			failed_atempts += 1;
			if (failed_atempts >= 3){
				return;
			}
		}
	}
	Serial.print(F("\r\n[+] Ping Packets OK\r\n\r\n"));
}

void ESP8266_tcp_start(response *AT_response, String wifi_ip, String wifi_port) {
	// AT+CIPSTART (Establishes Connection)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		String at_command = "AT+CIPSTART=\"TCP\",\"" + wifi_ip + "\"," + wifi_port + "\r\n";
		send_AT(&(*AT_response), at_command, 2000, "OK");

		if ((*AT_response).status == -1) {
			// Check if is already connected
			if((*AT_response).data.indexOf("ALREADY CONNECTED") != -1) {
				break;
			}
			else {
				Serial.print(F("\r\n[-] Open TCP Connection failed\r\n\r\n"));
				return;
			}
		}
	}
	Serial.print(F("\r\n[+] TCP Connection Established\r\n\r\n"));
}

void ESP8266_tcp_data_send(response *AT_response, String data) {
	// AT+CIPSENDBUF (Writes Data into TCP-Send-Buffer)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		String data_len = String(data.length() - 1);
		
		String at_command = "AT+CIPSENDBUF=" + data_len + "\r\n";
		send_AT(&(*AT_response), at_command, 1000, "");
		send_ESP8266(data);

		if ((*AT_response).status == -1){
			Serial.print("\r\n[-] TCP Data Send failed\r\n\r\n");
			return;
		}
	}
	Serial.print(F("\r\n[+] TCP Data Send\r\n\r\n"));
}

void ESP8266_tcp_data_receive(response *AT_response) {
	// AT+CIPRECVDATA=200 (Get TCP Data in Passive Receive Mode)
	(*AT_response).status = -1;
	while ((*AT_response).status == -1) {
		String at_command = "AT+CIPRECVDATA=200\r\n";
		send_AT((&(*AT_response)), at_command, 2000, "OK");

		if ((*AT_response).status == -1){
			Serial.print("\r\n[-] TCP Data Receive failed\r\n\r\n");
			return;
		}
	}

	Serial.print(F("\r\n[+] TCP Data Received\r\n\r\n"));

	String data = (*AT_response).data;
	
	// Filter data length
	String filter = "CIPRECVDATA";
	int data_len_i1 = data.indexOf(filter) + filter.length() + 1;
	int data_len_i2 = data.indexOf(":", data_len_i1);
	String data_len_s = data.substring(data_len_i1,data_len_i2);
	int data_len = data_len_s.toInt();

	// Filter data
	int data_i1 = data_len_i2 + 1;
	int data_i2 = data_i1 + data_len - 1;
	(*AT_response).data = data.substring(data_i1, data_i2);
}

void ESP8266_tcp_close(response *AT_response) {
	ESP8266_tcp_data_send(&(*AT_response), "close\r\n");

	// AT+CIPCLOSE (Closes Connection)
	// (*AT_response).status = -1;
	// while ((*AT_response).status == -1) {
	// 	String at_command = "AT+CIPCLOSE\r\n";
	//	send_AT(&(*AT_response), at_command, 200, "OK");

	//	if ((*AT_response).status == -1) {
	//		Serial.print(F("\r\n[-] Close TCP Connection failed\r\n\r\n"));
	//		return;
	//	}
	//}
	Serial.print(F("\r\n[+] TCP Connection Closed\r\n\r\n"));
}
