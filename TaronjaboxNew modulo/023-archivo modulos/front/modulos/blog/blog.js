document.addEventListener('DOMContentLoaded', async () => {
    const container = document.getElementById('blogPosts');

    const loadBlogPosts = async () => {
        try {
            const response = await fetch('../../../backend/routes/blog.php'); // URL de la API
            const posts = await response.json();

            // Renderizar las publicaciones del blog
            container.innerHTML = posts.map(post => `
                <div class="blog-post">
                    <h2>${post.titulo}</h2>
                    <p>${post.contenido}</p>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar las publicaciones del blog:', error);
            container.innerHTML = '<p>Error al cargar las publicaciones del blog.</p>';
        }
    };

    await loadBlogPosts();
});
