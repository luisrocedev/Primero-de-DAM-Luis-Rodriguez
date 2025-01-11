<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/entrenadores.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrenadores</title>
    <link rel="stylesheet" href="entrenador.css">
    <script defer src="entrenador.js"></script>
</head>
<body>
    <header>
        <h1>Entrenadores</h1>
    </header>
    <main>
        <div class="entrenadores-container" id="entrenadores">
            <!-- Aquí se cargarán los entrenadores dinámicamente -->
        </div>
    </main>
</body>
</html>
