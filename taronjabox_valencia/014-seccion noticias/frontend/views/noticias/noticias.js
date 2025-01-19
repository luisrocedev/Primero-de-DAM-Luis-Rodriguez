// views/noticias/noticias.js
import { fetchData } from '../../js/api.js'; // Ajusta la ruta según tu estructura general

async function cargarNoticias() {
    const noticiasContainer = document.getElementById('noticias-container');
    const endpoint = 'http://localhost/Primero-de-DAM-Luis-Rodriguez/taronjabox_valencia/014-seccion%20noticias/backend/controllers/NoticiasController.php';

    const noticias = await fetchData(endpoint);

    if (noticias && noticias.length > 0) {
        noticiasContainer.innerHTML = '';
        noticias.forEach(noticia => {
            const fechaCreacion = new Date(noticia.fecha_creacion).toLocaleDateString("es-ES", {
                year: "numeric",
                month: "long",
                day: "numeric"
            });

            const noticiaHTML = `
                <article>
                    <h2>${noticia.titulo}</h2>
                    <p class="fecha">Publicado el: ${fechaCreacion}</p>
                    <p>${noticia.contenido}</p>
                    <img src="../../img/${noticia.imagen}" alt="${noticia.titulo}">
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
