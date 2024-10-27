import pickle

class Cliente
    def__init__(self,nuevonombre,nuevosapellidos,nuevoemail,nuevadireccion):
        self.nombre = None
        self.apellidos = None
        self.email = None
        self.apellidos = None

agenda = []

print(###################################################)
print("Programa agenda con ticle v0.1 por Luis Rodriguez")
print(###################################################)

while True:
    
    print("Menu de navegacion")
    print("1.-Introduce un registro")
    print("2.-Listado de registros")

    opcion = input("Selecciona una opcion: ")
    print("Has cogido la opcion: ",opcion)

    if opcion == "1":
        print("Vamos a insertar un nuevo cliente")
        nombre = input("Introduce el nuevo nombre: ")
        apellidos = input("Introduce el nuevo apellido: ")
        email = input("Introduce el nuevo email: ")
        direccion = input("Introduce la nueva direccion: ")
    elif opcion == "2":
        print("Vamos a listar los clientes")