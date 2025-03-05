<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Eliminar al miembro del equipo
    $sql = "DELETE FROM nuestro_equipo WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Miembro del equipo eliminado exitosamente.";
    } else {
        $message = "Error al eliminar el miembro del equipo.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
