from funciones import*

while True:
  # Menú para que el usuario seleccione la operación deseada
  print("Escoge una opcion:")
  print("1.-Listar los registros ")
  print("2.-Insertar un registro ")
  print("3.-Eliminar un registro ")
  print("4.-Actualizar un registro ")
  print("5.-Cerrar el programa ")
  opcion = input("Escoge una opcion: ")

# Ejecuto la función correspondiente según la opción seleccionada
  if opcion == "1":
     print(seleccionarCookie())                       # Listar los registros
  elif opcion == "2":
      titulo = input("Introduce el titulo del cookie:")       # Le pido un nuevo titulo al usuario 
      subtitulo = input("Introduce el subtitulo del cookie:") # Le pido un nuevo subtitulo al usuario
      texto = input("Introduce el texto del cookie:")         # Le pido un nuevo texto al usuario
      print (insertaCookie(titulo,subtitulo,texto))           # Insertar un nuevo registro
  elif opcion == "3":
     Identificador = input("Introudce el Identificador del cookie a eliminar:")
     print(eliminaCookie(Identificador))                     # Eliminar un registro
  elif opcion == "4":
     print(actualizaCookie())                   # Actualizar un registro
  elif opcion == "5":
    conexion.close()                            # Cierro la conexión a la base de datos
    break                                       # Salgo del bucle                                          
print("El programa ha finalizado exitosamente") # Mensaje de cierre