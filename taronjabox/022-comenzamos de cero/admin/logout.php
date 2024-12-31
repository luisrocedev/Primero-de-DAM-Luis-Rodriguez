<?php
// Incluir el archivo functions.php desde la carpeta includes
include '../Back/includes/functions.php';

// Llamar a la función de logout
logout();

// Redirigir al login
header("Location: login.php");
exit();
?>
