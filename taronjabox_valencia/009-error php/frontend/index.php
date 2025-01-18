<?php
require_once '../backend/controllers/Controller.php';
require_once '../backend/models/Trainer.php';

// Verificar rutas válidas
$validRoutes = ['home', 'trainers'];

$route = isset($_GET['route']) ? $_GET['route'] : 'home'; // Por defecto "home"

if (in_array($route, $validRoutes)) {
    $data = [];

    if ($route === 'trainers') {
        $trainerModel = new Trainer();
        $data['trainers'] = $trainerModel->getAllTrainers();

        // Verifica si hay datos
        if (empty($data['trainers'])) {
            die("No se encontraron entrenadores.");
        }
    }

    Controller::loadView('frontend', $route, $data);
} else {
    Controller::loadView('frontend', '404');
}
