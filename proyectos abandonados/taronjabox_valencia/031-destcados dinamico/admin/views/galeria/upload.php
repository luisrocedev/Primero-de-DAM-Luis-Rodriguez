<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subir Imagen</title>
    <link rel="stylesheet" href="../assets/css/galeria-styles.css"> <!-- Ruta al CSS -->
</head>

<body>
    <div class="galeria-container">
        <h1>Subir Imagen</h1>
        <form method="POST" action="?action=upload" enctype="multipart/form-data">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" required>

            <label for="imagen">Seleccionar Imagen:</label>
            <input type="file" id="imagen" name="imagen" accept="image/*" required>

            <button type="submit" class="btn">Subir Imagen</button>
        </form>
    </div>
</body>

</html>