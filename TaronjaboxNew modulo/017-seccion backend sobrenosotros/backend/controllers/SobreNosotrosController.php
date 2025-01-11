<?php
require_once '../models/SobreNosotros.php';

class SobreNosotrosController {
    private $sobreNosotros;

    public function __construct() {
        $this->sobreNosotros = new SobreNosotros();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'GET': // Obtener todos los registros o uno específico
                $id = $_GET['id'] ?? null;
                if ($id) {
                    echo json_encode($this->sobreNosotros->getById($id));
                } else {
                    echo json_encode($this->sobreNosotros->getAll());
                }
                break;

            case 'POST': // Añadir un nuevo registro
                $titulo = $_POST['titulo'] ?? '';
                $contenido = $_POST['contenido'] ?? '';
                $imagen_url = $_POST['imagen_url'] ?? '';

                echo json_encode([
                    'success' => $this->sobreNosotros->add($titulo, $contenido, $imagen_url)
                ]);
                break;

            case 'PUT': // Actualizar un registro existente
                parse_str(file_get_contents("php://input"), $_PUT);
                $id = $_PUT['id'] ?? 0;
                $titulo = $_PUT['titulo'] ?? '';
                $contenido = $_PUT['contenido'] ?? '';
                $imagen_url = $_PUT['imagen_url'] ?? null;

                echo json_encode([
                    'success' => $this->sobreNosotros->update($id, $titulo, $contenido, $imagen_url)
                ]);
                break;

            case 'DELETE': // Eliminar un registro
                $id = $_GET['id'] ?? 0;

                echo json_encode([
                    'success' => $this->sobreNosotros->delete($id)
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
