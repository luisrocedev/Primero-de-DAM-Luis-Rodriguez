import tkinter as tk

ventana = tk.Tk()

def saluda():
    print("Yo te saludo")

botn = tk.Button(
    ventana,
    text="Pulsame"
    )
boton.pack(padx=50,pady=50)
