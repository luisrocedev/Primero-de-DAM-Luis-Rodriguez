<?php
$host = 'localhost';            // Dirección del servidor de base de datos (generalmente 'localhost' en desarrollo local)
$dbname = 'taronjabox';         // Nombre de la base de datos que se usará
$username = 'taronjabox';       // Nombre de usuario para la conexión a la base de datos
$password = 'taronjabox';       // Contraseña para la conexión a la base de datos

try {                                                               // Intentamos establecer una conexión con la base de datos usando PDO
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Configuramos el modo de error de PDO para lanzar excepciones en caso de errores
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();                  // Si ocurre un error, mostramos el mensaje de error y detenemos la ejecución del script
    die();
}

// *Dato de estudio*
// PDO (PHP Data Objects) es una interfaz en PHP que permite acceder a bases de datos de manera segura y flexible,
// soportando múltiples sistemas de gestión de bases de datos
?>