<?php
// Incluir el controlador de Blog
include_once __DIR__ . '/../../../Back/controllers/BlogController.php';

// Instanciar el controlador
$blogController = new BlogController();

// Comprobar la conexión a la base de datos
if (!$blogController->getConnectionStatus()) {
    die("Conexión fallida a la base de datos.");
}

// Obtener todas las entradas del blog
$posts = $blogController->getAllPosts();
?>

<!-- Incluir el archivo de estilo blog.css -->
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
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($posts as $post): ?>
                <tr>
                    <td><?php echo htmlspecialchars($post['titulo']); ?></td>
                    <td><?php echo htmlspecialchars(substr($post['contenido'], 0, 100)) . '...'; ?></td>
                    <td><?php echo htmlspecialchars($post['autor']); ?></td>
                    <td><?php echo htmlspecialchars($post['fecha']); ?></td>
                    <td>
                        <a href="edit.php?id=<?php echo $post['id']; ?>">Editar</a> | 
                        <a href="delete.php?id=<?php echo $post['id']; ?>" onclick="return confirm('¿Seguro que quieres eliminar esta entrada?');">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- Botón para volver atrás -->
    <button onclick="history.back()">Volver atrás</button>

    <button onclick="location.href='add.php'">Añadir Nueva Entrada</button>
</div>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
