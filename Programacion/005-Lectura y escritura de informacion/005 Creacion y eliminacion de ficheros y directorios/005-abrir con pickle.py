import pickle

archivo = open("archivo.bin",'rb')

perifericos = pickle.load(archivo)

print(perifericos)

for perifericos in perifericos:
    print(perifericos)

archivo.close()
