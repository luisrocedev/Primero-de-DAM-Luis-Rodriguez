<?php
// Iniciar sesión
session_start();

// Verificar si está logueado, si no, redirigir al login
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración - TaronjaBox</title>
    <link rel="stylesheet" href="css/paneldecontrol.css"> <!-- Vinculamos el archivo CSS -->
</head>
<body>
    <div class="admin-container">
        <!-- Área principal -->
        <main class="main-content">
            <h1>Bienvenido al Panel de Administración</h1>
            <p>Selecciona una opción del menú para comenzar a gestionar los contenidos.</p>
        </main>

        <!-- Barra lateral -->
        <aside class="sidebar">
            <ul>
                <li><a href="modulos/entrenadores/index.php">Entrenadores</a></li>
                <li><a href="modulos/precios/index.php">Precios</a></li>
                <li><a href="modulos/blog/index.php">Blog</a></li>
                <li><a href="logout.php">Cerrar sesión</a></li>
            </ul>
        </aside>
    </div>

    <footer>
        <p>&copy; 2025 TaronjaBox. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

<?php
// Incluir pie de página
include_once 'includes/footer.php';

?>

