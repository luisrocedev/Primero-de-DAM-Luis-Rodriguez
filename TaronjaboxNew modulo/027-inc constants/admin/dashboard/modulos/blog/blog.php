<?php
session_start();
require_once '/../helpers/constants.php';
require_once '/../config/database.php';

if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Gestionar Blog</title>
    <link rel="stylesheet" href="styles/blog.css">
    <script defer src="scripts/blog.js"></script>
</head>
<body>
    <form id="blogForm">
        <input type="hidden" id="id" name="id"> <!-- Campo oculto para el ID -->
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        <label for="contenido">Contenido:</label>
        <textarea id="contenido" name="contenido" required></textarea>
        <button type="submit" id="formButton">Añadir Publicación</button>
    </form>
    <h2>Publicaciones Existentes</h2>
    <div id="postsContainer"></div>    
</body>
</html>
