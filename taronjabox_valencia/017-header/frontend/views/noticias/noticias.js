// Archivo: noticias.js

// Contenedor donde se mostrarán las noticias
const noticiasContainer = document.getElementById('noticias-container');

// Función para cargar noticias dinámicamente
async function cargarNoticias() {
    try {
        const response = await fetch('../../../backend/controllers/NoticiasController.php'); // Endpoint dinámico
        const noticias = await response.json();

        if (noticias && noticias.length > 0) {
            noticiasContainer.innerHTML = ''; // Limpiar contenedor
            noticias.forEach(noticia => {
                const noticiaHTML = `
                    <article>
                        <h3>${noticia.titulo}</h3>
                        <p>${noticia.contenido}</p>
                        <small>Publicado el: ${new Date(noticia.fecha_creacion).toLocaleDateString()}</small>
                    </article>
                `;
                noticiasContainer.innerHTML += noticiaHTML;
            });
        } else {
            noticiasContainer.innerHTML = '<p>No hay noticias disponibles.</p>';
        }
    } catch (error) {
        console.error('Error al cargar las noticias:', error);
        noticiasContainer.innerHTML = '<p>Error al cargar las noticias. Inténtalo más tarde.</p>';
    }
}

// Llamar a la función al cargar la página
cargarNoticias();
