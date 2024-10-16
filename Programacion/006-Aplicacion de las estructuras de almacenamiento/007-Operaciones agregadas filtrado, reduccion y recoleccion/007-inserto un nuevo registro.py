import sqlite3

conexion = sqlite3.connect('empresa.db')

cursor = conexion.cursor()

cursor.execute('''
    CREATE TABLE
    IF NOT EXISTS clientes
    (
        Identificador INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre  TEXT,
        apellidos TEXT,
        email TEXT,
        direccion TEXT
    )
''')

cursor.execute('''
    INSERT INTO clientes
    VALUES (
        NULL,
        'Luis',
        'Rodriguez',
        'luisilustraciones@gmail.com',
        'Horno de los apostoles'
    )
''')

conexion.commit()

conexion.close()
