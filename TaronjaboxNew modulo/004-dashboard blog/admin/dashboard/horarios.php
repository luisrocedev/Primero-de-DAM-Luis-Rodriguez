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
    <title>Gestionar de Horarios</title>
</head>
<body>
    <h1>Gestión de los Horarios</h1>
    <p>Aquí podrás crear, editar y eliminar los horarios.</p>
</body>
</html>
