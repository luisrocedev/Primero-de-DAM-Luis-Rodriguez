<?php
require_once '../../config/database.php';

class Entrenador {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    // Obtener todos los entrenadores
    public function getAllTrainers() {
        $stmt = $this->db->query("SELECT * FROM entrenadores ORDER BY id DESC");
        return $stmt->fetchAll();
    }

    // Añadir un nuevo entrenador
    public function addTrainer($nombre, $especialidad, $descripcion, $foto_url) {
        $stmt = $this->db->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) VALUES (?, ?, ?, ?)");
        return $stmt->execute([$nombre, $especialidad, $descripcion, $foto_url]);
    }    

    // Eliminar un entrenador
    public function deleteTrainer($id) {
        $stmt = $this->db->prepare("DELETE FROM entrenadores WHERE id = ?");
        return $stmt->execute([$id]);
    }

    // Actualizar un entrenador existente
    public function updateTrainer($id, $nombre, $especialidad, $descripcion, $foto_url) {
        $stmt = $this->db->prepare("UPDATE entrenadores SET nombre = ?, especialidad = ?, descripcion = ?, foto_url = ? WHERE id = ?");
        return $stmt->execute([$nombre, $especialidad, $descripcion, $foto_url, $id]);
    }
}
?>
