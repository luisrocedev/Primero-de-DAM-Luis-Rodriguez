<?php
// Incluir el controlador de Entrenadores
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';

// Instanciar el controlador
$entrenadoresController = new EntrenadoresController();

// Obtener el ID del entrenador a editar
$id = $_GET['id'] ?? null;
$entrenador = null;

if ($id) {
    $entrenador = $entrenadoresController->getEntrenadorById($id);
    if (!$entrenador) {
        echo "Entrenador no encontrado.";
        exit;
    }
}

// Procesar el formulario de edición
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nombre = $_POST['nombre'];
    $especialidad = $_POST['especialidad'];
    $descripcion = $_POST['descripcion'];
    $foto_url = $_POST['foto_url'];  // Aquí puedes agregar lógica para manejar la foto

    // Actualizar el entrenador
    $entrenadoresController->updateEntrenador($id, $nombre, $especialidad, $descripcion, $foto_url);

    // Redirigir al listado de entrenadores
    header("Location: index.php");
    exit;
}

?>

<!-- Incluir el archivo de estilo editentrenador.css -->
<link rel="stylesheet" href="../../css/editentrenador.css">

<h1>Editar Entrenador</h1>

<form method="POST">
    <input type="hidden" name="id" value="<?php echo $entrenador['id']; ?>">

    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" value="<?php echo htmlspecialchars($entrenador['nombre']); ?>" required>

    <label for="especialidad">Especialidad:</label>
    <input type="text" id="especialidad" name="especialidad" value="<?php echo htmlspecialchars($entrenador['especialidad']); ?>" required>

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required><?php echo htmlspecialchars($entrenador['descripcion']); ?></textarea>

    <label for="foto_url">URL de la Foto (opcional):</label>
    <input type="text" id="foto_url" name="foto_url" value="<?php echo htmlspecialchars($entrenador['foto_url']); ?>">

    <button type="submit">Guardar Cambios</button>
</form>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
