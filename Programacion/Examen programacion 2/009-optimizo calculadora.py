import tkinter as tk                                                        # Importo la libreria

ventana = tk.Tk();                                                          # Creo una ventana
 
operando1 = tk.IntVar()                                                     # Esta variable almacena un entero
operando2 = tk.IntVar()                                                     # Esta variable almacena un entero
operacion = tk.StringVar()                                                  # Esta variable almacena una cadena de texto


def calcula():
    print("Calculamos impuestos")
    global operando1
    global operando2
    global operacion
    global resultado
    print(operando1.get())

    numeroresultado = None
    if operacion.get() == "+":
        numeroresultado = operando1.get()+operando2.get()
        resultado.config(text=numeroresultado)
    else:
        resultado.config(text="No permitido")

tk.Label(ventana,text="Introduce la base de tu factura").pack(padx=20,pady=4)  # Creo una etiqueta
tk.Entry(ventana).pack(padx=20,pady=4)                                      # Creo un campo

tk.Label(ventana,text="Pulsa para calcular").pack(padx=20,pady=4)           # Creo una etiqueta
tk.Button(ventana,text="Pulsame",command=calcula).pack(padx=20,pady=4)               # Creo un boton

tk.Label(ventana,text="El resultado aparecerá aquí").pack(padx=20,pady=4)  # Creo una etiqueta
resultado = tk.Label(ventana,text="X")
resultado.pack(padx=20,pady=4)

ventana.mainloop();