from funciones import *

while True:
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el programa")
    opcion = input("Escoge una opcion:")

    if opcion == "1":
        print(seleccionaCookies())
    elif opcion == "2":
        Titulo = input("Introduce el Titulo del cookie:")         # Le pido un nuevo Titulo al usuario
        Subtitulo = input("Introduce el Subtitulo del cookie:")   # Le pido un nuevo Subtitulo al usuario
        Texto = input("Introduce el Texto del cookie:")         # Le pido un nuevo Texto al usuario
        print(insertaCookie(Titulo,Subtitulo,Texto))
    elif opcion == "3":
        Identificador = input("Introduce el Identificador del cookie a eliminar:")         # Le pido un nuevo Titulo al usuario
        print(eliminaCookie(Identificador))
    elif opcion == "4":
        Identificador = input("Introduce el Identificador del cookie a actualizar:")
        campos = seleccionaCookie(Identificador)
        if campos != False:
            print(campos)
            Titulo = input(f"Introduce el nuevo Titulo del cookie (en blanco para no modificar) (antes era: {campos[0]['Titulo']}):")         # Le pido un nuevo Titulo al usuario
            Subtitulo = input(f"Introduce el nuevo Subtitulo del cookie (en blanco para no modificar) (antes era: {campos[0]['Subtitulo']}):")   # Le pido un nuevo Subtitulo al usuario
            Texto = input(f"Introduce el nuevo Texto del cookie (en blanco para no modificar) (antes era: {campos[0]['Texto']}):")           # Le pido un nuevo Texto al usuario
            print(actualizaCookie(Identificador,Titulo,Subtitulo,Texto))
        else:
            print("El identificador introducido no es valido")
        
    elif opcion == "5":
        conexion.close()
        break

print("El programa ha finalizado")