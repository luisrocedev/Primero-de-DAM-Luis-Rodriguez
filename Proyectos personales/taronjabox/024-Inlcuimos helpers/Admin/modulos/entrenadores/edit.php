<?php
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';     // Incluye el archivo que contiene la lógica para gestionar los entrenadores
$entrenadoresController = new EntrenadoresController();                             // Crea una instancia del controlador de Entrenadores
$id = $_GET['id'] ?? null;                                                          // Obtiene el ID del entrenador desde la URL (usando 'GET')
$entrenador = null;                                                                 // Inicializa la variable para almacenar los datos del entrenador
if ($id) {                                                                          // Verifica si el ID fue proporcionado
    $entrenador = $entrenadoresController->getEntrenadorById($id);                  // Obtiene los datos del entrenador a editar mediante su ID
    if (!$entrenador) {
        echo "Entrenador no encontrado.";                                           // Muestra un mensaje si no se encuentra al entrenador
        exit;                                                                       // Detiene la ejecución si el entrenador no existe
    }
}
if ($_SERVER['REQUEST_METHOD'] == 'POST') {                                         // Verifica si se ha enviado el formulario
    $nombre = $_POST['nombre'];                                                     // Obtiene el nuevo nombre del entrenador
    $especialidad = $_POST['especialidad'];                                         // Obtiene la nueva especialidad
    $descripcion = $_POST['descripcion'];                                           // Obtiene la nueva descripción
    $foto_url = $_POST['foto_url'];                                                 // Obtiene la nueva URL de la foto (opcional)
    $entrenadoresController->updateEntrenador($id, $nombre, $especialidad, $descripcion, $foto_url); // Llama al método que actualiza los datos del entrenador
    header("Location: index.php");                                                  // Redirige al listado de entrenadores después de guardar los cambios
    exit;                                                                           // Detiene la ejecución del script
}
?>
<link rel="stylesheet" href="../../css/editentrenador.css">                  <!-- Vinculamos el archivo CSS -->
<h1>Editar Entrenador</h1>
<form method="POST">                                                                                                                        <!-- Formulario para editar el entrenador -->
    <input type="hidden" name="id" value="<?php echo $entrenador['id']; ?>">                                                                <!-- ID del entrenador (oculto) -->

    <label for="nombre">Nombre:</label>                                                                                                     <!-- Campo para el nombre del entrenador -->
    <input type="text" id="nombre" name="nombre" value="<?php echo htmlspecialchars($entrenador['nombre']); ?>" required>                   <!-- Valor prellenado con el nombre actual del entrenador -->

    <label for="especialidad">Especialidad:</label>                                                                                         <!-- Campo para la especialidad del entrenador -->
    <input type="text" id="especialidad" name="especialidad" value="<?php echo htmlspecialchars($entrenador['especialidad']); ?>" required> <!-- Valor prellenado con la especialidad actual -->

    <label for="descripcion">Descripción:</label>                                                                                           <!-- Campo para la descripción del entrenador -->
    <textarea id="descripcion" name="descripcion" required><?php echo htmlspecialchars($entrenador['descripcion']); ?></textarea>           <!-- Valor prellenado con la descripción actual -->

    <label for="foto_url">URL de la Foto (opcional):</label>                                                                                <!-- Campo para la URL de la foto (opcional) -->
    <input type="text" id="foto_url" name="foto_url" value="<?php echo htmlspecialchars($entrenador['foto_url']); ?>">                      <!-- Valor prellenado con la URL de la foto actual -->

    <button type="submit">Guardar Cambios</button>                                                                                          <!-- Botón para guardar los cambios -->
    <button onclick="history.back()">Volver atrás</button>                                                                                  <!-- Botón para volver atras -->
</form>
<?php
include_once '../../includes/footer.php';
