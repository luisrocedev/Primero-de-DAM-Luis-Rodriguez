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
    <title>Gestionar Horarios</title>
    <link rel="stylesheet" href="horarios.css">
    <script defer src="horarios.js"></script>
</head>
<body>
    <form id="scheduleForm">
        <input type="hidden" id="id" name="id"> <!-- Campo oculto para el ID -->
        <label for="dia">Día:</label>
        <input type="text" id="dia" name="dia" required>
        <label for="hora">Hora:</label>
        <input type="time" id="hora" name="hora" required>
        <label for="actividad">Actividad:</label>
        <input type="text" id="actividad" name="actividad" required>
        <label for="entrenador_id">ID del Entrenador (Opcional):</label>
        <input type="number" id="entrenador_id" name="entrenador_id">
        <button type="submit" id="formButton">Añadir Horario</button>
    </form>
    <h2>Horarios Existentes</h2>
    <div id="schedulesContainer"></div>
</body>
</html>
