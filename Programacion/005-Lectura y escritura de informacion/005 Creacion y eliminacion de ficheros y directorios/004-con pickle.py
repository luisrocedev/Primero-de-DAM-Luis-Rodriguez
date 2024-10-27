import pickle

archivo = open("archivo.bin",'wb')

perifericos = ['teclado','raton','monitor']

pickle.dump(perifericos, archivo)

archivo.close()
