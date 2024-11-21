window.onload = function(){
  console.log("Javascript esta preparado para la accion");

  fetch("http://localhost:5000/cookies")
  .then(function(response){
    return response.json()
  })
  .then(function(datos){
    console.log(datos)

    let contenedor = document.querySelector(".cookies")
    datos.forEach(function(dato){
      contenedor.innerHTML += `
        <article>
					<h2>`+dato.titulo+`</h2>
					<p>`+dato.texto+`</p>
					<h4>`+dato.subtitulo+`</h4>
				</article>
      `
    })
  })
}