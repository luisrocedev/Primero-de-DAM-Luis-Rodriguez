import mysql.connector                      # Importo el conector de MySQL                 

conexion = mysql.connector.connect(
    host="localhost",           
    user="cookiesexamen",        
    password="cookiesexamen",   
    database="cookiesexamen"    
)                                           # Me conecto a la base de datos
while True:
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    opcion = input("Escoge una opcion:")
    
    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = "SELECT * FROM cookies"                    # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        print(filas)

    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        titulo = input("Introduce el titulo del cookie:")
        subtitulo = input("Introduce el subtitulo del cookie:")
        texto = input("Introduce el texto del cookie:")
        peticion = f"""
        INSERT INTO cookies
        VALUES (
            NULL,
            '{titulo}',
            '{subtitulo}',
            '{texto}'
        )"""                   # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        print(filas)                                            # Imprimo las filas
        conexion.commit()

    elif opcion == "3":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        Identificador = input("Introduce el identificador del cookie a eliminar:") 
        peticion = f"""
        DELETE FROM cookies
        WHERE Identificador ={Identificador}
        """                                                       # Inserto un nuevo capítulo
        cursor.execute(peticion)                                   # Ejecuto la peticion
        filas = cursor.fetchall()                                  # Saco las filas
        print(filas)                                               # Imprimo las filas
        conexion.commit()

    elif opcion == "4":
        cursor = conexion.cursor(dictionary = True)                                                     # Creo un cursor y me aseguro de que la info me viene en JSON
        Identificador = input("Introduce el identificador del cookie a actualizar:")
        titulo = input("Introduce el nuevo titulo del cookie:")         # Le pido un nuevo Titulo al usuario
        subtitulo = input("Introduce el nuevo subtitulo del cookie:")   # Le pido un nuevo Subtitulo al usuario
        texto = input("Introduce el nuevo texto del cookie:")           # Le pido un nuevo Texto al usuario
        peticion = f"""
        UPDATE cookies
        SET 
            titulo = '{titulo}',
            subtitulo  = '{subtitulo}',
            texto = '{texto}'
        WHERE
        Identificador = {Identificador}
        """                                                      # Inserto un nuevo capítulo
        cursor.execute(peticion)                                 # Ejecuto la peticion
        filas = cursor.fetchall()                                # Saco las filas
        print(filas)                                             # Imprimo las filas
        conexion.commit()
