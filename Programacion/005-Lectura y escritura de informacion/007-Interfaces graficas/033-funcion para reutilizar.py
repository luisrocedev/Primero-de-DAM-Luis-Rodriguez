from PIL import Image, ImageDraw, ImageFont
from funcionsemana import*

def generarimagenes(imagenfondo,asignatura,fechas):
    for fecha in fechas:
        imagencargada = Image.open(imagenfondo)
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
            texto = "Programasao - clase "+str(fecha)
            posiciontexto = (200,200)
            colortexto = (255,255,255)
            dibujo.text(posiciontexto, texto, font=fuente, fill=colortexto)
            ruta = 'imagenes/'+asignatura+'-'+str(fecha)+'.jpg'
            imagen.save(ruta)

fechas = generate_specific_weekday_dates(
    '2024-09-01',
    '2025-06-01',
    2   
    )
generarimagenes("captura.png","Base de datos",fechas)
