<?php
// Incluir el archivo de conexión
include 'db.php';

// Probar la conexión
if ($conn) {
    echo "Conexión exitosa a la base de datos.";
} else {
    echo "Error en la conexión.";
}
?>
