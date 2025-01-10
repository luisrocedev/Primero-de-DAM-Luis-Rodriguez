<?php
include_once '../includes/db.php';

// Configurar las cabeceras
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');

// Conectar a la base de datos
$db = new Database();
$conn = $db->getConnection();

// Obtener el método de la solicitud
$method = $_SERVER['REQUEST_METHOD'];

// Leer datos de la solicitud
$data = json_decode(file_get_contents("php://input"), true);

switch ($method) {
    case 'GET':
        // Obtener todas las entradas
        $query = "SELECT * FROM blog";
        $stmt = $conn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
        break;

    case 'POST':
        // Crear una nueva entrada
        $query = "INSERT INTO blog (titulo, contenido, autor, fecha) VALUES (:titulo, :contenido, 'Admin', NOW())";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':titulo', $data['titulo']);
        $stmt->bindParam(':contenido', $data['contenido']);
        if ($stmt->execute()) {
            echo json_encode(["message" => "Entrada creada exitosamente"]);
        } else {
            echo json_encode(["message" => "Error al crear la entrada"]);
        }
        break;

    case 'PUT':
        // Actualizar una entrada existente
        $query = "UPDATE blog SET titulo = :titulo, contenido = :contenido WHERE id = :id";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':id', $data['id']);
        $stmt->bindParam(':titulo', $data['titulo']);
        $stmt->bindParam(':contenido', $data['contenido']);
        if ($stmt->execute()) {
            echo json_encode(["message" => "Entrada actualizada exitosamente"]);
        } else {
            echo json_encode(["message" => "Error al actualizar la entrada"]);
        }
        break;

    case 'DELETE':
        // Eliminar una entrada
        $query = "DELETE FROM blog WHERE id = :id";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':id', $data['id']);
        if ($stmt->execute()) {
            echo json_encode(["message" => "Entrada eliminada exitosamente"]);
        } else {
            echo json_encode(["message" => "Error al eliminar la entrada"]);
        }
        break;

    default:
        echo json_encode(["message" => "Método no permitido"]);
        break;
}
?>
