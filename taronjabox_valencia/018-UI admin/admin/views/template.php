<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($pageTitle ?? 'Admin Panel'); ?></title>
    <link rel="stylesheet" href="../../admin/assests/admin-styles.css">
</head>

<body>
    <header>
        <h1>Panel de Administración</h1>
        <nav>
            <a href="../controllers/NoticiasController.php">Noticias</a>
            <a href="../controllers/GalleryController.php">Galería</a>
            <a href="../controllers/ClassesController.php">Clases</a>
        </nav>
    </header>
    <main>
        <?php require_once $view; ?>
    </main>
</body>

</html>