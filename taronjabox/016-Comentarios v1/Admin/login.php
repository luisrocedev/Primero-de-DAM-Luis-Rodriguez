<?php
// Incluir la conexión a la base de datos
include_once 'includes/db.php';

session_start();

// Verificar si ya está logueado, redirigir al panel si es el caso
if (isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit;
}

// Procesar el formulario de login
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Buscar usuario en la tabla admins
    $query = $conn->prepare("SELECT * FROM admins WHERE username = :username");
    $query->execute(['username' => $username]);
    $user = $query->fetch(PDO::FETCH_ASSOC);

    // Verificar si el usuario existe y la contraseña es correcta
    if ($user && $user['password'] == $password) {
        // Almacenar los datos del usuario en la sesión
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        header("Location: index.php");
        exit;
    } else {
        // Mostrar mensaje de error si las credenciales son incorrectas
        $error = "Credenciales incorrectas";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Panel de Administración</title>
    <link rel="stylesheet" href="css/login.css"> <!-- Asegúrate de tener el archivo CSS -->
</head>
<body>
    <div class="login-container">
        <h1>Login al Panel de Administración</h1>
        <?php if (isset($error)) echo "<p class='error'>$error</p>"; ?>
        <form method="POST">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>
