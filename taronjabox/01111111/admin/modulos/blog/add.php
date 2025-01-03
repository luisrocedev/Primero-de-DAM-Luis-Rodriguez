<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../../login.php");
    exit();
}

include '../../includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $titulo = $_POST['titulo'];
    $contenido = $_POST['contenido'];
    $fecha = date("Y-m-d");
    $autor = 'Admin'; // Esto puede cambiar según el sistema de usuarios

    $query = $conn->prepare("INSERT INTO blog (titulo, contenido, fecha, autor) VALUES (:titulo, :contenido, :fecha, :autor)");
    $query->execute([
        'titulo' => $titulo,
        'contenido' => $contenido,
        'fecha' => $fecha,
        'autor' => $autor
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
    <title>Agregar Entrada de Blog</title>
</head>
<body>
    <?php include '../../includes/header.php'; ?>
    <main>
        <h1>Agregar Entrada de Blog</h1>
        <form method="POST">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" required>
            
            <label for="contenido">Contenido:</label>
            <textarea id="contenido" name="contenido" rows="10" required></textarea>
            
            <button type="submit" class="btn">Guardar</button>
        </form>
    </main>
    <?php include '../../includes/footer.php'; ?>
</body>
</html>
