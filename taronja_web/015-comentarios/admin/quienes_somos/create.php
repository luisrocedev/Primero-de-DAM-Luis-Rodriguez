<?php
session_start();
include '../config/db_connect.php';  // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];

    // Insertar el nuevo contenido de "Quiénes Somos" en la base de datos
    $sql = "INSERT INTO quienes_somos (title, content) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ss', $title, $content);

    if ($stmt->execute()) {
        $message = "Sección 'Quiénes Somos' creada exitosamente.";
    } else {
        $message = "Error al crear la sección 'Quiénes Somos'.";
    }
}
?>

<!-- Formulario para crear la sección "Quiénes Somos" -->
<form method="POST" action="create.php">
    <label for="title">Título:</label>
    <input type="text" id="title" name="title" required>

    <label for="content">Contenido:</label>
    <textarea id="content" name="content" required></textarea>

    <button type="submit">Crear Sección</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>