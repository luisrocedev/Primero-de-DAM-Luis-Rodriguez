<?php
require_once '../models/Contacto.php';

class ContactoController
{
    private $contacto;

    public function __construct()
    {
        $this->contacto = new Contacto();
    }

    public function handleRequest()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $this->saveMessage();
        } elseif ($_SERVER['REQUEST_METHOD'] === 'GET') {
            echo json_encode($this->contacto->getAllMessages());
        } elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
            $this->deleteMessage();
        }
    }

    private function saveMessage()
    {
        $nombre = $_POST['nombre'] ?? '';
        $email = $_POST['email'] ?? '';
        $mensaje = $_POST['mensaje'] ?? '';

        if (empty($nombre) || empty($email) || empty($mensaje)) {
            echo json_encode(['success' => false, 'message' => 'Todos los campos son obligatorios.']);
            return;
        }

        $success = $this->contacto->saveMessage($nombre, $email, $mensaje);

        if ($success) {
            echo json_encode(['success' => true, 'message' => 'Mensaje guardado correctamente.']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Error al guardar el mensaje.']);
        }
    }

    private function deleteMessage()
    {
        parse_str(file_get_contents("php://input"), $_DELETE);
        $id = $_DELETE['id'] ?? 0;

        if ($id <= 0) {
            echo json_encode(['success' => false, 'message' => 'ID de mensaje no válido.']);
            return;
        }

        $success = $this->contacto->deleteMessage($id);

        if ($success) {
            echo json_encode(['success' => true, 'message' => 'Mensaje eliminado correctamente.']);
        } else {
            echo json_encode(['success' => false, 'message' => 'Error al eliminar el mensaje.']);
        }
    }
}
