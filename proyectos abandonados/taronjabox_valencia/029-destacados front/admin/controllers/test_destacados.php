<?php
require_once 'DestacadosController.php';

$controller = new DestacadosController();

// Listar destacados
$controller->listar();

// Crear un nuevo destacado
// $controller->crear('Nuevo evento', 'Descripción del evento', 'imagenes/evento2.jpg', '2025-01-25');

// Eliminar un destacado
// $controller->eliminar(1);
