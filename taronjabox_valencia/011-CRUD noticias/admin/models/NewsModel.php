<?php
require_once '../../../backend/config/config.php';

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

    public function createNews($titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "INSERT INTO noticias_eventos (titulo, contenido, imagen, fecha_evento) VALUES (?, ?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssss', $titulo, $contenido, $imagen, $fecha_evento);

        return $stmt->execute();
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

    public function updateNews($id, $titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "UPDATE noticias_eventos SET titulo = ?, contenido = ?, imagen = ?, fecha_evento = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssssi', $titulo, $contenido, $imagen, $fecha_evento, $id);

        return $stmt->execute();
    }

    public function deleteNews($id)
    {
        $query = "DELETE FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);

        return $stmt->execute();
    }
}
