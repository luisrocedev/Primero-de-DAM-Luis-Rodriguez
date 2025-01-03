<?php
// Iniciar sesión
session_start();

// Verificar si está logueado, si no, redirigir al login
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

// Aquí iría el contenido principal del panel de administración
include_once 'includes/header.php';
?>

<h1>Bienvenido al Panel de Administración</h1>
<p>Selecciona una opción del menú para comenzar a gestionar los contenidos.</p>

<?php
include_once 'includes/footer.php';
?>
