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
            " - Teléfono:",
            self.telefono)

cliente1 = Cliente(
    "Luis",
    "Rodriguez",
    "luisilustraciones@gmail.com",
    6535646
    )
cliente2 = Cliente(
    "Josue",
    "Rodriguez",
    "josue.rodriguez1@gmail.com",
    6436546
    )
cliente1.dameDatos()
cliente2.dameDatos()

print(cliente1)
cliente1 = None
print(cliente1)        
        
