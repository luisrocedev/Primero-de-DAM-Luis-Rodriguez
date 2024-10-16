'''
    Programa CRUD al completo
    (c) v0.1 Luis Rodriguez
    El objetivo de este programa es construir el CRUD al completo contra MySQL
'''    

print("#################")
print("Programa CRUD al completo")
print("#################")

while True:

    print("Selecciona una opcion:")
    print("1.-Crear nuevo cliente.")
    print("2.-Leer clientes existentes.")
    print("3.-Actualizar cliente existente.")
    print("4.-Eliminar cliente.")
    print("5.-Salir del programa.")

    opcion=input("Selecciona una de las opciones:")
    print("Has seleccionado la opcion:", opcion)

    if opcion == "1":
        print("Vamos a insertar un nuevo cliente.")
    elif opcion == "2":
        print("Vamos a listar los clientes.")
    elif opcion == "3":
        print("Vamos a actualizar un cliente.")
    elif opcion == "4":
        print("Vamos a eliminar un cliente.")
    elif opcion == "5":
        print("Saliendo del programa...")
        exit()
    else:
        print("Lo que has escogido no es una opcion valida.")