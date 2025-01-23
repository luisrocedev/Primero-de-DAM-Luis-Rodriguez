<h1>Mensajes de Contacto</h1>
<form method="GET" action="../controllers/ContactoController.php">
    <input type="hidden" name="action" value="search">
    <input type="text" name="term" placeholder="Buscar mensajes">
    <button type="submit">Buscar</button>
</form>
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