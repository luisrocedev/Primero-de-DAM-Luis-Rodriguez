<?php
session_start();
if (isset($_SESSION['admin_logged_in'])) {
    header('Location: ../dashboard/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Login Admin</title>
    <link rel="stylesheet" href="login.css">
    <script defer src="login.js"></script>
</head>
<body>
    <h1>Panel de Administración - Login</h1>
    <form id="loginForm" method="POST" action="../../backend/routes/auth.php">
        <label for="username">Usuario:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Iniciar Sesión</button>
    </form>
    <div id="error-message"></div>
</body>
</html>
