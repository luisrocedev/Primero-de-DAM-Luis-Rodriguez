from flask import Flask

app = Flask(__name__)

@app.route('/')
def inicio():
    cadena = '''
        <style>
            .dia{
                border:1px solid black;
                width:50px;
                height:50px;
                display:inline-block;
                font-family:sans-serif;
                text-align:center;
            }
            #calendario{
                widht:400px;
                height:300px;
            }
        </style>
    '''
    for mes in range (1,13):
        cadena += '''
            <div id = "calendario">
        '''
        for dia in range (1,31):
            cadena += "<div class = 'dia'>"+str(dia)+"</div>"
        
        cadena += '</div>'
    return cadena

if __name__ == '__main__':
    app.run(debug=True)