<?php
include_once '../includes/db.php';          // Conecta con la base de datos
include_once 'BlogController.php';          // Incluye el controlador de blog
$blogController = new BlogController();     // Instancia del controlador para usar sus métodos
$posts = $blogController->getAllPosts();    // Llama al método que obtiene todas las entradas
echo '<pre>';                               // Inicia el formato de salida
print_r($posts);                            // Imprime las entradas obtenidas
echo '</pre>';                              // Cierra el formato de salida
?>
