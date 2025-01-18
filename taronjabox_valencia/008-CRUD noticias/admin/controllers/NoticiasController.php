<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login.php');
    exit;
}

require_once '../../backend/models/NoticiasModel.php';

$action = $_GET['action'] ?? 'list';
$model = new NoticiasModel();

switch ($action) {
    case 'list':
        $noticias = $model->getAllNoticias();
        echo "<h1>Listado de Noticias</h1>";
        foreach ($noticias as $noticia) {
            echo "<div>";
            echo "<h2>" . htmlspecialchars($noticia['titulo']) . "</h2>";
            echo "<p>" . htmlspecialchars($noticia['contenido']) . "</p>";
            echo "<p><strong>Fecha del evento:</strong> " . htmlspecialchars($noticia['fecha_evento']) . "</p>";
            echo "<a href='?action=edit&id=" . $noticia['id'] . "'>Editar</a>";
            echo " | ";
            echo "<a href='?action=delete&id=" . $noticia['id'] . "' onclick='return confirm(\"¿Está seguro?\")'>Eliminar</a>";
            echo "</div>";
        }
        break;

    case 'create':
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $contenido = $_POST['contenido'];
            $imagen = $_POST['imagen'] ?? null;
            $fecha_evento = $_POST['fecha_evento'] ?? null;

            if ($model->createNoticia($titulo, $contenido, $imagen, $fecha_evento)) {
                header('Location: ?action=list');
                exit;
            } else {
                echo "Error al crear la noticia.";
            }
        } else {
            echo '<form method="POST" action="?action=create">
                <label for="titulo">Título:</label>
                <input type="text" id="titulo" name="titulo" required>
                <br>
                <label for="contenido">Contenido:</label>
                <textarea id="contenido" name="contenido" required></textarea>
                <br>
                <label for="imagen">URL de la imagen (opcional):</label>
                <input type="text" id="imagen" name="imagen">
                <br>
                <label for="fecha_evento">Fecha del evento:</label>
                <input type="date" id="fecha_evento" name="fecha_evento">
                <br>
                <button type="submit">Crear Noticia</button>
            </form>';
        }
        break;

    case 'edit':
        $id = $_GET['id'] ?? null;

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $titulo = $_POST['titulo'];
            $contenido = $_POST['contenido'];
            $imagen = $_POST['imagen'] ?? null;
            $fecha_evento = $_POST['fecha_evento'] ?? null;

            if ($model->updateNoticia($id, $titulo, $contenido, $imagen, $fecha_evento)) {
                header('Location: ?action=list');
                exit;
            } else {
                echo "Error al actualizar la noticia.";
            }
        } else {
            $noticia = $model->getNoticiaById($id);
            echo '<form method="POST" action="?action=edit&id=' . $id . '">
                <label for="titulo">Título:</label>
                <input type="text" id="titulo" name="titulo" value="' . htmlspecialchars($noticia['titulo']) . '" required>
                <br>
                <label for="contenido">Contenido:</label>
                <textarea id="contenido" name="contenido" required>' . htmlspecialchars($noticia['contenido']) . '</textarea>
                <br>
                <label for="imagen">URL de la imagen (opcional):</label>
                <input type="text" id="imagen" name="imagen" value="' . htmlspecialchars($noticia['imagen']) . '">
                <br>
                <label for="fecha_evento">Fecha del evento:</label>
                <input type="date" id="fecha_evento" name="fecha_evento" value="' . htmlspecialchars($noticia['fecha_evento']) . '">
                <br>
                <button type="submit">Guardar Cambios</button>
            </form>';
        }
        break;

    case 'delete':
        $id = $_GET['id'] ?? null;

        if ($model->deleteNoticia($id)) {
            header('Location: ?action=list');
            exit;
        } else {
            echo "Error al eliminar la noticia.";
        }
        break;

    default:
        echo "Acción no válida.";
        break;
}
