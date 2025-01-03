<?php
// Incluir el controlador de Blog
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';

// Instanciar el controlador
$blogController = new BlogController();

// Procesar el formulario de nueva entrada
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $titulo = $_POST['titulo'];
    $contenido = $_POST['contenido'];
    $autor = $_POST['autor'];

    // Crear la nueva entrada
    $blogController->createPost($titulo, $contenido, $autor);

    // Redirigir al listado de entradas
    header("Location: index.php");
    exit;
}

include_once '../../includes/header.php';
?>

<h1>Añadir Nueva Entrada al Blog</h1>

<form method="POST">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required></textarea>

    <label for="autor">Autor:</label>
    <input type="text" id="autor" name="autor" required>

    <button type="submit">Guardar</button>
</form>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
