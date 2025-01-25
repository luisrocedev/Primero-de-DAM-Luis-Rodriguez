<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Documentación</title>
    <link rel="stylesheet" href="style.css"> <!-- Enlace al archivo de estilos -->
    <script src="scripts.js"></script> <!-- Enlace al archivo de scripts -->
</head>

<body>
    <!-- Barra lateral con el índice -->
    <div class="sidebar">
        <h1>Documentación</h1> <!-- Título principal -->
        <h2>Índice</h2> <!-- Subtítulo -->

        <ul class="toc">
            <?php
            require_once 'includes/navigation.php'; // Incluir el archivo que genera la navegación
            $baseDir = 'documentacion/docs'; // Directorio base para la documentación
            echo generateNavigation($baseDir); // Generar el índice dinámicamente
            ?>
        </ul>
    </div>

    <!-- Sección de contenido principal -->
    <div class="content" id="content">
        <h2>Selecciona un archivo para visualizar</h2>
        <p>El contenido del archivo aparecerá aquí.</p>
    </div>
</body>

</html>