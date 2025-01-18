<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/NewsController.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $controller = new NewsController();

    if ($controller->delete($id)) {
        header('Location: list.php?message=Noticia eliminada con éxito.');
        exit;
    } else {
        die('Error al eliminar la noticia.');
    }
} else {
    header('Location: list.php');
    exit;
}
