<?php
require_once 'Database.php';

class GaleriaModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    // Obtener todas las imágenes
    public function getAllImages()
    {
        $query = "SELECT * FROM galeria ORDER BY fecha_subida DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    // Añadir nueva imagen
    public function addImage($titulo, $imagen)
    {
        $query = "INSERT INTO galeria (titulo, imagen, fecha_subida) VALUES (?, ?, NOW())";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ss', $titulo, $imagen);
        return $stmt->execute();
    }

    // Eliminar imagen por ID
    public function deleteImage($id)
    {
        $query = "DELETE FROM galeria WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }

    // Obtener una imagen por su ID
    public function getImageById($id)
    {
        $query = "SELECT * FROM galeria WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    // Actualizar imagen por ID
    public function updateImage($id, $titulo, $imagen)
    {
        $query = "UPDATE galeria SET titulo = ?, imagen = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssi', $titulo, $imagen, $id);
        return $stmt->execute();
    }
}
