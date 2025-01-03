<?php
// Incluir el archivo de conexión a la base de datos
include_once '../includes/db.php';

// Obtener el método de la solicitud (GET, POST, PUT, DELETE)
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        // Obtener todas las entradas del blog o una específica
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']); // Convertir el id a un número entero por seguridad
            $query = $conn->prepare("SELECT * FROM blog WHERE id = :id");
            $query->execute(['id' => $id]);
            $post = $query->fetch(PDO::FETCH_ASSOC);

            // Comprobar si la entrada existe
            if ($post) {
                echo json_encode($post);
            } else {
                http_response_code(404);
                echo json_encode(['message' => 'Entrada no encontrada']);
            }
        } else {
            // Obtener todas las entradas del blog ordenadas por fecha descendente
            $query = $conn->query("SELECT * FROM blog ORDER BY fecha DESC");
            $posts = $query->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($posts);
        }
        break;

    case 'POST':
        // Agregar una nueva entrada al blog
        $data = json_decode(file_get_contents("php://input"), true);

        if (isset($data['titulo'], $data['contenido'])) {
            $titulo = $data['titulo'];
            $contenido = $data['contenido'];
            $fecha = date("Y-m-d"); // Fecha actual
            $autor = isset($data['autor']) ? $data['autor'] : 'Admin'; // Autor, por defecto 'Admin'

            $query = $conn->prepare("INSERT INTO blog (titulo, contenido, fecha, autor) VALUES (:titulo, :contenido, :fecha, :autor)");
            $query->execute([
                'titulo' => $titulo,
                'contenido' => $contenido,
                'fecha' => $fecha,
                'autor' => $autor
            ]);

            echo json_encode(['message' => 'Entrada creada con éxito']);
        } else {
            http_response_code(400);
            echo json_encode(['message' => 'Datos incompletos. Titulo y contenido son obligatorios.']);
        }
        break;

    case 'PUT':
        // Editar una entrada del blog
        $data = json_decode(file_get_contents("php://input"), true);

        if (isset($data['id'], $data['titulo'], $data['contenido'])) {
            $id = intval($data['id']); // Asegurar que el ID sea un número entero
            $titulo = $data['titulo'];
            $contenido = $data['contenido'];

            $query = $conn->prepare("UPDATE blog SET titulo = :titulo, contenido = :contenido WHERE id = :id");
            $query->execute([
                'titulo' => $titulo,
                'contenido' => $contenido,
                'id' => $id
            ]);

            echo json_encode(['message' => 'Entrada actualizada con éxito']);
        } else {
            http_response_code(400);
            echo json_encode(['message' => 'Datos incompletos. Se necesitan id, titulo y contenido.']);
        }
        break;

    case 'DELETE':
        // Eliminar una entrada del blog
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']); // Asegurar que el ID sea un número entero

            $query = $conn->prepare("DELETE FROM blog WHERE id = :id");
            $query->execute(['id' => $id]);

            echo json_encode(['message' => 'Entrada eliminada con éxito']);
        } else {
            http_response_code(400);
            echo json_encode(['message' => 'ID no proporcionado']);
        }
        break;

    default:
        // Responder con un código de error para métodos no permitidos
        http_response_code(405);
        echo json_encode(['message' => 'Método no permitido']);
        break;
}
?>
