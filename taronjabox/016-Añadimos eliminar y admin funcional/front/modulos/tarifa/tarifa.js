fetch("../back/?tabla=tarifas")													// Cargo un endpoint en el back
.then(function(response){														// Cuando obtenga respuesta
	return response.json()														// La conbierto en json
})
.then(function(datos){															// Y cuando reciba datos
	console.log(datos)
	let contenedortarifas = document.querySelector("#tarifas")
	let plantillatarifa = document.querySelector("#plantillatarifa")
	datos.forEach(function(dato){
		let instancia = plantillatarifa.content.cloneNode(true);
		instancia.querySelector("h3").textContent = dato.nombre_tarifa
		instancia.querySelector("h4").textContent = dato.sesiones
		instancia.querySelector("article").style.background = "url(data:image/png;base64,"+dato.imagen+")"
		contenedortarifas.appendChild(instancia)
		
	})
})
