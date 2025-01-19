<!-- noticias.php -->
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias</title>
    <link rel="stylesheet" href="../css/style.css"> <!-- Ruta al CSS -->
</head>

<body>
    <header>
        <h1>Noticias</h1>
    </header>
    <main>
        <div id="noticias-container">
            <p>Cargando noticias...</p>
        </div>
    </main>
    <script type="module">
        import {
            fetchData
        } from '../js/api.js';

        async function cargarNoticias() {
            const noticiasContainer = document.getElementById('noticias-container');

            // Cambia la URL al endpoint correspondiente de tu backend
            const endpoint = 'http://localhost/Primero-de-DAM-Luis-Rodriguez/taronjabox_valencia/013-test%20js/backend/controllers/NoticiasController.php';

            const noticias = await fetchData(endpoint);

            if (noticias && noticias.length > 0) {
                noticiasContainer.innerHTML = '';
                noticias.forEach(noticia => {
                    const noticiaHTML = `
                        <article>
                            <h2>${noticia.titulo}</h2>
                            <p>${noticia.contenido}</p>
                            <img src="../img/${noticia.imagen}" alt="${noticia.titulo}">
                        </article>
                    `;
                    noticiasContainer.innerHTML += noticiaHTML;
                });
            } else {
                noticiasContainer.innerHTML = '<p>No hay noticias disponibles.</p>';
            }
        }

        // Llamar a la función al cargar la página
        cargarNoticias();
    </script>
</body>

</html>