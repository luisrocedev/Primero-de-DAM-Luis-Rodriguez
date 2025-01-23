// views/noticias/noticias.js
import { fetchData } from '../../js/api.js';

let noticias = []; // Guardamos las noticias para filtrar dinámicamente

async function cargarNoticias() {
    const noticiasContainer = document.getElementById('noticias-container');
    const endpoint = 'http://localhost/Primero-de-DAM-Luis-Rodriguez/taronjabox_valencia/013-test%20js/backend/controllers/NoticiasController.php';

    noticias = await fetchData(endpoint);

    if (noticias && noticias.length > 0) {
        renderNoticias(noticias);
    } else {
        noticiasContainer.innerHTML = '<p>No hay noticias disponibles.</p>';
    }
}

function renderNoticias(noticiasFiltradas) {
    const noticiasContainer = document.getElementById('noticias-container');
    noticiasContainer.innerHTML = '';
    noticiasFiltradas.forEach(noticia => {
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
}

function filtrarNoticias(event) {
    event.preventDefault(); // Evita recargar la página
    const buscarInput = document.getElementById('buscar').value.toLowerCase();

    const noticiasFiltradas = noticias.filter(noticia =>
        noticia.titulo.toLowerCase().includes(buscarInput) ||
        noticia.contenido.toLowerCase().includes(buscarInput)
    );

    renderNoticias(noticiasFiltradas);
}

// Event listener para el formulario de filtros
document.getElementById('form-filtros').addEventListener('submit', filtrarNoticias);

// Llamar a la función al cargar la página
cargarNoticias();
