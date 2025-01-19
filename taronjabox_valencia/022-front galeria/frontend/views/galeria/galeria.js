// Archivo: galeria.js

// Seleccionamos el contenedor donde se mostrarán las imágenes
const galeriaContainer = document.getElementById('galeria-container');

// Función para mostrar mensajes en la galería
function mostrarMensajeGaleria(mensaje, tipo = 'info') {
    galeriaContainer.innerHTML = `<p class="${tipo}">${mensaje}</p>`;
}

// Función para cargar imágenes dinámicamente
async function cargarGaleria() {
    try {
        // Endpoint del backend para obtener las imágenes
        const response = await fetch('../../../backend/controllers/GaleriaController.php?action=list');

        if (!response.ok) {
            throw new Error('Error al cargar las imágenes.');
        }

        const imagenes = await response.json();

        if (imagenes && imagenes.length > 0) {
            galeriaContainer.innerHTML = ''; // Limpiar el contenedor

            imagenes.forEach(imagen => {
                const imgElement = document.createElement('img');
                imgElement.src = `../../assets/img/${imagen.ruta}`;
                imgElement.alt = imagen.titulo || 'Imagen de galería';
                galeriaContainer.appendChild(imgElement);
            });
        } else {
            mostrarMensajeGaleria('No hay imágenes disponibles en la galería.', 'warning');
        }
    } catch (error) {
        console.error('Error al cargar la galería:', error);
        mostrarMensajeGaleria('Hubo un problema al cargar las imágenes. Inténtalo más tarde.', 'error');
    }
}

// Llamar a la función al cargar la página
cargarGaleria();
