<?php
require_once '../backend/models/Database.php';

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
