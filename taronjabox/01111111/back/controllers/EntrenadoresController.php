<?php
include_once '../includes/db.php';

class EntrenadoresControlador {
    private $conn;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function getAllEntrenadores() {
        $query = $this->conn->query("SELECT * FROM entrenadores");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
