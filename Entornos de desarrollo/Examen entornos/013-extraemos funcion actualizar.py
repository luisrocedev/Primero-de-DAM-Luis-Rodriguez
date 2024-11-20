import mysql.connector                        # Importo el conector de MySQL                  
# Establezco conexión con la base de datos
conexion = mysql.connector.connect(
  host="localhost",                           # Host de la base de datos
  user="cookiesexamen",                       # Usuario de la base de datos
  password="cookiesexamen",                   # Contraseña del usuario
  database="cookiesexamen"                    # Nombre de la base de datos a la que conectarse
)                                             # Me conecto a la base de datos
def seleccionar():
    cursor = conexion.cursor(dictionary=True) # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM cookies"        # Pido todo de cookies
    cursor.execute(peticion)                  # Ejecuto la peticion
    filas = cursor.fetchall()                 # Saco las filas
    return(filas)                             # Devuelvo las filas
def insertaCookie():
    cursor = conexion.cursor(dictionary=True)               # Creo un cursor y me aseguro de que la info me viene en JSON
    titulo = input("Introduce el titulo del cookie:")       # Le pido un nuevo titulo al usuario 
    subtitulo = input("Introduce el subtitulo del cookie:") # Le pido un nuevo subtitulo al usuario
    texto = input("Introduce el texto del cookie:")         # Le pido un nuevo texto al usuario
    peticion = f"""
    INSERT INTO cookies
    VALUES (
      NULL,
      '{titulo}',
      '{subtitulo}',
      '{texto}'
    )"""                            # Formateo la peticion e inserto un nuevo cookie
    cursor.execute(peticion)        # Ejecuto la peticion
    filas = cursor.fetchall()       # Saco las filas
    conexion.commit()               # Cierro(confirmo) la peticion 
    return(filas)                   # Devuelvo las filas 
def eliminaCookie():
    cursor = conexion.cursor(dictionary=True)  # Creo un cursor y me aseguro de que la info me viene en JSON
    Identificador = input("Introudce el Identificador del cookie a eliminar:")
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """
    cursor.execute(peticion)      # Formateo la peticion y elimino el cookie indicado
    filas = cursor.fetchall()     # Saco las filas
    conexion.commit()             # Cierro(confirmo) la peticion
    return(filas)                 # Devuelvo las filas
def actualizaCookie():
    cursor = conexion.cursor(dictionary=True) # Formateo la peticion y elimino el cookie indicado
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
        filas = cursor.fetchall()                                # Saco las filas
        print(filas)                                             # Imprimo las filas
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
        filas = cursor.fetchall()                                # Saco las filas
        print(filas)                                             # Imprimo las filas
        conexion.commit()
    if texto != "":
        peticion = f"""
        UPDATE cookies
        SET 
          texto = '{texto}'
        WHERE
        Identificador = {Identificador};
        """                                                      # Inserto un nuevo cookie o no
        cursor.execute(peticion)                                 # Ejecuto la peticion
        filas = cursor.fetchall()                                # Saco las filas
        conexion.commit()
        return True
   

# Bucle principal del programa
while True:
                                              # Menú para que el usuario seleccione la operación deseada
  print("Escoge una opcion:")
  print("1.-Listar los registros: ")
  print("2.-Insertar un registro: ")
  print("3.-Eliminar un registro: ")
  print("4.-Actualizar un registro: ")
  print("5.-Cerrar el programa:")
  opcion = input("Escoge una opcion: ")

  if opcion == "1":
     print(seleccionar())
     
  elif opcion == "2":
     print(insertaCookie())
     
  elif opcion == "3":
     print(eliminaCookie())

  elif opcion == "4":
     print(actualizaCookie())

  elif opcion == "5":
    conexion.close() 
    break                                                       # cierro programa
print("El programa ha finalizado exitosamente")

