<?php
include_once '../includes/db.php';

class HorariosControlador {
    private $conn;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function getAllHorarios() {
        $query = $this->conn->query("SELECT * FROM horarios ORDER BY FIELD(dia, 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'), hora ASC");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
