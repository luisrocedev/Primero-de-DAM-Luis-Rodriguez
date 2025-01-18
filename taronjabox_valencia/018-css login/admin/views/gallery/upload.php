<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/GalleryController.php';

$message = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Verificar si se subió un archivo
    if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
        $uploadDir = '../../../uploads/'; // Ruta de almacenamiento de imágenes
        $fileName = basename($_FILES['imagen']['name']);
        $targetFilePath = $uploadDir . $fileName;

        // Mover el archivo a la carpeta de destino
        if (move_uploaded_file($_FILES['imagen']['tmp_name'], $targetFilePath)) {
            $descripcion = $_POST['descripcion'] ?? '';
            $imagenURL = '../uploads/' . $fileName;

            $controller = new GalleryController();
            if ($controller->upload($imagenURL, $descripcion)) {
                $message = 'Imagen subida con éxito.';
            } else {
                $message = 'Error al guardar los datos en la base de datos.';
            }
        } else {
            $message = 'Error al mover el archivo al directorio de subida.';
        }
    } else {
        $message = 'Por favor, selecciona una imagen válida.';
    }
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subir Imagen</title>
</head>

<body>
    <h1>Subir Nueva Imagen</h1>
    <?php if ($message): ?>
        <p><?= htmlspecialchars($message); ?></p>
    <?php endif; ?>
    <form method="POST" action="" enctype="multipart/form-data">
        <label for="imagen">Seleccionar Imagen:</label>
        <input type="file" name="imagen" id="imagen" accept="image/*" required>
        <br>
        <label for="descripcion">Descripción:</label>
        <textarea name="descripcion" id="descripcion" required></textarea>
        <br>
        <button type="submit">Subir</button>
    </form>
    <a href="list.php">Volver a la lista</a>
</body>

</html>