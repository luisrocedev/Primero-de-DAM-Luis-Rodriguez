<?php
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';         // Incluye el archivo que contiene la lógica para gestionar los entrenadores
$entrenadoresController = new EntrenadoresController();                                 // Crea una instancia del controlador de Entrenadores
$id = $_GET['id'] ?? null;                                                              // Obtiene el ID del entrenador desde la URL (usando 'GET')
if ($id) {                                                                              // Verifica si el ID fue proporcionado
    $entrenadoresController->deleteEntrenador($id);                                     // Llama al método para eliminar el entrenador con el ID proporcionado
    header("Location: index.php");                                                      // Redirige al listado de entrenadores después de eliminarlo
    exit;                                                                               // Termina la ejecución del script
} else {
    echo "ID de entrenador no proporcionado.";                                          // Muestra un mensaje si no se ha proporcionado un ID
}
?>
