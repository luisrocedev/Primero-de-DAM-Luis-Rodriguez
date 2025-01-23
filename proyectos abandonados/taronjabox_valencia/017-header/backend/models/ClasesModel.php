<?php
require_once 'Database.php';

class ClasesModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllClases()
    {
        $query = "SELECT * FROM clases ORDER BY fecha_creacion DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    public function getClaseById($id)
    {
        $query = "SELECT * FROM clases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function createClase($nombre, $descripcion, $horario, $capacidad)
    {
        $query = "INSERT INTO clases (nombre, descripcion, horario, capacidad, fecha_creacion) VALUES (?, ?, ?, ?, NOW())";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('sssi', $nombre, $descripcion, $horario, $capacidad);
        return $stmt->execute();
    }

    public function updateClase($id, $nombre, $descripcion, $horario, $capacidad)
    {
        $query = "UPDATE clases SET nombre = ?, descripcion = ?, horario = ?, capacidad = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('sssii', $nombre, $descripcion, $horario, $capacidad, $id);
        return $stmt->execute();
    }

    public function deleteClase($id)
    {
        $query = "DELETE FROM clases WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
