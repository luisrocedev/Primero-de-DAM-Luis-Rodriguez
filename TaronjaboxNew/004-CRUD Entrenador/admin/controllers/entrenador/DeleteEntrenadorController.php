<?php
require_once __DIR__ . '/../../../models/Entrenador/DeleteEntrenadorModel.php';

class DeleteEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new DeleteEntrenadorModel();
    }

    public function handleRequest() {
        $id = $_GET['id'];
        $this->model->deleteEntrenador($id);
        // Redirigir a la lista de entrenadores
        header('Location: ' . dirname($_SERVER['PHP_SELF']) . '/ListEntrenadorController.php');
        exit;
    }
}

$controller = new DeleteEntrenadorController();
$controller->handleRequest();
?>
