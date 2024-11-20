import mysql.connector                        # Importo el conector de MySQL

# Establezco conexión con la base de datos
conexion = mysql.connector.connect(
  host="localhost",                           # Host de la base de datos
  user="cookiesexamen",                       # Usuario de la base de datos
  password="cookiesexamen",                   # Contraseña del usuario
  database="cookiesexamen"                    # Nombre de la base de datos a la que conectarse
)                                             # Me conecto a la base de datos

# Función para seleccionar y listar todos los registros de la tabla "cookies"
def seleccionarCookie():
    cursor = conexion.cursor(dictionary=True) # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM cookies"        # Pido todo de cookies
    cursor.execute(peticion)                  # Ejecuto la peticion
    filas = cursor.fetchall()                 # Saco las filas
    return(filas)                             # Devuelvo las 

# Función para insertar un nuevo registro en la tabla "cookies"
def insertaCookie(titulo,subtitulo,texto):
    cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = f"""
    INSERT INTO cookies
    VALUES (
      NULL,
      '{titulo}',
      '{subtitulo}',
      '{texto}'
    )"""                            # Formateo la peticion e inserto un nuevo cookie
    cursor.execute(peticion)        # Ejecuto la peticion
    conexion.commit()               # Cierro(confirmo) la peticion 
    return(True)                    # Retorno True para indicar que la operación fue exitosa

# Función para eliminar un registro de la tabla "cookies" por su identificador
def eliminaCookie():
    cursor = conexion.cursor(dictionary=True)  # Creo un cursor y me aseguro de que la info me viene en JSON
    Identificador = input("Introudce el Identificador del cookie a eliminar:")
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """
    cursor.execute(peticion)        # Formateo la peticion y elimino el cookie indicado
    filas = cursor.fetchall()       # Saco las filas
    conexion.commit()               # Cierro(confirmo) la peticion
    return(filas)                   # Devuelvo las filas

# Función para actualizar uno o más campos de un registro existente en la tabla "cookies"
def actualizaCookie():
    cursor = conexion.cursor(dictionary=True)  # Creo un cursor y me aseguro de que la info me viene en JSON
    Identificador = input("Introduce el Identificador del cookie a actualizar:")
    titulo = input("Introduce el titulo del cookie a actualizar(en blanco para no modificar):")
    subtitulo = input("Introduce el Subtitulo del cookie a actualizar(en blanco para no modificar):")
    texto = input("Introduce el texto del cookie a actualizar(en blanco para no modificar):")

    if titulo != "":
        peticion = f"""
        UPDATE cookies
        SET 
          titulo = '{titulo}'
        WHERE
        Identificador = {Identificador};
        """                                                      # Inserto un nuevo cookie o no
        cursor.execute(peticion)                                 # Ejecuto la peticion
        conexion.commit()

    if subtitulo != "":
        peticion = f"""
        UPDATE cookies
        SET 
          subtitulo = '{subtitulo}'
        WHERE
        Identificador = {Identificador};
        """                                                      # Inserto un nuevo cookie o no 
        cursor.execute(peticion)                                 # Ejecuto la peticion
        conexion.commit()

    if texto != "":
        peticion = f"""
        UPDATE cookies
        SET 
          texto = '{texto}'
        WHERE
        Identificador = {Identificador};
        """                                                       # Inserto un nuevo cookie o no
        cursor.execute(peticion)                                  # Ejecuto la peticion
        conexion.commit()
    return True                                                   # Retorno True para indicar que la operación fue exitosa