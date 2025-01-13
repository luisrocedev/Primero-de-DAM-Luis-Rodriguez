<?php
require_once '../../config/database.php';

class Contacto {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function saveMessage($nombre, $email, $mensaje) {
        $stmt = $this->db->prepare("INSERT INTO contacto (nombre, email, mensaje, creado_en) VALUES (?, ?, ?, CURRENT_TIMESTAMP)");
        return $stmt->execute([$nombre, $email, $mensaje]);
    }

    public function getAllMessages() {
        $stmt = $this->db->query("SELECT id, nombre, email, mensaje, creado_en FROM contacto ORDER BY creado_en DESC");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function deleteMessage($id) {
        $stmt = $this->db->prepare("DELETE FROM contacto WHERE id = ?");
        return $stmt->execute([$id]);
    }
}
?>
