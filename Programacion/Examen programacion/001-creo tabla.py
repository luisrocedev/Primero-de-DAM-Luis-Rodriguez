import mysql.connector                  

conexion = mysql.connector.connect(
    host="localhost",           
    user="cookiesexamen",        
    password="cookiesexamen",   
    database="cookiesexamen"    
)

cursor = conexion.cursor(dictionary = True)

peticion = "SELECT * FROM cookies"

cursor.execute(peticion)

filas = cursor.fetchall()

print(filas)