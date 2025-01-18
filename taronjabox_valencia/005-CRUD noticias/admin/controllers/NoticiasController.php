<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login.php');
    exit;
}

require_once '../../backend/models/NoticiasModel.php';

$action = $_GET['action'] ?? 'list';
$model = new NoticiasModel();

switch ($action) {
    case 'list':
        $noticias = $model->getAllNoticias();
        $pageTitle = 'Gestión de Noticias';
        $view = '../views/noticias/list.php';
        break;

    case 'create':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $contenido = $_POST['contenido'];
            $imagen = $_POST['imagen'] ?? null;
            $fecha_evento = $_POST['fecha_evento'] ?? null;

            if ($model->createNoticia($titulo, $contenido, $imagen, $fecha_evento)) {
                header('Location: NoticiasController.php?action=list&success=created');
                exit;
            }
        }
        $pageTitle = 'Crear Noticia';
        $view = '../views/noticias/create.php';
        break;

    case 'edit':
        $id = $_GET['id'] ?? null;
        $noticia = $model->getNoticiaById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $contenido = $_POST['contenido'];
            $imagen = $_POST['imagen'] ?? null;
            $fecha_evento = $_POST['fecha_evento'] ?? null;

            if ($model->updateNoticia($id, $titulo, $contenido, $imagen, $fecha_evento)) {
                header('Location: NoticiasController.php?action=list&success=updated');
                exit;
            }
        }
        $pageTitle = 'Editar Noticia';
        $view = '../views/noticias/edit.php';
        break;

    case 'delete':
        $id = $_GET['id'] ?? null;
        if ($model->deleteNoticia($id)) {
            header('Location: NoticiasController.php?action=list&success=deleted');
            exit;
        }
        break;

    default:
        $pageTitle = 'Error';
        $view = '../views/404.php';
        break;
}

require_once '../views/template.php';
