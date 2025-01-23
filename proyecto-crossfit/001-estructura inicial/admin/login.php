<?php
session_start();
include 'includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $pdo->prepare("SELECT * FROM admins WHERE username = :username");
    $stmt->execute(['username' => $username]);
    $admin = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($admin && password_verify($password, $admin['password'])) {
        $_SESSION['admin_id'] = $admin['id'];
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
    <title>Login - Admin Panel</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <form method="POST" action="login.php">
        <h2>Login</h2>
        <?php if (!empty($error)) echo "<p style='color:red;'>$error</p>"; ?>
        <label for="username">Usuario</label>
        <input type="text" name="username" id="username" required>
        <label for="password">Contraseña</label>
        <input type="password" name="password" id="password" required>
        <button type="submit">Ingresar</button>
    </form>
</body>

</html>