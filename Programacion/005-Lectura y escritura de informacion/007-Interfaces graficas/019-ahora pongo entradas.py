import tkinter as tk

ventana = tk.Tk()
ventana.geometry("500x500")
ventana.title("Calculadora neandertal")

operando1=tk.IntVar()
operando2=tk.IntVar()

def calcula():
    print("Vamos a calcular!")

tk.Label(
    ventana,
    text="Introduce el primer operando"
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

tk.Label(
    ventana,
    text="Pulsa el boton para ver el resultado"
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

tk.Label(
    ventana,
    text="0"
    ).pack(
        padx=10,
        pady=10
        )















ventana.mainloop()