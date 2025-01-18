<?php
require_once 'backend/config/config.php';
require_once 'backend/models/Database.php';

$db = new Database();
if ($db->getConnection()) {
    echo "Conexión exitosa a la base de datos.";
} else {
    echo "Error en la conexión.";
}
$db->close();
