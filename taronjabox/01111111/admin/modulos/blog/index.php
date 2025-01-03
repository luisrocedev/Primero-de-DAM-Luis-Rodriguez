<?php
include '../../includes/header.php'; // Incluye el header
include '../../includes/db.php'; // Incluye la conexión a la base de datos

// Operaciones CRUD
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['add'])) {
        $titulo = $_POST['titulo'];
        $contenido = $_POST['contenido'];
        $fecha = date("Y-m-d");
        $autor = 'Admin';

        $query = $conn->prepare("INSERT INTO blog (titulo, contenido, fecha, autor) VALUES (:titulo, :contenido, :fecha, :autor)");
        $query->execute([
            'titulo' => $titulo,
            'contenido' => $contenido,
            'fecha' => $fecha,
            'autor' => $autor
        ]);
    } elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];

        $query = $conn->prepare("DELETE FROM blog WHERE id = :id");
        $query->execute(['id' => $id]);
    }
}

// Obtener las entradas del blog
$posts = $conn->query("SELECT * FROM blog ORDER BY fecha DESC")->fetchAll(PDO::FETCH_ASSOC);
?>

<h2>Gestionar Blog</h2>
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
        <td><?php echo htmlspecialchars(substr($post['contenido'], 0, 50)) . '...'; ?></td>
        <td><?php echo htmlspecialchars($post['fecha']); ?></td>
        <td><?php echo htmlspecialchars($post['autor']); ?></td>
        <td>
            <form method="POST" style="display:inline;">
                <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
                <button type="submit" name="delete">Eliminar</button>
            </form>
        </td>
    </tr>
    <?php endforeach; ?>
</table>

<h2>Agregar una nueva entrada</h2>
<form method="POST">
    <input type="text" name="titulo" placeholder="Título" required>
    <textarea name="contenido" placeholder="Contenido" required></textarea>
    <button type="submit" name="add">Agregar</button>
</form>

<?php include '../../includes/footer.php'; // Incluye el footer ?>
