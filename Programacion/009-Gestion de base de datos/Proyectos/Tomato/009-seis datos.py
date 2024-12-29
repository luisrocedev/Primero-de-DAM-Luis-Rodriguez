import matplotlib.pyplot as plt
import psutil
import time
import subprocess

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

# Obtener la temperatura en macOS
def obtener_temperaturas():
    try:
        salida = subprocess.check_output(['osx-cpu-temp'], encoding='utf-8')
        temp = float(salida.strip().replace('°C', '').replace('°F', ''))
        return [temp]
    except Exception as e:
        print(f"Error al obtener temperaturas: {e}")
        return [0]  # Valor por defecto

temperaturas = obtener_temperaturas()
temperatura_promedio = sum(temperaturas) / len(temperaturas)

# Obtener el número de conexiones activas (requiere permisos de administrador)
try:
    num_conexiones = len(psutil.net_connections())
except psutil.AccessDenied:
    print("Permiso denegado para obtener conexiones activas. Ejecuta el script como administrador.")
    num_conexiones = 0

# Guardar las métricas en un archivo
ruta_archivo = ('/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/Programacion/009-Gestion de base de datos/Proyectos/Tomato/carga6.txt')
with open(ruta_archivo, 'a') as archivo:
    archivo.write(f"{carga_cpu},{carga_ram},{uso_disco},{descarga_mbps},{subida_mbps},{temperatura_promedio},{num_conexiones}\n")

# Leer y procesar el archivo para las gráficas
with open(ruta_archivo, 'r') as archivo:
    lineas = archivo.readlines()

datos_cpu, datos_ram, datos_disco = [], [], []
datos_descarga, datos_subida = [], []
datos_temperatura, datos_conexiones = [], []
for linea in lineas:
    linea = linea.strip()
    if linea:
        try:
            cpu, ram, disco, descarga, subida, temp, conexiones = map(float, linea.split(','))
            datos_cpu.append(cpu)
            datos_ram.append(ram)
            datos_disco.append(disco)
            datos_descarga.append(descarga)
            datos_subida.append(subida)
            datos_temperatura.append(temp)
            datos_conexiones.append(conexiones)
        except ValueError:
            print(f"Línea con formato incorrecto descartada: {linea}")

# Generar las gráficas (mantener igual)
# ...
