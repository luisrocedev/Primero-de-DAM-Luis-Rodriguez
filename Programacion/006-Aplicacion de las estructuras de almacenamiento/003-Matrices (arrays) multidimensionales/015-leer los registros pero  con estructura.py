'''
    Programa agenda con colecciones bidimensionales
    (c) 2024 Luis Rodriguez
'''

print("Programa agenda (c) 2024 JLuis Rodriguez")

agenda = []

while(True):
    print("Selecciona una de las siguientes opciones")
    print("1.-Insertar un nuevo registro")
    print("2.-Listar los registros")
    selecciona_opcion = input("Selecciona una de las opciones:")

    print("La opcion que has escogido es:",selecciona_opcion)

    if(selecciona_opcion == "1"):
        print("Vamos a insertar un registro")
        nombre = input("Introduce tu nombre:")
        apellidos = input("Introduce tu apellido:")
        email = input("Introduce tu email:")
        telefono = input("Introduce tu telefono:")
        agenda.append([nombre,apellidos,email,telefono])
    elif(selecciona_opcion == "2"):
        print("Vamos a leer registros")
        for registro in agenda:
            print("######################")
            print("nombre:",registro[0])
            print("apellidos:",registro[1])
            print("email:",registro[2])
            print("telefono:",registro[3])
            print("######################")

