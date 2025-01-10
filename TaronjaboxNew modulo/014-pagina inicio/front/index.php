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
    <header>
        <h1>Bienvenido a TaronjaBox</h1>
    </header>
    <main>
        <section id="entrenadores">
            <h2>Entrenadores Destacados</h2>
            <div class="entrenadores-container"></div>
            <a href="../modulos/entrenador/entrenador.php">Ver todos los entrenadores</a>
        </section>

        <section id="horarios">
            <h2>Próximos Horarios</h2>
            <div class="horarios-container"></div>
            <a href="../modulos/horarios/horarios.php">Ver todos los horarios</a>
        </section>

        <section id="precios">
            <h2>Planes y Precios</h2>
            <div class="precios-container"></div>
            <a href="../modulos/precios/precios.php">Ver todos los planes</a>
        </section>

        <section id="blog">
            <h2>Últimas Noticias</h2>
            <div class="blog-container"></div>
            <a href="../modulos/blog/blog.php">Ver todas las noticias</a>
        </section>
    </main>
</body>
</html>
