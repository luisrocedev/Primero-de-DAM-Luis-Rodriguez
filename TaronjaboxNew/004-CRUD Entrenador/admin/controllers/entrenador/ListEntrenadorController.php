<?php
// Ajustar según la ubicación real del archivo
require_once __DIR__ . '/../../models/entrenador/ListEntrenadorModel.php';

class AdminListEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new AdminListEntrenadorModel();
    }

    public function showEntrenadores() {
        $entrenadores = $this->model->getAllEntrenadores();
        include __DIR__ . '/../../views/entrenador/list_entrenador.php';
    }
}

// Instanciar y ejecutar
$controller = new AdminListEntrenadorController();
$controller->showEntrenadores();
?>
