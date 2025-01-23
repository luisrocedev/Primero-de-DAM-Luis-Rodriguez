<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - TaronjaBox Valencia</title>
    <link rel="stylesheet" href="../../assets/css/style.css"> <!-- CSS global -->
    <link rel="stylesheet" href="contacto.css"> <!-- CSS específico -->
</head>

<body>
    <?php include '../includes/header.php'; ?> <!-- Header reutilizable -->
    <main>
        <h2>Contacto</h2>
        <form id="form-contacto">
            <div>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div>
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="mensaje">Mensaje:</label>
                <textarea id="mensaje" name="mensaje" rows="5" required></textarea>
            </div>
            <button type="submit">Enviar</button>
        </form>
        <div id="respuesta-contacto"></div>
    </main>
    <?php include '../includes/footer.php'; ?> <!-- Footer reutilizable -->
</body>

</html>