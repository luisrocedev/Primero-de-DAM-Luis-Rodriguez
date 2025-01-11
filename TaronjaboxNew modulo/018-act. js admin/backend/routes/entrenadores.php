<?php
require_once '../controllers/EntrenadorController.php';

$controller = new EntrenadorController();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Procesar la subida de imágenes y los datos del entrenador
    $nombre = $_POST['nombre'] ?? '';
    $especialidad = $_POST['especialidad'] ?? '';
    $descripcion = $_POST['descripcion'] ?? '';
    $foto_url = '';

    // Manejar la subida de archivos
    if (!empty($_FILES['foto']['name'])) {
        $targetDir = '../../uploads/entrenadores/';
        $fileName = time() . '_' . basename($_FILES['foto']['name']);
        $targetFile = $targetDir . $fileName;

        // Mover la imagen a la carpeta de destino
        if (move_uploaded_file($_FILES['foto']['tmp_name'], $targetFile)) {
            $foto_url = 'uploads/entrenadores/' . $fileName; // Ruta relativa para guardar en la base de datos
        } else {
            echo json_encode(['success' => false, 'message' => 'Error al subir la imagen']);
            exit;
        }
    }

    // Llamar al controlador para añadir el entrenador
    $result = $controller->addTrainer($nombre, $especialidad, $descripcion, $foto_url);

    // Devolver una respuesta JSON
    echo json_encode(['success' => $result]);
    exit;
}

// Manejar otras solicitudes
$controller->handleRequest();
?>
