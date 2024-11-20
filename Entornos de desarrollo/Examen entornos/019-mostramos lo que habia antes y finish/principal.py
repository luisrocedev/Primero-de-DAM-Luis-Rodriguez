from funciones import *

while True:
    # Menú para que el usuario seleccione la operación deseada
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el programa")
    opcion = input("Escoge una opcion:")

    # Ejecuto la función correspondiente según la opción seleccionada
    if opcion == "1":
        print(seleccionaCookies())                                                          # Listar los registros
    elif opcion == "2":
        titulo = input("Introduce el titulo del cookie:")                                   # Le pido un nuevo titulo al usuario 
        subtitulo = input("Introduce el subtitulo del cookie:")                             # Le pido un nuevo subtitulo al usuario
        texto = input("Introduce el texto del cookie:")                                     # Le pido un nuevo texto al usuario
        print(insertaCookie(titulo,subtitulo,texto))                                        # Insertar un nuevo registro
    elif opcion == "3":
        Identificador = input("Introduce el Identificador del cookie a eliminar:")          # Le pido un nuevo Titulo al usuario
        print(eliminaCookie(Identificador))                                                 # Eliminar un registro
    elif opcion == "4":
        Identificador = input("Introduce el Identificador del cookie a actualizar:")
        campos = seleccionaCookie(Identificador)
        if campos != False:
            print(campos)
            titulo = input(f"Introduce el nuevo titulo del cookie (en blanco para no modificar) (antes era: {campos[0]['titulo']}):")               # Le pido un nuevo Titulo al usuario
            subtitulo = input(f"Introduce el nuevo subtitulo del cookie (en blanco para no modificar) (antes era: {campos[0]['subtitulo']}):")      # Le pido un nuevo Subtitulo al usuario
            texto = input(f"Introduce el nuevo texto del cookie (en blanco para no modificar) (antes era: {campos[0]['texto']}):")                  # Le pido un nuevo Texto al usuario
            print(actualizaCookie(Identificador,titulo,subtitulo,texto))                                                                            # Actualizar un registro
        else:
            print("El identificador introducido no es valido")
        
    elif opcion == "5": 
        conexion.close()                                                                        # Cierro la conexión a la base de datos
        break                                                                                   # Salgo del bucle    

print("El programa ha finalizado")                                                              # Mensaje de cierre