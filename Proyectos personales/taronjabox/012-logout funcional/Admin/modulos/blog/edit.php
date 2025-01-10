<?php
// Incluir el controlador de Blog
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';

// Instanciar el controlador
$blogController = new BlogController();

// Obtener el ID de la entrada a editar
$id = $_GET['id'] ?? null;
$post = null;

if ($id) {
    $post = $blogController->getPostById($id);
    if (!$post) {
        echo "Entrada no encontrada.";
        exit;
    }
}

// Procesar el formulario de edición
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $titulo = $_POST['titulo'];
    $contenido = $_POST['contenido'];
    $autor = $_POST['autor'];

    // Actualizar la entrada
    $blogController->updatePost($id, $titulo, $contenido, $autor);

    // Redirigir al listado de entradas
    header("Location: index.php");
    exit;
}

?>

<h1>Editar Entrada del Blog</h1>

<form method="POST">
    <input type="hidden" name="id" value="<?php echo $post['id']; ?>">

    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" value="<?php echo htmlspecialchars($post['titulo']); ?>" required>

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required><?php echo htmlspecialchars($post['contenido']); ?></textarea>

    <label for="autor">Autor:</label>
    <input type="text" id="autor" name="autor" value="<?php echo htmlspecialchars($post['autor']); ?>" required>

    <button type="submit">Guardar Cambios</button>
</form>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
