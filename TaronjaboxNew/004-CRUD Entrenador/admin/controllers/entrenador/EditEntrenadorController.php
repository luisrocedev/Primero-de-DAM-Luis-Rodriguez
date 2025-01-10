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
                $uploadDir = __DIR__ . '/../../../uploads/entrenador/';
                move_uploaded_file($_FILES['foto']['tmp_name'], $uploadDir . $foto);
            } else {
                $foto = $_POST['foto_actual'];
            }

            $this->model->updateEntrenador($id, $nombre, $descripcion, $foto);
            header('Location: /admin/controllers/Entrenador/ListEntrenadorController.php');
            exit;
        } else {
            $id = $_GET['id'];
            $entrenador = $this->model->getEntrenadorById($id);
            include __DIR__ . '/../../../views/Entrenador/edit_entrenador.php';
        }
    }
}

$controller = new EditEntrenadorController();
$controller->handleRequest();
?>
