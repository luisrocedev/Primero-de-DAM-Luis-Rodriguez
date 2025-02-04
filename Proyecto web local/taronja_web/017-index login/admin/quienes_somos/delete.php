<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Eliminar la sección "Quiénes Somos"
    $sql = "DELETE FROM quienes_somos WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Sección 'Quiénes Somos' eliminada exitosamente.";
    } else {
        $message = "Error al eliminar la sección 'Quiénes Somos'.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
