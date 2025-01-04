<?php
// Incluir el controlador de Entrenadores
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';

// Instanciar el controlador
$entrenadoresController = new EntrenadoresController();

// Obtener el ID del entrenador a eliminar
$id = $_GET['id'] ?? null;

if ($id) {
    // Eliminar el entrenador
    $entrenadoresController->deleteEntrenador($id);

    // Redirigir al listado de entrenadores
    header("Location: index.php");
    exit;
} else {
    echo "ID de entrenador no proporcionado.";
}
?>
