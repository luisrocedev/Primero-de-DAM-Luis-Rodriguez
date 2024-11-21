import mysql.connector                                      # Importo el conector de MySQL

conexion = mysql.connector.connect( 
    host="localhost",                                       # Host de la base de datos        
    user="cookiesexamen",                                   # Usuario de la base de datos       
    password="cookiesexamen",                               # Contraseña del usuario 
    database="cookiesexamen"                                # Nombre de la base de datos a la que conectarse
)                                                           # Me conecto a la base de 

# Función para seleccionar y listar todos los registros de la tabla "cookies"
def seleccionaCookies():
    cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM cookies"                      # Pido todo de cookies
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    return filas                                            # Devuelvo las filas

def seleccionaCookie(Identificador):
    try:
        Identificador = int(Identificador)
        cursor = conexion.cursor(dictionary = True)             
        peticion = f"SELECT * FROM cookies WHERE Identificador = {Identificador}"                    
        cursor.execute(peticion)                                
        filas = cursor.fetchall()                               
        if filas != []:
            return filas                                            
        else:
            return False
    except:
        return False

def insertaCookie(titulo,subtitulo,texto):
    cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    INSERT INTO cookies
    VALUES (
        NULL,
        '{titulo}',
        '{subtitulo}',
        '{texto}'
    )"""                                                    
    cursor.execute(peticion)                                # Formateo la peticion y elimino el cookie indicado
    filas = cursor.fetchall()                               # Saco las filas
    conexion.commit()   # Cierro(confirmo) la peticion
    return True # Devuelvo las filas

def eliminaCookie(Identificador):
    cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """     
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    conexion.commit()
    return True
# Función para actualizar uno o más campos de un registro existente en la tabla "cookies"
def actualizaCampo(cadena,valor,Identificador):
    cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
        UPDATE cookies
        SET 
            {cadena} = '{valor}'
            
        WHERE
        Identificador = {Identificador};
        """                                                 # Inserto un nuevo cookie o no
    cursor.execute(peticion)                                # Ejecuto la peticion
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()
    
def actualizaCookie(Identificador,titulo,subtitulo,texto):
                    
    if titulo != "":
        actualizaCampo("titulo",titulo,Identificador)
    if subtitulo != "":
        actualizaCampo("subtitulo",subtitulo,Identificador)
    if texto != "":
        actualizaCampo("texto",texto,Identificador)
    return True                                             # Retorno True para indicar que la operación fue exitosa