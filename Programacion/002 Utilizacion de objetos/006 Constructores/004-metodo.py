class Contactos:
    def __init__(self, nuevonombre, nuevosapellidos, nuevoemail, nuevotelefono):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        
    def dameDatos(self):
        print(" - Nombre:"
              ,self.nombre,
              " - Apellidos:"
              ,self.apellidos,
              " - Email:"
              ,self.email,
              " - Telefono:"
              ,self.telefono)
        
cliente1 = Contactos(
    "Luis",
    "Rodriguez",
    "luisilustraciones",
    "722152111"
    )
cliente2 = Contactos(
    "Josue",
    "Rodriguez",
    "jouse.rodriguez@gmail.com",
    "722152111"
    )
cliente1.dameDatos()
cliente2.dameDatos()


    
