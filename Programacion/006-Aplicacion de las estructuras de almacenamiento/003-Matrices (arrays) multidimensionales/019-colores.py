'''
    Programa agenda con colecciones bidimensionales
    (c) 2024 Luis Rodriguez
'''

import platform
import os

def limpiarPantalla():
    if platform.system() == "Windows":
        os.system("cls")
    else:
        os.system("clear")

limpiarPantalla()
print("Programa agenda (c) 2024 Luis Rodriguez")

agenda = []

while(True):
    limpiarPantalla()
    print("Selecciona una de las siguientes opciones:")
    print("1.-Insertar un nuevo registro")
    print("2.-Listar los registros")
    selecciona_opcion = input("Selecciona una de las opciones:")

    limpiarPantalla()
    print("La opcion que has escogido es:",selecciona_opcion)

    if(selecciona_opcion == "1"):
        print("Vamos a insertar un registro")
        nombre = input("\033[32mIntroduce tu nombre:\033[0m")
        apellidos = input("\033[32mIntroduce tu apellido:\033[0m")
        email = input("\033[32mIntroduce tu email:\033[0m")
        telefono = input("\033[32mIntroduce tu telefono:\033[0m")
        agenda.append([nombre,apellidos,email,telefono])
    elif(selecciona_opcion == "2"):
        print("Vamos a leer registros")
        for registro in agenda:
            print("######################")
            print("Nombre:",registro[0])
            print("Apellidos:",registro[1])
            print("Email:",registro[2])
            print("Telefono:",registro[3])
            print("######################")
            input("Pulsa una tecla para continuar...")
