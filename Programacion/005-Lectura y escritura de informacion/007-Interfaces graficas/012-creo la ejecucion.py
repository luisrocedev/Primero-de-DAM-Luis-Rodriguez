import tkinter as tk

ventana = tk.Tk()
ventana.geometry("500x500+200+200")
ventana.title("El programa de Luis Rodriguez")

def ejecutaAlgo():
    print("ok, has pulsado el boton")
tk.Label(
    ventana,
    text="Hola mundo este es mi primer programa"
    ).pack(padx=10,pady=10)
tk.Entry(ventana).pack(padx=10,pady=10)
tk.Button(
        ventana,
        text="Pulsame nene",
        command=ejecutaAlgo
        ).pack(padx=10,pady=10)

ventana.mainloop()