<?php
// db.php

$host = 'localhost';
$dbname = 'taronjabox';  // Reemplaza con tu base de datos
$username = 'taronjabox';      // O el usuario de tu base de datos
$password = 'taronjabox';          // O la contraseña de tu base de datos

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}
?>
