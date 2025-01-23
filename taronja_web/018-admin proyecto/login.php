<?php
session_start();
include 'backend/config/db_connect.php';  // Incluir la conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Realizar la consulta para obtener el usuario
    $sql = "SELECT * FROM usuarios_admin WHERE username = ? LIMIT 1";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $username);  // Asociar el valor del username
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();

        // Verificar si la contraseña es correcta (sin cifrado por ahora, ya que es 'admin')
        if ($password === $user['password']) {
            // Si las credenciales son correctas, guardar en sesión
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];
            header("Location: dashboard.php");  // Redirigir al dashboard
            exit();
        } else {
            $error = "Contraseña incorrecta.";
        }
    } else {
        $error = "Usuario no encontrado.";
    }
}
?>

<!-- Incluir el archivo de estilo para el login -->

<head>
    <link rel="stylesheet" href="css/login.css"> <!-- Incluir los estilos del login -->
</head>

<!-- Formulario de login -->
<form method="POST" action="login.php">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required>
    <button type="submit">Iniciar sesión</button>
</form>

<?php if (isset($error)) {
    echo "<p>$error</p>";
} ?>