<?php
require_once '../../../backend/config/config.php';

class GalleryModel
{
    private $db;

    public function __construct()
    {
        $this->db = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($this->db->connect_error) {
            die("Error en la conexión: " . $this->db->connect_error);
        }
    }

    public function getAllImages()
    {
        $query = "SELECT * FROM galeria ORDER BY fecha_subida DESC";
        $result = $this->db->query($query);

        return $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function uploadImage($imagen, $descripcion)
    {
        $query = "INSERT INTO galeria (imagen, descripcion) VALUES (?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ss', $imagen, $descripcion);

        return $stmt->execute();
    }

    public function getImageById($id)
    {
        $query = "SELECT * FROM galeria WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result->fetch_assoc();
    }

    public function updateImage($id, $imagen, $descripcion)
    {
        $query = "UPDATE galeria SET imagen = ?, descripcion = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssi', $imagen, $descripcion, $id);

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
