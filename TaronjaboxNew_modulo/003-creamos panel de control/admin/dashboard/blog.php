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
</head>
<body>
    <h1>Gestión del Blog</h1>
    <p>Aquí podrás crear, editar y eliminar publicaciones del blog.</p>
</body>
</html>
