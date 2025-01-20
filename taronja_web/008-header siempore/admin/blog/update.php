<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM blog_posts WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $post = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $title = $_POST['title'];
        $content = $_POST['content'];

        $update_sql = "UPDATE blog_posts SET title = ?, content = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('ssi', $title, $content, $id);

        if ($update_stmt->execute()) {
            $message = "Entrada de blog actualizada exitosamente.";
        } else {
            $message = "Error al actualizar la entrada de blog.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="title">Título:</label>
    <input type="text" id="title" name="title" value="<?php echo $post['title']; ?>" required>
    <label for="content">Contenido:</label>
    <textarea id="content" name="content" required><?php echo $post['content']; ?></textarea>
    <button type="submit">Actualizar Entrada de Blog</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>