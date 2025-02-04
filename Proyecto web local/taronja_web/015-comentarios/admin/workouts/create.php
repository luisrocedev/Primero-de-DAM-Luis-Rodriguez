<?php
session_start();
include '../config/db_connect.php';  // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $duration = $_POST['duration'];

    // Insertar el nuevo entrenamiento en la base de datos
    $sql = "INSERT INTO workouts (name, description, duration) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('sss', $name, $description, $duration);

    if ($stmt->execute()) {
        $message = "Entrenamiento creado exitosamente.";
    } else {
        $message = "Error al crear el entrenamiento.";
    }
}
?>

<!-- Formulario para crear un nuevo entrenamiento -->
<form method="POST" action="create.php">
    <label for="name">Nombre del Entrenamiento:</label>
    <input type="text" id="name" name="name" required>

    <label for="description">Descripción:</label>
    <textarea id="description" name="description" required></textarea>

    <label for="duration">Duración (en minutos):</label>
    <input type="number" id="duration" name="duration" required>

    <button type="submit">Crear Entrenamiento</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>