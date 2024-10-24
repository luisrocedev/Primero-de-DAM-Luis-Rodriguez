class Entrenadores:                                                                                      # Creo la clase Cliente
    def __init__(self, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono, nuevadireccion):    # Defino un constructor
        self.nombre = nuevonombre 
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.direccion = nuevadireccion

lista = []      
                                                                                  # Creo una lista vacía 
print("###################################################")                                        # Mensaje de bienvenida al iniciar el programa
print("Lista entrenadores interactiva (c) 2024 Luis RODRIGUEZ")
print("###################################################")

print("Menu de navegacion")
print("1.- Insertar un nuevo registro en la matrix")
print("2.- Listar los registros de la matrix")
print("3.- Guardar registros en la matrix")
print("4.- Leer registros desde archivo")
print("5.- Salir del programa")  
 