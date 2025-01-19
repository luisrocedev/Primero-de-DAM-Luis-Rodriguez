<h1>Eliminar Clase</h1>
<p>¿Está seguro de que desea eliminar la clase <strong><?= htmlspecialchars($clase['nombre']); ?></strong>?</p>
<form method="POST" action="?action=delete&id=<?= $clase['id']; ?>">
    <button type="submit" class="btn">Eliminar</button>
    <a href="?action=list" class="btn">Cancelar</a>
</form>