import os

# Estructura de directorios y archivos
project_structure = {
    'taronjabox': {
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
            'index.php': '',
            'login.php': ''
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
            'index.php': ''
        },
        'backend': {
            'includes': ['conexion.php', 'helpers.php', 'funciones.php'],
            'controllers': {
                'blog.controller.php': '',
                'entrenadores.controller.php': '',
                'horarios.controller.php': '',
                'mensajes.controller.php': '',
                'precios.controller.php': '',
                'sobre_mi.controller.php': '',
                'contacto.controller.php': ''
            },
            'models': {
                'blog.model.php': '',
                'entrenadores.model.php': '',
                'horarios.model.php': '',
                'mensajes.model.php': '',
                'precios.model.php': '',
                'sobre_mi.model.php': '',
                'contacto.model.php': ''
            },
            'index.php': ''
        },
        'helpers': {
            'helpers.php': ''
        },
        'uploads': {
            'blog': [],
            'entrenadores': [],
            'imagenes': []
        }
    }
}

def create_structure(base_path, structure):
    for name, value in structure.items():
        current_path = os.path.join(base_path, name)
        
        if isinstance(value, dict):  # Si el valor es un diccionario, se sigue creando la estructura
            os.makedirs(current_path, exist_ok=True)
            create_structure(current_path, value)
        else:  # Si el valor es una lista de archivos, se crean los archivos vacíos
            os.makedirs(current_path, exist_ok=True)
            for file_name in value:
                open(os.path.join(current_path, file_name), 'w').close()

# Crear la estructura de carpetas y archivos
base_path = 'C:/xampp/htdocs/Primero-de-DAM-Luis-Rodriguez/TaronjaboxNew'  # Cambia este path si lo deseas en otra ubicación
create_structure(base_path, project_structure)

print("Estructura de proyecto creada exitosamente.")
