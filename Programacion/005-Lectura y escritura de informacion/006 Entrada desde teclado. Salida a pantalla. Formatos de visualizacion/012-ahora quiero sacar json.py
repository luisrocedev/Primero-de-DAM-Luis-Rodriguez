from flask import Flask                                 # Importo la librería que me permite crear un miniservidor web

aplicacion = Flask(__name__)                            # Creo el servidor web

@aplicacion.route('/')                                  # Creo un escuchador para que esté pendiente de cuando alguien entre en la raiz
def inicio():                                           # Defino una funcion - se puede llamar como yo quiera
    contenido = {"resultado":"ok"}                      # Preparo un contenido
    return contenido                                    # Lanzo el contenido al navegador web          

aplicacion.run(debug=True)                              # Arranco el servidor
