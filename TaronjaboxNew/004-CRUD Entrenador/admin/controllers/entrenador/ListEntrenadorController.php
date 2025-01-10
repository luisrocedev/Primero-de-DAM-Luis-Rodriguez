<?php
require_once __DIR__ . '/../../../models/Entrenador/ListEntrenadorModel.php';

class AdminListEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new AdminListEntrenadorModel();
    }

    public function showEntrenadores() {
        $entrenadores = $this->model->getAllEntrenadores();
        include __DIR__ . '/../../../views/Entrenador/list_entrenador.php';
    }
}

// Instanciar y ejecutar
$controller = new AdminListEntrenadorController();
$controller->showEntrenadores();
?>
