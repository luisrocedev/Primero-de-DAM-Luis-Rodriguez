document.addEventListener('DOMContentLoaded', async () => {
    const aboutContent = document.getElementById('aboutContent');

    try {
        const response = await fetch('../../../backend/routes/sobre_nosotros.php');
        const abouts = await response.json();

        // Mostrar el último registro (puedes ajustar si necesitas todos)
        const latestAbout = abouts[0];
        if (latestAbout) {
            aboutContent.innerHTML = `
                <h2>${latestAbout.titulo}</h2>
                <p>${latestAbout.contenido}</p>
            `;
        } else {
            aboutContent.innerHTML = '<p>No hay información disponible en este momento.</p>';
        }
    } catch (error) {
        console.error('Error al cargar la sección Sobre Nosotros:', error);
        aboutContent.innerHTML = '<p>Error al cargar la información.</p>';
    }
});
