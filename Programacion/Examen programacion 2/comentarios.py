import ttkbootstrap as tk                       # Importo la librería ttkbootstrap para interfaces gráficas
from ttkbootstrap.constants import *            # Importo constantes necesarias para el diseño de la interfaz
ventana = tk.Window(themename="superhero")      # Creo una ventana principal con un tema específico
ventana.geometry("500x500")                     # Establezco el tamaño de la ventana
ventana.title("Calculadora de impuestos")       # Defino el título de la ventana

# Variables para guardar los datos ingresados por el usuario
operando = tk.IntVar()                          # Variable para el primer número (entero)
operacion = tk.StringVar()                      # Variable para la operación (cadena de texto)

# Funciones para las operaciones básicas
def iva(a,b):
  resultado = a*b/100 
  return resultado                              # Retorna el resultado de iva
def irpf(a,b):
  resultado = a*b/100
  return resultado                              # Retorna el resultado de irpf

# Función para realizar el cálculo basado en la operación seleccionada
def calcula():
  print("ok")                                   # Mensaje para verificar que se ejecuta la función
  global operando # Uso las variables globales para acceder a sus valores
  global operacion
  global resultado

  resultadoimpuesto = None                      # Inicializo la variable para guardar el resultado


  

  resultado.config(text=resultadoimpuesto)

tk.Label(ventana, text="Introduce tu factura").pack(padx=20, pady=4)
tk.Entry(ventana, textvariable=operando).pack(padx=20, pady=4)

tk.Label(ventana, text="Pulsa para calcular").pack(padx=20, pady=4)
tk.Button(ventana, text="Calculando", command=calcula).pack(padx=20, pady=4)

tk.Label(ventana, text="El resultado aparecera aqui").pack(padx=20, pady=4)
resultado= tk.Label(ventana, text="X")
resultado.pack(padx=20, pady=4)

ventana.mainloop()