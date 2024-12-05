from funciones import *
from flask import Flask, request
from flask_cors import CORS 
aplicacion = Flask(__name__)  
CORS(aplicacion)  

host="localhost",                                       # Host de la base de datos        
user="user",                                   # Usuario de la base de datos       
password="user",                               # Contraseña del usuario 
database="user"  

@aplicacion.route('/loquesea')                    # Cuando alguien llame a damearticulos
def inicio():                                     # Defino una funcion
    return seleccionaloquesea()              # Devuelvo un mensaje

aplicacion.run()  