#Propiedad (Atributo):
# Es una característica de un objeto.
# Almacena datos relacionados con el objeto.
# Por ejemplo, el color de un coche o el nombre de una persona.
# Es un dato.
# Se accede como objeto.propiedad.
# Ejemplo: persona1.nombre.

#Método:
# Es una función definida dentro de una clase.
# Los métodos operan sobre los atributos del Smartphone y permiten interactuar con ellos o modificarlos.
# Por ejemplo, un método que acelera un coche o calcula la edad de una persona.
# Es una función.
# Se ejecuta como objeto.metodo().
# Ejemplo: persona1.mostrar_info().

class Smartphone:
    def __init__(self, marca, modelo):
        self.marca = marca  # Propiedad (atributo)
        self.modelo = modelo  # Propiedad (atributo)
        self.velocidadcalculo = 0  # Propiedad inicializada en 0

    # Método para calcular
    def calculo(self, incremento):
        self.velocidadcalculo += incremento
        print(f"El smartphone {self.marca} {self.modelo} tiene una potencia de calculo de {self.velocidadcalculo} c/s.")

    # Método para cargar
    def cargabateria(self):
        self.velocidad = (40)
        print(f"El smartphone {self.marca} {self.modelo} carga la bateria completa en {self.velocidad} minutos.")

# Crear una instancia de la clase Smartphone
mi_iphone = Smartphone ("iPhone", "16 Pro")

# Usar propiedades y métodos
print(f"Marca: {mi_iphone.marca}")  # iPhone
print(f"Modelo: {mi_iphone.modelo}")  # 16 Pro

mi_iphone.calculo(500)
mi_iphone.cargabateria()  
