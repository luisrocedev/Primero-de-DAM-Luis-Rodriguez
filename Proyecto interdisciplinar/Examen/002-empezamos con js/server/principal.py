from funciones import *                                 #importo todas las funciones
from flask import Flask                                 #importo flask
from flask_cors import CORS                             #import CORS para que no me de error
aplicacion = Flask(__name__)                            #Inserto codigo para validar CORS
CORS(aplicacion)  

host="localhost",                                       # Host de la base de datos        
user="cookiesexamen",                                   # Usuario de la base de datos       
password="cookiesexamen",                               # Contraseña del usuario 
database="cookiesexamen"                                # Base de datos

@aplicacion.route('/cookies')                    # Cuando alguien llame a damearticulos
def inicio():                                     # Defino una funcion
    return seleccionaCookies()              # Devuelvo un mensaje

aplicacion.run()                                                             # Mensaje de cierre