// Archivo: clases.js

// Contenedor donde se mostrarán las clases
const clasesContainer = document.getElementById('clases-container');

// Función para mostrar mensajes de error o vacíos
function mostrarMensaje(mensaje, tipo = 'info') {
    clasesContainer.innerHTML = `<p class="${tipo}">${mensaje}</p>`;
}

// Función para cargar clases dinámicamente
async function cargarClases() {
    try {
        const response = await fetch('../../../backend/controllers/ClasesController.php'); // Endpoint dinámico

        if (!response.ok) {
            throw new Error('Error al obtener datos del servidor');
        }

        const clases = await response.json();

        if (clases && clases.length > 0) {
            clasesContainer.innerHTML = ''; // Limpiar contenedor
            clases.forEach(clase => {
                const claseHTML = `
                    <article>
                        <h3>${clase.nombre}</h3>
                        <p>${clase.descripcion}</p>
                        <p><strong>Horario:</strong> ${clase.horario}</p>
                        <p><strong>Capacidad:</strong> ${clase.capacidad}</p>
                    </article>
                `;
                clasesContainer.innerHTML += claseHTML;
            });
        } else {
            mostrarMensaje('No hay clases disponibles.', 'warning');
        }
    } catch (error) {
        console.error('Error al cargar las clases:', error);
        mostrarMensaje('Hubo un problema al cargar las clases. Inténtalo más tarde.', 'error');
    }
}

// Llamar a la función al cargar la página
cargarClases();
