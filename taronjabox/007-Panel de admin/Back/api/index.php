<?php
// Configurar las cabeceras para las respuestas JSON
header("Content-Type: application/json; charset=UTF-8");

// Incluir el archivo de conexión a la base de datos
include_once '../includes/db.php';

// Obtener la ruta solicitada
$requestUri = $_SERVER['REQUEST_URI'];
$requestMethod = $_SERVER['REQUEST_METHOD'];

// Quitar la ruta base para obtener solo la parte importante
$basePath = '/taronjabox/Back/api/';
$route = str_replace($basePath, '', $requestUri);
$route = explode('?', $route)[0]; // Eliminar parámetros GET de la ruta

// Redirigir las solicitudes a los controladores
switch ($route) {
    case 'blog':
        include_once '../controllers/blogController.php';
        break;

    case 'precios':
        include_once '../controllers/preciosController.php';
        break;

    default:
        http_response_code(404);
        echo json_encode(['message' => 'Ruta no encontrada.']);
        break;
}
?>
