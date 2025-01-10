<?php
// Incluir el header
include_once '../../includes/header.php';
?>

<h1>Añadir Nueva Entrada al Blog</h1>

<form id="blog-form">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>
    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" required></textarea>
    <button type="submit">Guardar</button>
</form>

<script>
document.getElementById('blog-form').addEventListener('submit', function(e) {
    e.preventDefault();

    const titulo = document.getElementById('titulo').value;
    const contenido = document.getElementById('contenido').value;

    fetch('../../../Back/api/blog.php', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ titulo, contenido })
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
