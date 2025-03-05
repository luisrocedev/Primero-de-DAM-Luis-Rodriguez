<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Eliminar el servicio de fisioterapia
    $sql = "DELETE FROM fisioterapia WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Servicio de fisioterapia eliminado exitosamente.";
    } else {
        $message = "Error al eliminar el servicio de fisioterapia.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
