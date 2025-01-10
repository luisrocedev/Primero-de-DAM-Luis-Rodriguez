<?php
// Incluir el header
include_once '../../includes/header.php';
?>

<h1>Editar Entrada del Blog</h1>

<form id="blog-form">
    <input type="hidden" id="id" name="id">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>
    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required></textarea>
    <button type="submit">Guardar Cambios</button>
</form>

<script>
const urlParams = new URLSearchParams(window.location.search);
const id = urlParams.get('id');

// Cargar datos de la entrada
fetch(`../../../Back/api/blog.php?id=${id}`)
    .then(response => response.json())
    .then(data => {
        document.getElementById('id').value = data.id;
        document.getElementById('titulo').value = data.titulo;
        document.getElementById('contenido').value = data.contenido;
    })
    .catch(error => console.error('Error:', error));

// Guardar cambios
document.getElementById('blog-form').addEventListener('submit', function(e) {
    e.preventDefault();

    const id = document.getElementById('id').value;
    const titulo = document.getElementById('titulo').value;
    const contenido = document.getElementById('contenido').value;

    fetch('../../../Back/api/blog.php', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id, titulo, contenido })
    })
    .then(response => response.json())
    .then(data => {
        alert(data.message);
        window.location.href = 'index.php';
    })
    .catch(error => console.error('Error:', error));
});
</script>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
