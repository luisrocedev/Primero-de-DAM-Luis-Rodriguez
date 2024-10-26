#Definimos constantes
BARRA_OLIMPICA = 20

#Ejemplo de literales
nombre_atleta = "Luis"
apellido_atleta = "Rodriguez"
peso_atleta = 70

def luis_mas_barra(peso):
    luisbarra = peso + BARRA_OLIMPICA
    return luisbarra
luisbarra = luis_mas_barra(peso_atleta)

print("El atleta",nombre_atleta ,apellido_atleta, "suma con la barra olimpica un peso de...",luisbarra, "kg!!!!")
