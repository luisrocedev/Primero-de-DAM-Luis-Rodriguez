<?php
session_start();

// Verificamos si el usuario está autenticado
if (isset($_SESSION['user_id'])) {
    // Si está autenticado, redirigimos al dashboard
    header("Location: dashboard.php");
    exit();
} else {
    // Si no está autenticado, lo redirigimos al login
    header("Location: login.php");
    exit();
}
