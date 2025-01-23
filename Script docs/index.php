<!doctype html>
<html>

<head>
    <link rel="stylesheet" href="style.css">
    <script src="scripts.js"></script>
</head>

<body>
    <div class="sidebar">
        <h1>Documentación</h1>
        <h2>Índice</h2>
        <ul class="toc">
            <?php
            require_once 'includes/navigation.php';
            $baseDir = 'documentacion/docs';
            echo generateNavigation($baseDir);
            ?>
        </ul>
    </div>

    <div class="content" id="content">
        <h2>Selecciona un archivo para visualizar</h2>
        <p>El contenido del archivo aparecerá aquí.</p>
    </div>
</body>

</html>