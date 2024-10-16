class Gato:
    def __init__(self, nuevonombre, nuevaaltura, nuevopeso, nuevaedad):
        self.nombre = nuevonombre
        self.altura = nuevaaltura
        self.peso = nuevopeso
        self.edad = nuevaedad
    def maulla(self,numero):
        cadena = "Miau "*numero
        print (cadena)
    def estufera(self):
        print("fffffff")

gato1 = Gato("Wiskas",5,10,50)

print("El nombre del gato es:", gato1.nombre)
print("El peso del gato gordo es:", gato1.peso)
print("La altura del gato gordo es:", gato1.altura)
