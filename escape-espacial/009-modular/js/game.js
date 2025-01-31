let timeLeft = 60;
let gameOver = false;
let tarjetaRecogida = false;
let tarjetaLaserRecogida = false;
function updateTimer() {
    if (timeLeft > 0) {
        timeLeft--;
        document.getElementById("time");textContent = timeLeft;
        document.getElementById("timerText").setAttribute("value", "Tiempo: " + timeLeft);

    } else {
        if (!gameOver) {
            alert("¡Tiempo agotado! Has perdido.");
            gameOver = true;
            location.reload();
        }
    }
}
setInterval(updateTimer, 1000);