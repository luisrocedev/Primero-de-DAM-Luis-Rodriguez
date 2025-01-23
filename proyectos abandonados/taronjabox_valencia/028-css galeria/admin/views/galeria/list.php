<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Galería</title>
    <link rel="stylesheet" href="../assets/css/galeria-styles.css"> <!-- Ruta al CSS -->
</head>

<body>
    <div class="galeria-container">
        <h1>Gestión de Galería</h1>
        <a href="?action=upload" class="btn">Subir Nueva Imagen</a>
        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Imagen</th>
                    <th>Fecha de Subida</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($imagenes)): ?>
                    <?php foreach ($imagenes as $imagen): ?>
                        <tr>
                            <td><?= htmlspecialchars($imagen['titulo']); ?></td>
                            <td>
                                <img src="../../uploads/<?= htmlspecialchars($imagen['imagen']); ?>"
                                    alt="<?= htmlspecialchars($imagen['titulo']); ?>">
                            </td>
                            <td><?= htmlspecialchars($imagen['fecha_subida']); ?></td>
                            <td>
                                <a href="?action=edit&id=<?= $imagen['id']; ?>" class="btn">Editar</a>
                                <a href="?action=delete&id=<?= $imagen['id']; ?>" class="btn btn-danger"
                                    onclick="return confirm('¿Está seguro de eliminar esta imagen?');">Eliminar</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="4">No hay imágenes disponibles.</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</body>

</html>