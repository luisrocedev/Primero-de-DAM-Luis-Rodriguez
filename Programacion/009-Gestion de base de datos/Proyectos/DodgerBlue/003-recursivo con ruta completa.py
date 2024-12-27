import os

ruta = "/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox"

for directorio_raiz, subcarpetas, archivos in os.walk(ruta):
    for archivo in archivos:
        ruta_completa = os.path.join(directorio_raiz, archivo)
        print(ruta_completa)
