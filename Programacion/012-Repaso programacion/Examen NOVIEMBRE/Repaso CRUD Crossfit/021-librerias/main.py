from entrenador import Entrenador
from clasecross import Clasecross
from limpiapantalla import limpiaPantalla
import pickle

limpiaPantalla()
# Listas para almacenar los entrenadores y las clases
entrenadores = []  # Lista vacía donde se almacenarán los entrenadores
clasecross = []  # Lista vacía donde se almacenarán las clases (aunque no se usa en el código)
# Imprime un mensaje de bienvenida
print("Programa de Consola")
print("v0.1 por Luis Rodriguez")

# Bucle principal del programa, que permite al usuario interactuar con el menú
while True:
    print("------------------")
    print("Selecciona entidad")  # Solicita elegir entre 'Entrenadores' o 'Clasecross'
    print("1.-Entrenadores")
    print("2.-Clasecross")

    # Captura la opción de entidad seleccionada
    entidad = input("Indica la opcion seleccionada:")
    print("------------------")
    print("Menu de navegación")  # Menú de operaciones disponibles
    print("1.- Insertar un nuevo registro")
    print("2.- Listar los registros")
    print("3.- Actualizamos los registros")
    print("4.- Eliminamos los registros")
    print("5.- Guardar el registro")
    print("6.- Cargar el registro")
    print("------------------")

    # Captura la operación seleccionada
    opcion = input("Selecciona una de estas operaciones:")

    # Opción 1: Insertar un nuevo registro
    if opcion == "1":
        print("------------------")
        print("Insertamos un nuevo registro.")
        # Captura los datos para crear un nuevo entrenador
        identificador = input("Introduce el id del nuevo entrenador:")
        nombre = input("Introduce el nombre del nuevo entrenador:")
        apellidos = input("Introduce los apellidos del nuevo entrenador:")
        email = input("Introduce el email del nuevo entrenador:")
        telefono = input("Introduce el telefono del nuevo entrenador:")
        direccion = input("Introduce la direccion del nuevo entrenador:")
        # Crea una nueva instancia de 'Entrenador' y la agrega a la lista
        entrenadores.append(Entrenador(identificador, nombre, apellidos, email, telefono, direccion))
        print("------------------")
        input("Registro insertado correctamente, pulsa una tecla para continuar...")

    # Opción 2: Listar todos los registros de entrenadores
    elif opcion == "2":
        print("Listamos los registros")
        contador = 0  # Contador para mostrar el índice del registro
        for entrenador in entrenadores:
            print("------------------")
            print("Id de Python:" + str(contador))  # Muestra el índice de cada registro
            # Imprime los atributos del entrenador
            print("id: " + entrenador.identificador)
            print("nombre: " + entrenador.nombre)
            print("apellidos: " + entrenador.apellidos)
            print("email: " + entrenador.email)
            print("telefono: " + entrenador.telefono)
            print("direccion: " + entrenador.direccion)
            print("------------------")
            contador += 1  # Incrementa el contador
        input("Pulsa una tecla para continuar...")

    # Opción 3: Actualizar un registro de entrenador
    elif opcion == "3":
        print("Actualizamos los registros")
        print("------------------")
        # Solicita el índice del entrenador a actualizar
        idlista = input("Selecciona el elemento de la lista de Python que quieres actualizar:")
        # Captura los nuevos datos para el entrenador
        identificador = input("Introduce el id del cliente modificado: ")
        nombre = input("Introduce el nombre del cliente modificado: ")
        apellidos = input("Introduce los apellidos del cliente modificado: ")
        email = input("Introduce el email del cliente modificado ")
        telefono = input("Introduce el telefono del cliente modificado ")
        direccion = input("Introduce la direccion del cliente modificado ")
        # Actualiza los atributos del entrenador seleccionado
        entrenadores[int(idlista)].identificador = identificador
        entrenadores[int(idlista)].nombre = nombre
        entrenadores[int(idlista)].apellidos = apellidos
        entrenadores[int(idlista)].email = email
        entrenadores[int(idlista)].telefono = telefono
        entrenadores[int(idlista)].direccion = direccion
        print("------------------")
        input("Registro actualizado correctamente, pulsa una tecla para continuar...")

    # Opción 4: Eliminar un registro de entrenador
    elif opcion == "4":
        print("Eliminamos registros")
        print("------------------")
        # Solicita el índice del entrenador a eliminar
        idlista = input("Selecciona el elemento de la lista de Python que quieres eliminar:")
        # Elimina el entrenador de la lista usando el índice
        entrenadores.pop(int(idlista))
        input("Registro eliminado correctamente, pulsa una tecla para continuar...")
        print("------------------")

    # Opción 5: Guardar los registros en un archivo
    elif opcion == "5":
        limpiaPantalla()  # Limpia la pantalla antes de guardar
        print("------------------")
        # Abre el archivo 'entrenadores.dat' en modo escritura binaria y guarda la lista de entrenadores
        archivo = open("entrenadores.dat", 'wb')
        pickle.dump(entrenadores, archivo)
        archivo.close()
        input("Registro guardado correctamente, pulsa una tecla para continuar...")
        print("------------------")

    # Opción 6: Cargar los registros desde un archivo
    elif opcion == "6":
        limpiaPantalla()  # Limpia la pantalla antes de cargar
        print("------------------")
        # Abre el archivo 'entrenadores.dat' en modo lectura binaria y carga los registros de entrenadores
        archivo = open("entrenadores.dat", 'rb')
        entrenadores = pickle.load(archivo)
        archivo.close()
        print("------------------")
        input("Registro cargado correctamente, pulsa una tecla para continuar...")