<?php
session_start();
include '../config/db_connect.php';  // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $puesto = $_POST['puesto'];
    $descripcion = $_POST['descripcion'];

    // Insertar un nuevo miembro del equipo en la base de datos
    $sql = "INSERT INTO nuestro_equipo (nombre, puesto, descripcion) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('sss', $nombre, $puesto, $descripcion);

    if ($stmt->execute()) {
        $message = "Miembro del equipo creado exitosamente.";
    } else {
        $message = "Error al crear el miembro del equipo.";
    }
}
?>

<!-- Formulario para crear un nuevo miembro del equipo -->
<form method="POST" action="create.php">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required>

    <label for="puesto">Puesto:</label>
    <input type="text" id="puesto" name="puesto" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required></textarea>

    <button type="submit">Crear Miembro del Equipo</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>