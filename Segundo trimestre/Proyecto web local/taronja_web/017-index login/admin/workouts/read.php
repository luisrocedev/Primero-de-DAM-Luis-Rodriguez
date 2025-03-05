<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}

include '../config/db_connect.php';  // Conexión a la base de datos

// Obtener todos los entrenamientos
$sql = "SELECT * FROM workouts";
$result = $conn->query($sql);

echo "<h2>Entrenamientos</h2>";
echo "<table>";
echo "<tr><th>Nombre</th><th>Descripción</th><th>Duración</th><th>Acciones</th></tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['name'] . "</td>";
    echo "<td>" . $row['description'] . "</td>";
    echo "<td>" . $row['duration'] . " minutos</td>";
    echo "<td><a href='update.php?id=" . $row['id'] . "'>Editar</a> | <a href='delete.php?id=" . $row['id'] . "'>Eliminar</a></td>";
    echo "</tr>";
}
echo "</table>";
