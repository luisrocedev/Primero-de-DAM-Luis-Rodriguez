<?php
require_once 'Database.php';

class NoticiasModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllNoticias()
    {
        $query = "SELECT * FROM noticias_eventos ORDER BY fecha_creacion DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    public function getNoticiaById($id)
    {
        $query = "SELECT * FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function createNoticia($titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "INSERT INTO noticias_eventos (titulo, contenido, imagen, fecha_evento) VALUES (?, ?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssss', $titulo, $contenido, $imagen, $fecha_evento);
        return $stmt->execute();
    }

    public function updateNoticia($id, $titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "UPDATE noticias_eventos SET titulo = ?, contenido = ?, imagen = ?, fecha_evento = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssssi', $titulo, $contenido, $imagen, $fecha_evento, $id);
        return $stmt->execute();
    }

    public function deleteNoticia($id)
    {
        $query = "DELETE FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
