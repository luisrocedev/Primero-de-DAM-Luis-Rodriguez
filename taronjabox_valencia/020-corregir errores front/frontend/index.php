<?php
$base_url = dirname($_SERVER['SCRIPT_NAME']);
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaronjaBox Valencia</title>
    <link rel="stylesheet" href="<?= $base_url ?>/assets/css/style.css">
</head>

<body>
    <?php include 'views/includes/header.php'; ?>
    <main>
        <p>Explora nuestras secciones usando el menú de navegación.</p>
    </main>
    <footer>
        <p>&copy; <?= date('Y'); ?> TaronjaBox Valencia. Todos los derechos reservados.</p>
    </footer>
    <script src="<?= $base_url ?>/assets/js/main.js"></script>
</body>

</html>