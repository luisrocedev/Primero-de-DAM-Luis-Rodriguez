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

print("Selecciona entidad")
print("1.-Entrenadores")
print("2.-Clasecross")

entidad = input("Indica la opcion seleccionada:")
                                                                        
print("Menu de navegacion")
print("1.- Insertar un nuevo registro en la matrix")
print("2.- Listar los registros de la matrix")
print("3.- Guardar registros en la matrix")
print("4.- Leer registros desde archivo")
print("5.- Salir del programa")  