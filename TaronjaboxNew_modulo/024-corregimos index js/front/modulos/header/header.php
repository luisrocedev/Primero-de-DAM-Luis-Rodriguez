<nav id="headerMenu"></nav>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const headerMenu = document.getElementById('headerMenu');
        const menuSections = [
            { name: 'Inicio', link: './index.php' },
            { name: 'Entrenadores', link: './modulos/entrenador/entrenador.php' },
            { name: 'Horarios', link: './modulos/horarios/horarios.php' },
            { name: 'Precios', link: './modulos/precios/precios.php' },
            { name: 'Blog', link: './modulos/blog/blog.php' },
            { name: 'Sobre Nosotros', link: './modulos/sobre_nosotros/sobre_nosotros.php' },
            { name: 'Contacto', link: './modulos/contacto/contacto.php' },
        ];
        headerMenu.innerHTML = menuSections
            .map(section => `<a href="${section.link}">${section.name}</a>`)
            .join('');
    });
</script>
