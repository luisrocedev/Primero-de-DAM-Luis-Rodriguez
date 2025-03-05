<?php
include 'config/db_connect.php';  // Incluir la conexión a la base de datos

// Realizar una consulta simple para verificar la conexión
$sql = "SELECT id, username FROM usuarios_admin LIMIT 5";  // Consulta de ejemplo
$result = $conn->query($sql);

// Verificar si hay resultados
if ($result->num_rows > 0) {
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;  // Guardamos los resultados en un arreglo
    }
    echo json_encode($data);  // Devolvemos los datos en formato JSON
} else {
    echo json_encode(["message" => "No hay resultados"]);
}

$conn->close();  // Cerrar la conexión a la base de datos
