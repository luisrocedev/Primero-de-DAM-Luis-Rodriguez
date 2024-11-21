window.onload = function(){
  console.log("Javascript esta preparado para la accion");  // Sale en consola lo escrito para confirmar que js funciona

  fetch("http://localhost:5000/cookies")                    //ejecuto conexion con el servidor
  .then(function(response){
    return response.json()                                  // cuando llegue la info que me la convierta en json
  })
  .then(function(datos){
    console.log(datos)                                      // muestro los datos en la consola

    let contenedor = document.querySelector(".cookies")     // selecciona la seccion cookies
    datos.forEach(function(dato){                           //por cada dato 
      contenedor.innerHTML += `
        <article>
					<h2>`+dato.titulo+`</h2>
					<p>`+dato.texto+`</p>
					<h4>`+dato.subtitulo+`</h4>
				</article>
      `
    })                                                      // adjunta los datos indicados dentro del contenedor inner
  })
}