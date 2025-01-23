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

// Fetch data
$stmt = $pdo->query("SELECT * FROM $table");
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle insert/update/delete logic
    // Aquí puedes programar dinámicamente las operaciones CRUD
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
    <table>
        <thead>
            <tr>
                <?php foreach (array_keys($data[0] ?? []) as $col): ?>
                    <th><?php echo htmlspecialchars($col); ?></th>
                <?php endforeach; ?>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data as $row): ?>
                <tr>
                    <?php foreach ($row as $col): ?>
                        <td><?php echo htmlspecialchars($col); ?></td>
                    <?php endforeach; ?>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>