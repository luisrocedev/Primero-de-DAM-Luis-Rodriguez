<?php
// URL del endpoint
$apiUrl = 'http://localhost/Primero-de-DAM-Luis-Rodriguez/taronjabox_valencia/014-front%20dinamico/backend/controllers/NewsApiController.php?action=list';

// Obtener los datos desde el endpoint
$newsData = file_get_contents($apiUrl);
$news = json_decode($newsData, true);
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
</head>

<body>
    <h1>Noticias y Eventos</h1>
    <div>
        <?php if (!empty($news)): ?>
            <?php foreach ($news as $item): ?>
                <div style="margin-bottom: 20px;">
                    <h2><?= htmlspecialchars($item['titulo']); ?></h2>
                    <p><?= htmlspecialchars($item['contenido']); ?></p>
                    <?php if (!empty($item['imagen'])): ?>
                        <img src="<?= htmlspecialchars($item['imagen']); ?>" alt="Imagen" style="max-width: 100%; height: auto;">
                    <?php endif; ?>
                    <p><strong>Fecha del evento:</strong> <?= htmlspecialchars($item['fecha_evento']); ?></p>
                    <p><strong>Publicado el:</strong> <?= htmlspecialchars($item['fecha_creacion']); ?></p>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No hay noticias disponibles en este momento.</p>
        <?php endif; ?>
    </div>
</body>

</html>