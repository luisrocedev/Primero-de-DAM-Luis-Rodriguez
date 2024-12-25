fetch("../back/?table=sobre_nosotros")													// Cargo un endpoint en el back
.then(function(response){														// Cuando obtenga respuesta
	return response.json()														// La conbierto en json
})
.then(function(datos){															// Y cuando reciba datos
	console.log(datos)
	let contenedornosotros = document.querySelector("#sobrenosotros")
	let plantillasobrenosotros = document.querySelector("#plantillasobrenosotros")
	datos.forEach(function(dato){
		let instancia = plantillasobrenosotros.content.cloneNode(true);
		instancia.querySelector("h3").textContent = dato.titulo
		instancia.querySelector("h4").textContent = dato.descripcion
		instancia.querySelector("article").style.background = "url(data:image/png;base64,"+dato.imagen+")"
		contenedornosotros.appendChild(instancia)
		
	})
})
