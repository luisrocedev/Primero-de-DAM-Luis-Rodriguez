from funciones import*

while True:
    print("Escoge una opcion")
    print("1.-Listar los registros")
    print("2.-Insertar un registro")
    print("3.-Eliminar un registro")
    print("4.-Actualizar un registro")
    print("5.-Cerrar el un registro")
    opcion = input("Escoge una opcion:")

    if opcion == "1":
         print(seleccionaCapitulo())                                              
    elif opcion == "2":
         Titulo = input("Introduce el Titulo del capitulo:")
         Subtitulo = input("Introduce el Subtitulo del capitulo:")
         Imagen = input("Introduce el Imagen del capitulo:")
         Video = input("Introduce el Video del capitulo:")
         Texto = input("Introduce el Texto del capitulo:")
         print(insertaCapitulo(Titulo,Subtitulo,Imagen,Video,Texto))     
    elif opcion == "3":
         Identificador = input("Introduce el Identificador del capitulo a eliminar")
         print(eliminaCapitulo(Identificador)) 
    elif opcion == "4":
         Identificador = input("Introduce el Identificador del capitulo a actualizar:")
         Titulo = input("Introduce el Titulo del capitulo a actualizar (en blanco para no modificar):")
         Subtitulo = input("Introduce el Subtitulo del capitulo a actualizar (en blanco para no modificar):")
         Imagen = input("Introduce el Imagen del capitulo a actualizar (en blanco para no modificar):")
         Video = input("Introduce el Video del capitulo a actualizar (en blanco para no modificar):")
         Texto = input("Introduce el Texto del capitulo a actualizar (en blanco para no modificar):")
         print(actualizaCapitulo(Identificador,Titulo,Subtitulo,Imagen,Video,Texto)) 
    elif opcion == "5":
            conexion.close()
            break
      
print("El programa ha finalizado exitosamente")