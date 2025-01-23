<h1>Crear Noticia</h1>
<form method="POST" action="?action=create">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>
    <br>

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" rows="5" required></textarea>
    <br>

    <label for="imagen">URL de la Imagen (opcional):</label>
    <input type="text" id="imagen" name="imagen">
    <br>

    <label for="fecha_evento">Fecha del Evento:</label>
    <input type="date" id="fecha_evento" name="fecha_evento">
    <br>

    <button type="submit" class="btn">Crear Noticia</button>
</form>