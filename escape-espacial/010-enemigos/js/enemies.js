document.addEventListener("DOMContentLoaded", function () {
    // Esperar a que la escena se cargue antes de agregar enemigos
    let checkScene = setInterval(() => {
        let scene = document.querySelector("a-scene");
        let enemiesContainer = document.querySelector("#enemigos");

        if (scene && enemiesContainer) {
            clearInterval(checkScene); // Detener la espera

            // Definir enemigos dinámicamente
            let enemies = [
                { id: "enemigo1", position: "-2 1.5 -3", movementTo: "-2 1.5 -4" },
                { id: "enemigo2", position: "3 1.5 -2", movementTo: "3 1.5 -3" }
            ];

            enemies.forEach(enemy => {
                let enemyElement = document.createElement("a-box");
                enemyElement.setAttribute("id", enemy.id);
                enemyElement.setAttribute("position", enemy.position);
                enemyElement.setAttribute("width", "0.5");
                enemyElement.setAttribute("height", "1");
                enemyElement.setAttribute("depth", "0.5");
                enemyElement.setAttribute("color", "red");
                enemyElement.setAttribute("animation", `property: position; to: ${enemy.movementTo}; dir: alternate; loop: true; dur: 2000`);

                enemiesContainer.appendChild(enemyElement);
            });

            console.log("Enemigos cargados correctamente.");
        }
    }, 100);
});

// Detectar disparos y eliminar enemigos
document.addEventListener("keydown", function (event) {
    if (event.key.toLowerCase() === " ") { // Disparo con barra espaciadora
        let camara = document.querySelector("[camera]");
        let enemigos = document.querySelectorAll("#enemigos a-box");

        if (enemigos.length === 0) return;

        enemigos.forEach(enemigo => {
            let distancia = camara.object3D.position.distanceTo(enemigo.object3D.position);
            if (distancia < 2) { // Si el jugador está lo suficientemente cerca
                enemigo.setAttribute("visible", "false");
                enemigo.remove(); // Elimina al enemigo
                console.log("Enemigo eliminado");
            }
        });
    }
});
