<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../login.php");
    exit();
}

include '../../Back/includes/db.php';

// Operaciones CRUD (Agregar, Editar, Eliminar)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Agregar nueva entrada de blog
    if (isset($_POST['add'])) {
        $titulo = $_POST['titulo'];
        $contenido = $_POST['contenido'];
        $fecha = date("Y-m-d");
        $autor = 'Admin'; // O puedes definir el autor según el usuario activo
        $query = $conn->prepare("INSERT INTO blog (titulo, contenido, fecha, autor) VALUES (:titulo, :contenido, :fecha, :autor)");
        $query->execute([
            'titulo' => $titulo, 
            'contenido' => $contenido, 
            'fecha' => $fecha, 
            'autor' => $autor
        ]);
    }
    // Eliminar entrada de blog
    elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];
        $query = $conn->prepare("DELETE FROM blog WHERE id = :id");
        $query->execute(['id' => $id]);
    }
    // Editar entrada de blog
    elseif (isset($_POST['edit'])) {
        $id = $_POST['id'];
        $titulo = $_POST['titulo'];
        $contenido = $_POST['contenido'];
        $fecha = date("Y-m-d");
        $autor = 'Admin'; // O según el usuario activo
        $query = $conn->prepare("UPDATE blog SET titulo = :titulo, contenido = :contenido, fecha = :fecha, autor = :autor WHERE id = :id");
        $query->execute([
            'id' => $id,
            'titulo' => $titulo,
            'contenido' => $contenido,
            'fecha' => $fecha,
            'autor' => $autor
        ]);
    }
}

// Obtener entradas del blog
$posts = $conn->query("SELECT * FROM blog ORDER BY fecha DESC")->fetchAll(PDO::FETCH_ASSOC);

// Verificar si se debe editar una entrada
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $post = $conn->query("SELECT * FROM blog WHERE id = $id")->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="../css/admin.css">
    <title>Gestionar Blog - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Gestionar Blog</h1>
        <a href="../index.php">Volver al Dashboard</a>
    </header>
    <main>
        <h2>Entradas del blog</h2>
        <table>
            <tr>
                <th>Título</th>
                <th>Contenido</th>
                <th>Fecha</th>
                <th>Autor</th>
                <th>Acciones</th>
            </tr>
            <?php foreach ($posts as $post): ?>
            <tr>
                <td><?php echo htmlspecialchars($post['titulo']); ?></td>
                <td><?php echo nl2br(htmlspecialchars(substr($post['contenido'], 0, 100))); ?>...</td>
                <td><?php echo htmlspecialchars($post['fecha']); ?></td>
                <td><?php echo htmlspecialchars($post['autor']); ?></td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
                        <button type="submit" name="delete">Eliminar</button>
                    </form>
                    <a href="?edit=<?php echo $post['id']; ?>">Editar</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

        <h2><?php echo isset($post) ? 'Editar entrada del blog' : 'Agregar una nueva entrada'; ?></h2>

        <!-- Formulario para agregar o editar entrada -->
        <form method="POST">
            <input type="text" name="titulo" placeholder="Título de la entrada" value="<?php echo isset($post) ? htmlspecialchars($post['titulo']) : ''; ?>" required>
            <textarea name="contenido" placeholder="Contenido" rows="5" required><?php echo isset($post) ? htmlspecialchars($post['contenido']) : ''; ?></textarea>
            <button type="submit" name="<?php echo isset($post) ? 'edit' : 'add'; ?>">Guardar</button>
            <?php if (isset($post)): ?>
                <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
            <?php endif; ?>
        </form>
    </main>
</body>
</html>
