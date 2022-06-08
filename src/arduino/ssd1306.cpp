/****************************************************************
 *  File: ssd1306.cpp
 *  Description: Contains all functions related to ssd1306.
 ****************************************************************/

#include "ssd1306.h"

Adafruit_SSD1306 display = Adafruit_SSD1306(128, 64, &Wire, -1);

void SSD1306_setup(response *SSD1306_response) {
	(*SSD1306_response).status = -1;
	while ((*SSD1306_response).status == -1) {
		bool succes = display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
		if (!succes) {
			Serial.print(F("\r\n[-] SSD1306 not detected\r\n\r\n"));
		}
		else {
			Serial.print(F("\r\n[+] SSD1306 detected\r\n\r\n"));
			(*SSD1306_response).status = 0;
		}
	}

	// display.begin(SSD1306_SWITCHCAPVCC, 0x3C); // Address 0x3C for 128x32
	// display.clearDisplay();

	// (*SSD1306_response).status = 0;
}

void printafo(response *SSD1306_response, int n) {
	display.clearDisplay(); // Clean display
	display.setCursor(0, 0); // Reset cursor position

	// Print title
	display.setTextSize(2);
	display.setTextColor(SSD1306_WHITE);
	display.print("Aforament:");
	display.print("\n");

	// Print aforament
	display.setCursor(30, 20); // Center cursor position
	if(n<10) display.setCursor(40, 20); // Center cursor position for integrers n<10
	display.setTextSize(5);
	String num = String(n);
	display.print(num);
	display.display(); // Display changes

	(*SSD1306_response).status = 0;
}
