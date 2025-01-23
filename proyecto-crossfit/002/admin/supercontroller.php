<?php
session_start();
include 'includes/db.php';

if (!isset($_SESSION['admin_id'])) {
    header('Location: login.php');
    exit;
}

$table = $_GET['table'] ?? null;

if (!$table) {
    die("Tabla no especificada.");
}

// Obtener columnas de la tabla
$columnsQuery = $pdo->query("DESCRIBE $table");
$columns = $columnsQuery->fetchAll(PDO::FETCH_COLUMN);

// Fetch data
$dataQuery = $pdo->query("SELECT * FROM $table");
$data = $dataQuery->fetchAll(PDO::FETCH_ASSOC);

// Insertar datos
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action']) && $_POST['action'] === 'insert') {
    $fields = array_filter($_POST, fn($key) => in_array($key, $columns), ARRAY_FILTER_USE_KEY);
    $placeholders = implode(", ", array_map(fn($key) => ":$key", array_keys($fields)));

    $insertQuery = "INSERT INTO $table (" . implode(", ", array_keys($fields)) . ") VALUES ($placeholders)";
    $stmt = $pdo->prepare($insertQuery);
    $stmt->execute($fields);

    header("Location: supercontroller.php?table=$table");
    exit;
}

// Eliminar datos
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $deleteQuery = $pdo->prepare("DELETE FROM $table WHERE id = :id");
    $deleteQuery->execute(['id' => $id]);

    header("Location: supercontroller.php?table=$table");
    exit;
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>CRUD - <?php echo htmlspecialchars($table); ?></title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <h1>Gestión de <?php echo htmlspecialchars($table); ?></h1>

    <h2>Añadir nuevo registro</h2>
    <form method="POST">
        <input type="hidden" name="action" value="insert">
        <?php foreach ($columns as $column): ?>
            <?php if ($column !== 'id'): // Excluir la columna ID 
            ?>
                <label for="<?php echo $column; ?>"><?php echo ucfirst($column); ?>:</label>
                <input type="text" name="<?php echo $column; ?>" id="<?php echo $column; ?>">
            <?php endif; ?>
        <?php endforeach; ?>
        <button type="submit">Añadir</button>
    </form>

    <h2>Lista de registros</h2>
    <table>
        <thead>
            <tr>
                <?php foreach ($columns as $column): ?>
                    <th><?php echo htmlspecialchars($column); ?></th>
                <?php endforeach; ?>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $row): ?>
                <tr>
                    <?php foreach ($columns as $column): ?>
                        <td><?php echo htmlspecialchars($row[$column]); ?></td>
                    <?php endforeach; ?>
                    <td>
                        <a href="?table=<?php echo $table; ?>&delete=<?php echo $row['id']; ?>">Eliminar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>