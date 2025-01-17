<?php
require_once '../../config/database.php';

class Entrenador {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getAllTrainers() {
        $stmt = $this->db->query("SELECT * FROM entrenadores ORDER BY id DESC");
        return $stmt->fetchAll();
    }

    public function addTrainer($nombre, $especialidad, $descripcion, $foto_url) {
        $stmt = $this->db->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) VALUES (?, ?, ?, ?)");
        return $stmt->execute([$nombre, $especialidad, $descripcion, $foto_url]);
    }

    public function deleteTrainer($id) {
        $stmt = $this->db->prepare("DELETE FROM entrenadores WHERE id = ?");
        return $stmt->execute([$id]);
    }
}
?>
