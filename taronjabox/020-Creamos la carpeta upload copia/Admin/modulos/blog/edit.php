<?php
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';     // Se incluye el controlador de Blog
$blogController = new BlogController();                                     // Se crea una instancia del controlador Blog
$id = $_GET['id'] ?? null;                                                  // Se obtiene el ID de la entrada desde la URL (si existe)
$post = null;                                                               // Inicializar la variable para el post
if ($id) {                                                                  // Si existe un ID en la URL
    $post = $blogController->getPostById($id);                              // Obtener los datos del post por ID
    if (!$post) {                                                           // Si no se encuentra el post
        echo "Entrada no encontrada.";                                      // Se muestra un mensaje de error
        exit;                                                               // Termina la ejecución del script
    }
}
// Procesar el formulario de edición
if ($_SERVER['REQUEST_METHOD'] == 'POST') {                                 // Si se ha enviado el formulario
    $titulo = $_POST['titulo'];                                             // Se obtiene el título desde el formulario
    $contenido = $_POST['contenido'];                                       // Se obtiene el contenido desde el formulario
    $autor = $_POST['autor'];                                               // Se obtiene el autor desde el formulario
    $blogController->updatePost($id, $titulo, $contenido, $autor);          // Se actualiza el post en la base de datos
    header("Location: index.php");                                          // Se redirige a la página de listado de entradas
    exit;                                                                   // Termina la ejecución del script
}
?>
<link rel="stylesheet" href="../../css/editblog.css"> 
<h1>Editar Entrada del Blog</h1> 
<!-- Formulario de edición del blog -->
<form method="POST">
    <input type="hidden" name="id" value="<?php echo $post['id']; ?>">                                                  <!-- Campo oculto con el ID de la entrada -->

    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" value="<?php echo htmlspecialchars($post['titulo']); ?>" required>     <!-- Campo para editar el título -->

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required><?php echo htmlspecialchars($post['contenido']); ?></textarea>   <!-- Campo para editar el contenido -->

    <label for="autor">Autor:</label>
    <input type="text" id="autor" name="autor" value="<?php echo htmlspecialchars($post['autor']); ?>" required>        <!-- Campo para editar el autor -->

    <button onclick="goBack()">Volver atrás</button>                                                                    <!-- Al hacer clic, vuelve a la página anterior -->
    <button type="submit">Guardar Cambios</button>                                                                      <!-- Botón para guardar los cambios -->
</form>
<?php
include_once '../../includes/footer.php';
?>
