<?php
require_once '../config/Database.php';

class DestacadosController
{
    private $db;

    public function __construct()
    {
        $this->db = Database::connect();
    }

    // Obtener todos los destacados
    public function listar()
    {
        $query = "SELECT * FROM destacados ORDER BY fecha DESC";
        $result = $this->db->query($query);

        $destacados = [];
        while ($row = $result->fetch_assoc()) {
            $destacados[] = $row;
        }

        echo json_encode($destacados);
    }

    // Crear un nuevo destacado
    public function crear($titulo, $descripcion, $imagen, $fecha)
    {
        $stmt = $this->db->prepare("INSERT INTO destacados (titulo, descripcion, imagen, fecha) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $titulo, $descripcion, $imagen, $fecha);
        if ($stmt->execute()) {
            echo json_encode(["message" => "Destacado creado correctamente"]);
        } else {
            echo json_encode(["error" => "Error al crear destacado"]);
        }
    }

    // Eliminar un destacado por ID
    public function eliminar($id)
    {
        $stmt = $this->db->prepare("DELETE FROM destacados WHERE id = ?");
        $stmt->bind_param("i", $id);
        if ($stmt->execute()) {
            echo json_encode(["message" => "Destacado eliminado correctamente"]);
        } else {
            echo json_encode(["error" => "Error al eliminar destacado"]);
        }
    }
}
