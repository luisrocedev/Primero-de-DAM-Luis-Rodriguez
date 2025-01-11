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
                $foto_url = '';

                // Manejo de subida de imágenes
                if (!empty($_FILES['foto']['name'])) {
                    $foto_url = $this->handleFileUpload($_FILES['foto']);
                    if (!$foto_url) {
                        echo json_encode(['success' => false, 'message' => 'Error al subir la imagen']);
                        exit;
                    }
                }

                $success = $this->entrenador->addTrainer($nombre, $especialidad, $descripcion, $foto_url);
                echo json_encode(['success' => $success]);
                break;

            case 'PUT': // Editar un entrenador existente
                parse_str(file_get_contents("php://input"), $_PUT);
                $id = $_PUT['id'] ?? 0;
                $nombre = $_PUT['nombre'] ?? '';
                $especialidad = $_PUT['especialidad'] ?? '';
                $descripcion = $_PUT['descripcion'] ?? '';
                $foto_url = $_PUT['foto_url'] ?? '';

                // Obtener la imagen actual del entrenador
                $currentTrainer = $this->entrenador->getTrainerById($id);
                $currentPhoto = $currentTrainer['foto_url'] ?? '';

                // Manejo de actualización de imágenes
                if (isset($_FILES['foto']) && !empty($_FILES['foto']['name'])) {
                    $foto_url = $this->handleFileUpload($_FILES['foto']);
                    if ($foto_url && $currentPhoto && file_exists('../../' . $currentPhoto)) {
                        unlink('../../' . $currentPhoto); // Eliminar la imagen anterior si existe
                    }
                }

                $success = $this->entrenador->updateTrainer($id, $nombre, $especialidad, $descripcion, $foto_url);
                echo json_encode(['success' => $success]);
                break;

            case 'DELETE': // Eliminar un entrenador
                $id = $_GET['id'] ?? 0;

                // Obtener la imagen actual del entrenador para eliminarla
                $currentTrainer = $this->entrenador->getTrainerById($id);
                $currentPhoto = $currentTrainer['foto_url'] ?? '';

                if ($currentPhoto && file_exists('../../' . $currentPhoto)) {
                    unlink('../../' . $currentPhoto); // Eliminar la imagen del sistema
                }

                $success = $this->entrenador->deleteTrainer($id);
                echo json_encode(['success' => $success]);
                break;

            default:
                echo json_encode(['success' => false, 'message' => 'Método no permitido']);
                break;
        }
    }

    // Función para manejar la subida de archivos
    private function handleFileUpload($file) {
        $targetDir = '../../uploads/entrenadores/';
        $fileName = time() . '_' . basename($file['name']);
        $targetFile = $targetDir . $fileName;

        if (move_uploaded_file($file['tmp_name'], $targetFile)) {
            return 'uploads/entrenadores/' . $fileName; // Retorna la ruta relativa
        }
        return false; // Retorna falso si la subida falla
    }
}
?>
