<?php
require_once '../models/Horario.php';

class HorarioController {
    private $horario;

    public function __construct() {
        $this->horario = new Horario();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'GET':
                echo json_encode($this->horario->getAllSchedules());
                break;
                
            case 'POST':
                $dia = $_POST['dia'] ?? '';
                $hora = $_POST['hora'] ?? '';
                $actividad = $_POST['actividad'] ?? '';
                $entrenador_id = $_POST['entrenador_id'] ?? null;
                echo json_encode(['success' => $this->horario->addSchedule($dia, $hora, $actividad, $entrenador_id)]);
                break;

            case 'PUT': // Editar un horario existente
                parse_str(file_get_contents("php://input"), $_PUT);
                $id = $_PUT['id'] ?? 0;
                $dia = $_PUT['dia'] ?? '';
                $hora = $_PUT['hora'] ?? '';
                $actividad = $_PUT['actividad'] ?? '';
                $entrenador_id = $_PUT['entrenador_id'] ?? null;
                echo json_encode(['success' => $this->horario->updateSchedule($id, $dia, $hora, $actividad, $entrenador_id)]);
                break;

            case 'DELETE':
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->horario->deleteSchedule($id)]);
                break;
        }
    }
}
?>
