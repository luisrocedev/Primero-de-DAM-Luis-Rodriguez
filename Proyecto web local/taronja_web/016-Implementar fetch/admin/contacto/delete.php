<?php
session_start();
include '../../backend/config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Eliminar el mensaje de contacto
    $sql = "DELETE FROM contacto WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Mensaje eliminado exitosamente.";
    } else {
        $message = "Error al eliminar el mensaje.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
