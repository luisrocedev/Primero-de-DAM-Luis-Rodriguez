document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('addPostForm');
    const postsContainer = document.getElementById('postsContainer');

    // Cargar publicaciones existentes
    const loadPosts = async () => {
        const response = await fetch('../../backend/routes/blog.php');
        const posts = await response.json();
        postsContainer.innerHTML = posts.map(post => `
            <div class="post">
                <h3>${post.titulo}</h3>
                <p>${post.contenido}</p>
                <button onclick="deletePost(${post.id})">Eliminar</button>
            </div>
        `).join('');
    };

    // Añadir publicación
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        await fetch('../../backend/routes/blog.php', {
            method: 'POST',
            body: formData
        });
        form.reset();
        loadPosts();
    });

    // Eliminar publicación
    window.deletePost = async (id) => {
        await fetch(`../../backend/routes/blog.php?id=${id}`, {
            method: 'DELETE'
        });
        loadPosts();
    };

    loadPosts();
});
