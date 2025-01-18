<section id="destacados">
    <h2>Secciones Destacadas</h2>
    <div id="destacadosContainer"></div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const destacadosContainer = document.getElementById('destacadosContainer');
            const menuSections = [
                { name: 'Entrenadores', link: './modulos/entrenador/entrenador.php' },
                { name: 'Horarios', link: './modulos/horarios/horarios.php' },
                { name: 'Precios', link: './modulos/precios/precios.php' },
                { name: 'Blog', link: './modulos/blog/blog.php' },
                { name: 'Sobre Nosotros', link: './modulos/sobre_nosotros/sobre_nosotros.php' },
            ];
            destacadosContainer.innerHTML = menuSections
                .map(section => `
                    <div>
                        <h3>${section.name}</h3>
                        <a href="${section.link}">Ver más</a>
                    </div>
                `)
                .join('');
        });
    </script>
</section>
