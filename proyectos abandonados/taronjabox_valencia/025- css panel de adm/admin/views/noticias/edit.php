<h1>Editar Noticia</h1>
<form method="POST" action="NoticiasController.php?action=edit&id=<?= $noticia['id']; ?>">
    <label for="titulo">Título:</label>
    <input type="text" id="titulo" name="titulo" value="<?= htmlspecialchars($noticia['titulo']); ?>" required>

    <label for="contenido">Contenido:</label>
    <textarea id="contenido" name="contenido" rows="5" required><?= htmlspecialchars($noticia['contenido']); ?></textarea>

    <label for="imagen">URL de la Imagen (opcional):</label>
    <input type="text" id="imagen" name="imagen" value="<?= htmlspecialchars($noticia['imagen']); ?>">

    <label for="fecha_evento">Fecha del Evento:</label>
    <input type="date" id="fecha_evento" name="fecha_evento" value="<?= htmlspecialchars($noticia['fecha_evento']); ?>">

    <button type="submit" class="btn">Guardar Cambios</button>
</form>