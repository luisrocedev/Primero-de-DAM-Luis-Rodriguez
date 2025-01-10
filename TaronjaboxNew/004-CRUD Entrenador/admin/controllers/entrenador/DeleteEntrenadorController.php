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
        header('Location: /admin/controllers/Entrenador/ListEntrenadorController.php');
        exit;
    }
}

$controller = new DeleteEntrenadorController();
$controller->handleRequest();
?>
