<?php
require_once '../backend/controllers/Controller.php';
require_once '../backend/models/Trainer.php';

// Listado de rutas válidas
$validRoutes = ['home', 'about', 'trainers'];

// Obtener la ruta desde la URL
$route = isset($_GET['route']) ? $_GET['route'] : 'home'; // Por defecto, "home"

// Verificar si la ruta es válida
if (in_array($route, $validRoutes)) {
    $data = [];

    // Si la ruta es "trainers", cargar datos del modelo
    if ($route === 'trainers') {
        $trainerModel = new Trainer();
        $data['trainers'] = $trainerModel->getAllTrainers();
    }

    Controller::loadView('frontend', $route, $data);
} else {
    Controller::loadView('frontend', '404');
}
