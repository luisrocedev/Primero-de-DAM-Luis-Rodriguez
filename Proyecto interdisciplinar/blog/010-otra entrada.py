from flask import Flask
from flask_cors import CORS

aplicacion = Flask(__name__)
CORS(aplicacion)

@aplicacion.route('/')
def inicio():
    entradas = []
    entradas.append({
        "titulo":"Mi primera entrada",
        "fecha":"2024-09-26",
        "contenido":"Este es el contenido de mi primera entrada"
        })
    entradas.append({
        "titulo":"Mi segunda entrada desde python",
        "fecha":"2024-09-26",
        "contenido":"Este contenido esta ligado a Python, si no lo estuviese no lo podrias leer jeje"
    })
    return entradas

if __name__ == '__main__':
    aplicacion.run()