import sqlite3

#############  Conectar a la base de datos  #############

conexion = sqlite3.connect('registros.db')
conexion.text_factory = lambda x: str(x, 'utf-8', 'replace')
cursor = conexion.cursor()                      # Ejecutar consulta SQL

etiquetas = []  # Listas para almacenar etiquetas y datos
datos = []

#############   Consulta SQL de los SSOO    #############

cursor.execute(''' 
    SELECT
    COUNT(navegador) as numero
    FROM logs
    WHERE navegador LIKE '%Windows%';
''') #Consulta para contar la cantidad de registros que contienen 'Windows' en la columna 'navegador'

filas = cursor.fetchall() # Obtener los resultados de la consulta

etiquetas.append("Windows") # Agregamos la etiqueta "Windows" a la lista de etiquetas
datos.append(filas[0][0]) # Agregamo el número de registros obtenidos a la lista de datos

cursor.execute('''
    SELECT
    COUNT(navegador) as numero
    FROM logs
    WHERE navegador LIKE '%Mac OS%';
''') #Consulta para contar la cantidad de registros que contienen 'Mac OS' en la columna 'navegador'

filas = cursor.fetchall() # Obtener los resultados de la consulta


etiquetas.append("Mac") ##
datos.append(filas[0][0]) ##

cursor.execute('''
    SELECT
    COUNT(navegador) as numero
    FROM logs
    WHERE navegador LIKE '%Linux%';
''') #Consulta para contar la cantidad de registros que contienen 'Linux' en la columna 'navegador'

filas = cursor.fetchall()



etiquetas.append("Linux")
datos.append(filas[0][0])


 #############  Imprimir los resultados obtenidos en la lista de datos  #############

print(datos)


