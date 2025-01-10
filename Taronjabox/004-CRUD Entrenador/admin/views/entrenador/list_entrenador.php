<table>
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Especialidad</th>
            <th>Descripción</th>
            <th>Foto</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($entrenadores as $entrenador): ?>
            <tr>
                <td><?= htmlspecialchars($entrenador['nombre']) ?></td>
                <td><?= htmlspecialchars($entrenador['especialidad']) ?></td>
                <td><?= htmlspecialchars($entrenador['descripcion']) ?></td>
                <td><img src="/uploads/entrenador/<?= htmlspecialchars($entrenador['foto_url']) ?>" alt="<?= htmlspecialchars($entrenador['nombre']) ?>" width="50"></td>
                <td>
                    <a href="/admin/controllers/Entrenador/EditEntrenadorController.php?id=<?= $entrenador['id'] ?>">Editar</a>
                    <a href="/admin/controllers/Entrenador/DeleteEntrenadorController.php?id=<?= $entrenador['id'] ?>">Eliminar</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
