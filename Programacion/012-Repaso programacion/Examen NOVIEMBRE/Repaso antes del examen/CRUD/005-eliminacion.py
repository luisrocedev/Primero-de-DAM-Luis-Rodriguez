import mysql.connector # Importo el conector de MySQL                  

conexion = mysql.connector.connect(
  host="localhost",
  user="repasop",
  password="repasop",
  database="repasop" 
) # Me conecto a la base de datos
while True:
  print("Escoge una opcion:")
  print("1.-Listar los registros:")
  print("2.-Insertar un registro:")
  print("3.-Eliminar un registro:")
  opcion = input("Escoge una opcion")

  if opcion == "1":
    cursor = conexion.cursor(dictionary=True) # Creo un cursor y me aseguro de que la info me viene en JSON
    peticion = "SELECT * FROM datos" # Pido todo de datos
    cursor.execute(peticion) # Ejecuto la peticion
    filas = cursor.fetchall()  # Saco las filas
    print(filas) # Imprimo las filas
  elif opcion == "2":
    cursor = conexion.cursor(dictionary=True)
    Titulo = input("Introduce el Titulo del dato:")
    Subitulo = input("Introduce el Subitulo del dato:")
    Texto = input("Introduce el Texto del dato:")
    peticion = f"""
    INSERT INTO datos
    VALUES (
      NULL,
      '{Titulo}',
      '{Subitulo}',
      '{Texto}'
    )"""
    cursor.execute(peticion)
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()
  elif opcion == "3":
    cursor = conexion.cursor(dictionary=True)
    Identificador = input("Introudce el Identificador del dato a eliminar:")
    peticion = f"""
    DELETE FROM datos
    WHERE Identificador = {Identificador}
    """
    cursor.execute(peticion)
    filas = cursor.fetchall()                               # Saco las filas
    print(filas)                                            # Imprimo las filas
    conexion.commit()


