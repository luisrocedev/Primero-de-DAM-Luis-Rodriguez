<?php
// Configuración de la base de datos
$host = 'localhost';
$dbname = 'taronjabox';
$username = 'taronjabox';
$password = 'taronjabox';

try {
    // Crear conexión con PDO
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    // Configurar el manejo de errores
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión a la base de datos: " . $e->getMessage());
}
?>