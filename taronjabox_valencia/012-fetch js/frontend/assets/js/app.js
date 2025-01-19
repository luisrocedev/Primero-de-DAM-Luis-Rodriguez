import { renderNavbar } from './components/navbar.js';
import { renderModal } from './components/modal.js';
import { getNoticias } from './api/noticias.js';

async function init() {
    // Renderizar la barra de navegación
    renderNavbar();

    // Mensaje de prueba en la consola
    console.log("App inicializada correctamente.");

    // Mostrar un modal de bienvenida
    renderModal("¡Bienvenido!", "La estructura del frontend está funcionando correctamente.");

    // Cargar y mostrar noticias
    const noticias = await getNoticias();
    const noticiasContainer = document.getElementById('noticias-container');

    if (noticias.length === 0) {
        renderModal('Error', 'No hay noticias disponibles.');
    } else {
        noticias.forEach(noticia => {
            const noticiaDiv = document.createElement('div');
            noticiaDiv.classList.add('noticia');
            noticiaDiv.innerHTML = `
                <h3>${noticia.titulo}</h3>
                <p>${noticia.contenido}</p>
                <p><strong>Fecha del evento:</strong> ${noticia.fecha_evento}</p>
            `;
            noticiasContainer.appendChild(noticiaDiv);
        });
    }
}

// Ejecutar cuando el DOM esté listo
document.addEventListener('DOMContentLoaded', init);
