<?php
require_once '../../config/database.php';

class Contacto {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    // Añadir un nuevo mensaje de contacto
    public function add($nombre, $email, $mensaje) {
        $stmt = $this->db->prepare("INSERT INTO contacto (nombre, email, mensaje) VALUES (?, ?, ?)");
        return $stmt->execute([$nombre, $email, $mensaje]);
    }

    // Obtener todos los mensajes
    public function getAll() {
        $stmt = $this->db->query("SELECT * FROM contacto ORDER BY creado_en DESC");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Eliminar un mensaje
    public function delete($id) {
        $stmt = $this->db->prepare("DELETE FROM contacto WHERE id = ?");
        return $stmt->execute([$id]);
    }
}
?>
