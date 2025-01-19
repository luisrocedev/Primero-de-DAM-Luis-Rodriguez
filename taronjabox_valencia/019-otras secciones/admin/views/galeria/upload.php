<h1>Subir Imagen</h1>
<form method="POST" action="?action=upload" enctype="multipart/form-data">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" required>
    <br>
    <label for="imagen">Seleccionar Imagen:</label>
    <input type="file" id="imagen" name="imagen" accept="image/*" required>
    <br>
    <button type="submit" class="btn">Subir Imagen</button>
</form>