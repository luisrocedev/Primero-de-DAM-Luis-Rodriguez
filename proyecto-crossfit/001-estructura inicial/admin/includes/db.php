<?php
// db.php
$host = 'localhost';
$user = 'taronjaboxvalencia'; // Cambiar según configuración
$password = 'taronjaboxvalencia'; // Cambiar según configuración
$dbname = 'taronjaboxvalencia';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}
