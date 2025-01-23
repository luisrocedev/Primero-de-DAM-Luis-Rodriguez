<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/horarios.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horarios</title>
    <link rel="stylesheet" href="horarios.css">
    <script defer src="horarios.js"></script>
</head>
<body>
    <header>
        <h1>Horarios</h1>
    </header>
    <main>
        <div class="schedules-container" id="schedules">
            <!-- Aquí se cargarán los horarios dinámicamente -->
        </div>
    </main>
</body>
</html>
