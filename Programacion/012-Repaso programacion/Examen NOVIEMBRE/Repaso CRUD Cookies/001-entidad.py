import mysql.connector                  

conexion = mysql.connector.connect(
    host="localhost",           
    user="programacionrepaso",        
    password="programacionrepaso",   
    database="programacionrepaso"    
)

cursor = conexion.cursor(dictionary = True)

peticion = "SELECT * FROM cookies"

cursor.execute(peticion)

filas = cursor.fetchall()

print(filas)