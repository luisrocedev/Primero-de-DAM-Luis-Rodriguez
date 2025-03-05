<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}

include '../config/db_connect.php';  // Conexión a la base de datos

// Obtener todos los servicios de fisioterapia
$sql = "SELECT * FROM fisioterapia";
$result = $conn->query($sql);

echo "<h2>Servicios de Fisioterapia</h2>";
echo "<table>";
echo "<tr><th>Nombre</th><th>Descripción</th><th>Costo</th><th>Acciones</th></tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['nombre'] . "</td>";
    echo "<td>" . $row['descripcion'] . "</td>";
    echo "<td>" . $row['costo'] . "</td>";
    echo "<td><a href='update.php?id=" . $row['id'] . "'>Editar</a> | <a href='delete.php?id=" . $row['id'] . "'>Eliminar</a></td>";
    echo "</tr>";
}
echo "</table>";
