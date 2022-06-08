/****************************************************************
 *  File: pn532.cpp
 *  Description: Contains all functions related to pn532.
 ****************************************************************/

#include "pn532.h"

#define PN532_IRQ   (2)
#define PN532_RESET (3)

Adafruit_PN532 nfc(PN532_IRQ, PN532_RESET);

void PN532_setup(response *PN532_response) {

	(*PN532_response).status = -1;
	while ((*PN532_response).status == -1) {
		nfc.begin();

		uint32_t versiondata = nfc.getFirmwareVersion();
		if (!versiondata) {
			Serial.print(F("\r\n[-] PN532 not detected\r\n\r\n"));
		}
		else {
			(*PN532_response).status = 0;
		}
	}
	Serial.print(F("\r\n[+] PN532 detected\r\n\r\n"));

	nfc.setPassiveActivationRetries(0xFF);
	nfc.SAMConfig();
}


void getuid(response *PN532_response, int timeout){
	volatile boolean success;
	volatile uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };
	volatile uint8_t uidLength;
	String content;

	success = nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &uid[0], &uidLength,timeout);

	if (success) {
		for(int i=0; i<uidLength; i++){
			content.concat(String(uid[i],HEX));
		}

		(*PN532_response).status = 0;
		(*PN532_response).data = content;

		Serial.print("\r\n[+] Card detected\r\n");
	}
	else {
		(*PN532_response).status = -1;
		(*PN532_response).data = "";
	}
}
