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
         Identificador = input("Introduce el Identificador del capítulo a actualizar:")
         campos = seleccionaCapitulo(Identificador)
         print(campos)
         Titulo = input(f"Introduce el Titulo del capítulo a actualizar (en blanco para no modificar)(antes era: {campos[0]['Titulo']}):")
         Subtitulo = input(f"Introduce el Subtitulotitulo del Subtitulo a actualizar (en blanco para no modificar)(antes era: {campos[0]['Subtitulo']}):")
         Imagen = input(f"Introduce el Imagen del capítulo a actualizar (en blanco para no modificar)(antes era: {campos[0]['Imagen']}):")
         Video = input(f"Introduce el Video del capítulo a actualizar (en blanco para no modificar){campos[0]['Video']}):")
         Texto = input(f"Introduce el Texto del capítulo a actualizar (en blanco para no modificar){campos[0]['Texto']}):")
         print(actualizaCapitulo(Identificador,Titulo,Subtitulo,Imagen,Video,Texto)) 
    elif opcion == "5":
            conexion.close()
            break
      
print("El programa ha finalizado exitosamente")