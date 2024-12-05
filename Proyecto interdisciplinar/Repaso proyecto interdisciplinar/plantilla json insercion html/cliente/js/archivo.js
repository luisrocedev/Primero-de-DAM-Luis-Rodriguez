window.onload = function(){													// Cuando la ventana haya cargado
	console.log("Javascript está preparado para la acción");

	fetch("http://localhost:5000/loquesea")
	.then(function(response){
		return response.json()
	})
	.then(function(datos){
		console.log(datos)
		
		let contenedor = document.querySelector(".loquesea")
		datos.forEach(function(dato){
			contenedor.innerHTML += `
				<article>
					<h2>`++`</h2>
					<p>`++`<p>
					<h4>`++`</h4>
				</article>
			`
		})
	})
}