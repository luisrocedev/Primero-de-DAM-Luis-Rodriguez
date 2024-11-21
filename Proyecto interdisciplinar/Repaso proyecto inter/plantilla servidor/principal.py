from funciones import *
from flask import Flask, request
from flask_cors import CORS 
aplicacion = Flask(__name__)  
CORS(aplicacion)  

host="localhost",                                       # Host de la base de datos        
user="cookiesexamen",                                   # Usuario de la base de datos       
password="cookiesexamen",                               # Contraseña del usuario 
database="cookiesexamen"  

@aplicacion.route('/cookies')                    # Cuando alguien llame a damearticulos
def inicio():                                     # Defino una funcion
    return seleccionaCookies()              # Devuelvo un mensaje

aplicacion.run()  