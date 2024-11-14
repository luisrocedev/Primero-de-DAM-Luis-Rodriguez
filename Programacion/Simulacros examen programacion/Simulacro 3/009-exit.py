import mysql.connector                                              # Importo el conector de MySQL                  

conexion = mysql.connector.connect(
    host="localhost",           
    user="programacionrepaso",        
    password="programacionrepaso",   
    database="programacionrepaso"    
)                                                                   # Me conecto a la base de datos
while True:
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el un registro")
    opcion = input("Escoge una opcion:")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = "SELECT * FROM capitulos"                        # Pido todo de capitulos
        cursor.execute(peticion)                                    # Ejecuto la peticion
        filas = cursor.fetchall()                                   # Saco las filas
        print(filas)                                                # Imprimo las filas
    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        Titulo = input("Introduce el Titulo del capítulo:")         # Le pido un nuevo Titulo al usuario
        Subtitulo = input("Introduce el Subtitulo del capítulo:")   # Le pido un nuevo Subtitulo al usuario
        Imagen = input("Introduce el Imagen del capítulo:")         # Le pido un nuevo Imagen al usuario
        Video = input("Introduce el Video del capítulo:")           # Le pido un nuevo Video al usuario
        Texto = input("Introduce el Texto del capítulo:")           # Le pido un nuevo Texto al usuario
        peticion = f"""
        INSERT INTO capitulos
        VALUES (
            NULL,
            '{Titulo}',
            '{Subtitulo}',
            '{Imagen}',
            '{Video}',
            '{Texto}'
        )"""                                                       # Inserto un nuevo capítulo
        cursor.execute(peticion)                                   # Ejecuto la peticion
        filas = cursor.fetchall()                                  # Saco las filas
        print(filas)                                               # Imprimo las filas
        conexion.commit()
    elif opcion == "3":
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        Identificador = input("Introduce el Identificador del capítulo a eliminar:") 
        peticion = f"""
        DELETE FROM capitulos
        WHERE Identificador ={Identificador}
        """                                                        # Inserto un nuevo capítulo
        cursor.execute(peticion)                                   # Ejecuto la peticion
        filas = cursor.fetchall()                                  # Saco las filas
        print(filas)                                               # Imprimo las filas
        conexion.commit()
    elif opcion == "4":
        cursor = conexion.cursor(dictionary = True)                                                     # Creo un cursor y me aseguro de que la info me viene en JSON
        Identificador = input("Introduce el Identificador del capítulo a actualizar:")
        Titulo = input("Introduce el nuevo Titulo del capítulo (en blanco para no modificar):")         # Le pido un nuevo Titulo al usuario
        Subtitulo = input("Introduce el nuevo Subtitulo del capítulo (en blanco para no modificar):")   # Le pido un nuevo Subtitulo al usuario
        Imagen = input("Introduce el nuevo Imagen del capítulo (en blanco para no modificar):")         # Le pido un nuevo Imagen al usuario
        Video = input("Introduce el nuevo Video del capítulo (en blanco para no modificar):")           # Le pido un nuevo Video al usuario
        Texto = input("Introduce el nuevo Texto del capítulo (en blanco para no modificar):")           # Le pido un nuevo Texto al usuario
        if Titulo != "":
            peticion = f"""
            UPDATE capitulos
            SET 
              Titulo = '{Titulo}'
            WHERE
            Identificador = {Identificador};
            """                                                      # Inserto un nuevo capítulo
            cursor.execute(peticion)                                 # Ejecuto la peticion
            filas = cursor.fetchall()                                # Saco las filas
            print(filas)                                             # Imprimo las filas
            conexion.commit()
            

        if Subtitulo != "":
            peticion = f"""
            UPDATE capitulos
            SET 
              Subtitulo = '{Subtitulo}'
            WHERE
            Identificador = {Identificador};
            """                                                      # Inserto un nuevo capítulo
            cursor.execute(peticion)                                 # Ejecuto la peticion
            filas = cursor.fetchall()                                # Saco las filas
            print(filas)                                             # Imprimo las filas
            conexion.commit()


        if Imagen != "":
            peticion = f"""
            UPDATE capitulos
            SET 
              Imagen = '{Imagen}'
            WHERE
            Identificador = {Identificador};
            """                                                      # Inserto un nuevo capítulo
            cursor.execute(peticion)                                 # Ejecuto la peticion
            filas = cursor.fetchall()                                # Saco las filas
            print(filas)                                             # Imprimo las filas
            conexion.commit()


        if Video != "":
            peticion = f"""
            UPDATE capitulos
            SET 
              Video = '{Video}'
            WHERE
            Identificador = {Identificador};
            """                                                      # Inserto un nuevo capítulo
            cursor.execute(peticion)                                 # Ejecuto la peticion
            filas = cursor.fetchall()                                # Saco las filas
            print(filas)                                             # Imprimo las filas
            conexion.commit()


        if Texto != "":
            peticion = f"""
            UPDATE capitulos
            SET 
              Texto = '{Texto}'
            WHERE
            Identificador = {Identificador};
            """                                                      # Inserto un nuevo capítulo
            cursor.execute(peticion)                                 # Ejecuto la peticion
            filas = cursor.fetchall()                                # Saco las filas
            print(filas)                                             # Imprimo las filas
            conexion.commit()
    elif opcion == "5":
            conexion.close()
            break  
print("El programa ha finalizado exitosamente")