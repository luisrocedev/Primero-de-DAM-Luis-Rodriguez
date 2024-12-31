<?php
session_start();
include '../Back/includes/db.php'; // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Consulta para validar al administrador
    $query = $conn->prepare("SELECT * FROM admins WHERE username = :username AND password = :password");
    $query->execute(['username' => $username, 'password' => $password]);
    $admin = $query->fetch();

    if ($admin) {
        $_SESSION['admin'] = $admin['username'];
        header("Location: index.php");
        exit();
    } else {
        $error = "Usuario o contraseña incorrectos.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <link rel="stylesheet" href="css/admin.css">
    <title>Login Admin - TaronjaBox</title>
</head>
<body>
    <div class="login-container">
        <h1>Panel de Administración</h1>
        <?php if (isset($error)): ?>
            <p class="error"><?php echo $error; ?></p>
        <?php endif; ?>
        <form method="POST">
            <input type="text" name="username" placeholder="Usuario" required>
            <input type="password" name="password" placeholder="Contraseña" required>
            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>
