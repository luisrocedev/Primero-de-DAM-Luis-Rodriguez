<?php
// Incluir la conexión a la base de datos
require_once '../includes/db.php';

// Obtener los datos del blog desde la base de datos
try {
    $query = "SELECT id, titulo, contenido, fecha, autor FROM blog ORDER BY fecha DESC";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $blogs = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error al obtener los blogs: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog - Taronjabox</title>
    <link rel="stylesheet" href="../includes/styles.css"> <!-- Ajusta según tu estructura -->
</head>
<body>
    <?php include '../includes/header.php'; ?> <!-- Encabezado -->

    <main>
        <h1>Blog</h1>
        <?php if (!empty($blogs)): ?>
            <?php foreach ($blogs as $blog): ?>
                <article>
                    <h2><?php echo htmlspecialchars($blog['titulo']); ?></h2>
                    <p><strong>Autor:</strong> <?php echo htmlspecialchars($blog['autor']); ?></p>
                    <p><?php echo nl2br(htmlspecialchars($blog['contenido'])); ?></p>
                    <p><small>Publicado el: <?php echo htmlspecialchars($blog['fecha']); ?></small></p>
                </article>
                <hr>
            <?php endforeach; ?>
        <?php else: ?>
            <p>No hay entradas en el blog por el momento.</p>
        <?php endif; ?>
    </main>

    <?php include '../includes/footer.php'; ?> <!-- Pie de página -->
</body>
</html>
