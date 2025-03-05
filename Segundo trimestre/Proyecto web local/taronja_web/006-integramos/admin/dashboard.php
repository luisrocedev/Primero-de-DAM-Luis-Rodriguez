<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");  // Si no está autenticado, redirigir al login
    exit();
}
?>

<h1>Bienvenido al Panel de Administración, <?php echo $_SESSION['username']; ?></h1>
<a href="logout.php">Cerrar sesión</a>