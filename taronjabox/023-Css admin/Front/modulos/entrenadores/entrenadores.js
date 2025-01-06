// Seleccionamos todos los elementos de entrenadores
const entrenadores = document.querySelectorAll('.entrenador');

// Añadimos un evento a cada entrenador para mostrar más información
entrenadores.forEach(entrenador => {
    entrenador.addEventListener('click', () => {
        // Alternamos la visibilidad de la descripción del entrenador
        const descripcion = entrenador.querySelector('p');
        descripcion.classList.toggle('mostrar'); // 'mostrar' es una clase que podrías definir en el CSS
    });
});

// Si deseas hacer algo más interactivo como animaciones o filtros, puedes agregarlo aquí
