<?php
// Ajustar según la ubicación real del archivo
require_once __DIR__ . '/../../models/entrenador/EditEntrenadorModel.php';

class EditEntrenadorController {
    private $model;

    public function __construct() {
        $this->model = new EditEntrenadorModel();
    }

    public function handleRequest() {
        // Comprobar si el formulario fue enviado (POST)
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Obtener los datos enviados por el formulario
            $id = $_POST['id'];
            $nombre = $_POST['nombre'];
            $descripcion = $_POST['descripcion'];
            $foto = $_FILES['foto']['name'] ?? ''; // Si no se sube una nueva foto, se deja vacío

            // Validación: si los campos nombre o descripción están vacíos
            if (empty($nombre) || empty($descripcion)) {
                echo "Error: Todos los campos son requeridos.";
                exit;
            }

            // Si hay una nueva imagen, la subimos
            if ($foto) {
                $uploadDir = dirname(__DIR__, 3) . '/uploads/entrenador/';
                if (!file_exists($uploadDir)) {
                    mkdir($uploadDir, 0777, true); // Crear la carpeta si no existe
                }

                // Mover la imagen desde el temporal a la carpeta
                move_uploaded_file($_FILES['foto']['tmp_name'], $uploadDir . $foto);
            } else {
                // Si no se sube una nueva foto, usamos la foto actual
                $foto = $_POST['foto_actual'] ?? ''; // En caso de no cambiar la foto
            }

            // Llamamos al modelo para actualizar los datos del entrenador
            $this->model->updateEntrenador($id, $nombre, $descripcion, $foto);

            // Redirigimos a la lista de entrenadores tras la actualización
            header('Location: ' . dirname($_SERVER['PHP_SELF']) . '/ListEntrenadorController.php');
            exit;
        } else {
            // Si el método no es POST, cargamos el entrenador para mostrarlo en el formulario de edición
            if (!isset($_GET['id'])) {
                echo "Error: ID no proporcionado.";
                exit;
            }

            $id = $_GET['id'];
            $entrenador = $this->model->getEntrenadorById($id);

            if (!$entrenador) {
                echo "Error: Entrenador no encontrado.";
                exit;
            }

            // Mostrar la vista para editar el entrenador
            include __DIR__ . '/../../views/entrenador/edit_entrenador.php';
        }
    }
}

// Crear instancia del controlador y manejar la solicitud
$controller = new EditEntrenadorController();
$controller->handleRequest();
?>
