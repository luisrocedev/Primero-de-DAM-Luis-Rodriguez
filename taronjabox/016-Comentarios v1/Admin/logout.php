<?php
session_start();                // Inicia la sesión para poder trabajar con las variables de sesión
session_unset();                // Elimina todas las variables de sesión (deja la sesión vacía)
session_destroy();              // Destruye la sesión, eliminando todos los datos relacionados
header("Location: login.php");  // Redirige al usuario a la página de login
exit();                         // Detiene la ejecución del script para asegurarse de que la redirección ocurra inmediatamente
?>
