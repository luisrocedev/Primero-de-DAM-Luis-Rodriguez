class Persona:                                              # Definición de la clase Persona
    def __init__(self, nombre, edad):                       # Atributos de la clase
        self.nombre = nombre
        self.edad = edad

  
    def mostrar_info(self):                                 # Método para mostrar información de la persona
        print(f"Nombre: {self.nombre}, Edad: {self.edad}")

    def set_nombre(self, nombre):                           # Método para modificar los atributos(nombre)
        self.nombre = nombre

    def set_edad(self, edad):                               # Método para modificar los atributos(edad)
        self.edad = edad


                                                  
if __name__ == "__main__":                                  # Programa principal
    persona1 = Persona("Carlos", 25)                        # Crear un objeto de la clase Persona

    persona1.mostrar_info()                                 # Mostrar la información de la persona

    persona1.set_nombre("Ana")                              # Modificar los atributos de la persona
    persona1.set_edad(30)

    persona1.mostrar_info()                                 # Mostrar la nueva información de la persona
