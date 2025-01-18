<?php
require_once '../models/Entrenador.php';

class EntrenadorController {
    private $entrenador;

    public function __construct() {
        $this->entrenador = new Entrenador();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'GET': // Obtener todos los entrenadores
                echo json_encode($this->entrenador->getAllTrainers());
                break;

            case 'POST': // Añadir un nuevo entrenador
                $nombre = $_POST['nombre'] ?? '';
                $especialidad = $_POST['especialidad'] ?? '';
                $descripcion = $_POST['descripcion'] ?? '';
                $foto_url = $_POST['foto_url'] ?? '';
                echo json_encode(['success' => $this->entrenador->addTrainer($nombre, $especialidad, $descripcion, $foto_url)]);
                break;

            case 'PUT': // Editar un entrenador existente
                // Leer los datos enviados en la solicitud PUT
                parse_str(file_get_contents("php://input"), $_PUT);
                $id = $_PUT['id'] ?? 0;
                $nombre = $_PUT['nombre'] ?? '';
                $especialidad = $_PUT['especialidad'] ?? '';
                $descripcion = $_PUT['descripcion'] ?? '';
                $foto_url = $_PUT['foto_url'] ?? '';
                echo json_encode(['success' => $this->entrenador->updateTrainer($id, $nombre, $especialidad, $descripcion, $foto_url)]);
                break;

            case 'DELETE': // Eliminar un entrenador
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->entrenador->deleteTrainer($id)]);
                break;
        }
    }
}
?>
