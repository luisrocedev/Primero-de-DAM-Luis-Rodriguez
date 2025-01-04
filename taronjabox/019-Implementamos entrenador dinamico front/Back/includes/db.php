<?php
// Definir la ruta base del proyecto si se necesita en otros archivos
define('BASE_PATH', dirname(__DIR__)); // Ruta base del proyecto

try {
    // Crear la conexión PDO
    $conn = new PDO("mysql:host=localhost;dbname=taronjabox", "taronjabox", "taronjabox");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Conexión fallida a la base de datos: " . $e->getMessage());
}
?>
