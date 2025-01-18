<h1>Gestión de Noticias</h1>
<a href="?action=create" class="btn">Crear Nueva Noticia</a>
<table>
    <thead>
        <tr>
            <th>Título</th>
            <th>Contenido</th>
            <th>Fecha del Evento</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php if (!empty($noticias)): ?>
            <?php foreach ($noticias as $noticia): ?>
                <tr>
                    <td><?= htmlspecialchars($noticia['titulo']); ?></td>
                    <td><?= htmlspecialchars(substr($noticia['contenido'], 0, 50)) . '...'; ?></td>
                    <td><?= htmlspecialchars($noticia['fecha_evento']); ?></td>
                    <td>
                        <a href="?action=edit&id=<?= $noticia['id']; ?>">Editar</a>
                        <a href="?action=delete&id=<?= $noticia['id']; ?>" onclick="return confirm('¿Está seguro?');">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        <?php else: ?>
            <tr>
                <td colspan="4">No hay noticias disponibles.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>