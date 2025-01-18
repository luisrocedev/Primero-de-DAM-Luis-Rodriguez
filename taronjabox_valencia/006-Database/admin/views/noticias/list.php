<h1>Gestión de Noticias</h1>
<a href="NoticiasController.php?action=create">Crear Nueva Noticia</a>
<table>
    <thead>
        <tr>
            <th>Título</th>
            <th>Contenido</th>
            <th>Fecha de Evento</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($noticias as $noticia): ?>
            <tr>
                <td><?= htmlspecialchars($noticia['titulo']); ?></td>
                <td><?= htmlspecialchars(substr($noticia['contenido'], 0, 50)) . '...'; ?></td>
                <td><?= htmlspecialchars($noticia['fecha_evento']); ?></td>
                <td>
                    <a href="NoticiasController.php?action=edit&id=<?= $noticia['id']; ?>">Editar</a>
                    <a href="NoticiasController.php?action=delete&id=<?= $noticia['id']; ?>" onclick="return confirm('¿Está seguro?');">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>