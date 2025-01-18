<?php
require_once '../backend/controllers/Controller.php';

// Obtener la ruta desde la URL
$route = isset($_GET['route']) ? $_GET['route'] : 'home'; // Por defecto, "home"

// Intentar cargar la vista
Controller::loadView('frontend', $route);
