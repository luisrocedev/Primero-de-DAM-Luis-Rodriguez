window.onload = function(){													// Cuando la ventana haya cargado
	console.log("Javascript está preparado para la acción")
	fetch("http://localhost:5000/cookies")
	.then(function(response){
		return response.json()
	})
	.then(function(datos){
		console.log(datos)
	})
}