<?php
require_once '../../config/database.php';

class Horario {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getAllSchedules() {
        $stmt = $this->db->query("SELECT * FROM horarios ORDER BY id DESC");
        return $stmt->fetchAll();
    }

    public function addSchedule($dia, $hora, $actividad, $entrenador_id) {
        $stmt = $this->db->prepare("INSERT INTO horarios (dia, hora, actividad, entrenador_id) VALUES (?, ?, ?, ?)");
        return $stmt->execute([$dia, $hora, $actividad, $entrenador_id]);
    }

    public function deleteSchedule($id) {
        $stmt = $this->db->prepare("DELETE FROM horarios WHERE id = ?");
        return $stmt->execute([$id]);
    }

    public function updateSchedule($id, $dia, $hora, $actividad, $entrenador_id) {
        $stmt = $this->db->prepare("UPDATE horarios SET dia = ?, hora = ?, actividad = ?, entrenador_id = ? WHERE id = ?");
        return $stmt->execute([$dia, $hora, $actividad, $entrenador_id, $id]);
    }
    
}
?>
