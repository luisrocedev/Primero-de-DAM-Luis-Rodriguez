<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header('Location: ../login.php');
    exit;
}

require_once '../../backend/models/ClasesModel.php';

$action = $_GET['action'] ?? 'list';
$model = new ClasesModel();

switch ($action) {
    case 'list':
        $clases = $model->getAllClases();
        require_once '../views/clases/list.php';
        break;

    case 'create':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nombre = $_POST['nombre'];
            $descripcion = $_POST['descripcion'];
            $horario = $_POST['horario'];
            $capacidad = $_POST['capacidad'];

            if ($model->createClase($nombre, $descripcion, $horario, $capacidad)) {
                header('Location: ?action=list');
                exit;
            } else {
                echo "Error al crear la clase.";
            }
        } else {
            require_once '../views/clases/create.php';
        }
        break;

    case 'edit':
        $id = $_GET['id'] ?? null;
        $clase = $model->getClaseById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nombre = $_POST['nombre'];
            $descripcion = $_POST['descripcion'];
            $horario = $_POST['horario'];
            $capacidad = $_POST['capacidad'];

            if ($model->updateClase($id, $nombre, $descripcion, $horario, $capacidad)) {
                header('Location: ?action=list');
                exit;
            } else {
                echo "Error al actualizar la clase.";
            }
        } else {
            require_once '../views/clases/edit.php';
        }
        break;

    case 'delete':
        $id = $_GET['id'] ?? null;
        if ($model->deleteClase($id)) {
            header('Location: ?action=list');
            exit;
        } else {
            echo "Error al eliminar la clase.";
        }
        break;

    default:
        echo "Acción no válida.";
        break;
}
