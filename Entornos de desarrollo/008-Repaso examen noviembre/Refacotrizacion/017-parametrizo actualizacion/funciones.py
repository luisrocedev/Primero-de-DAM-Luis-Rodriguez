import mysql.connector                                              # Importo el conector de MySQL                  

conexion = mysql.connector.connect(
    host="localhost",           
    user="programacionrepaso",        
    password="programacionrepaso",   
    database="programacionrepaso"    
)                                                                   # Me conecto a la base de datos
def seleccionaCapitulo():
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = "SELECT * FROM capitulos"                        # Pido todo de capitulos
        cursor.execute(peticion)                                    # Ejecuto la peticion
        filas = cursor.fetchall()                                   # Saco las filas
        return filas
def insertaCapitulo(Titulo,Subtitulo,Imagen,Video,Texto):
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
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
        conexion.commit()
        return True                                              # Imprimo las filas
def eliminaCapitulo(Identificador):
        cursor = conexion.cursor(dictionary = True)                 # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = f"""
        DELETE FROM capitulos
        WHERE Identificador ={Identificador}
        """                                                        # Inserto un nuevo capítulo
        cursor.execute(peticion)                                   # Ejecuto la peticion
        filas = cursor.fetchall()                                  # Saco las filas
        conexion.commit()
        return True
def actualizaCapitulo():
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
            conexion.commit()
            return True