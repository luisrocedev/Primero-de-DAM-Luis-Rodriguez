<?php
// Incluir el controlador de Entrenadores
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';

// Instanciar el controlador
$entrenadoresController = new EntrenadoresController();

// Comprobar la conexión a la base de datos
if (!$entrenadoresController->getConnectionStatus()) {
    die("Conexión fallida a la base de datos.");
}

// Obtener todos los entrenadores
$entrenadores = $entrenadoresController->getAllEntrenadores();
?>

<!-- Incluir el archivo de estilo gestionentrenadores.css -->
<link rel="stylesheet" href="../css/gestionentrenadores.css">

<h1>Gestión de Entrenadores</h1>

<div class="entrenadores-container">
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
                    <td><?php echo htmlspecialchars($entrenador['nombre']); ?></td>
                    <td><?php echo htmlspecialchars($entrenador['especialidad']); ?></td>
                    <td><?php echo htmlspecialchars(substr($entrenador['descripcion'], 0, 100)) . '...'; ?></td>
                    <td>
                        <?php if ($entrenador['foto_url']): ?>
                            <img src="<?php echo htmlspecialchars($entrenador['foto_url']); ?>" alt="Foto de <?php echo htmlspecialchars($entrenador['nombre']); ?>" width="50">
                        <?php else: ?>
                            Sin foto
                        <?php endif; ?>
                    </td>
                    <td>
                        <a href="edit.php?id=<?php echo $entrenador['id']; ?>">Editar</a> | 
                        <a href="delete.php?id=<?php echo $entrenador['id']; ?>" onclick="return confirm('¿Seguro que quieres eliminar este entrenador?');">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- Botón para volver atrás -->
    <button onclick="history.back()">Volver atrás</button>

    <!-- Botón para añadir nuevo entrenador -->
    <button onclick="location.href='add.php'">Añadir Nuevo Entrenador</button>
</div>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
