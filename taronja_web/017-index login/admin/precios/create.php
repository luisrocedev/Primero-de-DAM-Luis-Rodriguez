<?php
session_start();
include '../config/db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];

    // Insertar la nueva entrada en la base de datos
    $sql = "INSERT INTO blog_posts (title, content) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ss', $title, $content);

    if ($stmt->execute()) {
        $message = "Entrada de blog creada exitosamente.";
    } else {
        $message = "Error al crear la entrada de blog.";
    }
}
?>

<form method="POST" action="create.php">
    <label for="title">Título:</label>
    <input type="text" id="title" name="title" required>
    <label for="content">Contenido:</label>
    <textarea id="content" name="content" required></textarea>
    <button type="submit">Crear Entrada de Blog</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>