function difumina(cabecera){											// Cuando entro
	console.log("Has entrado")		
	document.querySelector("main").classList.add("difuminado")		// LE añado una clase css
	cabecera.style.background = "rgba(255,255,255,0.9)"				// Le pongo transparencia al fondo
}
