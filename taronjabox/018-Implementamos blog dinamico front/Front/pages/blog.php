<?php
// Incluir la conexión a la base de datos
include dirname(__DIR__, 2) . '/Back/includes/db.php';  

// Consulta para obtener todas las entradas del blog
$sql = "SELECT * FROM blog ORDER BY fecha DESC";  // Ordenar por fecha descendente
$stmt = $conn->prepare($sql);
$stmt->execute();

// Obtener todas las entradas
$entradas = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<main>
    <h1>Blog de TaronjaBox</h1>
    <div class="blog-list">
        <?php foreach ($entradas as $entrada): ?>
            <div class="blog-item">
                <!-- Mostrar el título y un extracto del contenido -->
                <h2><a href="post.php?id=<?= $entrada['id'] ?>"><?= htmlspecialchars($entrada['titulo']) ?></a></h2>
                <p><?= htmlspecialchars(substr($entrada['contenido'], 0, 150)) ?>...</p>  <!-- Extracto del contenido -->
                <p><a href="post.php?id=<?= $entrada['id'] ?>">Leer más</a></p>
            </div>
        <?php endforeach; ?>
    </div>
</main>
<?php
?>
