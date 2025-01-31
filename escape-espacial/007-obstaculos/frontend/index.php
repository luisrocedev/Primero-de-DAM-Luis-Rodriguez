<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escape Espacial</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <style>
        #timer {
            position: absolute;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 24px;
            color: red;
            font-family: Arial, sans-serif;
        }
    </style>
</head>

<body>
    <div id="timer">Tiempo restante: <span id="time">60</span>s</div>
    <a-scene>
        <!-- Cámara del jugador con controles en primera persona -->
        <a-entity camera wasd-controls look-controls position="0 1.6 0">
            <a-text id="timerText" value="Tiempo: 60" position="-0.75 1.5 -1" scale="1.5 1.5 1.5" color="white"></a-text>
        </a-entity>

        <!-- Suelo de la estación espacial -->
        <a-plane position="0 0 0" rotation="-90 0 0" width="10" height="10" color="#222"></a-plane>

        <!-- Paredes de la estación -->
        <a-box position="0 2 -5" width="10" height="4" depth="0.2" color="#444"></a-box>
        <a-box position="-5 2 0" width="0.2" height="4" depth="10" color="#444"></a-box>
        <a-box position="5 2 0" width="0.2" height="4" depth="10" color="#444"></a-box>
        <a-box position="0 2 5" width="10" height="4" depth="0.2" color="#444"></a-box>

        <!-- Puerta de salida con animación activada por visibilidad -->
        <a-box id="puerta" position="0 2 -4.9" width="2" height="3" depth="0.1" color="#ff0000"
            animation="property: position; to: 0 2 -6; dur: 1000; startEvents: abrirPuerta"
            sound="src: #sonidoPuerta; on: abrirPuerta"></a-box>

        <!-- Tarjeta de acceso con brillo -->
        <a-box id="tarjeta" position="-2 1 0" width="0.5" height="0.3" depth="0.1" color="#00ff00"
            animation="property: scale; to: 0.6 0.4 0.2; dir: alternate; loop: true; dur: 1000"
            sound="src: #sonidoTarjeta; on: tarjetaRecogida"></a-box>
        <!-- Tarjeta desactivar laser -->
        <a-box id="tarjetaLaser" position="2 1 0" width="0.5" height="0.3" depth="0.1" color="#0000ff"
            animation="property: scale; to: 0.6 0.4 0.2; dir: alternate; loop: true; dur: 1000"
            sound="src: #sonidoTarjeta; on: tarjetaLaserRecogida"></a-box>
        <!-- Obstáculos (Láseres de seguridad) -->
        <a-entity id="laseres">
            <a-box id="laser1" position="0 1.5 -2" width="4" height="0.2" depth="0.2" color="#ff0000"
                animation="property: opacity; from: 1; to: 0.5; dir: alternate; loop: true; dur: 500"></a-box>
            <a-box id="laser2" position="0 1 -2" width="4" height="0.2" depth="0.2" color="#ff0000"
                animation="property: opacity; from: 1; to: 0.5; dir: alternate; loop: true; dur: 500"></a-box>
        </a-entity>

        <!-- Sonido Ambiental -->
        <a-entity sound="src: #sonidoAmbiente; autoplay: true; loop: true; volume: 0.3"></a-entity>

        <!-- Luces dinámicas -->
        <a-light id="luzIntermitente" type="point" position="0 3 0" intensity="1" color="#ff0000"
            animation="property: intensity; from: 0.2; to: 1.5; dir: alternate; loop: true; dur: 1000"></a-light>

        <!-- Sonidos -->
        <a-assets>
            <audio id="sonidoTarjeta" src="../assets/sounds/tarjeta.mp3"></audio>
            <audio id="sonidoPuerta" src="../assets/sounds/puerta.mp3"></audio>
            <audio id="sonidoAmbiente" src="../assets/sounds/ambiente.mp3"></audio>
        </a-assets>

        <!-- Luz ambiental -->
        <a-light type="ambient" intensity="0.5"></a-light>

        <!-- Luz direccional dinámica -->
        <a-light id="luzDinamica" type="directional" position="3 5 -3" intensity="0.8" color="#ffffff"
            animation="property: color; from: #ffffff; to: #ff6600; dir: alternate; loop: true; dur: 2000"></a-light>
    </a-scene>

    <script>
        let tarjetaRecogida = false;
        let tarjetaLaserRecogida = false;
        let timeLeft = 60;
        let timerElement = document.getElementById("time");
        let timerText = document.getElementById("timerText");
        let gameOver = false;

        function updateTimer() {
            if (timeLeft > 0) {
                timeLeft--;
                timerElement.textContent = timeLeft;
                timerText.setAttribute("value", "Tiempo: " + timeLeft);
            } else {
                if (!gameOver) {
                    alert("¡Tiempo agotado! Has perdido.");
                    gameOver = true;
                    location.reload();
                }
            }
        }
        setInterval(updateTimer, 1000);

        document.addEventListener("keydown", function(event) {
            if (event.key.toLowerCase() === "e") {
                let camara = document.querySelector("[camera]");
                let tarjeta = document.querySelector("#tarjeta");
                let tarjetaLaser = document.querySelector("#tarjetaLaser");
                let puerta = document.querySelector("#puerta");
                let laserGroup = document.querySelector("#laseres");

                if (tarjeta && !tarjetaRecogida) {
                    let distancia = camara.object3D.position.distanceTo(tarjeta.object3D.position);
                    if (distancia < 1.5) {
                        tarjetaRecogida = true;
                        tarjeta.setAttribute("visible", "false");
                        tarjeta.emit("tarjetaRecogida");
                        console.log("Tarjeta recogida")
                    }
                } else if (tarjetaLaser && !tarjetaLaserRecogida) {
                    let distancia = camara.object3D.position.distanceTo(tarjetaLaser.object3D.position);
                    if (distancia < 1.5) {
                        tarjetaLaserRecogida = true;
                        tarjetaLaser.setAttribute("visible", "false");
                        laserGroup.setAttribute("visible", "false");
                        tarjetaLaser.emit("tarjetaLaserRecogida");
                        console.log("Tarjeta laser recogida")
                    }
                } else if (puerta && tarjetaRecogida) {
                    let distanciaPuerta = camara.object3D.position.distanceTo(puerta.object3D.position);
                    if (distanciaPuerta < 2) {
                        puerta.emit("abrirPuerta");
                        puerta.setAttribute("color", "#00ff00");
                        console.log("Puerta abierta")
                    }
                }
            }
        });
    </script>
</body>

</html>