import { fetchData } from '../../assets/js/api.js';

let noticias = [];

async function cargarNoticias() {
    const noticiasContainer = document.getElementById('noticias-container');
    const baseUrl = window.location.origin + window.location.pathname.split('/views')[0];
    const endpoint = `${baseUrl}/backend/controllers/NoticiasController.php`;

    try {
        noticias = await fetchData(endpoint);
        if (noticias && noticias.length > 0) {
            renderNoticias(noticias);
        } else {
            noticiasContainer.innerHTML = '<p>No hay noticias disponibles.</p>';
        }
    } catch (error) {
        noticiasContainer.innerHTML = '<p>Error al cargar las noticias. Inténtalo más tarde.</p>';
        console.error("Error al cargar las noticias:", error);
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
        const baseUrl = window.location.origin + window.location.pathname.split('/views')[0];
        const noticiaHTML = `
            <article>
                <h2>${noticia.titulo}</h2>
                <p class="fecha">Publicado el: ${fechaCreacion}</p>
                <p>${noticia.contenido}</p>
                <img src="${baseUrl}/uploads/${noticia.imagen}" alt="${noticia.titulo}">
            </article>
        `;
        noticiasContainer.innerHTML += noticiaHTML;
    });
}

document.getElementById('form-filtros').addEventListener('submit', function (event) {
    event.preventDefault();
    const buscarInput = document.getElementById('buscar').value.toLowerCase();
    const noticiasFiltradas = noticias.filter(noticia =>
        noticia.titulo.toLowerCase().includes(buscarInput) ||
        noticia.contenido.toLowerCase().includes(buscarInput)
    );
    renderNoticias(noticiasFiltradas);
});

cargarNoticias();
