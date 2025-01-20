<?php
session_start();
include '../config/db_connect.php';

$sql = "SELECT * FROM blog_posts";
$result = $conn->query($sql);

echo "<h2>Entradas de Blog</h2>";
echo "<table>";
echo "<tr><th>ID</th><th>Título</th><th>Acciones</th></tr>";

while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row['id'] . "</td>";
    echo "<td>" . $row['title'] . "</td>";
    echo "<td><a href='update.php?id=" . $row['id'] . "'>Editar</a> | <a href='delete.php?id=" . $row['id'] . "'>Eliminar</a></td>";
    echo "</tr>";
}
echo "</table>";
