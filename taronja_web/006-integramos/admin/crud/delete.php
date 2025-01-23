<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM usuarios_admin WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Usuario eliminado exitosamente.";
    } else {
        $message = "Error al eliminar el usuario.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
