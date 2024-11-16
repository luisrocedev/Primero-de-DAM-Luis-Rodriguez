class Coche:
    def __init__(self, marca, modelo, color):
        self.marca = marca
        self.modelo = modelo
        self.color = color

    def mostrar_info(self):
        print(f"Marca: {self.marca}, Modelo: {self.modelo}, Color: {self.color}")


# Crear instancias de la clase Coche
coche1 = Coche("Tesla", "Elon Musk", "Fucsia")
coche2 = Coche("Ford", "Focus", "Azul")

# Llamar al método para mostrar información
coche1.mostrar_info()
coche2.mostrar_info()

