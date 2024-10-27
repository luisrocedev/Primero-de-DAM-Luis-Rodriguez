clientes = []

clientes.append("Luis Rodriguez")
print(clientes)
clientes.append("Josue Rodriguez")
print(clientes)

while(True):
    nombre = input("Introduce el nombre de un nuevo cliente:")
    clientes.append(nombre)
    print(clientes)
