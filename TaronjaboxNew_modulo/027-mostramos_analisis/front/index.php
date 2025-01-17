<?php
require_once '../helpers/getBaseURL.php';
$baseURL = getBaseURL();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaronjaBox - Inicio</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <script defer src="assets/js/index.js"></script>
</head>
<body>
    <?php include 'modulos/header/header.php'; ?>
    <?php include 'modulos/hero/hero.php'; ?>
    <?php include 'modulos/destacados/destacados.php'; ?>
    <?php include 'modulos/footer/footer.php'; ?>
</body>
</html>