<?php

// Función para cerrar sesión
function logout() {
    // Iniciar la sesión
    session_start();

    // Eliminar todas las variables de sesión
    session_unset();

    // Destruir la sesión
    session_destroy();
}
?>
