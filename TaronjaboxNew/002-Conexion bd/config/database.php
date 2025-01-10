<?php
// Configuración de la base de datos
define('DB_HOST', 'localhost');
define('DB_NAME', 'taronjabox'); // Nombre de tu base de datos
define('DB_USER', 'taronjabox');       // Usuario de la base de datos
define('DB_PASS', 'taronjabox');           // Contraseña de la base de datos

try {
    $pdo = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8", DB_USER, DB_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error en la conexión a la base de datos: " . $e->getMessage());
}
?>
