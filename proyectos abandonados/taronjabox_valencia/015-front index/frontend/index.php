<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TaronjaBox Valencia</title>
    <link rel="stylesheet" href="css/style.css"> <!-- CSS global -->
    <style>
        /* Estilos básicos para la página principal */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        header {
            background: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            gap: 20px;
            background: #555;
            padding: 10px 0;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
        }

        nav a:hover {
            text-decoration: underline;
        }

        main {
            padding: 20px;
        }

        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <header>
        <h1>Bienvenido a TaronjaBox Valencia</h1>
    </header>
    <nav>
        <a href="views/noticias/noticias.php">Noticias</a>
        <a href="#">Clases</a> <!-- Enlace placeholder -->
        <a href="#">Galería</a> <!-- Enlace placeholder -->
        <a href="#">Contacto</a> <!-- Enlace placeholder -->
    </nav>
    <main>
        <p>Explora nuestras secciones usando el menú de navegación.</p>
    </main>
    <footer>
        <p>&copy; <?= date('Y'); ?> TaronjaBox Valencia. Todos los derechos reservados.</p>
    </footer>
</body>

</html>