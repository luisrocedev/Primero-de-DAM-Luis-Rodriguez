<?php
require_once '../../../helpers/getBaseURL.php';
$apiURL = getBaseURL() . '/backend/routes/blog.php';
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link rel="stylesheet" href="blog.css">
    <script defer src="blog.js"></script>
</head>
<body>
    <header>
        <h1>Blog</h1>
    </header>
    <main>
        <div class="blog-container" id="blogPosts">
            <!-- Aquí se cargarán las publicaciones del blog dinámicamente -->
        </div>
    </main>
</body>
</html>
