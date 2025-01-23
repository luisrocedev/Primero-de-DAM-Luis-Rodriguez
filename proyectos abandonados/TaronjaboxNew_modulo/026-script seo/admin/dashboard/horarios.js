document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('scheduleForm');
    const schedulesContainer = document.getElementById('schedulesContainer');
    const formButton = document.getElementById('formButton');
    let editMode = false; // Indica si estamos editando o añadiendo

    // Cargar horarios existentes
    const loadSchedules = async () => {
        try {
            const response = await fetch('../../backend/routes/horarios.php');
            const schedules = await response.json();
            schedulesContainer.innerHTML = schedules.map(schedule => `
                <div class="schedule">
                    <h3>${schedule.dia} - ${schedule.hora}</h3>
                    <p>Actividad: ${schedule.actividad}</p>
                    <p>Entrenador ID: ${schedule.entrenador_id || 'N/A'}</p>
                    <button onclick="editSchedule(${schedule.id}, '${schedule.dia}', '${schedule.hora}', '${schedule.actividad}', ${schedule.entrenador_id || null})">Editar</button>
                    <button onclick="deleteSchedule(${schedule.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar horarios:', error);
        }
    };

    // Editar horario
    window.editSchedule = (id, dia, hora, actividad, entrenador_id) => {
        document.getElementById('id').value = id;
        document.getElementById('dia').value = dia;
        document.getElementById('hora').value = hora;
        document.getElementById('actividad').value = actividad;
        document.getElementById('entrenador_id').value = entrenador_id || '';
        formButton.textContent = 'Actualizar Horario';
        editMode = true;
    };

    // Añadir o actualizar horario
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const method = editMode ? 'PUT' : 'POST'; // PUT para actualizar, POST para añadir
        const body = method === 'PUT' ? new URLSearchParams(formData) : formData;

        try {
            const response = await fetch('../../backend/routes/horarios.php', {
                method: method,
                body: body
            });

            const result = await response.json();
            console.log('Respuesta del servidor:', result); // Depuración

            if (result.success) {
                form.reset();
                formButton.textContent = 'Añadir Horario';
                editMode = false;
                loadSchedules();
            } else {
                console.error('Error en la solicitud:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
        }
    });

    // Eliminar horario
    window.deleteSchedule = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/horarios.php?id=${id}`, {
                method: 'DELETE'
            });

            const result = await response.json();
            console.log('Horario eliminado:', result); // Depuración
            loadSchedules();
        } catch (error) {
            console.error('Error al eliminar horario:', error);
        }
    };

    loadSchedules();
});
