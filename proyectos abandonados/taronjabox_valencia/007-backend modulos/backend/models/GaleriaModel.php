<?php
require_once 'Database.php';

class GaleriaModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllImages()
    {
        $query = "SELECT * FROM galeria ORDER BY fecha_subida DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    public function getImageById($id)
    {
        $query = "SELECT * FROM galeria WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function addImage($titulo, $imagen)
    {
        $query = "INSERT INTO galeria (titulo, imagen) VALUES (?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ss', $titulo, $imagen);
        return $stmt->execute();
    }

    public function deleteImage($id)
    {
        $query = "DELETE FROM galeria WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
