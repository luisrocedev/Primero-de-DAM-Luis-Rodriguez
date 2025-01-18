<?php
require_once __DIR__ . '/Database.php'; // Ruta absoluta para evitar errores

class Trainer
{
    private $db;

    public function __construct()
    {
        $this->db = (new Database())->getConnection();
    }

    public function getAllTrainers()
    {
        $query = "SELECT * FROM entrenadores";
        $result = $this->db->query($query);

        if (!$result) {
            die("Error en la consulta: " . $this->db->error);
        }

        $trainers = [];
        while ($row = $result->fetch_assoc()) {
            $trainers[] = $row;
        }

        return $trainers;
    }
}
