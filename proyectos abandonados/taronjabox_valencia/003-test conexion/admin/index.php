<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
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
</head>

<body>
    <h1>Bienvenido, <?= htmlspecialchars($_SESSION['admin_username']); ?>!</h1>
    <a href="logout.php">Cerrar Sesión</a>
</body>

</html>