<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Entrenador</title>
    <link rel="stylesheet" href="/admin/assets/css/style.css">
</head>
<body>
    <h1>Editar Entrenador</h1>
    <form method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= htmlspecialchars($entrenador['id']) ?>">
        <input type="hidden" name="foto_actual" value="<?= htmlspecialchars($entrenador['foto']) ?>">
        
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" value="<?= htmlspecialchars($entrenador['nombre']) ?>" required>
        
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required><?= htmlspecialchars($entrenador['descripcion']) ?></textarea>
        
        <label for="foto">Nueva Foto:</label>
        <input type="file" id="foto" name="foto" accept="image/*">
        
        <button type="submit">Guardar Cambios</button>
    </form>
</body>
</html>
