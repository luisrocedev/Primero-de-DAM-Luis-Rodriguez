<?php
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';     // Se incluye el controlador para manejar las operaciones de Blog
$blogController = new BlogController();                                     // Se crea una instancia del controlador de Blog
$id = $_GET['id'] ?? null;                                                  // Obtener el ID de la entrada a eliminar
if ($id) {                                                                  // Si se ha proporcionado un ID en la URL
    $blogController->deletePost($id);                                       // Se llama al método para eliminar la entrada con el ID proporcionado
    header("Location: index.php");                                          // Redirige a la página principal del blog donde se listan todas las entradas
    exit;                                                                   // Termina la ejecución del script
} else {
    echo "ID de entrada no proporcionado.";                                 // Si no se proporcionó un ID, muestra un mensaje de error
}
?>