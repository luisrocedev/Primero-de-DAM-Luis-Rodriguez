import tkinter as tk

ventana = tk.Tk()
ventana.geometry("500x500+200+200")
ventana.title("El programa de Luis Rodriguez")

contenidocampo1 = tk.StringVar()

def ejecutaAlgo():
    print("ok, has pulsado el boton")
    contenido_del_campo = contenidocampo1.get()
    print(contenido_del_campo)
    global texto                    # Meto la variable externa dentro de la funcion
    texto.config(text=contenido_del_campo)

texto = tk.Label(
    ventana,
    text = "Hola mundo este es mi primer programa"
    )                               # Aquí creo un texto en memoria
texto.pack(padx=10,pady=10)         # Ahora añado el texto a la interfaz

tk.Entry(
    ventana,
    textvariable=contenidocampo1
    ).pack(padx=10,pady=10)

tk.Button(
    ventana,
    text = "Pulsame nene",
    command = ejecutaAlgo
    ).pack(padx=10,pady=10)

ventana.mainloop()