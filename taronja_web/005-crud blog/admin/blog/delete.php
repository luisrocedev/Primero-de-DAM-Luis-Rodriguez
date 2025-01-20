<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM blog_posts WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        $message = "Entrada de blog eliminada exitosamente.";
    } else {
        $message = "Error al eliminar la entrada de blog.";
    }
}
?>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>
