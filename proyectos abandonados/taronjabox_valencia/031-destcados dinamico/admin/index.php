<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración</title>
    <link rel="stylesheet" href="assets/admin-styles.css">
</head>

<body>
    <div class="admin-container">
        <!-- Menú lateral -->
        <aside class="sidebar">
            <h1>TaronjaBox Admin</h1>
            <nav>
                <ul>
                    <li><a href="controllers/NoticiasController.php?action=list">Noticias</a></li>
                    <li><a href="controllers/GaleriaController.php?action=list">Galería</a></li>
                    <li><a href="controllers/ClasesController.php?action=list">Clases</a></li>
                    <li><a href="controllers/ContactoController.php?action=list">Mensajes de Contacto</a></li>
                </ul>
            </nav>
            <a href="logout.php" class="btn">Cerrar Sesión</a>
        </aside>

        <!-- Contenido principal -->
        <main class="main-content">
            <header>
                <h1>Bienvenido al Panel de Administración</h1>
                <p>Selecciona una sección en el menú para empezar a gestionar tu contenido.</p>
            </header>
            <section>
                <!-- Aquí puedes agregar contenido dinámico -->
                <p>Panel en desarrollo. Personaliza este espacio con gráficos, estadísticas o contenido relevante.</p>
            </section>
        </main>
    </div>
</body>

</html>