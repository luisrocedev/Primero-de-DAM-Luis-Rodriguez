<?php
require_once '../models/Database.php';

header('Content-Type: application/json');

$db = new Database();

// Verifica el método HTTP utilizado
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        // Obtener todos los destacados
        $query = "SELECT * FROM destacados ORDER BY fecha DESC";
        $result = $db->query($query);

        $destacados = [];
        while ($row = $result->fetch_assoc()) {
            $destacados[] = $row;
        }

        echo json_encode($destacados);
        break;

    case 'POST':
        // Crear un nuevo destacado
        $data = json_decode(file_get_contents('php://input'), true);
        if (isset($data['titulo'], $data['descripcion'], $data['imagen'], $data['fecha'])) {
            $stmt = $db->prepare("INSERT INTO destacados (titulo, descripcion, imagen, fecha) VALUES (?, ?, ?, ?)");
            $stmt->bind_param("ssss", $data['titulo'], $data['descripcion'], $data['imagen'], $data['fecha']);
            if ($stmt->execute()) {
                echo json_encode(["message" => "Destacado creado correctamente"]);
            } else {
                echo json_encode(["error" => "Error al crear destacado"]);
            }
        } else {
            echo json_encode(["error" => "Datos incompletos"]);
        }
        break;

    case 'DELETE':
        // Eliminar un destacado por ID
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            $stmt = $db->prepare("DELETE FROM destacados WHERE id = ?");
            $stmt->bind_param("i", $id);
            if ($stmt->execute()) {
                echo json_encode(["message" => "Destacado eliminado correctamente"]);
            } else {
                echo json_encode(["error" => "Error al eliminar destacado"]);
            }
        } else {
            echo json_encode(["error" => "ID no proporcionado"]);
        }
        break;

    default:
        echo json_encode(["error" => "Método no soportado"]);
        break;
}

$db->close();
