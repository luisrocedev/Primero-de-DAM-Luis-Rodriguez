<?php
require_once '../../config/database.php';

class Entrenador {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    // Obtener todos los entrenadores
    public function getAllTrainers() {
        try {
            $stmt = $this->db->query("SELECT * FROM entrenadores ORDER BY id DESC");
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }

    // Obtener un entrenador por su ID
    public function getTrainerById($id) {
        try {
            $stmt = $this->db->prepare("SELECT * FROM entrenadores WHERE id = ?");
            $stmt->execute([$id]);
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }

    // Añadir un nuevo entrenador
    public function addTrainer($nombre, $especialidad, $descripcion, $foto_url) {
        try {
            $stmt = $this->db->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) VALUES (?, ?, ?, ?)");
            return $stmt->execute([$nombre, $especialidad, $descripcion, $foto_url]);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }

    // Eliminar un entrenador
    public function deleteTrainer($id) {
        try {
            $stmt = $this->db->prepare("DELETE FROM entrenadores WHERE id = ?");
            return $stmt->execute([$id]);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }

    // Actualizar un entrenador existente
    public function updateTrainer($id, $nombre, $especialidad, $descripcion, $foto_url) {
        try {
            $stmt = $this->db->prepare("UPDATE entrenadores SET nombre = ?, especialidad = ?, descripcion = ?, foto_url = ? WHERE id = ?");
            return $stmt->execute([$nombre, $especialidad, $descripcion, $foto_url, $id]);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }
}
?>
