<?php
require_once 'backend/config/config.php';

$connection = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if ($connection->connect_error) {
    die("Error en la conexión: " . $connection->connect_error);
}

$result = $connection->query("SELECT * FROM entrenadores");

if ($result) {
    while ($row = $result->fetch_assoc()) {
        echo "Nombre: " . $row['nombre'] . "<br>";
        echo "Especialidad: " . $row['especialidad'] . "<br>";
        echo "Biografía: " . $row['biografia'] . "<br><br>";
    }
} else {
    echo "Error en la consulta: " . $connection->error;
}

$connection->close();
