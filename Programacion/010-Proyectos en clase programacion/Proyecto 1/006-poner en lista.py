import mysql.connector

conexion = mysql.connector.connect(
            host='localhost',  
            database='programacion', 
            user='programacion',  
            password='programacion'  
        )

cursor = conexion.cursor(dictionary = True)

peticion = "SHOW TABLES"
cursor.execute(peticion)

registros = cursor.fetchall()

print(registros)