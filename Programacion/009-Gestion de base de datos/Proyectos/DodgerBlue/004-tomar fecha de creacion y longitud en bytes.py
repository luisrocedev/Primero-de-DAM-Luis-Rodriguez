import os
from datetime import datetime

ruta = "/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox"

for directorio_raiz, subcarpetas, archivos in os.walk(ruta):
    for archivo in archivos:
        ruta_completa = os.path.join(directorio_raiz, archivo)
        
        # Obtener el tiempo de última modificación y convertirlo a formato legible
        tiempo_modificacion = os.path.getmtime(ruta_completa)
        fecha_modificacion = datetime.fromtimestamp(tiempo_modificacion)
        
        # Obtener el tamaño en bytes
        tamano_bytes = os.path.getsize(ruta_completa)
        
        # Mostrar información
        print(f"Ruta: {ruta_completa}")
        print(f"Última modificación: {fecha_modificacion}")
        print(f"Tamaño (bytes): {tamano_bytes}")
        print("-" * 40)
