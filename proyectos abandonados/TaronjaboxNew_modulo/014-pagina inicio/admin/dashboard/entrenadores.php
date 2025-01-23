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
    <title>Gestionar Entrenadores</title>
    <link rel="stylesheet" href="entrenadores.css">
    <script defer src="entrenadores.js"></script>
</head>
<body>
    <h1>Gestión de Entrenadores</h1>
    <form id="trainerForm">
        <input type="hidden" id="id" name="id"> <!-- Campo oculto para el ID -->
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <label for="especialidad">Especialidad:</label>
        <input type="text" id="especialidad" name="especialidad" required>
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>
        <label for="foto_url">URL de la Foto:</label>
        <input type="text" id="foto_url" name="foto_url">
        <button type="submit" id="formButton">Añadir Entrenador</button>
    </form>
    <h2>Entrenadores Existentes</h2>
    <div id="trainersContainer"></div>
</body>
</html>
