<h1>Editar Imagen</h1>
<form method="POST" action="?action=edit&id=<?= $imagen['id']; ?>" enctype="multipart/form-data">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" value="<?= htmlspecialchars($imagen['titulo']); ?>" required>
    <br>
    <label for="imagen">Cambiar Imagen (opcional):</label>
    <input type="file" id="imagen" name="imagen" accept="image/*">
    <br>
    <p>Imagen actual:</p>
    <img src="../../uploads/<?= htmlspecialchars($imagen['imagen']); ?>" alt="<?= htmlspecialchars($imagen['titulo']); ?>" style="width: 200px;">
    <br>
    <button type="submit" class="btn">Guardar Cambios</button>
</form>