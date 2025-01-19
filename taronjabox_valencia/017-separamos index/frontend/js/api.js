// api.js

/**
 * Función para realizar una petición GET al backend
 * @param {string} endpoint - La URL del endpoint (relativa o completa).
 * @returns {Promise} - Devuelve una promesa con los datos en formato JSON.
 */
async function fetchData(endpoint) {
    try {
        const response = await fetch(endpoint);

        if (!response.ok) {
            throw new Error(`Error en la petición: ${response.statusText}`);
        }

        const data = await response.json();
        console.log("Datos obtenidos:", data); // Temporal: Para verificar los datos en consola
        return data;
    } catch (error) {
        console.error("Error al obtener datos del backend:", error);
        return null;
    }
}

// Exportamos la función para poder usarla en otros scripts si es necesario
export { fetchData };
