class Entrenadores:                                                                                      
    def __init__(self, nuevoid, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono, nuevadireccion):  
        self.id = nuevoid
        self.nombre = nuevonombre 
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.direccion = nuevadireccion 

class Clasecross:                                                                                    
    def __init__(self, nuevoid, nuevonombre, nuevohorario, nuevoentrenador):    
        self.id = nuevoid
        self.nombre = nuevonombre
        self.hoario = nuevohorario
        self.entrandor = nuevoentrenador

entrenadores = []
clasecross = []

print("Programa de Consola")
print("v0.1 por Luis Rodriguez")
while True:
    print("------------------")
    print("Selecciona entidad")
    print("1.-Entrenadores")
    print("2.-Clasecross")

    entidad = input("Indica la opcion seleccionada:")
                                                                            
    print("Menu de navegacion")
    print("1.- Insertar un nuevo registro")
    print("2.- Listar los registros")
    print("3.- Actualizamos los registros")
    print("4.- Eliminamos los registros")
    print("5.- Salir del programa")

    opcion = input("Selecciona una de estas operaciones:")
    if opcion == "1":
        print ("Insertamos un nuevo registro.")
        identificador = input("Introduce el id del nuevo entrenador:")
        nombre = input("Introduce el nombre del nuevo entrenador:")
        apellidos = input("Introduce los apellidos del nuevo entrenador:")
        email = input("Introduce el email del nuevo entrenador:")
        telefono = input("Introduce el telefono del nuevo entrenador:")
        direccion = input("Introduce la direccion del nuevo entrenador:")
        entrenador = Entrenadores(identificador,nombre,apellidos,email,telefono,direccion)
        entrenadores.append(entrenador)
        
    elif opcion == "2":
        print("Listamos los registros")
    elif opcion == "3":
        print("Actualizamos los registros")
    elif opcion == "4":
        print("Eliminamos registros")