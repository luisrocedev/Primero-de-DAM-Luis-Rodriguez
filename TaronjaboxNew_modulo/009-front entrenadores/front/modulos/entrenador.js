document.addEventListener('DOMContentLoaded', async () => {
    const container = document.getElementById('entrenadores');

    const loadTrainers = async () => {
        try {
            const response = await fetch('../../backend/routes/entrenadores.php');
            const trainers = await response.json();

            // Generar el HTML dinámico para los entrenadores
            container.innerHTML = trainers.map(trainer => `
                <div class="trainer">
                    <h2>${trainer.nombre}</h2>
                    <p><strong>Especialidad:</strong> ${trainer.especialidad}</p>
                    <p>${trainer.descripcion}</p>
                    <img src="${trainer.foto_url}" alt="${trainer.nombre}" class="trainer-img">
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar entrenadores:', error);
            container.innerHTML = '<p>Error al cargar entrenadores.</p>';
        }
    };

    await loadTrainers();
});
