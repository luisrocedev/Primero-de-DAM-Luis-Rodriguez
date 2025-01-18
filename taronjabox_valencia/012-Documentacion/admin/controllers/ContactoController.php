<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login.php');
    exit;
}

require_once '../../backend/models/ContactoModel.php';

$action = $_GET['action'] ?? 'list';
$model = new ContactoModel();

switch ($action) {
    case 'list':
        $mensajes = $model->getAllMessages();
        require_once '../views/contacto/list.php';
        break;

    case 'delete':
        $id = $_GET['id'] ?? null;
        if ($model->deleteMessage($id)) {
            header('Location: ?action=list');
            exit;
        } else {
            echo "Error al eliminar el mensaje.";
        }
        break;

    case 'markAsRead':
        $id = $_GET['id'] ?? null;
        if ($model->markAsRead($id)) {
            header('Location: ?action=list');
            exit;
        } else {
            echo "Error al marcar el mensaje como leído.";
        }
        break;

    case 'search':
        $term = $_GET['term'] ?? '';
        $mensajes = $model->searchMessages($term);
        require_once '../views/contacto/search.php';
        break;

    case 'view':
        $id = $_GET['id'] ?? null;
        $mensaje = $model->getMessageById($id);
        if ($mensaje) {
            require_once '../views/contacto/view.php';
        } else {
            echo "<p>Mensaje no encontrado.</p>";
        }
        break;

    default:
        echo "Acción no válida.";
        break;
}
