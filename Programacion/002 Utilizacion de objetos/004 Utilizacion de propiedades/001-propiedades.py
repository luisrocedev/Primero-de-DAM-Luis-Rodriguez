class Gato:
    def __init__(self):
        self.altura = None
        self.edad = None
        self.peso = None
        self.nombre = None
    def maulla(self,numero):
        cadena = "Miau "*numero
        print(cadena)
    def estufera(self):
        print("fffffffffffff")


gato1 = Gato()
print("El nombre del gato gordito es ",gato1.nombre)
gato1.nombre = "Micifu"
print("El nombre del gato gordito es ",gato1.nombre)
