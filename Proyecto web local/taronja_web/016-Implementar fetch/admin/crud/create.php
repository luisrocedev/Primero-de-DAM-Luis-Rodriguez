<?php

/**
 * Crear un nuevo usuario en la base de datos.
 * 
 * Este script maneja la creación de un nuevo usuario administrado en la base de datos. 
 * Cuando el formulario se envía, se recoge el nombre de usuario y la contraseña,
 * y luego se insertan en la tabla `usuarios_admin` de la base de datos.
 * Si la creación es exitosa, se muestra un mensaje de éxito. Si ocurre un error, 
 * se muestra un mensaje de error.
 *
 * @param string $username Nombre del nuevo usuario.
 * @param string $password Contraseña del nuevo usuario.
 * 
 * @return string Mensaje de éxito o error según el resultado de la operación.
 */
session_start();
include '../config/db_connect.php'; // Conexión a la base de datos

// Verificar si el formulario fue enviado con el método POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los valores del formulario
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Preparar la consulta SQL para insertar el nuevo usuario
    $sql = "INSERT INTO usuarios_admin (username, password) VALUES (?, ?)";
    $stmt = $conn->prepare($sql); // Preparar la consulta
    $stmt->bind_param('ss', $username, $password); // Vincular los parámetros a la consulta SQL

    // Ejecutar la consulta y verificar si fue exitosa
    if ($stmt->execute()) {
        $message = "Usuario creado exitosamente."; // Si el usuario fue creado con éxito
    } else {
        $message = "Error al crear el usuario."; // Si ocurrió un error
    }
}
?>

<!-- Formulario para crear un nuevo usuario -->
<form method="POST" action="create.php">
    <label for="username">Usuario:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Contraseña:</label>
    <input type="password" id="password" name="password" required>
    <button type="submit">Crear Usuario</button>
</form>

<?php
// Mostrar el mensaje de éxito o error después de la ejecución del formulario
if (isset($message)) {
    echo "<p>$message</p>";
}
?>