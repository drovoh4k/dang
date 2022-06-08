from socket import *
from string import *
from base_dades import *

################### INSTRUCCIONS
## carregausuaris() - crea taula amb usuaris
## eliminataula()   - elimina taula
## exit()           - tanca de manera segura

## ckid(id)         - comprova existència de ID
## eaul(id,aula)    - estudiant entra aula
## saul(id)         - estudiant surt d'aula

## dper(id,permis)  - dona permís a estudiant
## tper(id)         - treu permís a estudiant
## ckpe(id,permis)  - comprova permís d'estudiant per màquina

## ocup(aula)       - retorna ocupació d'aula
## cnom(id)         - retorna nom de ID
## dspl()           - retorna taula completa

###################

def resposta(entrada):

    entrada=entrada.split("\n")[0]
    lentrada=entrada.split("-")
    print(lentrada)
    
    if(lentrada[0]=="carregausuaris"): ######### Administració
        initdb()
        addUsers()
        return("usuaris afegits al sistema\n")
    elif(lentrada[0]=="eliminataula"):
        drop_taula()
        return("directori eliminat del sistema\n")
    elif(lentrada[0]=="exit"):
        return "exit"

    
    elif(lentrada[0]=="ckid"): ######### Control aforament 
        idn=lentrada[1]
        if(checkID(idn)):
            return "true\n"
        else:
            return "false\n"
    elif(lentrada[0]=="eaul"):
        idn=lentrada[1]
        aula=lentrada[2]
        entraAula(idn,aula)
        return(f"{idn} entra aula {aula}\n")
    elif(lentrada[0]=="saul"):
        idn=lentrada[1]
        surtAula(idn)
        return(f"{idn} surt aula\n")
    

    elif(lentrada[0]=="dper"): ######### Control accès
        idn=lentrada[1]
        permis=lentrada[2]
        donaPermis(idn,permis)
        return(f"{idn} te permis {permis}\n")
    elif(lentrada[0]=="tper"):
        idn=lentrada[1]
        treuPermis(idn)
        return(f"{idn} no te permisos\n")
    elif(lentrada[0]=="ckpe"): 
        idn=lentrada[1]
        permis=lentrada[2]
        if(checkPermis(idn,permis)):
            return "true\n"
        else:
            return "false\n"

    
    elif(lentrada[0]=="ocup"): ######### Display
        aula=lentrada[1]
        ocupacio=ocupacioAula(aula)
        return(f"ocupacio de aula {aula} es de {ocupacio}\n")


    elif(lentrada[0]=="cnom"): ######### Altres
        idn=lentrada[1]
        nom=getNom(idn)
        return(f"el nom de {idn} es {nom}\n")

    elif(lentrada[0]=="dspl"):
        return str(printtable())+"\n"
        
    else:
        return "problem\n"

def closecon():
    global a
    a=False
    closedb()
    connectionSocket.close()
    print ('Connection finished. Exiting.')

serverPort = 10025
serverSocket = socket(AF_INET,SOCK_STREAM)
serverSocket.bind(('localhost',serverPort))
serverSocket.listen(1)
a=True
while a==True:
    print ('The server is waiting for a connection.')
    connectionSocket, addr = serverSocket.accept()
    print ('Connection established.')
    initdb()
    while a==True:
        sentence = connectionSocket.recv(1024)
        if not sentence:
            closecon()
        else:
            instr=sentence.decode()
            print ('Received:',instr)
            resp=resposta(instr)
            if(resp=="exit"):
                closecon()     
            else:
                connectionSocket.send(resp.encode())
                print ('Returning to client:', resp,"\n")
                ci()
