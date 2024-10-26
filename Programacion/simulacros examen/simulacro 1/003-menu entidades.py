class Entrenadores:                                                                                      # Creo la clase Cliente
    def __init__(self, nuevoid, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono, nuevadireccion):    # Defino un constructor
        self.id = nuevoid
        self.nombre = nuevonombre 
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.direccion = nuevadireccion 

class Clasecross:                                                                                      # Creo la clase Cliente
    def __init__(self, nuevoid, nuevonombre, nuevohorario, nuevoentrenador):    # Defino un constructor
        self.id = nuevoid
        self.nombre = nuevonombre
        self.hoario = nuevohorario
        self.entrandor = nuevoentrenador
        
print("Programa de Consola")
print("v0.1 por Luis Rodriguez")

print("Selecciona entidad")
print("1.-Entrenadores")
print("2.-Clasecross")

entidad = input("Indica la opcion seleccionada:")
                                        

    