<?php
require_once '../models/NoticiasModel.php';

$action = $_GET['action'] ?? 'list';
$model = new NoticiasModel();

switch ($action) {
    case 'list':
        $noticias = $model->getAllNoticias();
        header('Content-Type: application/json');
        echo json_encode($noticias);
        break;

    case 'view':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $noticia = $model->getNoticiaById($id);
            header('Content-Type: application/json');
            echo json_encode($noticia);
        }
        break;

    default:
        header('HTTP/1.0 404 Not Found');
        echo json_encode(['message' => 'Acción no válida.']);
        break;
}
