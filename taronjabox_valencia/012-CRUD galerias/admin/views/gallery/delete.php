<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/GalleryController.php';

$controller = new GalleryController();

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Obtener los datos de la imagen antes de eliminar
    $image = $controller->get($id);
    if (!$image) {
        die('La imagen no existe.');
    }

    // Eliminar la imagen del servidor
    $filePath = '../../' . $image['imagen'];
    if (file_exists($filePath)) {
        unlink($filePath); // Borra el archivo físico
    }

    // Eliminar la entrada en la base de datos
    if ($controller->delete($id)) {
        header('Location: list.php?message=Imagen eliminada con éxito.');
        exit;
    } else {
        die('Error al eliminar la imagen de la base de datos.');
    }
} else {
    header('Location: list.php');
    exit;
}
