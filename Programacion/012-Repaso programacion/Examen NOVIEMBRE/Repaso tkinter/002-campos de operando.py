import tkinter as tk                                                        # Importo la libreria

ventana = tk.Tk();                                                          # Creo una ventana

tk.Label(ventana,text="Introduce el primer operando").pack(padx=20,pady=4)  # Creo una etiqueta
tk.Entry(ventana).pack(padx=20,pady=4)                                      # Creo un campo

tk.Label(ventana,text="Introduce el segundo operando").pack(padx=20,pady=4)  # Creo una etiqueta
tk.Entry(ventana).pack(padx=20,pady=4)                                      # Creo un campo

ventana.mainloop();
