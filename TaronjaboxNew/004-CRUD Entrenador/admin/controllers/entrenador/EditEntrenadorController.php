<?php
require_once __DIR__ . '/../../../models/Entrenador/EditEntrenadorModel.php';

class EditEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new EditEntrenadorModel();
    }

    public function handleRequest() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = $_POST['id'];
            $nombre = $_POST['nombre'];
            $descripcion = $_POST['descripcion'];
            $foto = $_FILES['foto']['name'];

            // Subir nueva imagen si existe
            if ($foto) {
                $uploadDir = dirname(__DIR__, 3) . '/uploads/entrenador/';
                if (!file_exists($uploadDir)) {
                    mkdir($uploadDir, 0777, true); // Crear carpeta si no existe
                }
                move_uploaded_file($_FILES['foto']['tmp_name'], $uploadDir . $foto);
            } else {
                $foto = $_POST['foto_actual'];
            }

            $this->model->updateEntrenador($id, $nombre, $descripcion, $foto);

            // Redirigir de forma flexible a la lista de entrenadores
            header('Location: ' . dirname($_SERVER['PHP_SELF']) . '/ListEntrenadorController.php');
            exit;
        } else {
            $id = $_GET['id'];
            $entrenador = $this->model->getEntrenadorById($id);

            // Incluir la vista relativa al directorio actual
            include dirname(__DIR__, 3) . '/views/entrenador/edit_entrenador.php';
        }
    }
}

$controller = new EditEntrenadorController();
$controller->handleRequest();
?>
