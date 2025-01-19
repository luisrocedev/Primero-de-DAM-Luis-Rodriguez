<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Imagen</title>
    <link rel="stylesheet" href="../assets/css/galeria-styles.css"> <!-- Ruta al CSS -->
</head>

<body>
    <div class="galeria-container">
        <h1>Editar Imagen</h1>
        <form method="POST" action="?action=edit&id=<?= htmlspecialchars($imagen['id']); ?>" enctype="multipart/form-data">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" value="<?= htmlspecialchars($imagen['titulo']); ?>" required>

            <label for="imagen">Cambiar Imagen (opcional):</label>
            <input type="file" id="imagen" name="imagen" accept="image/*">

            <p>Imagen actual:</p>
            <img src="../../uploads/<?= htmlspecialchars($imagen['imagen']); ?>"
                alt="<?= htmlspecialchars($imagen['titulo']); ?>" class="current-image">

            <button type="submit" class="btn">Guardar Cambios</button>
        </form>
    </div>
</body>

</html>