<?php
session_start();
include '../config/db_connect.php';
// Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Insertar el nuevo usuario en la base de datos
    $sql = "INSERT INTO usuarios_admin (username, password) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ss', $username, $password);

    if ($stmt->execute()) {
        $message = "Usuario creado exitosamente.";
    } else {
        $message = "Error al crear el usuario.";
    }
}
?>

<form method="POST" action="create.php">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required>
    <button type="submit">Crear Usuario</button>
</form>

<?php if (isset($message)) {
    echo "<p>$message</p>";
} ?>