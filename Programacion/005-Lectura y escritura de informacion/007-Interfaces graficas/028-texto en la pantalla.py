from PIL import Image, ImageDraw, ImageFont

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
dibujo = ImageDraw.Draw(imagen)

try:
    fuente = ImageFont.truetype("parrafo.ttf",80)
except IOError:
    fuente = ImageFont.load_default()

texto = "Programasao"
posiciontexto = (200,200)
colortexto = (255,255,255)
dibujo.text(posiciontexto,texto,font=fuente, fill=colortexto)
    
ruta = 'imagenes/captura.png'
imagen.save(ruta)