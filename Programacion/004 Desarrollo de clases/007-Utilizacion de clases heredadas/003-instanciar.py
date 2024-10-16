class Persona:
    def __init__(self):
        self.nombre = None
        self.apellidos = None
        self.email = None
        self.telefono = None
        self.edad = None    
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
    def getNombre(self):
        return self.nombre
    def setNombre(self,nuevonombre):
        self.nombre = nuevonombre

    def getEdad(self):
        return self.edad
    def setEdad(self,nuevaedad):
        if nuevaedad == self.edad +1:
            self.edad = nuevaedad
        else:
            print("Operacion no permitida")

class Empleado(Persona):
    def __init__(self):
        super()
        
class Cliente(Persona):
    def __init__(self):
        super()

cliente1 = Cliente()
cliente1.setNombre("Luis Rodriguez")
print(cliente1.getNombre())

empleado1 = Empleado()
empleado1.setNombre("Josue Rodriguez")
print(empleado1.getNombre())

        
