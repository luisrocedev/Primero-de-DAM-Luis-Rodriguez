<?php
require_once '../backend/controllers/Controller.php';

// Datos para pasar a la vista
$data = [
    'title' => 'Panel de Administración',
    'message' => 'Bienvenido al panel de administración de TaronjaBox Valencia.'
];

// Cargar la vista
Controller::loadView('admin', 'dashboard', $data);
