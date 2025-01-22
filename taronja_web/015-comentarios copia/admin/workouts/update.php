<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Obtener los datos del entrenamiento
    $sql = "SELECT * FROM workouts WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $workout = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $name = $_POST['name'];
        $description = $_POST['description'];
        $duration = $_POST['duration'];

        // Actualizar los datos del entrenamiento
        $update_sql = "UPDATE workouts SET name = ?, description = ?, duration = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('ssii', $name, $description, $duration, $id);

        if ($update_stmt->execute()) {
            $message = "Entrenamiento actualizado exitosamente.";
        } else {
            $message = "Error al actualizar el entrenamiento.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="name">Nombre del Entrenamiento:</label>
    <input type="text" id="name" name="name" value="<?php echo $workout['name']; ?>" required>

    <label for="description">Descripción:</label>
    <textarea id="description" name="description" required><?php echo $workout['description']; ?></textarea>

    <label for="duration">Duración (en minutos):</label>
    <input type="number" id="duration" name="duration" value="<?php echo $workout['duration']; ?>" required>

    <button type="submit">Actualizar Entrenamiento</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>