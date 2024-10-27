import platform                                                                                     # Librería para detectar el sistema operativo
import os                                                                                           # Librería para realizar operaciones del sistema operativo (limpiar pantalla)
import pickle                                                                                       # Librería guardar y cargar datos binarios

def limpiaPantalla():                                                                               # Función para limpiar la pantalla 
    if platform.system() == "Windows":
        os.system("cls")                                                                            # Comando para limpiar pantalla en Windows
    else:
        os.system("clear")                                                                          # Comando para limpiar pantalla en Linux/Mac
limpiaPantalla()                                                                                    # Limpiar pantalla al iniciar el programa


class Cliente:                                                                                      # Creo la clase Cliente
    def __init__(self, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono, nuevadireccion):    # Defino un constructor
        self.nombre = nuevonombre 
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.direccion = nuevadireccion 
                                                                                                    # Usamos variables self.nombre etc para alamcenar cada dato respectivamente

agenda = []                                                                                         # Creo una lista vacía 


print("###################################################")                                        # Mensaje de bienvenida al iniciar el programa
print("Programa agenda (c) 2024 Luis RODRIGUEZ al estilo matrix")
print("###################################################")

                                                                                                    # Bucle del programa
while True:
    limpiaPantalla()                                                                                # Limpiar pantalla antes de mostrar el menú
                                                                                                    # Menú de opciones
    print("Menu de navegacion")
    print("1.- Insertar un nuevo registro en la matrix")
    print("2.- Listar los registros de la matrix")
    print("3.- Guardar registros en la matrix")
    print("4.- Leer registros desde archivo")
    print("5.- Salir del programa")
    
                                                                                                    # El usuario selecciona una opcion
    opcion = input("Selecciona una opcion: ")
    limpiaPantalla()                                                                                # Limpiar pantalla después de la selección del usuario
    print("La opcion que has escogido es:", opcion)                                                 # Muestro al usuario la opcion selccionada

    
    if opcion == "1":                                                                               # Si el usuario elige la opcion 1
        print("Vamos a insertar un registro")                                                       # Insertamos un registro
        
        nombre = input("\033[32mIntroduce el nuevo nombre:\033[0m")                                 # Solicitamos nuevo nombre
        apellidos = input("\033[32mIntroduce los nuevos apellidos:\033[0m")                         # Solicitamos nuevos apellidos
        email = input("\033[32mIntroduce el nuevo email:\033[0m")                                   # Solicitamos nuevo email
        telefono = input("\033[32mIntroduce el nuevo numero de teléfono:\033[0m")                   # Solicitamos nuevo numero de telefono
        direccion = input("\033[32mIntroduce la nueva direccion:\033[0m")                           # Solicitamos nueva direccion
                                                                                                    # Añado \033[31m y \t\t\033[0m para dar color
                                                                                    
        nuevocliente = Cliente(nombre, apellidos, email, telefono, direccion)                       # Crear un nuevo objeto con los datos incluidos anteriormente
        agenda.append(nuevocliente)                                                                 # Añadimos un dato a la lista de la agenda, en este caso al nuevo cliente el cliente 


    elif opcion == "2":                                                                             # Si el usuario elige la opcion 2
        contador = 0                                                                                # Creo una variable para contar los registros
        print("Vamos a leer registros:")
        for cliente in agenda:                                                                      # Leemos a los clientes en la agenda
            print("Cliente numero", contador, "---------------")    # Mostrar los datos del cliente
            print("\033[31mNombre:\t\t\033[0m", cliente.nombre)     # Rojo
            print("\033[32mApellidos:\t\033[0m", cliente.apellidos) # Verde
            print("\033[33mEmail:\t\t\033[0m", cliente.email)       # Amarillo
            print("\033[34mTelefono:\t\033[0m", cliente.telefono)   # Azul
            print("\033[35mDireccion:\t\033[0m", cliente.direccion) # Magenta

            contador += 1                                                                           # Incrementamos la variable del contador
        input("Pulsa una tecla para continuar...")                                                  # Opcion al usuario para continuar

    elif opcion == "3":                                                                             # Si el usuario elige la opcion 3
        archivo = open("agendamatrix.bin", 'wb')                                                    # Abrimos un archivo binario para escribir
        pickle.dump(agenda, archivo)                                                                # Guardamos la lista de clientes en el archivo
        archivo.close()                                                                             # Cerramos el archivo
        print("La agenda ha sido guardada en un archivo binario.")                                  # Muestro al usuario que el archivo se ha guardado
        input("Pulsa una tecla para continuar...")                                                  # Opcion al usuario para continuar

    elif opcion == "4":                                                                             # Si el usuario elige la opcion 4 
        archivo = open("agendamatrix.bin", 'rb')                                                    # Abrimos el archivo binario en modo lectura
        agenda = pickle.load(archivo)                                                               # Cargamos los datos del archivo en la lista de la agenda
        archivo.close()                                                                             # Cerramos el archivo
        print("Cargando registros desde el archivo binario...")                                     # Muestro al usuario que el archivo se esta cargando
        print("Registros cargados correctamente. Listándolos...")                                   # Muestro al usuario que el archivo se ha cargado correctamente
        contador = 0                                                                                # Reiniciamos el contador
        for cliente in agenda:                                                                      # Mostramos los registros cargados desde el archivo binario
            print("Cliente numero", contador, "---------------")
            print("\033[31mNombre:\t\t\033[0m", cliente.nombre)
            print("\033[32mApellidos:\t\033[0m", cliente.apellidos)
            print("\033[33mEmail:\t\t\033[0m", cliente.email)
            print("\033[34mTelefono:\t\033[0m", cliente.telefono)
            print("\033[34mDireccion:\t\033[0m", cliente.direccion)
            contador += 1  # Incrementar el contador
        input("Pulsa una tecla para volver al menu principal...")

                                                                                                    # Si el usuario elige la opcion 5
    elif opcion == "5":
        print("Saliendo de la matrix...")                                                           # Muestro al usuario que salimos del programa
        exit()                                                                                      # Terminamos la ejecución del programa

                                                                                                    
    else:                                                                                           # Si el usuario elige una opcion no valida
        print("Opcion no valida. Por favor, intenta de nuevo.")
        input("Pulsa una tecla para volver al menu principal...")                                   # Indico al usurio que pulse un boton para volver al menu principal
