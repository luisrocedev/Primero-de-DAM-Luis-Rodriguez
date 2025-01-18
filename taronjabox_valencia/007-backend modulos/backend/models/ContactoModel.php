<?php
require_once 'Database.php';

class ContactoModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllMessages()
    {
        $query = "SELECT * FROM mensajes_contacto ORDER BY fecha DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }

    public function getMessageById($id)
    {
        $query = "SELECT * FROM mensajes_contacto WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }

    public function deleteMessage($id)
    {
        $query = "DELETE FROM mensajes_contacto WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
