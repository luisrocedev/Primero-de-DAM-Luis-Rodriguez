<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/precios.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Precios</title>
    <link rel="stylesheet" href="precios.css">
    <script defer src="precios.js"></script>
</head>
<body>
    <header>
        <h1>Planes y Precios</h1>
    </header>
    <main>
        <div class="prices-container" id="pricePlans">
            <!-- Aquí se cargarán los precios dinámicamente -->
        </div>
    </main>
</body>
</html>
