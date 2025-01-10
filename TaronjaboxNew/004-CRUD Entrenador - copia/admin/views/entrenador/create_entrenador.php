<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Crear Entrenador</title>
    <link rel="stylesheet" href="/admin/assets/css/style.css">
</head>
<body>
    <h1>Crear Entrenador</h1>
    <form method="POST" enctype="multipart/form-data">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        
        <label for="especialidad">Especialidad:</label>
        <input type="text" id="especialidad" name="especialidad" required>
        
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>
        
        <label for="foto_url">Foto:</label>
        <input type="file" id="foto_url" name="foto_url" accept="image/*" required>
        
        <button type="submit">Crear</button>
    </form>
</body>
</html>
