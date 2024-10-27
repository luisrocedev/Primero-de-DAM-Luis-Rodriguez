import mysql.connector

print("###############################")
print("FACTURA")
print("###############################")

servidor = "localhost"                          # Creo una variable en la que apunto a mi servidor
usuario = "miempresa"                           # Creo una variable para definir el usuario
contrasena = "miempresa"                        # Creo una variable para definir la contraseña del usuario
base_de_datos = "miempresa"                     # Creo una variable para definiar la base de datos a la que me conecto

conexion = mysql.connector.connect(
    host=servidor,      
    database=base_de_datos,  
    user=usuario,  
    password=contrasena  
)                                               # Establezco una conexión con la base de datos con los datos seleccionados

pedido = 3

peticion = '''

    SELECT 

    clientes.nombre,
    clientes.apellidos,
    clientes.email,
    clientes.poblacion

    FROM pedidos
    LEFT JOIN clientes
    ON pedidos.clientes_apellidos = clientes.identificador

    WHERE pedidos.identificador = 3
'''                  # Preparo una petición

cursor = conexion.cursor()                      # Una petición en Python requiere un cursor

cursor.execute(peticion)                        # En el cursor, ejecuto la petición que he dejado preparada arriba
filas = cursor.fetchall()                       # En una variable llamadas filas, almaceno los resultados que me da la base de datos

print("")
print("###############################")
print("DATOS DEL CLIENTE:")
print("###############################")
for fila in filas:              #Como filas representa a todas las filas, yo quiero coger una a una
    for dato in fila:
        print (dato)
        
peticion = '''

    SELECT 

    pedidos.identificador,
    pedidos.fecha

    FROM pedidos
    LEFT JOIN clientes
    ON pedidos.clientes_apellidos = clientes.identificador

    WHERE pedidos.identificador = 3
'''                  # Preparo una petición

cursor = conexion.cursor()                      # Una petición en Python requiere un cursor

cursor.execute(peticion)                        # En el cursor, ejecuto la petición que he dejado preparada arriba
filas = cursor.fetchall()                       # En una variable llamadas filas, almaceno los resultados que me da la base de datos

print("")
print("###############################")
print("DATOS DEL PEDIDO:")
print("###############################")
for fila in filas:              #Como filas representa a todas las filas, yo quiero coger una a una
    for dato in fila:
        print (dato)
    















