document.addEventListener("DOMContentLoaded", function() {
    fetch("assets/scene.html")
        .then(response => response.text())
        .then(data => {
            document.getElementById("scene-container").innerHTML = data;
        })
        .catch(error => console.error("Error cargando la escena:", error));
});
