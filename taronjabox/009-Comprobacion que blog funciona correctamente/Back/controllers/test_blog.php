<?php
// Cambiamos las rutas relativas para que apunten a los archivos correctos
include_once '../includes/db.php'; // Ajustado para ir a la carpeta includes
include_once 'BlogController.php'; // BlogController.php está en el mismo directorio

// Crear instancia de BlogController
$blogController = new BlogController();

// Obtener todas las entradas del blog
$posts = $blogController->getAllPosts();

// Mostrar las entradas
echo '<pre>';
print_r($posts);
echo '</pre>';
?>
