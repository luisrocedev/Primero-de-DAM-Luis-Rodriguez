<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($pageTitle ?? 'TaronjaBox Valencia'); ?></title>
    <link rel="stylesheet" href="../frontend/assets/styles.css">
</head>

<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.php?route=home" <?= isset($activePage) && $activePage === 'home' ? 'class="active"' : ''; ?>>Inicio</a></li>
                <li><a href="index.php?route=news" <?= isset($activePage) && $activePage === 'news' ? 'class="active"' : ''; ?>>Noticias</a></li>
                <li><a href="index.php?route=gallery" <?= isset($activePage) && $activePage === 'gallery' ? 'class="active"' : ''; ?>>Galería</a></li>
                <li><a href="index.php?route=classes" <?= isset($activePage) && $activePage === 'classes' ? 'class="active"' : ''; ?>>Clases</a></li>
            </ul>
        </nav>
    </header>