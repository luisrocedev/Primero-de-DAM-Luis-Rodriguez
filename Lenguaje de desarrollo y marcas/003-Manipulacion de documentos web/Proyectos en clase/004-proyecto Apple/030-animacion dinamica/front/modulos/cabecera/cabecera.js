console.log("Soy el js de la cabecera")
let secciones = [
    'Store',
    'iMac',
    'iPad',
    'iPhone',
    'xxx',
    'yyy',
    'zzz',
]
let cabecera = document.querySelector("header nav ul")
secciones.forEach(function(seccion){
    cabecera.innerHTML += `
        <li>
            <a href="">`+seccion+`</a>
        </li>
    `
})