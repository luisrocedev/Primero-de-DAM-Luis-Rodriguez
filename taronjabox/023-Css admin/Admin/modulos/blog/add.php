<?php
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';     // Incluye el archivo que contiene la lógica para gestionar las entradas del blog
$blogController = new BlogController();                                     // Crea una instancia del controlador de Blog
if ($_SERVER['REQUEST_METHOD'] == 'POST') {                                 // Si el formulario ha sido enviado
    $titulo = $_POST['titulo'];                                             // Título de la entrada
    $contenido = $_POST['contenido'];                                       // Contenido de la entrada
    $autor = $_POST['autor'];                                               // Autor de la entrada
    $blogController->createPost($titulo, $contenido, $autor);               // Llama al método del controlador para crear una nueva entrada en el blog
    header("Location: index.php");                                          // Después de crear la entrada, redirige al listado de entradas
    exit;                                                                   // Termina la ejecución del script
}
?>
<link rel="stylesheet" href='../../css/blog/addblog.css'>

<h1>Añadir Nueva Entrada al Blog</h1>
<form method="POST">                                                        <!-- Formulario para crear una nueva entrada -->
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>                  <!-- Campo de texto para el título -->

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required></textarea>          <!-- Campo de texto para el contenido -->

    <label for="autor">Autor:</label>
    <input type="text" id="autor" name="autor" required>                    <!-- Campo de texto para el autor -->

    <button onclick="goBack()">Volver atrás</button>                        <!-- Al hacer clic, vuelve a la página anterior -->
    <button type="submit">Guardar</button>                                  <!-- Botón para enviar el formulario y guardar la entrada -->
</form>
<?php
include_once '../../includes/footer.php';
?>
