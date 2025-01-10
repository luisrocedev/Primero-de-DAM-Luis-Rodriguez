<?php
// Incluir la conexión a la base de datos
include_once 'includes/db.php';                     // Incluye el archivo de conexión a la base de datos
session_start();                                    // Inicia la sesión para poder manejar las variables de sesión

if (isset($_SESSION['user_id'])) {                  // Si el usuario ya está logueado
    header("Location: index.php");                  // Redirige al panel de administración
    exit;                                           // Detiene la ejecución del script
}

// Procesar el formulario de login
if ($_SERVER['REQUEST_METHOD'] == 'POST') {         // Si el formulario fue enviado (método POST)
    $username = $_POST['username'];                 // Obtiene el nombre de usuario del formulario
    $password = $_POST['password'];                 // Obtiene la contraseña del formulario

// Buscar usuario en la tabla admins
    $query = $conn->prepare("SELECT * FROM admins WHERE username = :username"); // Prepara la consulta SQL para buscar el usuario por nombre
    $query->execute(['username' => $username]);                                 // Ejecuta la consulta con el nombre de usuario ingresado
    $user = $query->fetch(PDO::FETCH_ASSOC);                                    // Obtiene los datos del usuario si existe

// Verificar si el usuario existe y la contraseña es correcta
    if ($user && $user['password'] == $password) {      // Si el usuario existe y la contraseña es correcta
        $_SESSION['user_id'] = $user['id'];             // Almacena el id del usuario en la sesión
        $_SESSION['username'] = $user['username'];      // Almacena el nombre de usuario en la sesión
        header("Location: index.php");                  // Redirige al panel de administración
        exit;                                           // Detiene la ejecución del script
    } else {                                            // Si las credenciales son incorrectas
        $error = "Credenciales incorrectas";            // Mensaje de error
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Login - Panel de Administración</title> 
    <link rel="stylesheet" href="css/login/login.css"> 
</head>
<body>
    <div class="login-container"> 
        <h1>Login al Panel de Administración</h1> 
        <?php if (isset($error)) echo "<p class='error'>$error</p>"; ?> <!-- Si hay un error, muestra el mensaje -->
        <form method="POST"> <!-- Formulario de login que utiliza el método POST -->
            <label for="username">Usuario:</label> 
            <input type="text" id="username" name="username" required> 
            <label for="password">Contraseña:</label> 
            <input type="password" id="password" name="password" required> 
            <button type="submit">Ingresar</button> 
        </form>
    </div>
</body>
</html>