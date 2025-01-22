<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Eliminar el entrenamiento
    $sql = "DELETE FROM workouts WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Entrenamiento eliminado exitosamente.";
    } else {
        $message = "Error al eliminar el entrenamiento.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
