<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración</title>
    <link rel="stylesheet" href="assets/admin-styles.css">
</head>

<body>
    <header>
        <h1>Panel de Administración</h1>
    </header>
    <nav>
        <ul>
            <li><a href="controllers/NoticiasController.php?action=list">Noticias</a></li>
            <li><a href="controllers/GaleriaController.php?action=list">Galería</a></li>
            <li><a href="controllers/ClasesController.php?action=list">Clases</a></li>
            <li><a href="controllers/ContactoController.php?action=list">Mensajes de Contacto</a></li>
        </ul>
    </nav>
    <footer>
        <p><a href="logout.php">Cerrar Sesión</a></p>
    </footer>
</body>

</html>