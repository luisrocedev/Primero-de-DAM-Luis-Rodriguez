<?php
require_once '../models/GaleriaModel.php';

$action = $_GET['action'] ?? 'list';
$model = new GaleriaModel();

switch ($action) {
    case 'list':
        $imagenes = $model->getAllImages();
        header('Content-Type: application/json');
        echo json_encode($imagenes);
        break;

    case 'view':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $imagen = $model->getImageById($id);
            header('Content-Type: application/json');
            echo json_encode($imagen);
        }
        break;

    default:
        header('HTTP/1.0 404 Not Found');
        echo json_encode(['message' => 'Acción no válida.']);
        break;
}
