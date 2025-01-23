<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/sobre_nosotros.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Sobre Nosotros</title>
    <link rel="stylesheet" href="sobre_nosotros.css">
    <script defer src="sobre_nosotros.js"></script>
</head>
<body>
    <header>
        <h1>Sobre Nosotros</h1>
    </header>
    <main>
        <div id="aboutContent"></div> <!-- Contenedor dinámico -->
    </main>
</body>
</html>
