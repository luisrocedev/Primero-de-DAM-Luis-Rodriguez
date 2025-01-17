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
</head>
<body>
    <h1>Gestión de Entrenadores</h1>
    <p>Aquí podrás crear, editar y eliminar publicaciones de los entrenadores.</p>
</body>
</html>
