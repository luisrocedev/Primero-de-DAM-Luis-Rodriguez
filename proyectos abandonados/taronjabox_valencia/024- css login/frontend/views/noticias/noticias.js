// Archivo: noticias.js

// Contenedor donde se mostrarán las noticias
const noticiasContainer = document.getElementById('noticias-container');

// Función para mostrar mensajes de error o vacíos
function mostrarMensaje(mensaje, tipo = 'info') {
    noticiasContainer.innerHTML = `<p class="${tipo}">${mensaje}</p>`;
}

// Función para cargar noticias dinámicamente
async function cargarNoticias() {
    try {
        const response = await fetch('../../../backend/controllers/NoticiasController.php'); // Endpoint dinámico

        if (!response.ok) {
            throw new Error('Error al obtener datos del servidor');
        }

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
            mostrarMensaje('No hay noticias disponibles.', 'warning');
        }
    } catch (error) {
        console.error('Error al cargar las noticias:', error);
        mostrarMensaje('Hubo un problema al cargar las noticias. Inténtalo más tarde.', 'error');
    }
}

// Llamar a la función al cargar la página
cargarNoticias();
