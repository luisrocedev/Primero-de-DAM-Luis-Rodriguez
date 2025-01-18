document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('blogForm');
    const postsContainer = document.getElementById('postsContainer');
    const formButton = document.getElementById('formButton');
    let editMode = false; // Indica si estamos editando o añadiendo

    // Cargar publicaciones existentes
    const loadPosts = async () => {
        try {
            const response = await fetch('../../backend/routes/blog.php');
            const posts = await response.json();
            postsContainer.innerHTML = posts.map(post => `
                <div class="post">
                    <h3>${post.titulo}</h3>
                    <p>${post.contenido}</p>
                    <button onclick="editPost(${post.id}, '${post.titulo}', '${post.contenido}')">Editar</button>
                    <button onclick="deletePost(${post.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar publicaciones:', error);
        }
    };

    // Editar publicación
    window.editPost = (id, titulo, contenido) => {
        document.getElementById('id').value = id;
        document.getElementById('titulo').value = titulo;
        document.getElementById('contenido').value = contenido;
        formButton.textContent = 'Actualizar Publicación';
        editMode = true;
    };

    // Añadir o actualizar publicación
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const method = editMode ? 'PUT' : 'POST'; // PUT para actualizar, POST para añadir
        const body = method === 'PUT' ? new URLSearchParams(formData) : formData;

        try {
            const response = await fetch('../../backend/routes/blog.php', {
                method: method,
                body: body
            });

            const result = await response.json();
            console.log('Respuesta del servidor:', result); // Depuración

            if (result.success) {
                form.reset();
                formButton.textContent = 'Añadir Publicación';
                editMode = false;
                loadPosts();
            } else {
                console.error('Error en la solicitud:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
        }
    });

    // Eliminar publicación
    window.deletePost = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/blog.php?id=${id}`, {
                method: 'DELETE'
            });

            const result = await response.json();
            console.log('Publicación eliminada:', result); // Depuración
            loadPosts();
        } catch (error) {
            console.error('Error al eliminar publicación:', error);
        }
    };

    loadPosts();
});
