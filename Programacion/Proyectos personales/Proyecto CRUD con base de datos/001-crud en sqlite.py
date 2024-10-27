'''
    Programa agenda con SQLite
    (c) 2024 por Luis Rodriguez
    v0.1 Empezando en clase
'''
import sqlite3

conexion = sqlite3.connect('empresa.db')
conexion.row_factory = sqlite3.Row
cursor = conexion.cursor()

# Creación de la tabla si no existe
cursor.execute('''
    CREATE TABLE IF NOT EXISTS clientes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        apellidos TEXT NOT NULL,
        email TEXT NOT NULL,
        direccion TEXT NOT NULL
    )
''')
conexion.commit()

print("############################")
print("      Programa agenda       ")
print("    por Luis Rodriguez      ")
print("############################")

while True:

    print("Menú principal")
    print("1.- Crear un nuevo registro")
    print("2.- Listado de registros")
    print("3.- Actualización de registros")
    print("4.- Eliminación de registros")
    print("5.- Salir")

    opcion = input("Selecciona una opcion: ")

    if opcion == "1":
        print("Vamos a insertar un registro")
        nombre = input("Introduce un nuevo nombre: ")
        apellidos = input("Introduce nuevos apellidos: ")
        email = input("Introduce un nuevo email: ")
        direccion = input("Introduce una nueva direccion: ")

        cursor.execute('''
            INSERT INTO clientes (nombre, apellidos, email, direccion)
            VALUES (?, ?, ?, ?)
        ''', (nombre, apellidos, email, direccion))
        conexion.commit()
        print("Registro insertado correctamente.")
        input("Pulsa una tecla para continuar...")

    elif opcion == "2":
        print("Vamos a listar los registros")
        cursor.execute('''
            SELECT * FROM clientes;
        ''')
        filas = cursor.fetchall()

        for fila in filas:
            print("-----------------------------")
            print(f"Nombre: {fila['nombre']}")
            print(f"Apellidos: {fila['apellidos']}")
            print(f"Email: {fila['email']}")
            print(f"Direccion: {fila['direccion']}")
        
        print("Listado correctamente devuelto.")
        input("Pulsa una tecla para continuar...")

    elif opcion == "3":
        print("Vamos a actualizar un registro")
        identificador = input("Indica el registro que quieres actualizar (id): ")
        
        nombre = input("Introduce un nuevo nombre: ")
        apellidos = input("Introduce nuevos apellidos: ")
        email = input("Introduce un nuevo email: ")
        direccion = input("Introduce una nueva direccion: ")

        cursor.execute('''
            UPDATE clientes
            SET nombre = ?, apellidos = ?, email = ?, direccion = ?
            WHERE id = ?
        ''', (nombre, apellidos, email, direccion, identificador))
                
        conexion.commit()
        print("Actualización correcta.")
        input("Pulsa una tecla para continuar...")

    elif opcion == "4":
        print("Vamos a eliminar un registro")
        identificador = input("Indica el registro que quieres eliminar (id): ")

        cursor.execute('''
            DELETE FROM clientes
            WHERE id = ?
        ''', (identificador,))
        
        conexion.commit()
        print("Eliminación correcta.")
        input("Pulsa una tecla para continuar...")

    elif opcion == "5":
        print("Saliendo del programa...")
        break

conexion.close()





