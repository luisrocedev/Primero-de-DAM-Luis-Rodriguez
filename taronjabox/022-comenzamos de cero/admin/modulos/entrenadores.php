<?php 
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../login.php");
    exit();
}

// Incluir la conexión a la base de datos
include '../../Back/includes/db.php';

// Verificar si la conexión está establecida
if (!$conn) {
    die("Error de conexión a la base de datos.");
}

// Operaciones CRUD (Agregar, Editar, Eliminar)
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Agregar nuevo entrenador
    if (isset($_POST['add'])) {
        $nombre = $_POST['nombre'];
        $especialidad = $_POST['especialidad'];
        $descripcion = $_POST['descripcion'];
        $foto_url = $_POST['foto_url'];

        // Validar datos
        if (!empty($nombre) && !empty($especialidad) && !empty($descripcion)) {
            // Usar consulta preparada para insertar el nuevo entrenador
            $query = $conn->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) VALUES (:nombre, :especialidad, :descripcion, :foto_url)");
            $query->execute([
                'nombre' => $nombre,
                'especialidad' => $especialidad,
                'descripcion' => $descripcion,
                'foto_url' => $foto_url
            ]);
        } else {
            echo "Por favor, completa todos los campos correctamente.";
        }
    }
    
    // Eliminar entrenador
    elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];
        
        // Validar el id
        if (is_numeric($id)) {
            $query = $conn->prepare("DELETE FROM entrenadores WHERE id = :id");
            $query->execute(['id' => $id]);
        } else {
            echo "ID inválido.";
        }
    }

    // Editar entrenador
    elseif (isset($_POST['edit'])) {
        $id = $_POST['id'];
        $nombre = $_POST['nombre'];
        $especialidad = $_POST['especialidad'];
        $descripcion = $_POST['descripcion'];
        $foto_url = $_POST['foto_url'];

        // Validar datos
        if (!empty($nombre) && !empty($especialidad) && !empty($descripcion)) {
            // Usar consulta preparada para actualizar los datos del entrenador
            $query = $conn->prepare("UPDATE entrenadores SET nombre = :nombre, especialidad = :especialidad, descripcion = :descripcion, foto_url = :foto_url WHERE id = :id");
            $query->execute([
                'id' => $id,
                'nombre' => $nombre,
                'especialidad' => $especialidad,
                'descripcion' => $descripcion,
                'foto_url' => $foto_url
            ]);
        } else {
            echo "Por favor, completa todos los campos correctamente.";
        }
    }
}

// Obtener los entrenadores actuales
$entrenadores = $conn->query("SELECT * FROM entrenadores")->fetchAll(PDO::FETCH_ASSOC);

// Verificar si se debe editar un entrenador
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $entrenador = $conn->query("SELECT * FROM entrenadores WHERE id = $id")->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="../css/admin.css">
    <title>Gestionar Entrenadores - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Gestionar Entrenadores</h1>
        <a href="../index.php">Volver al Dashboard</a>
    </header>
    <main>
        <h2>Entrenadores actuales</h2>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Especialidad</th>
                <th>Descripción</th>
                <th>Foto</th>
                <th>Acciones</th>
            </tr>
            <?php foreach ($entrenadores as $entrenador): ?>
            <tr>
                <td><?php echo htmlspecialchars($entrenador['nombre']); ?></td>
                <td><?php echo htmlspecialchars($entrenador['especialidad']); ?></td>
                <td><?php echo nl2br(htmlspecialchars(substr($entrenador['descripcion'], 0, 100))); ?>...</td>
                <td><img src="<?php echo htmlspecialchars($entrenador['foto_url']); ?>" alt="Foto de <?php echo htmlspecialchars($entrenador['nombre']); ?>" width="100"></td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $entrenador['id']; ?>">
                        <button type="submit" name="delete">Eliminar</button>
                    </form>
                    <a href="?edit=<?php echo $entrenador['id']; ?>">Editar</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

        <h2><?php echo isset($entrenador) ? 'Editar Entrenador' : 'Agregar un nuevo entrenador'; ?></h2>
        
        <!-- Formulario para agregar o editar entrenador -->
        <form method="POST">
            <input type="text" name="nombre" placeholder="Nombre del entrenador" value="<?php echo isset($entrenador) ? htmlspecialchars($entrenador['nombre']) : ''; ?>" required>
            <input type="text" name="especialidad" placeholder="Especialidad" value="<?php echo isset($entrenador) ? htmlspecialchars($entrenador['especialidad']) : ''; ?>" required>
            <textarea name="descripcion" placeholder="Descripción" rows="5" required><?php echo isset($entrenador) ? htmlspecialchars($entrenador['descripcion']) : ''; ?></textarea>
            <input type="text" name="foto_url" placeholder="URL de la foto" value="<?php echo isset($entrenador) ? htmlspecialchars($entrenador['foto_url']) : ''; ?>" required>
            <button type="submit" name="<?php echo isset($entrenador) ? 'edit' : 'add'; ?>">Guardar</button>
        </form>
    </main>
</body>
</html>
