document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('trainerForm');
    const trainersContainer = document.getElementById('trainersContainer');
    const formButton = document.getElementById('formButton');
    let editMode = false; // Indica si estamos editando o añadiendo

    // Cargar entrenadores existentes
    const loadTrainers = async () => {
        try {
            const response = await fetch('../../backend/routes/entrenadores.php');
            const trainers = await response.json();
            trainersContainer.innerHTML = trainers.map(trainer => `
                <div class="trainer">
                    <h3>${trainer.nombre}</h3>
                    <p>${trainer.especialidad}</p>
                    <p>${trainer.descripcion}</p>
                    <img src="${trainer.foto_url}" alt="${trainer.nombre}" style="max-width:100px;">
                    <button onclick="editTrainer(${trainer.id}, '${trainer.nombre}', '${trainer.especialidad}', '${trainer.descripcion}', '${trainer.foto_url}')">Editar</button>
                    <button onclick="deleteTrainer(${trainer.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar entrenadores:', error);
        }
    };

    // Editar entrenador
    window.editTrainer = (id, nombre, especialidad, descripcion, foto_url) => {
        document.getElementById('id').value = id;
        document.getElementById('nombre').value = nombre;
        document.getElementById('especialidad').value = especialidad;
        document.getElementById('descripcion').value = descripcion;
        document.getElementById('foto_url').value = foto_url;
        formButton.textContent = 'Actualizar Entrenador';
        editMode = true;
    };

    // Añadir o actualizar entrenador
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const method = editMode ? 'PUT' : 'POST'; // PUT para actualizar, POST para añadir
        const body = method === 'PUT' ? new URLSearchParams(formData) : formData;

        try {
            const response = await fetch('../../backend/routes/entrenadores.php', {
                method: method,
                body: body
            });

            const result = await response.json();
            console.log('Respuesta del servidor:', result); // Depuración: Ver respuesta del backend

            if (result.success) {
                form.reset();
                formButton.textContent = 'Añadir Entrenador';
                editMode = false;
                loadTrainers();
            } else {
                console.error('Error en la solicitud:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
        }
    });

    // Eliminar entrenador
    window.deleteTrainer = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/entrenadores.php?id=${id}`, {
                method: 'DELETE'
            });

            const result = await response.json();
            console.log('Entrenador eliminado:', result); // Depuración: Ver respuesta del backend
            loadTrainers();
        } catch (error) {
            console.error('Error al eliminar entrenador:', error);
        }
    };

    loadTrainers();
});
