<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Noticias</title>
    <link rel="stylesheet" href="../assets/admin-styles.css"> <!-- Estilos generales -->
    <link rel="stylesheet" href="../assets/css/noticias-styles.css"> <!-- Estilos específicos -->
</head>

<body>
    <div class="admin-container">
        <!-- Menú lateral -->
        <aside class="sidebar">
            <h1>TaronjaBox Admin</h1>
            <nav>
                <ul>
                    <li><a href="../controllers/NoticiasController.php?action=list" class="active">Noticias</a></li>
                    <li><a href="../controllers/GaleriaController.php?action=list">Galería</a></li>
                    <li><a href="../controllers/ClasesController.php?action=list">Clases</a></li>
                    <li><a href="../controllers/ContactoController.php?action=list">Mensajes de Contacto</a></li>
                </ul>
            </nav>
            <a href="../logout.php" class="btn">Cerrar Sesión</a>
        </aside>

        <!-- Contenido principal -->
        <main class="main-content">
            <header>
                <h1>Gestión de Noticias</h1>
                <a href="?action=create" class="btn">Crear Nueva Noticia</a>
            </header>
            <section>
                <table class="table">
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
                                        <a href="?action=edit&id=<?= $noticia['id']; ?>" class="btn-small">Editar</a>
                                        <a href="?action=delete&id=<?= $noticia['id']; ?>" class="btn-small btn-danger" onclick="return confirm('¿Está seguro?');">Eliminar</a>
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
            </section>
        </main>
    </div>
</body>

</html>