document.addEventListener('DOMContentLoaded', async () => {
    // Contenedores para las secciones
    const entrenadoresContainer = document.querySelector('.entrenadores-container');
    const horariosContainer = document.querySelector('.horarios-container');
    const preciosContainer = document.querySelector('.precios-container');
    const blogContainer = document.querySelector('.blog-container');

    // Cargar entrenadores destacados
    const loadEntrenadores = async () => {
        try {
            const response = await fetch('./../backend/routes/entrenadores.php');
            const entrenadores = await response.json();
            entrenadoresContainer.innerHTML = entrenadores.slice(0, 3).map(entrenador => `
                <div class="item">
                    <h3>${entrenador.nombre}</h3>
                    <p>${entrenador.especialidad}</p>
                </div>
            `).join('');
        } catch (error) {
            entrenadoresContainer.innerHTML = '<p>Error al cargar entrenadores.</p>';
        }
    };

    // Cargar próximos horarios
    const loadHorarios = async () => {
        try {
            const response = await fetch('./../backend/routes/horarios.php');
            const horarios = await response.json();
            horariosContainer.innerHTML = horarios.slice(0, 3).map(horario => `
                <div class="item">
                    <h3>${horario.dia} - ${horario.hora}</h3>
                    <p>${horario.actividad}</p>
                </div>
            `).join('');
        } catch (error) {
            horariosContainer.innerHTML = '<p>Error al cargar horarios.</p>';
        }
    };

    // Cargar precios destacados
    const loadPrecios = async () => {
        try {
            const response = await fetch('./../backend/routes/precios.php');
            const precios = await response.json();
            preciosContainer.innerHTML = precios.slice(0, 3).map(precio => `
                <div class="item">
                    <h3>${precio.nombre_plan}</h3>
                    <p>${precio.descripcion}</p>
                    <p><strong>$${precio.precio}</strong></p>
                </div>
            `).join('');
        } catch (error) {
            preciosContainer.innerHTML = '<p>Error al cargar precios.</p>';
        }
    };

    // Cargar últimas noticias del blog
    const loadBlog = async () => {
        try {
            const response = await fetch('./../backend/routes/blog.php');
            const posts = await response.json();
            blogContainer.innerHTML = posts.slice(0, 3).map(post => `
                <div class="item">
                    <h3>${post.titulo}</h3>
                    <p>${post.contenido.substring(0, 100)}...</p>
                </div>
            `).join('');
        } catch (error) {
            blogContainer.innerHTML = '<p>Error al cargar las noticias.</p>';
        }
    };

    // Llamar a las funciones de carga
    await Promise.all([loadEntrenadores(), loadHorarios(), loadPrecios(), loadBlog()]);
});
