<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrenadores</title>
</head>

<body>
    <h1>Entrenadores</h1>
    <ul>
        <?php if (!empty($trainers)): ?>
            <?php foreach ($trainers as $trainer): ?>
                <li>
                    <strong><?= htmlspecialchars($trainer['nombre']); ?></strong><br>
                    <?= htmlspecialchars($trainer['especialidad']); ?><br>
                    <?= htmlspecialchars($trainer['biografia']); ?>
                </li>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No hay entrenadores disponibles.</p>
        <?php endif; ?>
    </ul>
</body>

</html>