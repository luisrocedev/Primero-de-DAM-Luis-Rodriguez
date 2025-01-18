<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/NewsController.php';

$message = '';
$controller = new NewsController();
$news = null;

// Obtener los datos de la noticia a editar
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $news = $controller->get($id);

    if (!$news) {
        die('La noticia no existe.');
    }
}

// Procesar el formulario de edición
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = intval($_POST['id']);
    $titulo = $_POST['titulo'] ?? '';
    $contenido = $_POST['contenido'] ?? '';
    $imagen = $_POST['imagen'] ?? '';
    $fecha_evento = $_POST['fecha_evento'] ?? null;

    if ($controller->update($id, $titulo, $contenido, $imagen, $fecha_evento)) {
        $message = 'Noticia actualizada con éxito.';
        // Recargar los datos de la noticia actualizada
        $news = $controller->get($id);
    } else {
        $message = 'Error al actualizar la noticia.';
    }
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Noticia</title>
</head>

<body>
    <h1>Editar Noticia</h1>
    <?php if ($message): ?>
        <p><?= htmlspecialchars($message); ?></p>
    <?php endif; ?>
    <?php if ($news): ?>
        <form method="POST" action="">
            <input type="hidden" name="id" value="<?= htmlspecialchars($news['id']); ?>">
            <label for="titulo">Título:</label>
            <input type="text" name="titulo" id="titulo" value="<?= htmlspecialchars($news['titulo']); ?>" required>
            <br>
            <label for="contenido">Contenido:</label>
            <textarea name="contenido" id="contenido" required><?= htmlspecialchars($news['contenido']); ?></textarea>
            <br>
            <label for="imagen">URL de la Imagen:</label>
            <input type="text" name="imagen" id="imagen" value="<?= htmlspecialchars($news['imagen']); ?>">
            <br>
            <label for="fecha_evento">Fecha del Evento:</label>
            <input type="date" name="fecha_evento" id="fecha_evento" value="<?= htmlspecialchars($news['fecha_evento']); ?>">
            <br>
            <button type="submit">Guardar Cambios</button>
        </form>
    <?php else: ?>
        <p>La noticia no existe.</p>
    <?php endif; ?>
    <a href="list.php">Volver a la lista</a>
</body>

</html>