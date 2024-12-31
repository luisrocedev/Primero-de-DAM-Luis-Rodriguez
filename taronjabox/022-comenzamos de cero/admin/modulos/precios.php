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
    // Agregar nuevo precio
    if (isset($_POST['add'])) {
        $nombre_plan = $_POST['nombre_plan']; // Usamos 'nombre_plan' en lugar de 'nombre'
        $descripcion = $_POST['descripcion'];
        $precio = $_POST['precio'];

        // Validar datos
        if (!empty($nombre_plan) && !empty($descripcion) && is_numeric($precio)) {
            // Usar consulta preparada para insertar el nuevo precio
            $query = $conn->prepare("INSERT INTO precios (nombre_plan, descripcion, precio) VALUES (:nombre_plan, :descripcion, :precio)"); 
            $query->execute([
                'nombre_plan' => $nombre_plan, // Usamos 'nombre_plan' en lugar de 'nombre'
                'descripcion' => $descripcion,
                'precio' => $precio
            ]);
        } else {
            echo "Por favor, completa todos los campos correctamente.";
        }
    }
    
    // Eliminar precio
    elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];
        
        // Validar el id
        if (is_numeric($id)) {
            $query = $conn->prepare("DELETE FROM precios WHERE id = :id");
            $query->execute(['id' => $id]);
        } else {
            echo "ID inválido.";
        }
    }

    // Editar precio
    elseif (isset($_POST['edit'])) {
        $id = $_POST['id'];
        $nombre_plan = $_POST['nombre_plan'];
        $descripcion = $_POST['descripcion'];
        $precio = $_POST['precio'];

        // Validar datos
        if (!empty($nombre_plan) && !empty($descripcion) && is_numeric($precio)) {
            $query = $conn->prepare("UPDATE precios SET nombre_plan = :nombre_plan, descripcion = :descripcion, precio = :precio WHERE id = :id");
            $query->execute([
                'id' => $id,
                'nombre_plan' => $nombre_plan,
                'descripcion' => $descripcion,
                'precio' => $precio
            ]);
        } else {
            echo "Por favor, completa todos los campos correctamente.";
        }
    }
}

// Obtener los precios actuales
$precios = $conn->query("SELECT * FROM precios")->fetchAll(PDO::FETCH_ASSOC);

// Verificar si se debe editar un precio
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $precio = $conn->query("SELECT * FROM precios WHERE id = $id")->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="../css/admin.css">
    <title>Gestionar Precios - TaronjaBox</title>
</head>
<body>
    <header>
        <h1>Gestionar Precios</h1>
        <a href="../index.php">Volver al Dashboard</a>
    </header>
    <main>
        <h2>Precios actuales</h2>
        <table>
            <tr>
                <th>Nombre del Plan</th>
                <th>Descripción</th>
                <th>Precio</th>
                <th>Acciones</th>
            </tr>
            <?php foreach ($precios as $precio): ?>
            <tr>
                <td><?php echo htmlspecialchars($precio['nombre_plan']); ?></td>
                <td><?php echo htmlspecialchars($precio['descripcion']); ?></td>
                <td><?php echo htmlspecialchars($precio['precio']); ?> €</td>
                <td>
                    <form method="POST">
                        <input type="hidden" name="id" value="<?php echo $precio['id']; ?>">
                        <button type="submit" name="delete">Eliminar</button>
                    </form>
                    <a href="?edit=<?php echo $precio['id']; ?>">Editar</a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

        <h2><?php echo isset($precio) ? 'Editar precio' : 'Agregar un nuevo precio'; ?></h2>

        <!-- Formulario para agregar o editar precio -->
        <form method="POST">
            <input type="text" name="nombre_plan" placeholder="Nombre del plan" value="<?php echo isset($precio) ? htmlspecialchars($precio['nombre_plan']) : ''; ?>" required>
            <textarea name="descripcion" placeholder="Descripción" required><?php echo isset($precio) ? htmlspecialchars($precio['descripcion']) : ''; ?></textarea>
            <input type="number" step="0.01" name="precio" placeholder="Precio (€)" value="<?php echo isset($precio) ? htmlspecialchars($precio['precio']) : ''; ?>" required>
            <button type="submit" name="<?php echo isset($precio) ? 'edit' : 'add'; ?>">Guardar</button>
            <?php if (isset($precio)): ?>
                <input type="hidden" name="id" value="<?php echo $precio['id']; ?>">
            <?php endif; ?>
        </form>
    </main>
</body>
</html>
