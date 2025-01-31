<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escape Espacial</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <a-scene>
        <!-- Cámara del jugador con controles en primera persona -->
        <a-entity camera wasd-controls look-controls position="0 1.6 0"></a-entity>

        <!-- Suelo de la estación espacial -->
        <a-plane position="0 0 0" rotation="-90 0 0" width="10" height="10" color="#222"></a-plane>

        <!-- Paredes de la estación -->
        <a-box position="0 2 -5" width="10" height="4" depth="0.2" color="#444"></a-box>
        <a-box position="-5 2 0" width="0.2" height="4" depth="10" color="#444"></a-box>
        <a-box position="5 2 0" width="0.2" height="4" depth="10" color="#444"></a-box>
        <a-box position="0 2 5" width="10" height="4" depth="0.2" color="#444"></a-box>

        <!-- Puerta de salida con animación activada por visibilidad -->
        <a-box id="puerta" position="0 2 -4.9" width="2" height="3" depth="0.1" color="#ff0000"
            animation="property: position; to: 0 2 -6; dur: 1000; startEvents: abrirPuerta"></a-box>

        <!-- Tarjeta de acceso -->
        <a-box id="tarjeta" position="-2 1 0" width="0.5" height="0.3" depth="0.1" color="#00ff00"></a-box>

        <!-- Luz ambiental -->
        <a-light type="ambient" intensity="0.5"></a-light>

        <!-- Luz direccional -->
        <a-light type="directional" position="3 5 -3" intensity="0.8"></a-light>
    </a-scene>
    <script>
        let tarjetaRecogida = false;

        document.addEventListener("keydown", function(event) {
            if (event.key.toLowerCase() === "e") {
                let tarjeta = document.querySelector("#tarjeta");
                let puerta = document.querySelector("#puerta");
                let camara = document.querySelector("[camera]");

                if (tarjeta && !tarjetaRecogida) {
                    let distancia = camara.object3D.position.distanceTo(tarjeta.object3D.position);
                    if (distancia < 1.5) {
                        tarjetaRecogida = true;
                        tarjeta.setAttribute("visible", "false");
                        console.log("Tarjeta recogida");
                    }
                } else if (puerta && tarjetaRecogida) {
                    let distanciaPuerta = camara.object3D.position.distanceTo(puerta.object3D.position);
                    if (distanciaPuerta < 2) {
                        puerta.emit("abrirPuerta");
                        console.log("Puerta abierta");
                    }
                }
            }
        });
    </script>
</body>

</html>