<?php
// Cambiamos las rutas relativas para que apunten a los archivos correctos
include_once '../includes/db.php'; // Ajustado para ir a la carpeta includes
include_once 'EntrenadoresController.php'; // EntrenadoresController.php está en el mismo directorio

// Crear instancia de EntrenadoresController
$entrenadoresController = new EntrenadoresController();

// Obtener todos los entrenadores
$entrenadores = $entrenadoresController->getAllEntrenadores();

// Mostrar los entrenadores
echo '<pre>';
print_r($entrenadores);
echo '</pre>';
?>
