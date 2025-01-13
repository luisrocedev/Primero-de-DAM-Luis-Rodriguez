<?php
require_once '../models/Contacto.php';

class ContactoController {
    private $contacto;

    public function __construct() {
        $this->contacto = new Contacto();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'POST': // Añadir un nuevo mensaje
                $nombre = $_POST['nombre'] ?? '';
                $email = $_POST['email'] ?? '';
                $mensaje = $_POST['mensaje'] ?? '';
                echo json_encode([
                    'success' => $this->contacto->add($nombre, $email, $mensaje)
                ]);
                break;

            case 'GET': // Obtener todos los mensajes
                echo json_encode($this->contacto->getAll());
                break;

            case 'DELETE': // Eliminar un mensaje
                $id = $_GET['id'] ?? 0;
                echo json_encode([
                    'success' => $this->contacto->delete($id)
                ]);
                break;

            default:
                echo json_encode([
                    'success' => false,
                    'message' => 'Método no permitido'
                ]);
                break;
        }
    }
}
?>
