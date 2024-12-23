console.log("Soy el JS de la cabecera")
let secciones = [
    'Quienes somos',
    'Esto funciona',
    'Esto funciona'
]
let cabecera = document.querySelector("header nav ul")
secciones.forEach(function(seccion){
    cabecera.innerHTML += `
        <li>
            <a href="">`+seccion+`</a>
        </li>
    `
})