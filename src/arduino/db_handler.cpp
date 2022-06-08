/****************************************************************
 *  File: db_handler.cpp
 *  Description: Contains all functions related to error handler.
 ****************************************************************/

#include "db_handler.h"

String db_taul_send(String id, String aula) {
	return "taul-" + id + "-" + aula + "\r\n";
}

// For test -> "defwefwot aul-entra-4.3 ewfiwefweifew"
String db_taul_receive(String raw) {
	if (raw.indexOf("surt") == -1) {
		int index = raw.indexOf("entra");
		return raw.substring(index + 6, index + 6 + 3);
	} else {
		return "";
	}
}

String db_ocup_send(String aula) {
	return "ocup-" + aula + "\r\n";
}

// For test -> "fosfewoifoweif ocup-43 fweiofweifioew"
String db_ocup_receive(String raw) {
	int index = raw.indexOf("ocup");
	return raw.substring(index + 5, index + 5 + 2);
}
