#pip install ttkbootstrap
import ttkbootstrap as tk
from ttkbootstrap.constants import *            # Importo librería para poder crear interfaces de usuario
 
ventana = tk.Window(themename="superhero")      # Creo una nueva ventana
ventana.geometry("500x500")                     # Le pongo dimensiones a la ventana
ventana.title("Calculadora neandertal")         # Le pongo un titulo a la ventana

operando1=tk.IntVar()                           # Creo una variable de tkinter para almacenar información
operando2=tk.IntVar()                           # Creo una variable de tkinter para almacenar información

def calcula():                                  # Función que se ejecuta al pulsar el boton
    global etiquetaresultado                    # Meto aqui dentro la variable de etiquetaresultado
    print("Vamos a calcular!")                  # Imprimo un mensaje con mis intenciones
    op1=operando1.get()                         # Obtengo el valor del campo 1
    op2=operando2.get()                         # Obtengo el valor del campo 2
    calculo=op1+op2                             # Realizo un cálculo
    etiquetaresultado.config(text=str(calculo)) # Imprimo ese cálculo en la pantalla


tk.Label(
    ventana,
    text="Introduce el primer operando"
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo una etiqueta inicial
tk.Entry(
    ventana,
    textvariable=operando1
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo un campo de texto


tk.Label(
    ventana,
    text="Introduce el segundo operando"
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo una etiqueta para el operador 2
tk.Entry(
    ventana,
    textvariable=operando2
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo un campo de texto


tk.Label(
    ventana,
    text="Pulsa el boton para ver el resultado"
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo una etiqueta para el el boton
tk.Button(
    ventana,
    text="Calcula",
    command=calcula,
    width=40
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo un boton


tk.Label(
    ventana,
    text="Este es el resultado"
    ).pack(
        padx=10,
        pady=10
        )                                       # Creo una etiqueta para anunciar el resultado
etiquetaresultado=tk.Label(
    ventana,
    text="0"
    )                                           # Creo una etiqueta pero en memoria para luego poder llamarla
etiquetaresultado.pack(
        padx=10,
        pady=10
        )                                       # La empaqueto


ventana.mainloop()                              # Entro en el bucle principal