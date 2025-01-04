<?php
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';             // Incluye el archivo del controlador para gestionar entrenadores
$entrenadoresController = new EntrenadoresController();                                     // Crea una instancia del controlador de entrenadores
if (!$entrenadoresController->getConnectionStatus()) {                                      // Verifica si la conexión a la base de datos es exitosa
    die("Conexión fallida a la base de datos.");                                            // Si la conexión falla, muestra un mensaje de error y detiene la ejecución
}
$entrenadores = $entrenadoresController->getAllEntrenadores();                              // Llama al método que obtiene todos los entrenadores de la base de datos
?>
<link rel="stylesheet" href="../css/gestionentrenadores.css"> 
<h1>Gestión de Entrenadores</h1>
<div class="entrenadores-container">                                                        <!-- Contenedor para los entrenadores -->
    <table>                                                                                 <!-- Tabla para mostrar los entrenadores -->
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
            <?php foreach ($entrenadores as $entrenador): ?>                                <!-- Recorre todos los entrenadores obtenidos de la base de datos -->
                <tr>
                    <td><?php echo htmlspecialchars($entrenador['nombre']); ?></td>         <!-- Muestra el nombre del entrenador -->
                    <td><?php echo htmlspecialchars($entrenador['especialidad']); ?></td>   <!-- Muestra la especialidad del entrenador -->
                    <td><?php echo htmlspecialchars(substr($entrenador['descripcion'], 0, 100)) . '...'; ?></td> <!-- Muestra los primeros 100 caracteres de la descripción -->
                    <td>
                        <?php if ($entrenador['foto_url']): ?>                              <!-- Si existe una URL para la foto -->
                            <img src="<?php echo htmlspecialchars($entrenador['foto_url']); ?>" alt="Foto de <?php echo htmlspecialchars($entrenador['nombre']); ?>" width="50"> <!-- Muestra la foto del entrenador -->
                        <?php else: ?>                                                       <!-- Si no existe foto -->
                            Sin foto                                                         <!-- Muestra "Sin foto" -->
                        <?php endif; ?>
                    </td>
                    <td>
                        <a href="edit.php?id=<?php echo $entrenador['id']; ?>">Editar</a> |  <!-- Enlace para editar el entrenador -->
                        <a href="delete.php?id=<?php echo $entrenador['id']; ?>" onclick="return confirm('¿Seguro que quieres eliminar este entrenador?');">Eliminar</a> <!-- Enlace para eliminar el entrenador, con confirmación -->
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <button onclick="location.href='add.php'">Añadir Nuevo Entrenador</button>               <!-- Botón para añadir un nuevo entrenador -->
</div>
<?php
include_once '../../includes/footer.php'; 
?>
