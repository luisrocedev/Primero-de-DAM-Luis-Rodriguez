<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    header('Location: login.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>

<body>
    <h1>Bienvenido al Panel de Administración</h1>
    <p>¡Has iniciado sesión correctamente!</p>
    <a href="logout.php">Cerrar sesión</a>
</body>

</html>