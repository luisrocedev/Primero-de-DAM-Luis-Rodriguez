import platform
import os

# Función para limpiar la pantalla en función del sistema operativo
def limpiaPantalla():
    if platform.system() == "Windows":
        os.system("cls")  # Comando para limpiar la pantalla en Windows
    else:
        os.system("clear")  # Comando para limpiar la pantalla en Linux/Mac

limpiaPantalla()  # Llamada a la función limpiaPantalla para limpiar la pantalla al iniciar