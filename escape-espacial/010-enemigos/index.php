<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escape Espacial</title>
    <script src="https://aframe.io/releases/1.4.0/aframe.min.js"></script>
    <link rel="stylesheet" href="css/hud.css">
    <link rel="stylesheet" href="css/timer.css">
</head>

<body>
    <div id="hud">
        <div id="vida">Vida: <span id="vidaValor">100</span></div>
        <div id="municion">Munición: <span id="municionValor">10</span></div>
    </div>
    <div id="timer">Tiempo restante: <span id="time">60</span>s</div>
    <div id="scene-container"></div> <!-- Aquí se cargará la escena -->
    <!-- Scripts Modularizados -->
    <script src="js/scene.js"></script>
    <script src="js/hud.js"></script>
    <script src="js/game.js"></script>
    <script src="js/player.js"></script>
    <script src="js/enemies.js"></script>
    <script src="js/weapon.js"></script>
</body>

</html>