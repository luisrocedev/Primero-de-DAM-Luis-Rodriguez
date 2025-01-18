<?php
require_once '../backend/config/config.php'; // Incluir configuración de la base de datos
require_once '../backend/models/Database.php'; // Incluir la clase Database

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

        $trainers = [];
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                $trainers[] = $row;
            }
        }
        return $trainers;
    }
}
