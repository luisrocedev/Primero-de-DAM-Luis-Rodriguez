<h1>Editar Clase</h1>
<form method="POST" action="?action=edit&id=<?= $clase['id']; ?>">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" value="<?= htmlspecialchars($clase['nombre']); ?>" required>
    <br>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" rows="4" required><?= htmlspecialchars($clase['descripcion']); ?></textarea>
    <br>

    <label for="horario">Horario:</label>
    <input type="time" id="horario" name="horario" value="<?= htmlspecialchars($clase['horario']); ?>" required>
    <br>

    <label for="capacidad">Capacidad:</label>
    <input type="number" id="capacidad" name="capacidad" value="<?= htmlspecialchars($clase['capacidad']); ?>" required>
    <br>

    <button type="submit" class="btn">Guardar Cambios</button>
</form>