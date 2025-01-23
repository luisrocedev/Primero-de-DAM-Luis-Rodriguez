<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Clase</title>
    <link rel="stylesheet" href="../assets/css/clases-styles.css"> <!-- Ruta al CSS -->
</head>

<body>
    <div class="clases-container">
        <h1>Crear Clase</h1>
        <form method="POST" action="?action=create">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" rows="4" required></textarea>

            <label for="horario">Horario:</label>
            <input type="time" id="horario" name="horario" required>

            <label for="capacidad">Capacidad:</label>
            <input type="number" id="capacidad" name="capacidad" required>

            <button type="submit" class="btn">Crear Clase</button>
        </form>
    </div>
</body>

</html>