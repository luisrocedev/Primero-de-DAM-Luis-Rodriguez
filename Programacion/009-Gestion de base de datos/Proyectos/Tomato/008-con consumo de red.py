import matplotlib.pyplot as plt
import psutil
import time

# Obtener métricas del sistema
carga_cpu = psutil.cpu_percent(interval=1)
carga_ram = psutil.virtual_memory().percent
uso_disco = psutil.disk_usage('/').percent

# Medir el uso de red en un intervalo corto
data_inicio = psutil.net_io_counters()
time.sleep(1)  # Intervalo de medición
data_final = psutil.net_io_counters()

descarga_mbps = (data_final.bytes_recv - data_inicio.bytes_recv) / (1024 * 1024)
subida_mbps = (data_final.bytes_sent - data_inicio.bytes_sent) / (1024 * 1024)

# Guardar las métricas en un archivo
ruta_archivo = '/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/cargaampliada.txt'
with open(ruta_archivo, 'a') as archivo:
    archivo.write(f"{carga_cpu},{carga_ram},{uso_disco},{descarga_mbps},{subida_mbps}\n")

# Leer y procesar el archivo para las gráficas
with open(ruta_archivo, 'r') as archivo:
    lineas = archivo.readlines()

datos_cpu, datos_ram, datos_disco = [], [], []
datos_descarga, datos_subida = [], []

for linea in lineas:
    linea = linea.strip()
    if linea:
        # Dividir y validar la línea
        partes = linea.split(',')
        if len(partes) == 5:  # Asegurarse de que la línea tiene 5 valores
            try:
                cpu, ram, disco, descarga, subida = map(float, partes)
                datos_cpu.append(cpu)
                datos_ram.append(ram)
                datos_disco.append(disco)
                datos_descarga.append(descarga)
                datos_subida.append(subida)
            except ValueError:
                print(f"Línea inválida descartada (no se pudo convertir a float): {linea}")
        else:
            print(f"Línea con formato incorrecto descartada: {linea}")

# Generar y guardar gráfica de CPU
plt.figure(figsize=(10, 6))
plt.plot(datos_cpu, label='CPU', marker='o', color='blue')
plt.grid(True)
plt.ylim(0, 100)
plt.title('Uso de CPU')
plt.xlabel('Muestras')
plt.ylabel('Porcentaje de Uso')
plt.legend()
plt.savefig('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/carga_cpu.jpg')
plt.close()

# Generar y guardar gráfica de RAM
plt.figure(figsize=(10, 6))
plt.plot(datos_ram, label='RAM', marker='s', color='green')
plt.grid(True)
plt.ylim(0, 100)
plt.title('Uso de RAM')
plt.xlabel('Muestras')
plt.ylabel('Porcentaje de Uso')
plt.legend()
plt.savefig('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/carga_ram.jpg')
plt.close()

# Generar y guardar gráfica de Disco
plt.figure(figsize=(10, 6))
plt.plot(datos_disco, label='Disco', marker='^', color='red')
plt.grid(True)
plt.ylim(0, 100)
plt.title('Uso de Disco')
plt.xlabel('Muestras')
plt.ylabel('Porcentaje de Uso')
plt.legend()
plt.savefig('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/carga_disco.jpg')
plt.close()

# Generar y guardar gráfica de Uso de Red
plt.figure(figsize=(10, 6))
plt.plot(datos_descarga, label='Descarga (Mbps)', marker='o', color='purple')
plt.plot(datos_subida, label='Subida (Mbps)', marker='x', color='orange')
plt.grid(True)
plt.title('Uso de Red')
plt.xlabel('Muestras')
plt.ylabel('Velocidad (Mbps)')
plt.legend()
plt.savefig('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/carga_red.jpg')
plt.close()

print("Métricas guardadas y gráficas generadas correctamente.")
