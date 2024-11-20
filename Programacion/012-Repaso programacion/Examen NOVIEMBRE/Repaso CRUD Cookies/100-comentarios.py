import mysql.connector                            # Importo el conector de MySQL                  

# Establezco conexión con la base de datos
conexion = mysql.connector.connect(
    host="localhost",                             # Host de la base de datos
    user="programacionrepaso",                    # Usuario de la base de datos
    password="programacionrepaso",                # Contraseña del usuario
    database="programacionrepaso"                 # Nombre de la base de datos a la que conectarse
)

# Función para seleccionar y listar todos los registros de la tabla "cookies"
def seleccionaCookie():
    cursor = conexion.cursor(dictionary=True)     # Cursor con formato de salida como diccionario
    peticion = "SELECT * FROM cookies"            # Consulta para seleccionar todos los registros de "cookies"
    cursor.execute(peticion)                      # Ejecuto la consulta
    filas = cursor.fetchall()                     # Obtengo todas las filas resultantes de la consulta
    return filas                                  # Devuelvo las filas obtenidas

# Función para insertar un nuevo registro en la tabla "cookies"
def insertaCookie():
    cursor = conexion.cursor(dictionary=True)     # Cursor con formato de salida como diccionario
    # Solicito al usuario los datos del nuevo registro
    Titulo = input("Introduce el Titulo del cookie:")
    Subtitulo = input("Introduce el Subtitulo del cookie:")
    Imagen = input("Introduce el Imagen del cookie:")
    Video = input("Introduce el Video del cookie:")
    Texto = input("Introduce el Texto del cookie:")
    # Consulta para insertar el nuevo registro en la tabla
    peticion = f"""
    INSERT INTO cookies
    VALUES (
        NULL,  # El identificador es autoincremental, por lo que se pasa como NULL
        '{Titulo}',
        '{Subtitulo}',
        '{Imagen}',
        '{Video}',
        '{Texto}'
    )
    """
    cursor.execute(peticion)                      # Ejecuto la consulta
    conexion.commit()                             # Confirmo los cambios en la base de datos
    return True                                   # Retorno True para indicar que la operación fue exitosa

# Función para eliminar un registro de la tabla "cookies" por su identificador
def eliminaCookie():
    cursor = conexion.cursor(dictionary=True)     # Cursor con formato de salida como diccionario
    # Solicito al usuario el identificador del registro a eliminar
    Identificador = input("Introduce el Identificador del cookie a eliminar:")
    # Consulta para eliminar el registro correspondiente
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """
    cursor.execute(peticion)                      # Ejecuto la consulta
    conexion.commit()                             # Confirmo los cambios en la base de datos
    return True                                   # Retorno True para indicar que la operación fue exitosa

# Función para actualizar uno o más campos de un registro existente en la tabla "cookies"
def actualizaCookie():
    cursor = conexion.cursor(dictionary=True)  # Cursor con formato de salida como diccionario
    # Solicito al usuario el identificador del registro a actualizar
    Identificador = input("Introduce el Identificador del cookie a actualizar:")
    # Solicito al usuario los nuevos valores para los campos (vacío si no desea modificarlos)
    Titulo = input("Introduce el nuevo Titulo del cookie (en blanco para no modificar):")
    Subtitulo = input("Introduce el nuevo Subtitulo del cookie (en blanco para no modificar):")
    Imagen = input("Introduce el nuevo Imagen del cookie (en blanco para no modificar):")
    Video = input("Introduce el nuevo Video del cookie (en blanco para no modificar):")
    Texto = input("Introduce el nuevo Texto del cookie (en blanco para no modificar):")
    
    # Actualizo cada campo si el usuario introdujo un nuevo valor
    if Titulo != "":
        peticion = f"""
        UPDATE cookies
        SET 
          Titulo = '{Titulo}'
        WHERE
          Identificador = {Identificador};
        """
        cursor.execute(peticion)                    # Ejecuto la consulta
        conexion.commit()                           # Confirmo los cambios en la base de datos

    if Subtitulo != "":
        peticion = f"""
        UPDATE cookies
        SET 
          Subtitulo = '{Subtitulo}'
        WHERE
          Identificador = {Identificador};
        """
        cursor.execute(peticion)
        conexion.commit()

    if Imagen != "":
        peticion = f"""
        UPDATE cookies
        SET 
          Imagen = '{Imagen}'
        WHERE
          Identificador = {Identificador};
        """
        cursor.execute(peticion)
        conexion.commit()

    if Video != "":
        peticion = f"""
        UPDATE cookies
        SET 
          Video = '{Video}'
        WHERE
          Identificador = {Identificador};
        """
        cursor.execute(peticion)
        conexion.commit()

    if Texto != "":
        peticion = f"""
        UPDATE cookies
        SET 
          Texto = '{Texto}'
        WHERE
          Identificador = {Identificador};
        """
        cursor.execute(peticion)
        conexion.commit()
    return True                                   # Retorno True para indicar que la operación fue exitosa

# Bucle principal del programa
while True:
    # Menú para que el usuario seleccione la operación deseada
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el programa")
    opcion = input("Escoge una opcion:")

    # Ejecuto la función correspondiente según la opción seleccionada
    if opcion == "1":
        print(seleccionaCookie())                 # Listar los registros
    elif opcion == "2":
        print(insertaCookie())                    # Insertar un nuevo registro
    elif opcion == "3":
        print(eliminaCookie())                    # Eliminar un registro
    elif opcion == "4":
        print(actualizaCookie())                  # Actualizar un registro
    elif opcion == "5":
        conexion.close()                          # Cierro la conexión a la base de datos
        break                                     # Salgo del bucle

print("El programa ha finalizado exitosamente")   # Mensaje de cierre