# Docstring
'''
    Programa calculadora de primer tema de clase
    (c) 2024 Luis Rodriguez
    Este programa está hecho en Python
'''

# Introduccion / Presentacion 
NOMBRE_DEL_PROGRAMA = "Programa calculadora en Python"
VERSION = 2
AUTOR = "Luis Rodriguez"
print(NOMBRE_DEL_PROGRAMA,VERSION,AUTOR)


# Toma de datos

operando1 = float(input("Introduce el primer operando: "))
operando2 = float(input("Introduce el segundo operando: "))
operador = input("Introduce el operador (+,-,*,/): ")


# Toma de decisiones y realizacion de calculos.
if operador == "+":
    resultado = operando1 + operando2
    
elif operador == "-":
    resultado = operando1 - operando2
   
elif operador == "*":
    resultado = operando1 * operando2

elif operador == "/":
    resultado = operando1 / operando2

# Ofrecer resultados

print("El resultado de la operación es: ",resultado)

