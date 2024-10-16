import json  #importamos json para poder trabajar con este formato

personas = [ #Creamos lista llamada persona

    {
        "nombre": "Luis", #definimos nombre (con variable)
        "apellidos": "Rodriguez", #definimos apellido (con variable)
        "telefono": "783248923", #definimos numero (con variable)
        "email": "luisilustraciones@gmail.com" #definimos email (con variable)
    },
    {
        "nombre": "Josue", #definimos nombre (con variable)
        "apellidos": "Rodriguez", #definimos apellido (con variable)
        "telefono": "783248923", #definimos numero (con variable)
        "email": "josue.rodriguez1@gmail.com" #definimos email (con variable)
    },
]

empleados_json = json.dumps(personas) #convertimos la lista personas a una cadena JSON
print(empleados_json)  #imprimimos la lista json
