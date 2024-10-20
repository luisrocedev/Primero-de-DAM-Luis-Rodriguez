import tkinter as tk

ventana = tk.Tk()
ventana.geometry("500x500")
ventana.title("Calculadora neandertal")

operando1=tk.IntVar()
operando2=tk.IntVar()

def calcula():
    global etiquetaresultado
    print("Vamos a calcular!")
    op1=operando1.get()
    op2=operando2.get()
    calculo=op1+op2
    etiquetaresultado.config(text=str(calculo))


tk.Label(
    ventana,
    text="Introduce el primer operando"
    ).pack(
        padx=10,
        pady=10
        )
tk.Entry(
    ventana,
    textvariable=operando1
    ).pack(
        padx=10,
        pady=10
        )


tk.Label(
    ventana,
    text="Introduce el segundo operando"
    ).pack(
        padx=10,
        pady=10
        )
tk.Entry(
    ventana,
    textvariable=operando2
    ).pack(
        padx=10,
        pady=10
        )


tk.Label(
    ventana,
    text="Pulsa el boton para ver el resultado"
    ).pack(
        padx=10,
        pady=10
        )
tk.Button(
    ventana,
    text="Calcula",
    command=calcula
    ).pack(
        padx=10,
        pady=10
        )


tk.Label(
    ventana,
    text="Este es el resultado"
    ).pack(
        padx=10,
        pady=10
        )
etiquetaresultado=tk.Label(
    ventana,
    text="0"
    )
etiquetaresultado.pack(
        padx=10,
        pady=10
        )


ventana.mainloop()