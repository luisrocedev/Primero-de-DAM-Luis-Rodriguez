import tkinter as tk

ventana = tk.Tk()
# Crea la ventana principal.

def click(event):
    print("Yo te saludo")
    # Imprime un mensaje cuando se hace click con el botón izquierdo.

def clickmedio(event):
    print("HAS hecho click con el boton del medio del raton")
    # Imprime un mensaje cuando se hace click con el botón del medio.

def clickderecho(event):
    print("HAS hecho click con el boton derecho del raton")
    # Imprime un mensaje cuando se hace click con el botón derecho.

def dobleclick(event):
    print("HAS hecho doble click con el boton izquierdo del raton")
    # Imprime un mensaje cuando se hace doble click con el botón izquierdo.

def entrar(event):
    print("Has entrado")
    # Imprime un mensaje cuando el ratón entra en el área del botón.

def salir(event):
    print("Has salido")
    # Imprime un mensaje cuando el ratón sale del área del botón.

boton = tk.Button(
    ventana,
    text="Pulsame"
    )
# Crea un botón con el texto "Pulsame".

boton.pack(padx=50,pady=50)
# Coloca el botón en la ventana con espacio alrededor.

boton.bind("<Button-1>",click)
# Asocia el evento de click con el botón izquierdo con la función "click".

boton.bind("<Button-2>",clickmedio)
# Asocia el evento de click con el botón medio con la función "clickmedio".

boton.bind("<Button-3>",clickderecho)
# Asocia el evento de click con el botón derecho con la función "clickderecho".

boton.bind("<Double-Button-1>",dobleclick)
# Asocia el evento de doble click con el botón izquierdo con la función "dobleclick".

boton.bind("<Enter>",entrar)
# Asocia el evento cuando el ratón entra al área del botón con la función "entrar".

boton.bind("<Leave>",salir)
# Asocia el evento cuando el ratón sale del área del botón con la función "salir".
