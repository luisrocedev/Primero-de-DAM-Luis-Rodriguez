<?php
require_once __DIR__ . '/../../models/Entrenador/ListEntrenadorModel.php';

class ListEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new ListEntrenadorModel();
    }

    public function showEntrenadores() {
        $entrenadores = $this->model->getAllEntrenadores();
        include __DIR__ . '/../../views/Entrenador/entrenador_list.php';
    }
}

// Instanciar y ejecutar
$controller = new ListEntrenadorController();
$controller->showEntrenadores();
?>
