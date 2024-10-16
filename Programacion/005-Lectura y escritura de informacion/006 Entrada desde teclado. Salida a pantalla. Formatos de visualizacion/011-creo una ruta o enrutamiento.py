from flask import Flask

aplicacion = Flask(__name__)

@aplicacion.route('/')
def inicio():
    contenido = '<p>Esta es la pagina de inicio</p>'
    return contenido

aplicacion.run(debug=True)
    
mensaje= {"resultado":"ok"}
print(mensaje)
