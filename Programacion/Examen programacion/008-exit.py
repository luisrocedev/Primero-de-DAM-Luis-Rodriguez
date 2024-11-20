import mysql.connector # Importo el conector de MySQL                  

conexion = mysql.connector.connect(
  host="localhost",
  user="cookiesexamen",
  password="cookiesexamen",
  database="cookiesexamen" 
) # Me conecto a la base de datos
while True:
  print("Escoge una opcion:")
  print("1.-Listar los registros: ")
  print("2.-Insertar un registro: ")
  print("3.-Eliminar un registro: ")
  print("4.-Actualizar un registro: ")
  print("5.-Cerrar el programa:")
  opcion = input("Escoge una opcion: ")

  if opcion == "1":
    cursor = conexion.cursor(dictionary=True) # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM cookies" # Pido todo de datos
    cursor.execute(peticion) # Ejecuto la peticion
    filas = cursor.fetchall()  # Saco las filas
    print(filas) # Imprimo las filas
  elif opcion == "2":
    cursor = conexion.cursor(dictionary=True)
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
    )"""
    cursor.execute(peticion)
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()
  elif opcion == "3":
    cursor = conexion.cursor(dictionary=True)
    Identificador = input("Introudce el Identificador del cookie a eliminar:")
    peticion = f"""
    DELETE FROM cookies
    WHERE Identificador = {Identificador}
    """
    cursor.execute(peticion)
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()
  elif opcion == "4":
    cursor = conexion.cursor(dictionary=True)
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
        """                                                      # Inserto un nuevo capítulo
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
        """                                                      # Inserto un nuevo capítulo
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
        """                                                      # Inserto un nuevo capítulo
        cursor.execute(peticion)                                 # Ejecuto la peticion
        filas = cursor.fetchall()                                # Saco las filas
        conexion.commit()
  elif opcion == "5":
    conexion.close()
    break
print("El programa ha finalizado exitosamente")

