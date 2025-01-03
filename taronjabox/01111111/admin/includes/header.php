<?php
// Verificar si el usuario está logueado
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/admin.css">
    <title>Panel de Administración - TaronjaBox</title>
</head>
<body>
<header>
    <h1>Panel de Administración</h1>
    <nav>
        <ul>
            <li><a href="../index.php">Dashboard</a></li>
            <li><a href="../modulos/blog/index.php">Blog</a></li>
            <li><a href="../modulos/precios/index.php">Precios</a></li>
            <li><a href="../modulos/entrenadores/index.php">Entrenadores</a></li>
            <li><a href="../logout.php">Cerrar Sesión</a></li>
        </ul>
    </nav>
</header>
<main>
