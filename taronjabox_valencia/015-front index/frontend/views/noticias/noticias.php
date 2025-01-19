<!-- views/noticias/noticias.php -->
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
    <link rel="stylesheet" href="noticias.css">
</head>

<body>
    <header>
        <h1>Noticias</h1>
    </header>
    <main>
        <section id="filtros">
            <form id="form-filtros">
                <input type="text" id="buscar" placeholder="Buscar por título o contenido">
                <button type="submit">Filtrar</button>
            </form>
        </section>
        <div id="noticias-container">
            <p>Cargando noticias...</p>
        </div>
    </main>
    <script type="module" src="noticias.js"></script>
</body>

</html>