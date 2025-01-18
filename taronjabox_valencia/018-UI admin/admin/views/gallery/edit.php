<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/GalleryController.php';

$message = '';
$controller = new GalleryController();
$image = null;

// Obtener los datos de la imagen
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $image = $controller->get($id);

    if (!$image) {
        die('La imagen no existe.');
    }
}

// Procesar el formulario de edición
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = intval($_POST['id']);
    $descripcion = $_POST['descripcion'] ?? '';
    $imagenActual = $image['imagen'];

    // Verificar si se subió una nueva imagen
    if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] === UPLOAD_ERR_OK) {
        $uploadDir = '../../../uploads/';
        $fileName = basename($_FILES['imagen']['name']);
        $targetFilePath = $uploadDir . $fileName;

        // Mover el nuevo archivo al directorio
        if (move_uploaded_file($_FILES['imagen']['tmp_name'], $targetFilePath)) {
            $imagenURL = '/uploads/' . $fileName;

            // Eliminar la imagen anterior si es diferente
            if ($imagenActual !== $imagenURL && file_exists('../../' . $imagenActual)) {
                unlink('../../' . $imagenActual);
            }
        } else {
            $message = 'Error al mover el archivo al directorio de subida.';
            $imagenURL = $imagenActual; // Conservar la imagen actual
        }
    } else {
        $imagenURL = $imagenActual; // Conservar la imagen actual
    }

    // Actualizar los datos en la base de datos
    if ($controller->update($id, $imagenURL, $descripcion)) {
        $message = 'Imagen actualizada con éxito.';
        // Recargar los datos actualizados
        $image = $controller->get($id);
    } else {
        $message = 'Error al actualizar la imagen.';
    }
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Imagen</title>
</head>

<body>
    <h1>Editar Imagen</h1>
    <?php if ($message): ?>
        <p><?= htmlspecialchars($message); ?></p>
    <?php endif; ?>
    <?php if ($image): ?>
        <form method="POST" action="" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<?= htmlspecialchars($image['id']); ?>">
            <label for="imagen">Imagen Actual:</label>
            <img src="<?= htmlspecialchars($image['imagen']); ?>" alt="Imagen" width="150"><br>
            <label for="imagen">Subir Nueva Imagen:</label>
            <input type="file" name="imagen" id="imagen" accept="image/*">
            <br>
            <label for="descripcion">Descripción:</label>
            <textarea name="descripcion" id="descripcion" required><?= htmlspecialchars($image['descripcion']); ?></textarea>
            <br>
            <button type="submit">Guardar Cambios</button>
        </form>
    <?php else: ?>
        <p>La imagen no existe.</p>
    <?php endif; ?>
    <a href="list.php">Volver a la lista</a>
</body>

</html>