<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}

include '../../backend/config/db_connect.php';  // Conexión a la base de datos

// Obtener todos los mensajes de contacto
$sql = "SELECT * FROM contacto";
$result = $conn->query($sql);

echo "<h2>Mensajes de Contacto</h2>";
echo "<table>";
echo "<tr><th>Nombre</th><th>Correo Electrónico</th><th>Mensaje</th><th>Fecha</th><th>Acciones</th></tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['nombre'] . "</td>";
    echo "<td>" . $row['email'] . "</td>";
    echo "<td>" . $row['mensaje'] . "</td>";
    echo "<td>" . $row['fecha_envio'] . "</td>";
    echo "<td><a href='delete.php?id=" . $row['id'] . "'>Eliminar</a></td>";
    echo "</tr>";
}
echo "</table>";
