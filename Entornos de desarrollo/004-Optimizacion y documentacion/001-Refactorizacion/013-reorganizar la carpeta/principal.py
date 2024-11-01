from importaciones.mensajebienvenida import*
from importaciones.funcionescrud import*                                                                  # importo la librería que me permite leer y escribir bloques de memoria
                                                                # Creo una agenda que de momento esta vac
bienvenida()

while True:

    menu()                                                                     # Escribo un bucle infinito
    opcion = input("Selecciona una opcion:")                                    # Atrapo la opcion del usuario
    print("Has cogido la opcion: ",opcion)                                      # Le digo al usuario la opcion que ha escogido

    if opcion == "1":                                                           # En el caso de que el usuario haya escogido la opcion 1
        insertar()                                  # La anexo a la agenda
    elif opcion == "2":                                                         # En el caso de que el usuario haya escogido la opcion 2
        listar()
    elif opcion == "3":                                                         # En el caso de que el usuario elija la opcion 3
        guardar()                                               # Cierro el archivo     
    elif opcion == "4":
        abrir()                                                         # En el caso de que el usuario elija la opcion 4