import os                                                                                     # Importamos libreria que nos permite interactuar con el sistema operativo.

try:                                                                                          # Inteno realizar una operacion.
    os.makedirs("basededatos")                                                                # Inteno crear la carpeta basededatos.
except:                                                                                       # En el caso que no pueda.
    print("La carpeta de base de datos ya existe, no hacemos copia pero continuamos...")      # Indicamos que la carpeta existe y que no de error y continuamos proceso.
                                                                                              
print("Bienvenidos a |Mi camino a challenger en el LoL|.")                                    # Imprimo mensaje de bienvenida al usuario.
while(True):                                                                                  # Entramos en un bucle infinito controlado.
    print("Selecciona una de las siguientes opciones.")                                       # Informo al usuario la opcion de elegir dos opciones.
    print("1.- Introducir un nuevo registro.")                                                # Le informo de la opcion 1.
    print("2.- Leer registros existentes.")                                                   # Le informo de la opcion 2.
    opcion = input("Selecciona una de las opciones anteriores para poder continuar:")         # Atrapo su opcion elegida y la metemos en una variable.
    print("La opcion que has seleccionado es:",opcion)                                        # Le indicamos al usuario que opcion (variable) a seleccionado.

    if opcion == "1":                                                                         # Si el usuario selecciona la opcion 1.
        print("Has elegido introducir un nuevo registro.")                                    # Le informo de la opcion 1.
        archivo = open("basededatos/micaminoachallenger.txt","a")                             # Abro la base de datos en modo añadir.
        fecha = input("Introduce la fecha:")                                                  # El usuario debe introducir fecha.
        mensaje = input("Introduce el mensaje:")                                              # El usuario debe introducir un mensaje (lo que quiera poner en el diario)
        archivo.write(fecha+"|"+mensaje+"\n")                                                 # Escribo los datos a la base de datos.
        archivo.close()                                                                       # Y cierro base de datos.
        
    elif opcion =="2":                                                                        # Si es cierto que el usuario ha cogido la opcion 2.
        print("Has elegido leer los registros existentes.")                                   # Le informo de la opcion 2.
        archivo = open("basededatos/micaminoachallenger.txt","r")                             # Cargo la base de datos en modo lectura.
        lineas = archivo.readlines()                                                          # Cargo las lineas del archivo.
        for linea in lineas:                                                                  # Separo las lineas en lineas independientes (mas legible para el usuario).
            print(linea)                                                                      # Imprimo las lineas una a una.
            
    else:                                                                                     # En caso de que ninguna opcion sea correcta.
        print("La opcion que has elegido no es valida.")                                      # Indico al usuario que ninguna opcion es correcta.

