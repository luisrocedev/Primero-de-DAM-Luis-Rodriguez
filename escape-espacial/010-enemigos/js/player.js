document.addEventListener("keydown", function(event) {
    let camara = document.querySelector("[camera]");
    let tarjeta = document.querySelector("#tarjeta");
    let tarjetaLaser = document.querySelector("#tarjetaLaser");
    let puerta = document.querySelector("#puerta");
    let laserGroup = document.querySelector("#laseres");

    if (event.key.toLowerCase() === "e") {
        if (tarjeta && !tarjetaRecogida) {
            let distancia = camara.object3D.position.distanceTo(tarjeta.object3D.position);
            if (distancia < 1.5) {
                tarjetaRecogida = true;
                tarjeta.setAttribute("visible", "false");
                tarjeta.emit("tarjetaRecogida");
                console.log("Tarjeta recogida");
            }
        } else if (tarjetaLaser && !tarjetaLaserRecogida) {
            let distancia = camara.object3D.position.distanceTo(tarjetaLaser.object3D.position);
            if (distancia < 1.5) {
                tarjetaLaserRecogida = true;
                tarjetaLaser.setAttribute("visible", "false");
                laserGroup.setAttribute("visible", "false");
                tarjetaLaser.emit("tarjetaLaserRecogida");
                console.log("Tarjeta laser recogida");
            }
        } else if (puerta && tarjetaRecogida) {
            let distanciaPuerta = camara.object3D.position.distanceTo(puerta.object3D.position);
            if (distanciaPuerta < 2) {
                puerta.emit("abrirPuerta");
                puerta.setAttribute("color", "#00ff00");
                console.log("Puerta abierta");
            }
        }
    }
    if (event.key.toLowerCase() === " ") {
        if (municion > 0) {
            municion--;
            municionValor.textContent = municion;
            console.log("Disparo");
        } else {
            console.log("Sin munición");
        }
    }
});