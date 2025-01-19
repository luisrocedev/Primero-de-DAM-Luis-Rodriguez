<?php
// Configuración de la conexión a la base de datos
define('DB_HOST', 'localhost');                // Host de la base de datos
define('DB_USER', 'taronjaboxvalencia');       // Usuario de la base de datos
define('DB_PASSWORD', 'taronjaboxvalencia');  // Contraseña del usuario
define('DB_NAME', 'taronjaboxvalencia');      // Nombre de la base de datos

/**
 * Devuelve una conexión PDO a la base de datos.
 *
 * @return PDO
 * @throws Exception Si la conexión falla.
 */
function getDatabaseConnection()
{
    try {
        $conn = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    } catch (PDOException $exception) {
        throw new Exception("Error en la conexión a la base de datos: " . $exception->getMessage());
    }
}
