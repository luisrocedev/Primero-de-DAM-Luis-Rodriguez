from flask import Flask,jsonify                         # Importo librería Flask
from flask_cors import CORS                             # Permito entrar a todo el mundo
import mysql.connector                                  # Uso el conector de MySQL

app = Flask(__name__)                                   # Creo un servidor
CORS(app)                                               # Utilizo CORS

@app.route('/damearticulos')                            # Cuando alguien llame a damearticulos
def home():                                             # Defino una funcion
    conexion = mysql.connector.connect(
        host="localhost",      
        user="landing",
        password="landing",
        database="landing"
    )                                                   # Me conecto al servidor con las credenciales correctas
    cursor = conexion.cursor(dictionary=True)           # Creo un cursor y le digo que me lo devuelva en modo diccionario
    peticion = "SELECT * FROM blog"                     # Le pido algo a la base de datos
    cursor.execute(peticion)                            # Ejecuto la petición en el cursor
    resultados = cursor.fetchall()                      # Meto los resultados en una lista
    cursor.close()
    conexion.close()                                    # Cierra la conexión
    return jsonify(resultados), 200   


@app.route('/dameportafolio')                           # Cuando alguien llame a damearticulos
def portafolio():                                       # Defino una funcion
    conexion = mysql.connector.connect(
        host="localhost",      
        user="landing",
        password="landing",
        database="landing"
    )                                                   # Me conecto al servidor con las credenciales correctas
    cursor = conexion.cursor(dictionary=True)           # Creo un cursor y le digo que me lo devuelva en modo diccionario
    peticion = "SELECT * FROM portafolio ORDER BY RAND() LIMIT 3"               # Le pido algo a la base de datos
    cursor.execute(peticion)                            # Ejecuto la petición en el cursor
    resultados = cursor.fetchall()                      # Meto los resultados en una lista
    cursor.close()
    conexion.close()                                    # Cierra la conexión
    return jsonify(resultados), 200 

if __name__ == '__main__':                              # Si estoy en el archivo principal
    app.run(debug=True)                                 # Corro el servidor
