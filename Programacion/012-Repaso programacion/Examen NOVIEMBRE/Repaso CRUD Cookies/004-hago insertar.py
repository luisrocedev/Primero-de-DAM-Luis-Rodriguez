import mysql.connector                                  # Importo el conector de MySQL                  

conexion = mysql.connector.connect(
    host="localhost",           
    user="programacionrepaso",        
    password="programacionrepaso",   
    database="programacionrepaso"    
)                                                       # Me conecto a la base de datos
while True:
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    opcion = input("Escoge una opcion:")

    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = "SELECT * FROM cookies"                    # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        print(filas)                                            # Imprimo las filas
    elif opcion == "2":
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        Titulo = input("Introduce el Titulo del cookie:")
        Subtitulo = input("Introduce el Subtitulo del cookie:")
        Imagen = input("Introduce el Imagen del cookie:")
        Video = input("Introduce el Video del cookie:")
        Texto = input("Introduce el Texto del cookie:")
        peticion = f"""
        INSERT INTO cookies
        VALUES (
            NULL,
            '{Titulo}',
            '{Subtitulo}',
            '{Imagen}',
            '{Video}',
            '{Texto}'
        )"""                   # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        print(filas)                                            # Imprimo las filas
        conexion.commit()