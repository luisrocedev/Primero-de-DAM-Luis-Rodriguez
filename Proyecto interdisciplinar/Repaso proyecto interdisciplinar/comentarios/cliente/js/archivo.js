window.onload = function() {
	// Ejecuta esto cuando la página termine de cargarse.

	console.log("Javascript está preparado para la acción");
	// Muestra un mensaje en la consola.

	fetch("http://localhost:5000/loquesea")
	// Pide datos al servidor en esta URL.

	.then(function(response) {
			return response.json();
			// Convierte la respuesta en formato JSON.
	})

	.then(function(datos) {
			console.log(datos);
			// Muestra los datos en la consola.

			let contenedor = document.querySelector(".loquesea");
			// Busca un contenedor en la página con clase "loquesea".

			datos.forEach(function(dato) {
					// Recorre los datos recibidos y añade artículos al contenedor.

					contenedor.innerHTML += `
							<article>
									<h2>`++`</h2>
									<p>`++`<p>
									<h4>`++`</h4>
							</article>
					`;
					// Crea un bloque de HTML por cada elemento de "datos".
			});
	});
}
