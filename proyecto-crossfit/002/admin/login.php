<?php
session_start();
include 'includes/db.php';

// Verificar si se envió el formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Consultar usuario
    $stmt = $pdo->prepare("SELECT * FROM usuarios_admin WHERE username = :username");
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // Verificar credenciales
    if ($user && $password === $user['password']) { // Comparación simple
        $_SESSION['admin_id'] = $user['id'];
        header('Location: dashboard.php');
        exit;
    } else {
        $error = "Usuario o contraseña incorrectos";
    }
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Login - Panel de Administración</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <form method="POST" action="login.php">
        <h2>Iniciar Sesión</h2>
        <?php if (!empty($error)) echo "<p style='color:red;'>$error</p>"; ?>
        <label for="username">Usuario</label>
        <input type="text" name="username" id="username" required>
        <label for="password">Contraseña</label>
        <input type="password" name="password" id="password" required>
        <button type="submit">Entrar</button>
    </form>
</body>

</html>