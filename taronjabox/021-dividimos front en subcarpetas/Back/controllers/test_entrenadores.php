<?php
include_once '../includes/db.php';                              // Conecta con la base de datos desde la carpeta includes
include_once 'EntrenadoresController.php';                      // Incluye el controlador de entrenadores
$entrenadoresController = new EntrenadoresController();         // Instancia del controlador para usar sus métodos
$entrenadores = $entrenadoresController->getAllEntrenadores();  // Llama al método que obtiene todos los entrenadores
echo '<pre>';                                                   // Inicia el formato de salida
print_r($entrenadores);                                         // Imprime los entrenadores obtenidos
echo '</pre>';                                                  // Cierra el formato de salida
?>
