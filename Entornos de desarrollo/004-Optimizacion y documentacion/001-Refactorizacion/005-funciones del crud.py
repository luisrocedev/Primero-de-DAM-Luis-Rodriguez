def bienvenida():    
    print("Bienvenidos a mi agenda")
    print("Agenda v0.1 por Luis Rodrigiuez")
def muestraMenu():
    print("Menú principal")
    print("1.-Insertar un registro")
    print("2.-Leer registros")
    print("3.-Actualizar un registro")
    print("4.-Eliminar registros")
def insertar():
    print("Vamos a insertar un registro")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion") 
def listar():
    print("Vamos a listar registros")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
def actualizar():
    print("Vamos a actualizar un registro")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
def eliminar():
    print("Vamos a eliminar registros")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")
    print("accion")



bienvenida()
while True:
    
    muestraMenu()

    entrada = input("Selecciona una opcion:")

    if entrada == "1":
        insertar()

    elif entrada == "2":
        listar()

    elif entrada == "3":
        actualizar()

    elif entrada == "4":
        eliminar()