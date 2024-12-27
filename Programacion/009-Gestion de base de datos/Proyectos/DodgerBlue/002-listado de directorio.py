import os

ruta = "/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox"

carpetas = os.listdir(ruta)

for carpeta in carpetas:
    print(carpeta)
