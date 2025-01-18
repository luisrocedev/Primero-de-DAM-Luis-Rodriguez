<?php
require_once '../config/config.php';

class NewsModel
{
    private $db;

    public function __construct()
    {
        $this->db = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

        if ($this->db->connect_error) {
            die("Error en la conexión: " . $this->db->connect_error);
        }
    }

    public function getAllNews()
    {
        $query = "SELECT * FROM noticias_eventos ORDER BY fecha_creacion DESC";
        $result = $this->db->query($query);

        return $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function getNewsById($id)
    {
        $query = "SELECT * FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        $result = $stmt->get_result();

        return $result->fetch_assoc();
    }
}
