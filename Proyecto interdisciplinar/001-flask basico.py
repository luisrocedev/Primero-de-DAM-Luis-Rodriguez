# pip install Flask
from flask import Flask

app = Flask(__name__)

@app.route('/')
def inicio():
    return 'Esta es mi web'

if __name__ == '__main__':
    app.run(debug=True)