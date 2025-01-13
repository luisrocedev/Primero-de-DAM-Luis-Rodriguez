<?php
require_once '../models/Contacto.php';

class ContactoController {
    private $contacto;

    public function __construct() {
        $this->contacto = new Contacto();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];

        if ($method === 'POST') {
            $this->saveMessage();
        } elseif ($method === 'GET') {
            echo json_encode($this->contacto->getAllMessages());
        } elseif ($method === 'DELETE') {
            $id = $_GET['id'] ?? null;
            if ($id) {
                echo json_encode(['success' => $this->contacto->deleteMessage($id)]);
            } else {
                echo json_encode(['success' => false, 'message' => 'ID de mensaje no válido.']);
            }
        }
    }

    private function saveMessage() {
        $nombre = $_POST['nombre'] ?? '';
        $email = $_POST['email'] ?? '';
        $mensaje = $_POST['mensaje'] ?? '';

        if (empty($nombre) || empty($email) || empty($mensaje)) {
            echo json_encode(['success' => false, 'message' => 'Todos los campos son obligatorios.']);
            return;
        }

        $success = $this->contacto->saveMessage($nombre, $email, $mensaje);
        if ($success) {
            $data = [
                'nombre' => $nombre,
                'email' => $email,
                'mensaje' => $mensaje,
                'creado_en' => date('Y-m-d H:i:s')
            ];

            $directory = '../../uploads/contact_messages/';
            if (!is_dir($directory)) {
                mkdir($directory, 0777, true);
            }

            $fileName = $directory . 'mensaje_' . time() . '.json';
            file_put_contents($fileName, json_encode($data, JSON_PRETTY_PRINT));

            echo json_encode(['success' => true, 'message' => 'Mensaje guardado correctamente.']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Error al guardar el mensaje.']);
        }
    }
}
?>
