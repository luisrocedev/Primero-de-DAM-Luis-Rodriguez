import os
import time
from datetime import datetime
import shutil

try:                                                            # Intento
    os.mkdir("/Applications/backups")                           # Crear la carpeta de backups
except:                                                         # En el caso de que de error
    print("la carpeta ya existe, continuamos...")               # Saco un mensaje por consola

ahora = datetime.now()                                          # Atrapo el tiempo actual
fecha = ahora.strftime("%Y-%m-%d-%H-%M-%S")                     # Lo formateo en un formato humanamente entendible
epoch = str(round(time.time()))                                 # Obtengo la era unix
fechacompuesta = fecha+"_"+epoch                                # Creo una fecha compuesta
print(fechacompuesta)                                           # Imprimo la fecha
#os.mkdir("/Applications/backups/"+fechacompuesta)                # Creo un directorio con la fecha compuesta
origen = "/Applications/MAMP/htdocs/GitHub/Proyecto"
destino = "/Applications/backups/"+fechacompuesta
shutil.copytree(origen, destino) 
 
