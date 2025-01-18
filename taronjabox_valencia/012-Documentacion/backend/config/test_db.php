<?php
require_once '../models/Database.php';

try {
    $db = new Database();
    echo "Conexión exitosa a la base de datos.";
    $db->close();
} catch (Exception $e) {
    echo "Error en la conexión: " . $e->getMessage();
}
