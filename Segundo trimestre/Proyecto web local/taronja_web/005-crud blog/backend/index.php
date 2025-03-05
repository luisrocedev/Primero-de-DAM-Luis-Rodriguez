// Ejemplo básico de fetch para obtener datos del backend
fetch('backend.php')
    .then(response => response.json())
    .then(data => {
        console.log('Datos recibidos:', data);
    })
    .catch(error => {
        console.error('Error:', error);
    });
