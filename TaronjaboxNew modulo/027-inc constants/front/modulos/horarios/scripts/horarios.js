document.addEventListener('DOMContentLoaded', async () => {
    const container = document.getElementById('schedules');

    const loadSchedules = async () => {
        try {
            const response = await fetch('../../../backend/routes/horarios.php'); // URL de la API
            const schedules = await response.json();

            // Renderizar los horarios
            container.innerHTML = schedules.map(schedule => `
                <div class="schedule">
                    <h2>${schedule.dia} - ${schedule.hora}</h2>
                    <p><strong>Actividad:</strong> ${schedule.actividad}</p>
                    <p><strong>Entrenador:</strong> ${schedule.entrenador_id || 'N/A'}</p>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar los horarios:', error);
            container.innerHTML = '<p>Error al cargar los horarios.</p>';
        }
    };

    await loadSchedules();
});
