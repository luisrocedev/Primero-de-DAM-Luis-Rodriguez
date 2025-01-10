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
</head>
<body>
    <h1>Gestión de los precios</h1>
    <p>Aquí podrás crear, editar y eliminar precios.</p>
</body>
</html>
