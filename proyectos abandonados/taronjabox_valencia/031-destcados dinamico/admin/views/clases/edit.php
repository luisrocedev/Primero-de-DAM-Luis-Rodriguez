<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Clase</title>
    <link rel="stylesheet" href="../assets/css/clases-styles.css"> <!-- Ruta al CSS -->
</head>

<body>
    <div class="clases-container">
        <h1>Editar Clase</h1>
        <form method="POST" action="?action=edit&id=<?= htmlspecialchars($clase['id']); ?>">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" value="<?= htmlspecialchars($clase['nombre']); ?>" required>

            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" rows="4" required><?= htmlspecialchars($clase['descripcion']); ?></textarea>

            <label for="horario">Horario:</label>
            <input type="time" id="horario" name="horario" value="<?= htmlspecialchars($clase['horario']); ?>" required>

            <label for="capacidad">Capacidad:</label>
            <input type="number" id="capacidad" name="capacidad" value="<?= htmlspecialchars($clase['capacidad']); ?>" required>

            <button type="submit" class="btn">Guardar Cambios</button>
        </form>
    </div>
</body>

</html>