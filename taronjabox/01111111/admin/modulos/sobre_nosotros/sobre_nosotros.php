<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../login.php");
    exit();
}

include '../includes/db.php';

// Actualizar información
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $contenido = $_POST['contenido'];
    $query = $conn->prepare("UPDATE sobre_nosotros SET contenido = :contenido WHERE id = 1");
    $query->execute(['contenido' => $contenido]);
}

// Obtener información
$info = $conn->query("SELECT contenido FROM sobre_nosotros WHERE id = 1")->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="../css/admin.css">
    <title>Gestionar Sobre nosotros - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Gestionar "Sobre nosotros"</h1>
        <a href="../index.php">Volver al Dashboard</a>
    </header>
    <main>
        <form method="POST">
            <textarea name="contenido" rows="5" required><?php echo htmlspecialchars($info['contenido']); ?></textarea>
            <button type="submit">Actualizar</button>
        </form>
    </main>
</body>
</html>
