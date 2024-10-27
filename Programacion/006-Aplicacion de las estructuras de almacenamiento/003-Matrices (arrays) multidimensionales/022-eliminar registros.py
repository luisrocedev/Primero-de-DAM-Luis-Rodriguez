'''
    Programa agenda con colecciones bidimensionales
    (c) 2024 Jose Vicente Carratalá
'''
import os

os.name
'posix'

import platform

platform.system()
'Darwing'

platform.release()
'2.6.22-15-generic'

def limpiaPantalla():
    if platform.system() == "Darwing":
        os.system("cls")
    else:
        os.system("clear")

limpiaPantalla()
print("Programa agenda (c) 2024 Jose Vicente Carratalá")

agenda = []

while(True):
    limpiaPantalla()
    print("Selecciona una de las siguientes opciones")
    print("1.-Insertar un nuevo registro")
    print("2.-Listar los registros")
    print("3.-Eliminar un registro")
    selecciona_opcion = input("Selecciona una de las opciones:")
    
    limpiaPantalla()
    print("La opcion que has escogido es:",selecciona_opcion)

    if(selecciona_opcion == "1"):
        print("Vamos a insertar un registro")
        nombre = input("\033[32mIntroduce tu nombre:\033[0m")
        apellidos = input("\033[32mIntroduce tus apellidos:\033[0m")
        email = input("\033[32mIntroduce tu email:\033[0m")
        telefono = input("\033[32mIntroduce tu teléfono:\033[0m")
        agenda.append([nombre,apellidos,email,telefono])
    elif(selecciona_opcion == "2"):
        print("Vamos a leer registros")
        for registro in agenda:
            print("######################")
            print("\033[31mnombre:\t\t\033[0m",registro[0])
            print("\033[32mapellidos:\t\033[0m",registro[1])
            print("\033[33memail:\t\t\033[0m",registro[2])
            print("\033[34mtelefono:\t\033[0m",registro[3])
        print("######################")
        input("Pulsa una tecla para continuar...")

            


    
