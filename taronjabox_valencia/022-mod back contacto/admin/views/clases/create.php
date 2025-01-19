<h1>Crear Clase</h1>
<form method="POST" action="?action=create">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required>
    <br>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" rows="4" required></textarea>
    <br>

    <label for="horario">Horario:</label>
    <input type="time" id="horario" name="horario" required>
    <br>

    <label for="capacidad">Capacidad:</label>
    <input type="number" id="capacidad" name="capacidad" required>
    <br>

    <button type="submit" class="btn">Crear Clase</button>
</form>