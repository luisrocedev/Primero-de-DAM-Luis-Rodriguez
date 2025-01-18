<?php
require_once '../backend/controllers/Controller.php';

// Datos para pasar a la vista
$data = [
    'title' => 'Bienvenido a TaronjaBox Valencia',
    'message' => 'Esta es una prueba de la carga de vistas dinámicas.'
];

// Cargar la vista
Controller::loadView('frontend', 'home', $data);
