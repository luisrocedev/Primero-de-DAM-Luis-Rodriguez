<?php
$base_url = dirname(dirname(dirname($_SERVER['SCRIPT_NAME'])));
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias - TaronjaBox Valencia</title>
    <link rel="stylesheet" href="<?= $base_url ?>/assets/css/style.css">
</head>

<body>
    <?php include '../includes/header.php'; ?>
    <main>
        <h2>Noticias</h2>
        <div id="noticias-container">
            <p>Cargando noticias...</p>
        </div>
    </main>
    <footer>
        <p>&copy; <?= date('Y'); ?> TaronjaBox Valencia. Todos los derechos reservados.</p>
    </footer>
    <script src="<?= $base_url ?>/views/noticias/noticias.js"></script>
</body>

</html>