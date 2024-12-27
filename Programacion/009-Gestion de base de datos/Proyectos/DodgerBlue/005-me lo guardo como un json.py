import os
from datetime import datetime
import json

ruta = "/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox"

registro = []

for directorio_raiz, subcarpetas, archivos in os.walk(ruta):
    for archivo in archivos:
        ruta_completa = os.path.join(directorio_raiz, archivo)
        tiempo_modificacion = os.path.getmtime(ruta_completa)
        fecha_modificacion = datetime.fromtimestamp(tiempo_modificacion).strftime('%Y-%m-%d %H:%M:%S')
        
        tamano_bytes = os.path.getsize(ruta_completa)
        registro.append({
                "ruta":ruta_completa,
                "fecha":fecha_modificacion,
                "tamano":tamano_bytes
            })

archivo = open("registro.json",'w')
json.dump(registro,archivo,indent=4)
archivo.close()
        
