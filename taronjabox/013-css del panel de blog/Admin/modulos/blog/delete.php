<?php
// Incluir el controlador de Blog
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';

// Instanciar el controlador
$blogController = new BlogController();

// Obtener el ID de la entrada a eliminar
$id = $_GET['id'] ?? null;

if ($id) {
    // Eliminar la entrada
    $blogController->deletePost($id);

    // Redirigir al listado de entradas
    header("Location: index.php");
    exit;
} else {
    echo "ID de entrada no proporcionado.";
}
?>

