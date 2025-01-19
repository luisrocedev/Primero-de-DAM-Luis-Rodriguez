<?php
require_once '../models/ContactoModel.php';

$action = $_GET['action'] ?? 'list';
$model = new ContactoModel();

switch ($action) {
    case 'list':
        $mensajes = $model->getAllMessages();
        header('Content-Type: application/json');
        echo json_encode($mensajes);
        break;

    case 'view':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $mensaje = $model->getMessageById($id);
            header('Content-Type: application/json');
            echo json_encode($mensaje);
        }
        break;

    default:
        header('HTTP/1.0 404 Not Found');
        echo json_encode(['message' => 'Acción no válida.']);
        break;
}
