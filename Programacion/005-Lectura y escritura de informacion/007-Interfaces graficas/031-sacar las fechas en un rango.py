from PIL import Image, ImageDraw, ImageFont
from funcionsemana import*

fechas = generate_specific_weekday_dates(
    '2024-10-27',
    '2024-10-31',
    2   
    )
print(fechas)

for numeroclase in range (1,11):
    imagencargada = Image.open('imagenes/captura.png')
    escalada = imagencargada.resize((1920,1080))
    width, height = 1920, 1080
    imagen = Image.new(
        'RGB',
        (width,height),
        color=(255,0,0)
        )
    imagen.paste(
        escalada,
        (0,0)
        )
    dibujo = ImageDraw.Draw(imagen, "RGBA")
    rectangulocoords = [(0, 800), (1920, 1080)]
    negrotransparente = (0, 0, 0, 200)
    dibujo.rectangle(rectangulocoords, fill=negrotransparente)
    try:
        fuente = ImageFont.truetype("parrafo.ttf",80)
    except IOError:
        fuente = ImageFont.load_default()
    texto = "Programasao - clase "+str(numeroclase)
    posiciontexto = (200,200)
    colortexto = (255,255,255)
    dibujo.text(posiciontexto, texto, font=fuente, fill=colortexto)
    ruta = 'imagenes/captura.png'+str(numeroclase)+'.png'
    imagen.save(ruta)