import pickle

class Cliente
    def__init__(self,nuevonombre,nuevosapellidos,nuevoemail,nuevadireccion):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.apellidos = nuevadireccion

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
    
        nuevocliente = Cliente(nombre,apellidos,email,direccion)
        agenda.append(nuevocliente)
    elif opcion == "2":
        print("Vamos a listar los clientes")