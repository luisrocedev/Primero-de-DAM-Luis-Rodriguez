<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Clases</title>
    <link rel="stylesheet" href="../assets/css/clases-styles.css"> <!-- Enlace al CSS -->
</head>

<body>
    <div class="clases-container">
        <h1>Gestión de Clases</h1>
        <a href="?action=create" class="btn">Crear Nueva Clase</a>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Horario</th>
                    <th>Capacidad</th>
                    <th>Fecha de Creación</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($clases)): ?>
                    <?php foreach ($clases as $clase): ?>
                        <tr>
                            <td><?= htmlspecialchars($clase['nombre']); ?></td>
                            <td><?= htmlspecialchars(substr($clase['descripcion'], 0, 50)) . '...'; ?></td>
                            <td><?= htmlspecialchars($clase['horario']); ?></td>
                            <td><?= htmlspecialchars($clase['capacidad']); ?></td>
                            <td><?= htmlspecialchars($clase['fecha_creacion']); ?></td>
                            <td>
                                <a href="?action=edit&id=<?= $clase['id']; ?>" class="btn">Editar</a>
                                <a href="?action=delete&id=<?= $clase['id']; ?>" class="btn btn-danger" onclick="return confirm('¿Está seguro de eliminar esta clase?');">Eliminar</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="6">No hay clases disponibles.</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</body>

</html>