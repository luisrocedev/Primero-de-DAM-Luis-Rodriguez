<?php
$base_url = dirname(dirname($_SERVER['SCRIPT_NAME']));
?>
<header>
    <h1>Bienvenido a TaronjaBox Valencia</h1>
    <nav>
        <a href="<?= $base_url ?>/index.php">Inicio</a>
        <a href="<?= $base_url ?>/views/noticias/noticias.php">Noticias</a>
        <a href="#">Clases</a>
        <a href="#">Galería</a>
        <a href="#">Contacto</a>
    </nav>
</header>