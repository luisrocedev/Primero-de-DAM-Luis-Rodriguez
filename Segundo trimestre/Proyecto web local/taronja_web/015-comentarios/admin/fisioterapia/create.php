<?php
session_start();
include '../config/db_connect.php';  // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $descripcion = $_POST['descripcion'];
    $costo = $_POST['costo'];

    // Insertar un nuevo servicio de fisioterapia en la base de datos
    $sql = "INSERT INTO fisioterapia (nombre, descripcion, costo) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssd', $nombre, $descripcion, $costo);

    if ($stmt->execute()) {
        $message = "Servicio de fisioterapia creado exitosamente.";
    } else {
        $message = "Error al crear el servicio de fisioterapia.";
    }
}
?>

<!-- Formulario para crear un nuevo servicio de fisioterapia -->
<form method="POST" action="create.php">
    <label for="nombre">Nombre del Servicio:</label>
    <input type="text" id="nombre" name="nombre" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required></textarea>

    <label for="costo">Costo:</label>
    <input type="number" step="0.01" id="costo" name="costo" required>

    <button type="submit">Crear Servicio de Fisioterapia</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>