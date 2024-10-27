#pip install mysql-conector-python
import mysql.connector

servidor = "localhost"                                        # Creo una variable en la que apunto a mi servidor
usuario = "miempresa"                                      # Creo una variable para definir el usuario
contrasena = "miempresa"                                 # Creo una variable para definir la contrasena del usuario
base_de_datos = "miempresa"                            # Creo una variable para definir la base de datos a la que me conecto          

conexion = mysql.connector.connect (
    host=servidor,
    database=base_de_datos,
    user=usuario,
    password=contrasena                                  # Establezco una conexion con la base de datos con los datos seleccionados
)

peticion = "SELECT * FROM clientes;"

cursor = conexion.cursor()                              # Preparo una peticion

cursor.execute(peticion)                                  # Una peticion en Python requiere un cursor
filas = cursor.fetchall()                                    # En una variable llamada filas, almaceno los resultados que me da la base de datos

for fila in filas:                                               # Como filas representa a todas las filas, yo quiero coger una a una                      
    #print(fila)                                                # Imprimo cada una de las filas
    print("##################")                  # Seprador cosmetico
    print("El identificador es:", fila[0])                # Cada uno de los datos es un elemento de coleccion de la tupla 
    print("El nombre es:", fila[1])
    print("El apellido es:", fila[2])
    print("El email es:", fila[3])
    print("La localidad es es:", fila[4])
    print("La fecha de nacimiento es:", fila[5])
    
