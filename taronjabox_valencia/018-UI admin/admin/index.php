<?php
session_start();

// Verificar si el administrador está autenticado
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: login.php');
    exit;
}

// Redirigir al dashboard de manera predeterminada
header('Location: views/dashboard.php');
exit;
