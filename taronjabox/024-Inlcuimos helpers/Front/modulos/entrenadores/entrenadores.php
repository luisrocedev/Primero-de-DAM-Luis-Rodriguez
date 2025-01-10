<?php
// Incluir la conexión a la base de datos
require_once '../../includes/db.php';
// Obtener los datos de los entrenadores desde la base de datos
try {
    $query = "SELECT id, nombre, especialidad, descripcion, foto_url FROM entrenadores ORDER BY nombre ASC";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $entrenadores = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error al obtener los entrenadores: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Entrenadores - Taronjabox</title>
    <link rel="stylesheet" href="../../modulos/entrenadores/entrenadores.css">
</head>
<body>
    <?php include '../../includes/header.php'; ?> <!-- Ajustada la ruta -->

    <main>
        <h1>Conoce a Nuestros Entrenadores</h1>
        <?php if (!empty($entrenadores)): ?>
            <div class="entrenadores-lista">
                <?php foreach ($entrenadores as $entrenador): ?>
                    <div class="entrenador">
                        <img src="../../uploads/<?php echo htmlspecialchars($entrenador['foto_url']); ?>" alt="<?php echo htmlspecialchars($entrenador['nombre']); ?>">
                        <h2><?php echo htmlspecialchars($entrenador['nombre']); ?></h2>
                        <p><strong>Especialidad:</strong> <?php echo htmlspecialchars($entrenador['especialidad']); ?></p>
                        <p><?php echo nl2br(htmlspecialchars($entrenador['descripcion'])); ?></p>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php else: ?>
            <p>No tenemos entrenadores registrados por el momento.</p>
        <?php endif; ?>
    </main>

    <?php include '../../includes/footer.php'; ?> <!-- Ajustada la ruta -->

    <!-- Incluye el archivo JavaScript -->
    <script src="../../modulos/entrenadores/entrenadores.js"></script>
</body>
</html>
