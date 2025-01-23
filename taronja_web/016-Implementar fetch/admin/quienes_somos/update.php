<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Obtener los datos de la sección "Quiénes Somos"
    $sql = "SELECT * FROM quienes_somos WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $who_we_are = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $title = $_POST['title'];
        $content = $_POST['content'];

        // Actualizar la sección "Quiénes Somos"
        $update_sql = "UPDATE quienes_somos SET title = ?, content = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('ssi', $title, $content, $id);

        if ($update_stmt->execute()) {
            $message = "Sección 'Quiénes Somos' actualizada exitosamente.";
        } else {
            $message = "Error al actualizar la sección 'Quiénes Somos'.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="title">Título:</label>
    <input type="text" id="title" name="title" value="<?php echo $who_we_are['title']; ?>" required>

    <label for="content">Contenido:</label>
    <textarea id="content" name="content" required><?php echo $who_we_are['content']; ?></textarea>

    <button type="submit">Actualizar Sección</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>