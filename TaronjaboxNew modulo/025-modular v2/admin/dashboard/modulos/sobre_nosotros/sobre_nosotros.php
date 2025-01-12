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
    <title>Gestionar Sobre Nosotros</title>
    <link rel="stylesheet" href="sobre_nosotros.css">
    <script defer src="sobre_nosotros.js"></script>
</head>
<body>
    <h1>Gestión de Sobre Nosotros</h1>
    
    <!-- Formulario para añadir o actualizar -->
    <form id="aboutForm">
        <input type="hidden" id="id" name="id"> <!-- Campo oculto para el ID -->
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        
        <label for="contenido">Contenido:</label>
        <textarea id="contenido" name="contenido" required></textarea>
        
        <button type="submit" id="formButton">Añadir</button>
    </form>
    
    <h2>Registros Existentes</h2>
    <div id="aboutContainer"></div>
</body>
</html>
