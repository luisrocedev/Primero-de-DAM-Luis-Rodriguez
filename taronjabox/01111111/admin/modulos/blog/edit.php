<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../../login.php");
    exit();
}

include '../../includes/db.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = $conn->prepare("SELECT * FROM blog WHERE id = :id");
    $query->execute(['id' => $id]);
    $post = $query->fetch(PDO::FETCH_ASSOC);

    if (!$post) {
        header("Location: index.php");
        exit();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $titulo = $_POST['titulo'];
    $contenido = $_POST['contenido'];
    $fecha = date("Y-m-d");
    $autor = 'Admin'; // Esto puede cambiar según el sistema de usuarios

    $query = $conn->prepare("UPDATE blog SET titulo = :titulo, contenido = :contenido, fecha = :fecha, autor = :autor WHERE id = :id");
    $query->execute([
        'titulo' => $titulo,
        'contenido' => $contenido,
        'fecha' => $fecha,
        'autor' => $autor,
        'id' => $id
    ]);

    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../css/admin.css">
    <title>Editar Entrada de Blog</title>
</head>
<body>
    <?php include '../../includes/header.php'; ?>
    <main>
        <h1>Editar Entrada de Blog</h1>
        <form method="POST">
            <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" value="<?php echo htmlspecialchars($post['titulo']); ?>" required>
            
            <label for="contenido">Contenido:</label>
            <textarea id="contenido" name="contenido" rows="10" required><?php echo htmlspecialchars($post['contenido']); ?></textarea>
            
            <button type="submit" class="btn">Guardar</button>
        </form>
    </main>
    <?php include '../../includes/footer.php'; ?>
</body>
</html>
