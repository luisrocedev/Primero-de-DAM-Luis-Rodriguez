import pickle

class Cliente:
    def __init__(self,nuevonombre,nuevosapellidos,nuevoemail,nuevadireccion):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.email = nuevoemail
        self.direccion = nuevadireccion

agenda = []

print("###################################################")
print("Programa agenda con ticle v0.1 por Luis Rodriguez")
print("###################################################")

while True:
    
    print("Menu de navegacion")
    print("1.-Introduce un registro")
    print("2.-Listado de registros")
    print("3.-Guardar registros")

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
        for cliente in agenda:
            print("-----------------")
            print("nombre",cliente.nombre)
            print("apellidos",cliente.apellidos)
            print("email",cliente.email)
            print("direccion",cliente.direccion)
        print(agenda)
    elif opcion =="3":
        archivo = open ("agenda.bin",'wb')
        pickle.dump(agenda, archivo)
        print("La agenda ha sido guardada en un archivo")
        archivo.close()
        