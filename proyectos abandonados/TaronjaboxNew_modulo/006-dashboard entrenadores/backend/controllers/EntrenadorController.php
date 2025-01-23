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
            case 'GET':
                echo json_encode($this->entrenador->getAllTrainers());
                break;
            case 'POST':
                $nombre = $_POST['nombre'] ?? '';
                $especialidad = $_POST['especialidad'] ?? '';
                $descripcion = $_POST['descripcion'] ?? '';
                $foto_url = $_POST['foto_url'] ?? '';
                echo json_encode(['success' => $this->entrenador->addTrainer($nombre, $especialidad, $descripcion, $foto_url)]);
                break;
            case 'DELETE':
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->entrenador->deleteTrainer($id)]);
                break;
        }
    }
}
?>
