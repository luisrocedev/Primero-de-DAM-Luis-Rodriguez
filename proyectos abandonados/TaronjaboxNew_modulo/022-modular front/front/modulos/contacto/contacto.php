<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/contacto.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Contacto</title>
    <link rel="stylesheet" href="contacto.css">
    <script defer src="contacto.js"></script>
</head>
<body>
    <header>
        <h1>Contacto</h1>
    </header>
    <main>
        <form id="contactForm">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required>

            <label for="mensaje">Mensaje:</label>
            <textarea id="mensaje" name="mensaje" required></textarea>

            <button type="submit">Enviar</button>
        </form>
        <div id="responseMessage"></div>
    </main>
</body>
</html>
