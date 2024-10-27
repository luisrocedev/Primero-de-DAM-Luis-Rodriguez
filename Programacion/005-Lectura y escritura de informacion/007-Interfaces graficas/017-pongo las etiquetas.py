import tkinter as tk

ventana = tk.Tk()
ventana.geometry("500x500")
ventana.title("Calculadora neandertal")

tk.Label(
    ventana,
    text="Introduce el primer operando"
    ).pack(
        padx=10,
        pady=10
        )


ventana.mainloop()