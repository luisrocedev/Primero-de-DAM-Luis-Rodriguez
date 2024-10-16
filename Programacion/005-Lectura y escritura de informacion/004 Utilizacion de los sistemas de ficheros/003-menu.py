import os

try:
    os.makedirs("basededatos")
except:
    print("La carpeta de base de datos ya existe, no hacemos copia...")

print("Bienvenidos a |Mi frustracion en el LoL|")
print("Selecciona una de las siguientes opciones")
print("1.- Introducir un nuevo registro")
print("2.- Leer registros existentes")

