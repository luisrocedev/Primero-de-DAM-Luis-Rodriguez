#docstring
'''
    Programa agenda escolar virtual
    (c) 2024 Luis Rodriguez
'''

#Mensaje de bienvenida ########################
TITULO = "Programa agenda escolar virtual"
AUTOR = "Luis Rodriguez"
print(TITULO, "por", AUTOR)

#si indicamos un while true pero no indicamos un
#exit haremos un bucle infinito
while(True):
    
    print("Escoge una opción")
    print("1.-Insertar")
    print("2.-Listar")
    print("3.-Actualizar")
    print("4.-Eliminar")
    print("5.-Salir de la agenda escolar virtual")

# El usuario escoge una opción ################

    opcion = input ("Selecciona una opcion (1-5):")
    print ("Has selecionado la opcion:",opcion)

# Selecciono la operacion a realizar #########

    if opcion == "1":
        print ("Vamos a insertar una nota escolar")
    elif opcion == "2":
        print ("Vamos a listar las asignaturas")
    elif opcion == "3":
        print ("Vamos actualizar tus notas")
    elif opcion == "4":
        print ("Vamos a eliminar un apunte")
    elif opcion == "5":
        print ("Saliendo de la agenda escolar virtual")
        exit()

