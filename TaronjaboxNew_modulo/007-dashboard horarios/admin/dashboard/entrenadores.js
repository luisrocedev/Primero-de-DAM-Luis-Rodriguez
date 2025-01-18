document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('addTrainerForm');
    const trainersContainer = document.getElementById('trainersContainer');

    // Cargar entrenadores existentes
    const loadTrainers = async () => {
        const response = await fetch('../../backend/routes/entrenadores.php');
        const trainers = await response.json();
        trainersContainer.innerHTML = trainers.map(trainer => `
            <div class="trainer">
                <h3>${trainer.nombre}</h3>
                <p>${trainer.especialidad}</p>
                <p>${trainer.descripcion}</p>
                <img src="${trainer.foto_url}" alt="${trainer.nombre}" style="max-width:100px;">
                <button onclick="deleteTrainer(${trainer.id})">Eliminar</button>
            </div>
        `).join('');
    };

    // Añadir entrenador
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        await fetch('../../backend/routes/entrenadores.php', {
            method: 'POST',
            body: formData
        });
        form.reset();
        loadTrainers();
    });

    // Eliminar entrenador
    window.deleteTrainer = async (id) => {
        await fetch(`../../backend/routes/entrenadores.php?id=${id}`, {
            method: 'DELETE'
        });
        loadTrainers();
    };

    loadTrainers();
});
