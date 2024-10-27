class Cliente:
    def __init__(self,
                 nuevonombre,
                 nuevosapellidos,
                 nuevoemail,
                 nuevotelefono
                 ):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        
    def dameDatos(self):
        print(
            "Nombre:",
            self.nombre,
            " - Apellidos:",
            self.apellidos,
            " - Email:",
            self.email,
            " - Telefono:",
            self.telefono)
        
    def getNombre(self):
        return self.nombre
    def setNombre(self,nuevonombre):
        self.nombre = nuevonombre
        
cliente1= Cliente(
    "Luis",
    "Rodriguez",
    "luisilustraciones@gmail.com",
    722152111
    )
print(cliente1.nombre)
cliente1.nombre = "Josue"
print(cliente1.nombre)

            

