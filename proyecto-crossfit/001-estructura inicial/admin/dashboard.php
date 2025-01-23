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
    <title>Dashboard - Admin Panel</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <h1>Bienvenido al Panel de Administración</h1>
    <nav>
        <a href="supercontroller.php?table=users">Usuarios</a>
        <a href="supercontroller.php?table=classes">Clases</a>
        <a href="logout.php">Cerrar sesión</a>
    </nav>
</body>

</html>