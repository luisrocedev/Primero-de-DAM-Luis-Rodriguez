<?php
require_once '../../config/database.php';

class Precio {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getAllPrices() {
        $stmt = $this->db->query("SELECT * FROM precios ORDER BY id DESC");
        return $stmt->fetchAll();
    }

    public function addPrice($nombre_plan, $descripcion, $precio) {
        $stmt = $this->db->prepare("INSERT INTO precios (nombre_plan, descripcion, precio) VALUES (?, ?, ?)");
        return $stmt->execute([$nombre_plan, $descripcion, $precio]);
    }

    public function deletePrice($id) {
        $stmt = $this->db->prepare("DELETE FROM precios WHERE id = ?");
        return $stmt->execute([$id]);
    }

    public function updatePrice($id, $nombre_plan, $descripcion, $precio) {
        $stmt = $this->db->prepare("UPDATE precios SET nombre_plan = ?, descripcion = ?, precio = ? WHERE id = ?");
        return $stmt->execute([$nombre_plan, $descripcion, $precio, $id]);
    }
    
}
?>
