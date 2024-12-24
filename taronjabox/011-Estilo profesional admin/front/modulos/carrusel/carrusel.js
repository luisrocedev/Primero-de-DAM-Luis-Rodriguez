let puntos = document.querySelectorAll(".punto")
puntos.forEach(function(punto,index){
    punto.onclick = function(){
        let carrusel1 = document.querySelector("#carrusel1")
        carrusel1.classList.remove("animado1")
        carrusel1.style.left = 0-index*1024+"px"
    }
})