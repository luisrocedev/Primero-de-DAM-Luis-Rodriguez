<?php
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';                                 // Se incluye el controlador de Blog
$blogController = new BlogController();                                                                 // Se crea una instancia del controlador Blog
if (!$blogController->getConnectionStatus()) {                                                          // Si la conexión no es exitosa
    die("Conexión fallida a la base de datos.");                                                        // Se termina el script y se muestra un mensaje de error
}
$posts = $blogController->getAllPosts();                                                                // Se obtienen todas las entradas del blog
?>
<link rel="stylesheet" href="../css/gestionblog.css"> 
<h1>Gestión del Blog</h1> 
<div class="blog-container"> 
    <table> 
        <thead> 
            <tr>
                <th>Título</th> 
                <th>Contenido</th> 
                <th>Autor</th> 
                <th>Fecha</th> 
                <th>Acciones</th>                                                                           <!-- Columna para las acciones (editar, eliminar) -->
            </tr>
        </thead>
        <tbody>
            <?php foreach ($posts as $post): ?>                                                             <!-- Recorre todas las entradas del blog -->
                <tr>
                    <td><?php echo htmlspecialchars($post['titulo']); ?></td>                               <!-- Muestra el título de la entrada -->
                    <td><?php echo htmlspecialchars(substr($post['contenido'], 0, 100)) . '...'; ?></td>    <!-- Muestra el contenido truncado a 100 caracteres -->
                    <td><?php echo htmlspecialchars($post['autor']); ?></td>                                <!-- Muestra el autor de la entrada -->
                    <td><?php echo htmlspecialchars($post['fecha']); ?></td>                                <!-- Muestra la fecha de la entrada -->
                    <td>
                        <a href="edit.php?id=<?php echo $post['id']; ?>">Editar</a> |                       <!-- Enlace para editar la entrada -->
                        <a href="delete.php?id=<?php echo $post['id']; ?>" onclick="return confirm('¿Seguro que quieres eliminar esta entrada?');">Eliminar</a> <!-- Enlace para eliminar la entrada con confirmación -->
                    </td>
                </tr>
            <?php endforeach; ?>                                                                            <!-- Fin del bucle de entradas -->
        </tbody>
    </table>
    <button onclick="location.href='add.php'">Añadir Nueva Entrada</button>                                 <!-- Botón para añadir una nueva entrada -->
</div>
<?php
include_once '../../includes/footer.php';                                                                   // Se incluye el archivo footer.php
?>
