<?php
$id = isset($_GET['id']) ? intval($_GET['id']) : null;
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
</head>

<body>
    <?php if ($id): ?>
        <h1>Noticia con ID: <?= $id; ?></h1>
    <?php else: ?>
        <h1>Lista de Noticias</h1>
        <p>Aquí puedes mostrar todas las noticias disponibles.</p>
    <?php endif; ?>
</body>

</html>