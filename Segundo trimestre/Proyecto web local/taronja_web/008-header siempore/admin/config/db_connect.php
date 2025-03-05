<?php
$servername = "localhost";  // O el servidor adecuado si no es localhost
$username = "taronjaboxvalencia";         // Tu nombre de usuario para la base de datos
$password = "taronjaboxvalencia";             // La contraseña de la base de datos (vacío si usas MAMP o XAMPP)
$dbname = "taronjaboxvalencia";     // El nombre de tu base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
