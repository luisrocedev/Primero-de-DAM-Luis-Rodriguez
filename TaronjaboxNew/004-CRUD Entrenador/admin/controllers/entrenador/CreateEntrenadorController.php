<?php
require_once __DIR__ . '/../../models/Entrenador/CreateEntrenadorModel.php';

class CreateEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new CreateEntrenadorModel();
    }

    public function handleRequest() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nombre = $_POST['nombre'];
            $especialidad = $_POST['especialidad'];
            $descripcion = $_POST['descripcion'];
            $foto_url = $_FILES['foto_url']['name'];

            // Subir imagen
            $uploadDir = __DIR__ . '/../../../uploads/entrenador/';
            if (!file_exists($uploadDir)) {
                mkdir($uploadDir, 0777, true); // Crear carpeta si no existe
            }
            move_uploaded_file($_FILES['foto_url']['tmp_name'], $uploadDir . $foto_url);

            // Guardar datos en la BD
            $this->model->createEntrenador($nombre, $especialidad, $descripcion, $foto_url);

            // Redirigir al listado
            header('Location: /TaronjaboxNew/004-CRUD Entrenador/admin/controllers/entrenador/ListEntrenadorController.php');
            exit;

        }
        include __DIR__ . '/../../views/entrenador/create_entrenador.php';
    }
}

$controller = new CreateEntrenadorController();
$controller->handleRequest();
?>
