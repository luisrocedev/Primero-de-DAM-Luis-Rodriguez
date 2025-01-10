<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Entrenadores</title>
    <link rel="stylesheet" href="/front/assets/css/frontend.css">
</head>
<body>
    <h1>Entrenadores</h1>
    <div class="entrenadores-list">
        <?php foreach ($entrenadores as $entrenador): ?>
            <div class="entrenador-card">
                <h2><?= htmlspecialchars($entrenador['nombre']) ?></h2>
                <p><?= htmlspecialchars($entrenador['descripcion']) ?></p>
                <img src="/uploads/entrenador/<?= htmlspecialchars($entrenador['foto']) ?>" alt="<?= htmlspecialchars($entrenador['nombre']) ?>">
            </div>
        <?php endforeach; ?>
    </div>
</body>
</html>
