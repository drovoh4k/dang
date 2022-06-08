/****************************************************************
 *  File: db_handler.h
 *  Description: Contains all functions related to error handler.
 ****************************************************************/

#ifndef __DB_HANDLER_H__
#define __DB_HANDLER_H__

#include <Arduino.h>


// taul (Toggle aula)
// -- PROTOCOL --
// 	Client: 
//		taul-$id$-$aula$
//	Servidor:
//		taul-entra-$lloc$ (entra)
//		taul-surt (surt)
String db_taul_send(String id, String aula);
String db_taul_receive(String raw);


// dspl (Retorna ocupació l'aula)
// -- PROTOCOL --
//	Client:
//		ocup-$aula$
//	Servidor:
//		ocup-$numero$
String db_ocup_send(String aula);
String db_ocup_receive(String raw);


#endif // __DB_HANDLER_H__
