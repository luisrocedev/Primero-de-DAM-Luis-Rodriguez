<?php
require_once 'config.php';

try {
    $connection = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    echo "Conexión exitosa a la base de datos.";
    $connection->close();
} catch (Exception $e) {
    echo "Error en la conexión: " . $e->getMessage();
}
