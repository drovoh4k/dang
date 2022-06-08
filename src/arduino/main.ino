/****************************************************************
 *  File: main.ino
 *  Description: Contains main program flow, controlling esp8266,
	diplay and RFID sensor.
 ****************************************************************/

#include "error_handler.h"
#include "db_handler.h"
#include "esp8266.h"
#include "pn532.h"
#include "ssd1306.h"

// Define object to store response
struct response AT_response;
struct response PN532_response;
struct response SSD1306_response;

void setup() {
	// Start comunication with the host computer
	Serial.begin(115200);

	Serial.print(F("\r\n[+] Waiting 5 seconds\r\n\r\n"));
	delay(5000);
	Serial.print(F("\r\n[+] Starting...\r\n\r\n"));

	// Initial ESP8266 setup
	setup_ESP8266();
	//AT_setup(&AT_response,"joldi","12345677");
	AT_setup(&AT_response,"Fibracat_19653","404630b333");

	// Initial SSD1306 setup
	SSD1306_setup(&SSD1306_response);

	delay(500);

	// Initial PN532 setup
	// PN532_setup(&PN532_response);
}


void loop() {
	Serial.print(F("\r\n[+] Loop...\r\n\r\n"));

	//pinMode(12, OUTPUT);
	//pinMode(13, OUTPUT);

	//digitalWrite(12, HIGH);
	//digitalWrite(13, HIGH);

	printafo(&SSD1306_response, 21);

	delay(200);


	// Serial.print("\r\n[+] Waiting for card\r\n");
	// PN532_response.status = -1;
	// while(PN532_response.status == -1) {
	// 	getuid(&PN532_response, 200);
	// }

	// Serial.print(PN532_response.data);

	// String db_send, db_receive, id, aula;

	// id = "2E12AB2C2F";
	// //id = PN532_response.data;
	// aula = "2.2";

	// ESP8266_ping(&AT_response, "192.168.1.28");
	// delay(500);
	
	// ESP8266_tcp_start(&AT_response,"192.168.1.28","10000");

	// delay(500);

	// if (AT_response.status != -1) {
	// 	// Send ID to server
	// 	db_send = db_taul_send(id, aula);
	// 	ESP8266_tcp_data_send(&AT_response, db_send);
	// 	delay(2000);

	// 	// Receive site of server
	// 	ESP8266_tcp_data_receive(&AT_response);
	// 	delay(500);

	// 	db_receive = db_taul_receive(AT_response.data);
	// 	Serial.print(F("\r\n\r\n[+] Site: "));
	// 	Serial.print(db_receive);
	// 	Serial.print(F("\r\n\r\n"));

	// 	// Ask for ocupation
	// 	db_send = db_ocup_send(aula);
	// 	ESP8266_tcp_data_send(&AT_response, db_send);
	// 	delay(2000);
		
	// 	// Receive ocupation
	// 	ESP8266_tcp_data_receive(&AT_response);
	// 	delay(500);

	// 	db_receive = db_ocup_receive(AT_response.data);
	// 	Serial.print(F("\r\n\r\n[+] Ocupation: "));
	// 	Serial.print(db_receive);
	// 	Serial.print(F("\r\n\r\n"));

	// 	ESP8266_tcp_close(&AT_response);
	// 	delay(500);
	// }

	// Wire.endTransmission();

	printafo(&SSD1306_response, 22);
}

// For test -> defwefwot aul-entra-4.3 ewfiwefweif ocup-43 fweiofweifioew
