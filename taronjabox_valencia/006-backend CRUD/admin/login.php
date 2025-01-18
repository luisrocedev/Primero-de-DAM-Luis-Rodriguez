<?php
session_start();
require_once '../backend/config/config.php';

$message = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';

    // Conexión a la base de datos
    $connection = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

    if ($connection->connect_error) {
        die("Error en la conexión: " . $connection->connect_error);
    }

    $query = "SELECT * FROM usuarios_admin WHERE username = ? AND password = ?";
    $stmt = $connection->prepare($query);
    $hashedPassword = md5($password);
    $stmt->bind_param('ss', $username, $hashedPassword);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $_SESSION['admin_logged_in'] = true;
        $_SESSION['admin_username'] = $username;
        header('Location: index.php');
        exit;
    } else {
        $message = 'Credenciales incorrectas.';
    }

    $stmt->close();
    $connection->close();
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Admin</title>
    <link rel="stylesheet" href="assets/admin-styles.css">
</head>

<body>
    <h1>Inicio de Sesión</h1>
    <?php if ($message): ?>
        <p style="color: red;"><?= htmlspecialchars($message); ?></p>
    <?php endif; ?>
    <form method="POST" action="">
        <label for="username">Usuario:</label>
        <input type="text" name="username" id="username" required>
        <label for="password">Contraseña:</label>
        <input type="password" name="password" id="password" required>
        <button type="submit">Iniciar Sesión</button>
    </form>
</body>

</html>