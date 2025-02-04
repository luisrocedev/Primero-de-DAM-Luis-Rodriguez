<?php
session_start();
include '../config/db_connect.php';

$sql = "SELECT * FROM usuarios_admin";
$result = $conn->query($sql);

echo "<h2>Lista de Usuarios</h2>";
echo "<table>";
echo "<tr><th>ID</th><th>Username</th><th>Acciones</th></tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['id'] . "</td>";
    echo "<td>" . $row['username'] . "</td>";
    echo "<td><a href='update.php?id=" . $row['id'] . "'>Editar</a> | <a href='delete.php?id=" . $row['id'] . "'>Eliminar</a></td>";
    echo "</tr>";
}
echo "</table>";
