<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Obtener los datos del miembro del equipo
    $sql = "SELECT * FROM nuestro_equipo WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $member = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $nombre = $_POST['nombre'];
        $puesto = $_POST['puesto'];
        $descripcion = $_POST['descripcion'];

        // Actualizar los datos del miembro del equipo
        $update_sql = "UPDATE nuestro_equipo SET nombre = ?, puesto = ?, descripcion = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('sssi', $nombre, $puesto, $descripcion, $id);

        if ($update_stmt->execute()) {
            $message = "Miembro del equipo actualizado exitosamente.";
        } else {
            $message = "Error al actualizar el miembro del equipo.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" value="<?php echo $member['nombre']; ?>" required>

    <label for="puesto">Puesto:</label>
    <input type="text" id="puesto" name="puesto" value="<?php echo $member['puesto']; ?>" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required><?php echo $member['descripcion']; ?></textarea>

    <button type="submit">Actualizar Miembro del Equipo</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>