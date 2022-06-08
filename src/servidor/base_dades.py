import sqlite3


con=sqlite3.connect("directori.db")
cur=con.cursor()
    
def initdb():
    try:
        checkID(0)
    except:
        create_taula()
        insert("null","null","null","null")
        
        
def closedb():
    con.commit()
    con.close()      

def ci():
    con.commit()
    
###########################################################
# idn , nom , aula , permis 
# idn: str del número d'identificació
# nom: str nom de l'estudiant
# aula: str aula on està l'estudiant
# permis: str màquina per la que té permís

def create_taula():
    cur.execute("CREATE TABLE directori (idn TEXT NOT NULL, nom TEXT NOT NULL , aula TEXT NOT NULL , permis TEXT NOT NULL );")

def drop_taula():
    cur.execute("DROP TABLE directori")

def insert(idn,nom,aula,permis):
    cur.execute(f"INSERT INTO directori(idn,nom,aula,permis) VALUES ('{idn}','{nom}','{aula}','{permis}');")

def delete(registre,data):
        cur.execute("DELETE FROM directori WHERE "+registre+f" = '{data}' ;")
        
def printtable():
    delete("idn","null")
    rows=cur.execute("SELECT * FROM directori;").fetchall()
    return(rows)

def prprint():
    listrows=cur.execute("SELECT * FROM directori;").fetchall()
    for i in listrows:
        if(i!=('null', 'null', 'null', 'null')):
           print(i)
        
    
def fetch(registre,data):
    row=cur.execute("SELECT "+registre+" FROM directori WHERE "+registre+f" == '{data}' ;").fetchall()
    return row

def update(reg_fetch,name_fetch,reg_up,name_up):
    cur.execute("UPDATE directori SET "+reg_up+f" = '{name_up}' WHERE "+reg_fetch+f" = '{name_fetch}';").fetchall()


############################################################
##                   Funcions Públiques 
############################################################
def checkID(num):
    if (fetch('idn',num)):
        return True
    else:
        return False

def donaPermis(num,permis):
    update("idn",num,"permis",permis)
def treuPermis(num):
    update("idn",num,"permis","none")

def checkPermis(num,permis):
    if (cur.execute(f"SELECT nom FROM directori WHERE idn = '{num}' AND permis = '{permis}';").fetchall()):
        return True
    else:
        return False

def getNom(idn):
    nom=cur.execute(f"SELECT nom FROM directori WHERE idn = '{idn}';").fetchall()
    
    return nom[0][0]
 
def entraAula(num,aula):
    update("idn",num,"aula",aula)
def surtAula(num):
    update("idn",num,"aula","none")

def ocupacioAula(aula):
    list=cur.execute(f"SELECT aula FROM directori WHERE aula = '{aula}';").fetchall()
    c=0
    for i in list:
        c+=1
    return c

##########################################################

def addUsers():
    insert("1000","Jordi Amenós","none","none")
    insert("2000","Francesc Nosas","none","fresadora")
    insert("3000","Astrid Dominguez","none","impressora")

def test():
    entraAula("1000","38")
    entraAula("2000","38")
    entraAula("3000","38")
    print(ocupacioAula("38"))


    
    
#if __name__=="__main__":

    # prprint()
    # close()
    #init()
#     #addUsers()
    
#     prprint()
#     #test()
    
#     #prprint()
#drop_taula()
    
#     closedb()
    
