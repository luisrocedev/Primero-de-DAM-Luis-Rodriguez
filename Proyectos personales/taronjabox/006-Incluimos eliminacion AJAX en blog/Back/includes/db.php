<?php
// Configuración de la base de datos
$host = 'localhost';      // Dirección del servidor
$dbname = 'taronjabox';   // Nombre de la base de datos
$username = 'taronjabox';       // Usuario (ajusta según tu configuración)
$password = 'taronjabox';           // Contraseña (ajusta según tu configuración)

try {
    // Crear la conexión usando PDO
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    // Configurar atributos para manejo de errores
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Manejar errores de conexión
    die("Error de conexión a la base de datos: " . $e->getMessage());
}
?>
