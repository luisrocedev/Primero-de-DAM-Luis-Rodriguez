import os

try:
    os.makedirs("basededatos")
except:
    print("La carpeta de base de datos ya existe, no hacemos copia...")

print("Bienvenidos a |Mi frustracion en el LoL|.")
print("Selecciona una de las siguientes opciones.")
print("1.- Introducir un nuevo registro.")
print("2.- Leer registros existentes.")
opcion = input("Selecciona una de las opciones anteriores para poder continuar:")
print("La opcion que has seleccionado es:",opcion)

if opcion == "1":
    print("Has elegido introducir un nuevo registro.")
    archivo = open("basededatos/miqueridodiario.txt","a")
    fecha = input("Introduce la fecha:")
    mensaje = input("Introduce el mensaje:")
    archivo.write(fecha+"|"+mensaje+"\n")
    archivo.close()
elif opcion =="2":
    print("Has elegido leer los registros existentes.")
else:
    print("La opcion que has elegido no es valida.")
    
