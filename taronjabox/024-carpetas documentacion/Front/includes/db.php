<?php
// Configuración de la base de datos
$host = 'localhost'; // Cambia esto si usas un servidor diferente
$dbname = 'taronjabox'; // Nombre de la base de datos
$username = 'taronjabox'; // Usuario de la base de datos
$password = 'taronjabox'; // Contraseña de la base de datos (deja vacío si no tienes contraseña)

// Crear la conexión
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    // Configurar errores PDO para que lance excepciones
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión a la base de datos: " . $e->getMessage());
}
?>
