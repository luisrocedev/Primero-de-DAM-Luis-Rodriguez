<?php
// Incluir el controlador de Entrenadores
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';

// Instanciar el controlador
$entrenadoresController = new EntrenadoresController();

// Procesar el formulario de nuevo entrenador
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $_POST['nombre'];
    $especialidad = $_POST['especialidad'];
    $descripcion = $_POST['descripcion'];  // Obtener la descripción
    $foto = $_POST['foto'];

    // Crear el nuevo entrenador
    $entrenadoresController->createEntrenador($nombre, $especialidad, $descripcion, $foto);  // Pasar la descripción

    // Redirigir al listado de entrenadores
    header("Location: index.php");
    exit;
}
?>

<h1>Añadir Nuevo Entrenador</h1>

<form method="POST">
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required>

    <label for="especialidad">Especialidad:</label>
    <input type="text" id="especialidad" name="especialidad" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required></textarea>

    <label for="foto">Foto URL:</label>
    <input type="text" id="foto" name="foto" required>

    <!-- Botón para volver atrás -->
    <button type="button" onclick="window.history.back()">Volver atrás</button>

    <button type="submit">Guardar</button>
</form>


<!-- Incluir el footer -->
<?php
include_once '../../includes/footer.php';
?>