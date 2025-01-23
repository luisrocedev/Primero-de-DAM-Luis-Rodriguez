<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}

include '../config/db_connect.php';  // Conexión a la base de datos

// Obtener el contenido de "Quiénes Somos"
$sql = "SELECT * FROM quienes_somos LIMIT 1";
$result = $conn->query($sql);
$who_we_are = $result->fetch_assoc();

echo "<h2>" . $who_we_are['title'] . "</h2>";
echo "<p>" . $who_we_are['content'] . "</p>";
