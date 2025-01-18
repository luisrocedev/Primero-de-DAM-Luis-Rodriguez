<?php if (isset($_GET['message'])): ?>
    <p style="color: green;"><?= htmlspecialchars($_GET['message']); ?></p>
<?php endif; ?>

<?php
require_once '../../controllers/GalleryController.php';

$controller = new GalleryController();
$images = $controller->list();
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Galería</title>
</head>

<body>
    <h1>Gestión de Galería</h1>
    <a href="upload.php">Subir Nueva Imagen</a>
    <?php if (isset($_GET['message'])): ?>
        <p style="color: green;"><?= htmlspecialchars($_GET['message']); ?></p>
    <?php endif; ?>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Vista Previa</th>
                <th>Descripción</th>
                <th>Fecha Subida</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($images)): ?>
                <?php foreach ($images as $image): ?>
                    <tr>
                        <td><?= htmlspecialchars($image['id']); ?></td>
                        <td>
                            <img src="<?= htmlspecialchars($image['imagen']); ?>" alt="Imagen" width="100" height="100">
                        </td>
                        <td><?= htmlspecialchars($image['descripcion']); ?></td>
                        <td><?= htmlspecialchars($image['fecha_subida']); ?></td>
                        <td>
                            <a href="edit.php?id=<?= $image['id']; ?>">Editar</a> |
                            <a href="delete.php?id=<?= $image['id']; ?>" onclick="return confirm('¿Eliminar esta imagen?');">Eliminar</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="5">No hay imágenes en la galería.</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</body>

</html>