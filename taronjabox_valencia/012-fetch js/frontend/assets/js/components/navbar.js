export function renderNavbar() {
    const navbar = document.createElement('nav');
    navbar.innerHTML = `
        <ul>
            <li><a href="noticias.html">Noticias</a></li>
            <li><a href="clases.html">Clases</a></li>
            <li><a href="galeria.html">Galería</a></li>
            <li><a href="contacto.html">Contacto</a></li>
        </ul>
    `;
    document.body.prepend(navbar);
}
