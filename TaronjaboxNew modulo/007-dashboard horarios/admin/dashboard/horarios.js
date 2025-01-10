document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('addScheduleForm');
    const schedulesContainer = document.getElementById('schedulesContainer');

    // Cargar horarios existentes
    const loadSchedules = async () => {
        const response = await fetch('../../backend/routes/horarios.php');
        const schedules = await response.json();
        schedulesContainer.innerHTML = schedules.map(schedule => `
            <div class="schedule">
                <h3>${schedule.dia} - ${schedule.hora}</h3>
                <p>Actividad: ${schedule.actividad}</p>
                <p>Entrenador ID: ${schedule.entrenador_id || 'N/A'}</p>
                <button onclick="deleteSchedule(${schedule.id})">Eliminar</button>
            </div>
        `).join('');
    };

    // Añadir horario
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        await fetch('../../backend/routes/horarios.php', {
            method: 'POST',
            body: formData
        });
        form.reset();
        loadSchedules();
    });

    // Eliminar horario
    window.deleteSchedule = async (id) => {
        await fetch(`../../backend/routes/horarios.php?id=${id}`, {
            method: 'DELETE'
        });
        loadSchedules();
    };

    loadSchedules();
});
