from funciones import*

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