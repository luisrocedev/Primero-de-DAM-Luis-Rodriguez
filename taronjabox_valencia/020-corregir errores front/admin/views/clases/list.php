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
        <?php foreach ($clases as $clase): ?>
            <tr>
                <td><?= htmlspecialchars($clase['nombre']); ?></td>
                <td><?= htmlspecialchars($clase['descripcion']); ?></td>
                <td><?= htmlspecialchars($clase['horario']); ?></td>
                <td><?= htmlspecialchars($clase['capacidad']); ?></td>
                <td><?= htmlspecialchars($clase['fecha_creacion']); ?></td>
                <td>
                    <a href="?action=edit&id=<?= $clase['id']; ?>" class="btn">Editar</a>
                    <a href="?action=delete&id=<?= $clase['id']; ?>" class="btn" onclick="return confirm('¿Está seguro de eliminar esta clase?');">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>