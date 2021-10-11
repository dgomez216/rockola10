import conexiondb

cnn = conexiondb.conexiondb()
    
def consulta_canciones():
    cur = cnn.cursor()
    cur.execute("SELECT * FROM cancion")
    datos = cur.fetchall()
    cur.close()    
    for fila in datos:
        print(fila)

def buscar_nombre(NombreCancion):
    cur = cnn.cursor()
    sql= "SELECT * FROM cancion WHERE NombreCancion = {}".format(NombreCancion)
    cur.execute(sql)
    datos = cur.fetchone()
    cur.close()    
    return datos
    
def inserta_cancion(NombreCancion, NombreArtista, GeneroCancion, AnioPubli, EnlaceCancion):
    cur = cnn.cursor()
    sql='''INSERT INTO cancion (NombreCancion, NombreArtista, GeneroCancion, AnioPubli, EnlaceCancion) 
    VALUES('{}', '{}', '{}', '{}', '{}')'''.format(NombreCancion, NombreArtista, GeneroCancion, AnioPubli, EnlaceCancion)
    cur.execute(sql)
    n=cur.rowcount
    cnn.commit()    
    cur.close()
    return n    

def elimina_cancion(Id):
    cur = cnn.cursor()
    sql='''DELETE FROM cancion WHERE IdCancion = {}'''.format(Id)
    cur.execute(sql)
    n=cur.rowcount
    cnn.commit()    
    cur.close()
    return n   

def modifica_cancion(IdCancion, NombreCancion, NombreArtista, GeneroCancion, AnioPubli, EnlaceCancion):
    cur = cnn.cursor()
    sql='''UPDATE cancion SET NombreCancion='{}', NombreArtista='{}', GeneroCancion='{}',
    AnioPubli='{}', EnlaceCancion='{}' WHERE IdCancion={}'''.format(NombreCancion, NombreArtista, GeneroCancion, AnioPubli, EnlaceCancion,IdCancion)
    cur.execute(sql)
    n=cur.rowcount
    cnn.commit()    
    cur.close()
    return n   

def buscar_id(IdCanc):
    cur = cnn.cursor()
    sql= "SELECT * FROM cancion WHERE IdCancion = {}".format(IdCanc)
    cur.execute(sql)
    datos = cur.fetchone()
    cur.close()    
    return datos
