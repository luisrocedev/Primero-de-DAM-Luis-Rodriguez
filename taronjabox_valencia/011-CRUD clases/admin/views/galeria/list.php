<h1>Gestión de Galería</h1>
<a href="?action=upload" class="btn">Subir Nueva Imagen</a>
<table>
    <thead>
        <tr>
            <th>Título</th>
            <th>Imagen</th>
            <th>Fecha de Subida</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($imagenes as $imagen): ?>
            <tr>
                <td><?= htmlspecialchars($imagen['titulo']); ?></td>
                <td><img src="../../uploads/<?= htmlspecialchars($imagen['imagen']); ?>" alt="<?= htmlspecialchars($imagen['titulo']); ?>" style="width: 100px;"></td>
                <td><?= htmlspecialchars($imagen['fecha_subida']); ?></td>
                <td>
                    <a href="?action=edit&id=<?= $imagen['id']; ?>" class="btn">Editar</a>
                    <a href="?action=delete&id=<?= $imagen['id']; ?>" class="btn" onclick="return confirm('¿Está seguro de eliminar esta imagen?');">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>