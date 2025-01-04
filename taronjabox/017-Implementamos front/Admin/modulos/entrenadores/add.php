<?php
include_once __DIR__ . '/../../../Back/controllers/EntrenadoresController.php';                 // Incluye el archivo que contiene la lógica para gestionar los entrenadores
$entrenadoresController = new EntrenadoresController();                                         // Crea una instancia del controlador de Entrenadores
if ($_SERVER['REQUEST_METHOD'] == 'POST') {                                                     // Si el formulario ha sido enviado
    $nombre = $_POST['nombre'];                                                                 // Nombre del entrenador
    $especialidad = $_POST['especialidad'];                                                     // Especialidad del entrenador
    $descripcion = $_POST['descripcion'];                                                       // Descripción del entrenador
    $foto = $_POST['foto'];                                                                     // URL de la foto del entrenador
    $entrenadoresController->createEntrenador($nombre, $especialidad, $descripcion, $foto);     // Llama al método del controlador para crear un nuevo entrenador
    header("Location: index.php");                                                              // Después de crear el entrenador, redirige al listado de entrenadores
    exit;                                                                                       // Termina la ejecución del script
}
?>
<h1>Añadir Nuevo Entrenador</h1>
<form method="POST">                                                                            <!-- Formulario para crear un nuevo entrenador -->
    <label for="nombre">Nombre:</label>
    <input type="text" id="nombre" name="nombre" required>                                      <!-- Campo de texto para el nombre del entrenador -->

    <label for="especialidad">Especialidad:</label>
    <input type="text" id="especialidad" name="especialidad" required>                          <!-- Campo de texto para la especialidad -->

    <label for="descripcion">Descripción:</label>
    <textarea id="descripcion" name="descripcion" required></textarea>                          <!-- Campo de texto para la descripción del entrenador -->

    <label for="foto">Foto URL:</label>
    <input type="text" id="foto" name="foto" required>                                          <!-- Campo de texto para la URL de la foto del entrenador -->

    <!-- Botón para volver atrás -->
    <button type="button" onclick="window.history.back()">Volver atrás</button>                 <!-- Al hacer clic, vuelve a la página anterior -->
    <button type="submit">Guardar</button>                                                      <!-- Botón para enviar el formulario y guardar el entrenador -->
</form>
<?php
include_once '../../includes/footer.php'; 
?>
