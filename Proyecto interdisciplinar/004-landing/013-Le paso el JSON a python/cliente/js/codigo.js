window.onload = function(){
  console.log("Javascript está preparado para la acción")

  ////////////////////////////// ARTICULOS DEL BLOG ///////////////////////////////

  fetch("http://localhost:5000/damearticulos")
  .then(function(response){
    return response.json()
  })
  .then(function(datos){
    console.log(datos)
    let contenedor = document.querySelector("#blog .articulos")
    datos.forEach(function(dato){
      contenedor.innerHTML +=`
        <article>
					<img src="imagenes/portfolio.jpg">
					<h5>`+dato.titulo+`</h5>
					<time>`+dato.fecha+`</time>
					<p>`+dato.texto+`</p>
				</article>
      `;
    })
  })

  ////////////////////////////// ELEMENTOS DE PORTAFOLIO ///////////////////////////////

  fetch("http://localhost:5000/dameportafolio")
  .then(function(response){
    return response.json()
  })
  .then(function(datos){
    console.log(datos)
    let contenedor = document.querySelector("#proyectos .articulos")
    datos.forEach(function(dato){
      contenedor.innerHTML +=`
        <article>
					<img src="imagenes/portfolio.jpg">
					<h5>`+dato.titulo+`</h5>
					<p>`+dato.texto+`</p>
				</article>
      `;
    })
  })

  ////////////////////////////// PROCESO EL FORMULARIO ///////////////////////////////

  let boton = document.querySelector("#contacto button")
  boton.onclick = function(){
    console.log("vamos a guardar un mensaje")
    let nombre = document.querySelector("#contactonombre").value
    let email = document.querySelector("#contactoemail").value
    let asunto = document.querySelector("#contactoasunto").value
    let texto = document.querySelector("#contactotexto").value
    console.log(nombre,email,asunto,texto)
    let mensajejson = {
      "nombre":nombre,
      "email":email,
      "asunto":asunto,
      "texto":texto
    }
    console.log(mensajejson)
  }
	fetch("http://localhost:5000/insertamensaje",{
	  method: 'POST',
	  headers: {
		 'Content-Type': 'application/json'
	  },
	  body: JSON.stringify(mensajejson) 
	})
}