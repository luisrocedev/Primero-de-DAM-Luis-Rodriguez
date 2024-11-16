import mysql.connector
class ConectorBD:
    def __init__(self):
        self.conexion = mysql.connector.connect(
                    host='localhost',  
                    database='programacion', 
                    user='programacion',  
                    password='programacion'
        )
        self.cursor = self.conexion.cursor (dictionary = True)
    def dameTablas(self):
        peticion = "SHOW TABLES"
        self.cursor.execute(peticion)
        registros = self.cursor.fetchall()
        return registros

    def leerTabla(self):
        peticion = "SELECT * FROM clientes"
        self.cursor.execute(peticion)
        registros = self.cursor.fetchall()
        return registros

conexion1 = ConectorBD()
print(conexion1.dameTablas())