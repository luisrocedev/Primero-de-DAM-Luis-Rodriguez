<?php if (isset($_GET['message'])): ?>
    <p style="color: green;"><?= htmlspecialchars($_GET['message']); ?></p>
<?php endif; ?>

<?php
require_once '../../controllers/NewsController.php';
$controller = new NewsController();
$newsList = $controller->list();
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Noticias</title>
</head>

<body>
    <h1>Gestión de Noticias</h1>
    <a href="create.php">Crear Nueva Noticia</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Contenido</th>
                <th>Imagen</th>
                <th>Fecha Evento</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($newsList)): ?>
                <?php foreach ($newsList as $news): ?>
                    <tr>
                        <td><?= htmlspecialchars($news['id']); ?></td>
                        <td><?= htmlspecialchars($news['titulo']); ?></td>
                        <td><?= htmlspecialchars($news['contenido']); ?></td>
                        <td><img src="<?= htmlspecialchars($news['imagen']); ?>" alt="Imagen" width="100"></td>
                        <td><?= htmlspecialchars($news['fecha_evento']); ?></td>
                        <td>
                            <a href="edit.php?id=<?= $news['id']; ?>">Editar</a> |
                            <a href="delete.php?id=<?= $news['id']; ?>" onclick="return confirm('¿Eliminar esta noticia?');">Eliminar</a>
                            <a href="create.php">Crear Nueva Noticia</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="6">No hay noticias disponibles.</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</body>

</html>