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

    case 'create': // Manejar el envío del formulario de contacto
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nombre = $_POST['nombre'] ?? null;
            $email = $_POST['email'] ?? null;
            $mensaje = $_POST['mensaje'] ?? null;

            if ($nombre && $email && $mensaje) {
                $resultado = $model->createMessage($nombre, $email, $mensaje);

                if ($resultado) {
                    echo json_encode(['success' => true, 'message' => 'Mensaje enviado correctamente.']);
                } else {
                    echo json_encode(['success' => false, 'message' => 'No se pudo guardar el mensaje.']);
                }
            } else {
                echo json_encode(['success' => false, 'message' => 'Todos los campos son obligatorios.']);
            }
        } else {
            header('HTTP/1.0 405 Method Not Allowed');
            echo json_encode(['message' => 'Método no permitido.']);
        }
        break;

    default:
        header('HTTP/1.0 404 Not Found');
        echo json_encode(['message' => 'Acción no válida.']);
        break;
}
