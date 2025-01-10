<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Gestionar Blog</title>
    <link rel="stylesheet" href="blog.css">
    <script defer src="blog.js"></script>
</head>
<body>
    <h1>Gestión del Blog</h1>
    <form id="addPostForm">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        <label for="contenido">Contenido:</label>
        <textarea id="contenido" name="contenido" required></textarea>
        <button type="submit">Añadir Publicación</button>
    </form>
    <h2>Publicaciones Existentes</h2>
    <div id="postsContainer"></div>
</body>
</html>
