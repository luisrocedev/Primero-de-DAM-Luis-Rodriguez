import os

def listar_estructura(ruta, archivo_salida):
    with open(archivo_salida, 'w') as f:
        for root, dirs, files in os.walk(ruta):
            # Escribir las carpetas
            for dir in dirs:
                f.write(f"Carpeta: {os.path.join(root, dir)}\n")
            # Escribir los archivos
            for file in files:
                f.write(f"Archivo: {os.path.join(root, file)}\n")

# Llamar a la función para listar la estructura de tu proyecto
listar_estructura('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox/008-Corregimos el back blog', 'estructura_proyecto.txt')
