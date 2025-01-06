<?php
session_start(); // Inicia la sesión para poder acceder a variables de sesión
                                                // Verificar si está logueado, si no, redirigir al login
if (!isset($_SESSION['user_id'])) {             // Si no existe la variable de sesión 'user_id', el usuario no está logueado
    header("Location: login.php");              // Redirige al usuario a la página de login
    exit;                                       // Termina la ejecución del script
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  <!-- Hace la página responsiva -->
    <title>Panel de Administración - TaronjaBox</title> 
    <link rel="stylesheet" href="css/paneldecontrol.css">                   <!-- Vinculamos el archivo CSS -->
    
</head>
<body>
    <div class="admin-container">                                           <!-- Contenedor principal del panel de administración -->

        <!-- Área principal -->
        <main class="main-content">
            <h1>Bienvenido al Panel de Administración</h1> 
            <p>Selecciona una opción del menú para comenzar a gestionar los contenidos.</p> 
        </main>

        <!-- Barra lateral -->
        <aside class="sidebar"> <!-- Barra lateral para navegar entre secciones -->
            <ul> 
                <li><a href="modulos/entrenadores/index.php">Entrenadores</a></li> <!-- Enlace a la sección de entrenadores -->
                <li><a href="modulos/precios/index.php">Precios</a></li> <!-- Enlace a la sección de precios -->
                <li><a href="modulos/blog/index.php">Blog</a></li> <!-- Enlace a la sección de blog -->
                <li><a href="logout.php">Cerrar sesión</a></li> <!-- Enlace para cerrar sesión -->
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
include_once 'includes/footer.php'; // Incluye el archivo del pie de página
?>