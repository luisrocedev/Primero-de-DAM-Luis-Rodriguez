<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../login.php");
    exit();
}

include '../includes/db.php';

// Operaciones CRUD (Agregar, Editar, Eliminar)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['add'])) {
        $clase = $_POST['clase'];
        $dia = $_POST['dia'];
        $hora = $_POST['hora'];
        $query = $conn->prepare("INSERT INTO horarios (clase, dia, hora) VALUES (:clase, :dia, :hora)");
        $query->execute(['clase' => $clase, 'dia' => $dia, 'hora' => $hora]);
    } elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];
        $query = $conn->prepare("DELETE FROM horarios WHERE id = :id");
        $query->execute(['id' => $id]);
    }
}

// Obtener horarios
$horarios = $conn->query("SELECT * FROM horarios ORDER BY FIELD(dia, 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'), hora ASC")->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="../css/admin.css">
    <title>Gestionar Horarios - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Gestionar Horarios</h1>
        <a href="../index.php">Volver al Dashboard</a>
    </header>
    <main>
        <h2>Horarios actuales</h2>
        <table>
            <tr>
                <th>Clase</th>
                <th>Día</th>
                <th>Hora</th>
                <th>Acciones</th>
            </tr>
            <?php foreach ($horarios as $horario): ?>
            <tr>
                <td><?php echo htmlspecialchars($horario['clase']); ?></td>
                <td><?php echo htmlspecialchars($horario['dia']); ?></td>
                <td><?php echo htmlspecialchars($horario['hora']); ?></td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $horario['id']; ?>">
                        <button type="submit" name="delete">Eliminar</button>
                    </form>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

        <h2>Agregar un nuevo horario</h2>
        <form method="POST">
            <input type="text" name="clase" placeholder="Clase (Ej. Crossfit)" required>
            <select name="dia" required>
                <option value="">Selecciona un día</option>
                <option value="Lunes">Lunes</option>
                <option value="Martes">Martes</option>
                <option value="Miércoles">Miércoles</option>
                <option value="Jueves">Jueves</option>
                <option value="Viernes">Viernes</option>
                <option value="Sábado">Sábado</option>
                <option value="Domingo">Domingo</option>
            </select>
            <input type="time" name="hora" placeholder="Hora" required>
            <button type="submit" name="add">Agregar</button>
        </form>
    </main>
</body>
</html>
