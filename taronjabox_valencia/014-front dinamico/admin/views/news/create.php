<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../../login.php');
    exit;
}

require_once '../../controllers/NewsController.php';

$message = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $titulo = $_POST['titulo'] ?? '';
    $contenido = $_POST['contenido'] ?? '';
    $imagen = $_POST['imagen'] ?? '';
    $fecha_evento = $_POST['fecha_evento'] ?? null;

    $controller = new NewsController();
    if ($controller->create($titulo, $contenido, $imagen, $fecha_evento)) {
        $message = 'Noticia creada con éxito.';
    } else {
        $message = 'Error al crear la noticia.';
    }
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Noticia</title>
</head>

<body>
    <h1>Crear Nueva Noticia</h1>
    <?php if ($message): ?>
        <p><?= htmlspecialchars($message); ?></p>
    <?php endif; ?>
    <form method="POST" action="">
        <label for="titulo">Título:</label>
        <input type="text" name="titulo" id="titulo" required>
        <br>
        <label for="contenido">Contenido:</label>
        <textarea name="contenido" id="contenido" required></textarea>
        <br>
        <label for="imagen">URL de la Imagen:</label>
        <input type="text" name="imagen" id="imagen">
        <br>
        <label for="fecha_evento">Fecha del Evento:</label>
        <input type="date" name="fecha_evento" id="fecha_evento">
        <br>
        <button type="submit">Crear</button>
    </form>
    <a href="list.php">Volver a la lista</a>
</body>

</html>