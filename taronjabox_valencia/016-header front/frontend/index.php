<?php
require_once '../backend/controllers/Controller.php';

// Configuración inicial
$route = isset($_GET['route']) ? $_GET['route'] : 'home';
$validRoutes = ['home', 'news', 'gallery', 'classes'];
$pageTitle = 'TaronjaBox Valencia';
$activePage = $route;

// Configurar el título según la ruta
switch ($route) {
    case 'home':
        $pageTitle = 'Inicio';
        break;
    case 'news':
        $pageTitle = 'Noticias';
        break;
    case 'gallery':
        $pageTitle = 'Galería';
        break;
    case 'classes':
        $pageTitle = 'Clases';
        break;
    default:
        $pageTitle = 'Página no encontrada';
        $route = '404';
        $activePage = null;
}

// Incluir el header
require '../frontend/partials/header.php';

// Cargar la vista correspondiente
if (in_array($route, $validRoutes)) {
    Controller::loadView('frontend', $route);
} else {
    Controller::loadView('frontend', '404');
}
