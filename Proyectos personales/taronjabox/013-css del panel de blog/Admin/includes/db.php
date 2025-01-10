<?php
$host = 'localhost'; // Cambiar según sea necesario
$dbname = 'taronjabox'; // Nombre de la base de datos
$username = 'taronjabox'; // Cambiar según tu configuración
$password = 'taronjabox'; // Cambiar según tu configuración

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Configurar el modo de error de PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
    die();
}
?>
