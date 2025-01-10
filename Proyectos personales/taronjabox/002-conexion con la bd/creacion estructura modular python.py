import os

# Ruta base para la estructura del proyecto
base_path = "/Applications/MAMP/htdocs/GitHub/Primero-de-DAM-Luis-Rodriguez/taronjabox"

# Estructura de carpetas
folders = [
    # Admin
    "Admin/css",
    "Admin/js",
    "Admin/includes",
    "Admin/modulos/blog",
    "Admin/modulos/precios",
    "Admin/modulos/entrenadores",
    
    # Back
    "Back/api",
    "Back/controllers",
    "Back/includes",
    
    # Front
    "Front/css",
    "Front/js",
    "Front/img",
    "Front/pages",
    "Front/includes",
    
    # Database
    "database"
]

# Archivos vacíos
files = {
    # Admin
    "Admin/includes/header.php": "",
    "Admin/includes/footer.php": "",
    "Admin/includes/db.php": "",
    "Admin/index.php": "",
    "Admin/login.php": "",
    "Admin/logout.php": "",
    "Admin/modulos/blog/index.php": "",
    "Admin/modulos/blog/add.php": "",
    "Admin/modulos/blog/edit.php": "",
    "Admin/modulos/blog/delete.php": "",
    
    # Back
    "Back/api/blog.php": "",
    "Back/api/precios.php": "",
    "Back/api/entrenadores.php": "",
    "Back/controllers/BlogController.php": "",
    "Back/controllers/PreciosController.php": "",
    "Back/controllers/EntrenadoresController.php": "",
    "Back/includes/db.php": "",
    "Back/includes/helpers.php": "",
    
    # Front
    "Front/includes/header.php": "",
    "Front/includes/footer.php": "",
    "Front/includes/db.php": "",
    "Front/pages/index.php": "",
    "Front/pages/blog.php": "",
    "Front/pages/precios.php": "",
    "Front/pages/entrenadores.php": "",
    "Front/index.php": "",
    
    # Database
    "database/taronjabox.sql": "-- Archivo SQL para la base de datos"
}

# Crear carpetas
for folder in folders:
    os.makedirs(os.path.join(base_path, folder), exist_ok=True)

# Crear archivos vacíos
for file, content in files.items():
    file_path = os.path.join(base_path, file)
    with open(file_path, "w") as f:
        f.write(content)

base_path
