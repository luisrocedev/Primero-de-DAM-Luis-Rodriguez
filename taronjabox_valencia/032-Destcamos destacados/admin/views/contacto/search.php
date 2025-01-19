<h1>Resultados de búsqueda</h1>
<?php if (empty($mensajes)): ?>
    <p>No se encontraron mensajes.</p>
<?php else: ?>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Email</th>
                <th>Mensaje</th>
                <th>Fecha</th>
                <th>Leído</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($mensajes as $mensaje): ?>
                <tr>
                    <td><?= htmlspecialchars($mensaje['nombre']); ?></td>
                    <td><?= htmlspecialchars($mensaje['email']); ?></td>
                    <td><?= htmlspecialchars(substr($mensaje['mensaje'], 0, 50)) . '...'; ?></td>
                    <td><?= htmlspecialchars($mensaje['fecha']); ?></td>
                    <td><?= $mensaje['leido'] ? 'Sí' : 'No'; ?></td>
                    <td>
                        <a href="../controllers/ContactoController.php?action=view&id=<?= $mensaje['id']; ?>">Ver</a>
                        <a href="../controllers/ContactoController.php?action=markAsRead&id=<?= $mensaje['id']; ?>">Marcar como leído</a>
                        <a href="../controllers/ContactoController.php?action=delete&id=<?= $mensaje['id']; ?>" onclick="return confirm('¿Está seguro de eliminar este mensaje?');">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php endif; ?>
<a href="../controllers/ContactoController.php?action=list">Volver al listado</a>