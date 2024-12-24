console.log("Soy el JS de la cabecera")
let secciones = [
    'Quienes somos',
    'Esto funciona',
    'Esto funciona'
]
let cabecera = document.querySelector("header nav ul")
let plantilla = document.querySelector("#elementomenu")
secciones.forEach(function(seccion){
    let instancia = plantilla.textContent.cloneNode(true);
    instancia.querySelector("a").textContent = seccion
    cabecera.appendChild(instancia) 
})