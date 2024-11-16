import mysql.connector                                  # Importo el conector de MySQL

conexion = mysql.connector.connect(
    host="localhost",           
    user="programacionrepaso",        
    password="programacionrepaso",   
    database="programacionrepaso"    
)                                                       # Me conecto a la base de datos

def seleccionaCookies():
    cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM cookies"                    # Pido todo de capitulos
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    return filas                                            # Imprimo las filas

def seleccionaCookie(Identificador):
    try:
        Identificador = int(Identificador)
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = f"SELECT * FROM cookies WHERE Identificador = {Identificador}"                    # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        if filas != []:
            return filas                                            # Imprimo las filas
        else:
            return False
    except:
        return False

def insertaCookie(Titulo,Subtitulo,Texto):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    INSERT INTO cookies
    VALUES (
        NULL,
        '{Titulo}',
        '{Subtitulo}',
        '{Texto}'
    )"""                                                    # Inserto un nuevo capítulo
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    conexion.commit()
    return True

def eliminaCookie(Identificador):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """     
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    conexion.commit()
    return True

def actualizaCampo(cadena,valor,Identificador):
    cursor = conexion.cursor(dictionary = True) 
    peticion = f"""
        UPDATE cookies
        SET 
            {cadena} = '{valor}'
            
        WHERE
        Identificador = {Identificador};
        """                                                    # Inserto un nuevo capítulo
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()
    
def actualizaCookie(Identificador,Titulo,Subtitulo,Texto):
                    # Creo un cursor y me aseguro de que la info me viene en JSON
    if Titulo != "":
        actualizaCampo("Titulo",Titulo,Identificador)
    if Subtitulo != "":
        actualizaCampo("Subtitulo",Subtitulo,Identificador)
    if Texto != "":
        actualizaCampo("Texto",Texto,Identificador)
    return True