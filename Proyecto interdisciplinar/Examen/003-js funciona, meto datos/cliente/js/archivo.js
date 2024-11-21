window.onload = function(){
  console.log("Javascript esta preparado para la accion");

  fetch("http://localhost:5000/cookies")
  .then(function(response){
    return response.json()
  })
  .then(function(datos){
    console.log(datos)
  })
}