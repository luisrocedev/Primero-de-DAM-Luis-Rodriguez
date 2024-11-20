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
    opcion = input("Escoge una opcion:")
    
    if opcion == "1":
        cursor = conexion.cursor(dictionary = True)             # Creo un cursor y me aseguro de que la info me viene en JSON
        peticion = "SELECT * FROM cookies"                    # Pido todo de capitulos
        cursor.execute(peticion)                                # Ejecuto la peticion
        filas = cursor.fetchall()                               # Saco las filas
        print(filas)
cursor = conexion.cursor(dictionary = True) # Creo un cursor y me aseguro de que la info me viene en JSON
peticion = "SELECT * FROM cookies"          # Pido todo de cookies
cursor.execute(peticion) 
filas = cursor.fetchall()

print(filas)