<?php
session_start();
include '../config/db_connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM usuarios_admin WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $update_sql = "UPDATE usuarios_admin SET username = ?, password = ? WHERE id = ?";
        $update_stmt = $conn->prepare($update_sql);
        $update_stmt->bind_param('ssi', $username, $password, $id);

        if ($update_stmt->execute()) {
            $message = "Usuario actualizado exitosamente.";
        } else {
            $message = "Error al actualizar el usuario.";
        }
    }
}
?>

<form method="POST" action="update.php?id=<?php echo $id; ?>">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" value="<?php echo $user['username']; ?>" required>
    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" value="<?php echo $user['password']; ?>" required>
    <button type="submit">Actualizar Usuario</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>