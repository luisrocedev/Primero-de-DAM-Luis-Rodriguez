document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('aboutForm');
    const aboutContainer = document.getElementById('aboutContainer');
    const formButton = document.getElementById('formButton');
    let editMode = false; // Indica si estamos en modo edición

    // Cargar registros existentes
    const loadAbout = async () => {
        try {
            const response = await fetch('../../backend/routes/sobre_nosotros.php');
            const abouts = await response.json();
            aboutContainer.innerHTML = abouts.map(about => `
                <div class="about">
                    <h3>${about.titulo}</h3>
                    <p>${about.contenido}</p>
                    <button onclick="editAbout(${about.id}, '${about.titulo}', '${about.contenido}')">Editar</button>
                    <button onclick="deleteAbout(${about.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar registros:', error);
        }
    };

    // Editar registro
    window.editAbout = (id, titulo, contenido) => {
        document.getElementById('id').value = id;
        document.getElementById('titulo').value = titulo;
        document.getElementById('contenido').value = contenido;
        formButton.textContent = 'Actualizar';
        editMode = true;
    };

    // Añadir o actualizar registro
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const method = editMode ? 'PUT' : 'POST'; // PUT para actualizar, POST para añadir
        if (editMode) {
            formData.append('_method', 'PUT'); // Indicamos que es una actualización
        }

        try {
            const response = await fetch('../../backend/routes/sobre_nosotros.php', {
                method: 'POST',
                body: formData,
            });

            const result = await response.json();
            if (result.success) {
                form.reset();
                formButton.textContent = 'Añadir';
                editMode = false;
                loadAbout(); // Recargar los registros
            } else {
                console.error('Error en la solicitud:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
        }
    });

    // Eliminar registro
    window.deleteAbout = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/sobre_nosotros.php?id=${id}`, {
                method: 'DELETE',
            });

            const result = await response.json();
            if (result.success) {
                loadAbout(); // Recargar los registros
            } else {
                console.error('Error al eliminar registro:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error al eliminar registro:', error);
        }
    };

    loadAbout();
});
