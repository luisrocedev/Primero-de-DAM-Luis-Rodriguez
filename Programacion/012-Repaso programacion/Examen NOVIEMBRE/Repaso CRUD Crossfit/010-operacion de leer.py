class Entrenador:     # Defino una clase de Entrenador                                                                             
    def __init__(self, nuevoidentificador, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono, nuevadireccion):  
        self.identificador = nuevoidentificador
        self.nombre = nuevonombre 
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.direccion = nuevadireccion 
 
class Clasecross:   # Defino una clase de Clasecross                                                                                
    def __init__(self, nuevoidentificador, nuevonombre, nuevohorario, nuevoentrenador):    
        self.identificador = nuevoidentificador
        self.nombre = nuevonombre
        self.hoario = nuevohorario
        self.entrandor = nuevoentrenador

entrenadores = [] # Creo una lista vacia que es donde voy a guardar a los entrenadores
clasecross = [] # Creo una lista vacia que es donde voy a guardar las clasecross

print("Programa de Consola") # imprimo mensaje de bienvenida
print("v0.1 por Luis Rodriguez") # Imprimo el autor
while True: # Entro en un bucle infinito
    print("------------------") # Imprimo un separador visual
    print("Selecciona entidad") # Invito a seleccionar una entida
    print("1.-Entrenadores")
    print("2.-Clasecross")

    entidad = input("Indica la opcion seleccionada:") # Atrapo el valor de la entidad
                                                                            
    print("Menu de navegacion") # Ahora muestro el menu de operaciones
    print("1.- Insertar un nuevo registro")
    print("2.- Listar los registros")
    print("3.- Actualizamos los registros")
    print("4.- Eliminamos los registros")
    print("5.- Salir del programa")

    opcion = input("Selecciona una de estas operaciones:") # Atrapo la opción del usuario
    if opcion == "1": # Empezamos insertando un registro
        print ("Insertamos un nuevo registro.")  # Imprimo un mensaje
        identificador = input("Introduce el id del nuevo entrenador:") # Introduzco los datos que pido para el entrenador
        nombre = input("Introduce el nombre del nuevo entrenador:")
        apellidos = input("Introduce los apellidos del nuevo entrenador:")
        email = input("Introduce el email del nuevo entrenador:")
        telefono = input("Introduce el telefono del nuevo entrenador:")
        direccion = input("Introduce la direccion del nuevo entrenador:")
        entrenadores.append(Entrenador(identificador,nombre,apellidos,email,telefono,direccion)) # Añado la instancia a la lista de entrenadores
        
    elif opcion == "2":
        print("Listamos los registros")
        for entrenador in entrenadores:
            print("------------------")
            print("id: "+entrenador.identificador)                                     # Imprimo cada una de las caracteristicas
            print("nombre: "+entrenador.nombre)
            print("apellidos: "+entrenador.apellidos)
            print("email: "+entrenador.email)
            print("telefono: "+entrenador.telefono)
            print("direccion: "+entrenador.direccion)

    elif opcion == "3":
        print("Actualizamos los registros")
    elif opcion == "4":
        print("Eliminamos registros")