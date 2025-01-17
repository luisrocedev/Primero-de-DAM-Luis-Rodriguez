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
    <title>Gestionar Precios</title>
    <link rel="stylesheet" href="precios.css">
    <script defer src="precios.js"></script>
</head>
<body>
    <h1>Gestión de Precios</h1>
    <form id="addPriceForm">
        <label for="nombre_plan">Nombre del Plan:</label>
        <input type="text" id="nombre_plan" name="nombre_plan" required>
        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" required></textarea>
        <label for="precio">Precio:</label>
        <input type="number" id="precio" name="precio" step="0.01" required>
        <button type="submit">Añadir Plan</button>
    </form>
    <h2>Planes Existentes</h2>
    <div id="pricesContainer"></div>
</body>
</html>
