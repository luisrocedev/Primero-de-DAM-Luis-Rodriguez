<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Obtener los datos del servicio de fisioterapia
    $sql = "SELECT * FROM fisioterapia WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $service = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $nombre = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];
        $costo = $_POST['costo'];

        // Actualizar los datos del servicio de fisioterapia
        $update_sql = "UPDATE fisioterapia SET nombre = ?, descripcion = ?, costo = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('ssdi', $nombre, $descripcion, $costo, $id);

        if ($update_stmt->execute()) {
            $message = "Servicio de fisioterapia actualizado exitosamente.";
        } else {
            $message = "Error al actualizar el servicio de fisioterapia.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="nombre">Nombre del Servicio:</label>
    <input type="text" id="nombre" name="nombre" value="<?php echo $service['nombre']; ?>" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required><?php echo $service['descripcion']; ?></textarea>

    <label for="costo">Costo:</label>
    <input type="number" step="0.01" id="costo" name="costo" value="<?php echo $service['costo']; ?>" required>

    <button type="submit">Actualizar Servicio</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>