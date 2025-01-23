<?php
require_once '../models/ClasesModel.php';

$action = $_GET['action'] ?? 'list';
$model = new ClasesModel();

switch ($action) {
    case 'list':
        $clases = $model->getAllClasses();
        header('Content-Type: application/json');
        echo json_encode($clases);
        break;

    case 'view':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $clase = $model->getClassById($id);
            header('Content-Type: application/json');
            echo json_encode($clase);
        }
        break;

    default:
        header('HTTP/1.0 404 Not Found');
        echo json_encode(['message' => 'Acción no válida.']);
        break;
}
