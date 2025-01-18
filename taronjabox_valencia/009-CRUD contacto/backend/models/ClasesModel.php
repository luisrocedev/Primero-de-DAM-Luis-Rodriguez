<?php
require_once 'Database.php';

class ClasesModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllClasses()
    {
        $query = "SELECT * FROM clases ORDER BY fecha_creacion DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    public function getClassById($id)
    {
        $query = "SELECT * FROM clases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function addClass($nombre, $descripcion, $horario, $capacidad)
    {
        $query = "INSERT INTO clases (nombre, descripcion, horario, capacidad) VALUES (?, ?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('sssi', $nombre, $descripcion, $horario, $capacidad);
        return $stmt->execute();
    }

    public function deleteClass($id)
    {
        $query = "DELETE FROM clases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
