<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login.php');
    exit;
}

require_once '../../backend/models/GaleriaModel.php';

$action = $_GET['action'] ?? 'list';
$model = new GaleriaModel();

switch ($action) {
    case 'list':
        $imagenes = $model->getAllImages();
        require_once '../views/galeria/list.php';
        break;

    case 'upload':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $imagen = $_FILES['imagen']['name'];
            $targetDir = "../../uploads/";
            $targetFile = $targetDir . basename($imagen);

            if (move_uploaded_file($_FILES['imagen']['tmp_name'], $targetFile)) {
                $model->addImage($titulo, $imagen);
                header('Location: ?action=list');
                exit;
            } else {
                echo "Error al subir la imagen.";
            }
        } else {
            require_once '../views/galeria/upload.php';
        }
        break;

    case 'delete':
        $id = $_GET['id'] ?? null;
        $imagen = $model->getImageById($id);
        if ($imagen && $model->deleteImage($id)) {
            unlink("../../uploads/" . $imagen['imagen']);
            header('Location: ?action=list');
            exit;
        } else {
            echo "Error al eliminar la imagen.";
        }
        break;

    case 'edit':
        $id = $_GET['id'] ?? null;
        $imagen = $model->getImageById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $nuevaImagen = $_FILES['imagen']['name'] ?? null;

            if ($nuevaImagen) {
                // Reemplazar la imagen
                $targetDir = "../../uploads/";
                $targetFile = $targetDir . basename($nuevaImagen);
                if (move_uploaded_file($_FILES['imagen']['tmp_name'], $targetFile)) {
                    unlink("../../uploads/" . $imagen['imagen']); // Eliminar la imagen antigua
                    $model->updateImage($id, $titulo, $nuevaImagen);
                } else {
                    echo "Error al subir la nueva imagen.";
                }
            } else {
                // Solo actualizar el título
                $model->updateImage($id, $titulo, $imagen['imagen']);
            }
            header('Location: ?action=list');
            exit;
        } else {
            require_once '../views/galeria/edit.php';
        }
        break;

    default:
        echo "Acción no válida.";
        break;
}
