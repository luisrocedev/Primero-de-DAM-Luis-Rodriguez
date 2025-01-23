// Seleccionar el contenedor donde se mostrarán los destacados
const destacadosContainer = document.querySelector("#destacados-container");

// Función para cargar los destacados
const cargarDestacados = async () => {
    try {
        console.log("Iniciando la carga de destacados...");

        // Realizar la petición al endpoint
        const response = await fetch("../../..backend/controllers/DestacadosAPI.php");
        if (!response.ok) throw new Error("Error al cargar destacados");
        
        const destacados = await response.json();

        // Verificar los datos en la consola
        console.log("Datos obtenidos:", destacados);

        // Limpiar el contenedor antes de agregar nuevos elementos
        destacadosContainer.innerHTML = "";

        // Crear elementos para cada destacado
        destacados.forEach(destacado => {
            const destacadoElement = document.createElement("div");
            destacadoElement.classList.add("destacado");

            destacadoElement.innerHTML = `
                <img src="/${destacado.imagen}" alt="${destacado.titulo}">

                <h3>${destacado.titulo}</h3>
                <p>${destacado.descripcion}</p>
                <small>Fecha: ${destacado.fecha}</small>
            `;

            destacadosContainer.appendChild(destacadoElement);
        });
    } catch (error) {
        console.error("Error:", error);
        destacadosContainer.innerHTML = "<p>Error al cargar destacados. Inténtalo de nuevo más tarde.</p>";
    }
};

// Cargar los destacados al cargar la página
document.addEventListener("DOMContentLoaded", cargarDestacados);
