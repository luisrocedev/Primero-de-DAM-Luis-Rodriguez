# pip install ttkbootstrap
import ttkbootstrap as tk                                                   # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *                                        # Importo constantes necesarias para el diseño de la interfaz
# Configuración de la ventana principal
ventana = tk.Window(themename="superhero")                                  # Creo una ventana principal con un tema específico
ventana.geometry("500x500")                                                 # Establezco el tamaño de la ventana
ventana.title("Calculadora neandertal")                                     # Defino el título de la ventana

operando1 = tk.IntVar()                                                         # Esta variable almacena un entero

operacion = tk.StringVar()                                                      # Esta variable almacena una cadena

def iva(a,b):
    return a * b
def irpf(a,b):
    return a * b

def calcula():
    print("Calculando impuestos")
    global operando1                                                            # Traigo las variables dentro de la funcion
    global operacion
    global resultado

    
    numeroresultado = None                                                  # Inicializo la variable para guardar el resultado

    # Selección de la operación en función de la entrada del usuario
    if operacion.get() == "calcular":                                              # Si la operación es suma
        numeroresultado = iva(operando1.get())

    else:                                                                   # Si la operación no es válida
        numeroresultado = "No permitido"

    resultado.config(text=numeroresultado)                                  # Actualizo el texto de la etiqueta con el resultado


# Etiqueta y campo para el primer operando
tk.Label(ventana,text="Introduce tu factura").pack(padx=20,pady=4)  # Creo una etiqueta
tk.Entry(ventana,textvariable = operando1).pack(padx=20,pady=4)

# Etiqueta y campo para seleccionar la operación
tk.Label(ventana, text="Escribe 'calcular impuestos' para calcular").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=operacion).pack(padx=20, pady=4)

# Botón para ejecutar el cálculo
tk.Label(ventana, text="Pulsa para ejecutar").pack(padx=20, pady=4)
tk.Button(ventana,text="Calcula impuesto",command=calcula).pack(padx=20,pady=4)               # Creo un boton

tk.Label(ventana,text="El resultado aparecerá aquí").pack(padx=20,pady=4)  # Creo una etiqueta
resultado = tk.Label(ventana,text="X")
resultado.pack(padx=20,pady=4)

ventana.mainloop();