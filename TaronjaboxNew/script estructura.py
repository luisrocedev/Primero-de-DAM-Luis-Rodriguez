import os

# Función para crear la estructura de carpetas y archivos
def crear_estructura(base_path):
    # Definimos la estructura como un diccionario
    estructura = {
        'admin': {
            'assets': {
                'css': ['admin.css'],
                'img': ['logo.png'],
                'js': ['admin.js']
            },
            'modules': {
                'blog': ['blog.php', 'blog.controller.php', 'blog.model.php'],
                'entrenadores': ['entrenadores.php', 'entrenadores.controller.php', 'entrenadores.model.php'],
                'horarios': ['horarios.php', 'horarios.controller.php', 'horarios.model.php'],
                'mensajes': ['mensajes.php', 'mensajes.controller.php', 'mensajes.model.php'],
                'precios': ['precios.php', 'precios.controller.php', 'precios.model.php']
            },
            'includes': ['header.php', 'footer.php'],
            'index.php': None,
            'login.php': None
        },
        'front': {
            'assets': {
                'css': ['styles.css'],
                'img': ['logo.png'],
                'js': ['main.js']
            },
            'modulos': {
                'blog': ['blog.php', 'blog.controller.php', 'blog.model.php'],
                'entrenador': ['entrenador.php', 'entrenador.controller.php', 'entrenador.model.php'],
                'precios': ['precios.php', 'precios.controller.php', 'precios.model.php'],
                'sobre_mi': ['sobre_mi.php', 'sobre_mi.controller.php', 'sobre_mi.model.php'],
                'contacto': ['contacto.php', 'contacto.controller.php', 'contacto.model.php']
            },
            'includes': ['header.php', 'footer.php'],
            'index.php': None
        },
        'backend': {
            'includes': ['conexion.php', 'helpers.php', 'funciones.php'],
            'controllers': {
                'blog.controller.php': None,
                'entrenadores.controller.php': None,
                'horarios.controller.php': None,
                'mensajes.controller.php': None,
                'precios.controller.php': None,
                'sobre_mi.controller.php': None,
                'contacto.controller.php': None
            },
            'models': {
                'blog.model.php': None,
                'entrenadores.model.php': None,
                'horarios.model.php': None,
                'mensajes.model.php': None,
                'precios.model.php': None,
                'sobre_mi.model.php': None,
                'contacto.model.php': None
            },
            'index.php': None
        },
        'helpers': {
            'helpers.php': None
        },
        'uploads': {
            'blog': None,
            'entrenadores': None,
            'imagenes': None
        }
    }

    # Función recursiva para crear carpetas y archivos
    def crear_directorios_y_archivos(path, estructura):
        for nombre, contenido in estructura.items():
            nueva_ruta = os.path.join(path, nombre)
            if isinstance(contenido, dict):
                os.makedirs(nueva_ruta, exist_ok=True)
                crear_directorios_y_archivos(nueva_ruta, contenido)
            else:
                os.makedirs(os.path.dirname(nueva_ruta), exist_ok=True)
                with open(nueva_ruta, 'w') as archivo:
                    if contenido is not None:
                        archivo.write(f'Contenido de {nombre}')

    # Crear la estructura a partir de la ruta base
    os.makedirs(base_path, exist_ok=True)
    crear_directorios_y_archivos(base_path, estructura)

# Ruta base para la creación de la estructura
base_path = 'C:/xampp/htdocs/Primero-de-DAM-Luis-Rodriguez/TaronjaboxNew'
crear_estructura(base_path)

# Verificar que la estructura se creó correctamente
base_path
