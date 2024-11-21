# pip install ttkbootstrap
import ttkbootstrap as tk                                                   # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *                                        # Importo constantes necesarias para el diseño de la interfaz

ventana = tk.Window(themename="superhero")                                  # Creo una ventana principal con un tema específico
ventana.geometry("500x500")                                                 # Establezco el tamaño de la ventana
ventana.title("Calculadora impuestos")                                     # Defino el título de la ventana

# Variables para guardar los datos ingresados por el usuario
factura = tk.IntVar()                                                     # Variable para el primer número (entero)                                                    # Variable para el segundo número (entero)
operacion = tk.StringVar()                                                  # Variable para la operación (cadena de texto)

boton = tk.Button(
    ventana,
    text="Pulsame"
    )

def iva():
    impuesto1 = int(factura (21/100))
def irpf():
    impuesto2 = int(factura (15/100))
# Función para realizar el cálculo basado en la operación seleccionada
def calculaImpuesto():
    print("Vamos a calcular impuesto")                                          # Mensaje para verificar que se ejecuta la función
    global impuesto1                                                      # Uso las variables globales para acceder a sus valores
    global operacion
    global resultado

    numeroresultado = None                                            # Inicializo la variable para guardar el resultado
    resultado.config(text=numeroresultado)                                  # Actualizo el texto de la etiqueta con el resultado

    # Selección de la operación en función de la entrada del usuario
    if operacion.get() == boton.bind("<Button-1>"):                                              # Si la operación es suma
        numeroresultado = int(irpf-iva)
    else:                                                                   # Si la operación no es válida
        numeroresultado = "No permitido"
# Etiqueta y campo para el primer operando
tk.Label(ventana, text="Introduce la factura de empresa").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=factura).pack(padx=20, pady=4)

# Etiqueta y campo para el segundo operando

# Botón para ejecutar el cálculo
tk.Label(ventana, text="Pulsa para calcular impuestos").pack(padx=20, pady=4)
tk.Button(ventana, text="¡Calcula!", command=calculaImpuesto).pack(padx=20, pady=4)

# Etiqueta para mostrar el resultado
tk.Label(ventana, text="total a pagar").pack(padx=20, pady=4)
resultado = tk.Label(ventana, text="X")             # Etiqueta donde se mostrará el resultado del cálculo
resultado.pack(padx=20, pady=4)


# Bucle principal de la ventana
ventana.mainloop()