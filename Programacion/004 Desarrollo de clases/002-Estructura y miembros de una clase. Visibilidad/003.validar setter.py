class Cliente:
    def __init__(self,
                 nuevonombre,
                 nuevosapellidos,
                 nuevoemail,
                 nuevotelefono,
                 nuevaedad
                 ):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.telefono = nuevotelefono
        self.edad = nuevaedad
        
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

    def getEdad(self):
        return self.edad
    def setEdad(self,nuevaedad):
        if nuevaedad == self.edad + 1:
            self.edad == nuevaedad
        else:
            print("Operacion no permitida")
        
cliente1= Cliente(
        "Luis",
        "Rodriguez",
        "luisilustraciones@gmail.com",
        722152111,
        20
        )
cliente1.setEdad(21)
print(cliente1.edad)



            

