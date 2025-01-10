<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Entrenadores</title>
    <link rel="stylesheet" href="/admin/assets/css/style.css">
</head>
<body>
    <h1>Gestión de Entrenadores</h1>
    <a href="/admin/controllers/Entrenador/CreateEntrenadorController.php">Añadir nuevo entrenador</a>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Foto</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($entrenadores as $entrenador): ?>
                <tr>
                    <td><?= htmlspecialchars($entrenador['nombre']) ?></td>
                    <td><?= htmlspecialchars($entrenador['descripcion']) ?></td>
                    <td><img src="/uploads/entrenador/<?= htmlspecialchars($entrenador['foto']) ?>" alt="<?= htmlspecialchars($entrenador['nombre']) ?>" width="50"></td>
                    <td>
                        <a href="/admin/controllers/Entrenador/EditEntrenadorController.php?id=<?= $entrenador['id'] ?>">Editar</a>
                        <a href="/admin/controllers/Entrenador/DeleteEntrenadorController.php?id=<?= $entrenador['id'] ?>">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
