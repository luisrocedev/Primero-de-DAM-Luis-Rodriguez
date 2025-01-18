<?php
require_once '../backend/controllers/Controller.php';

// Obtener la ruta y el ID de la URL
$route = isset($_GET['route']) ? $_GET['route'] : 'home';
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

// Validar rutas disponibles
$validRoutes = ['home', 'news', 'gallery', 'classes'];

if (in_array($route, $validRoutes)) {
    // Cargar la vista y pasar el ID si existe
    Controller::loadView('frontend', $route);
} else {
    // Página 404
    Controller::loadView('frontend', '404');
}
