<?php
include_once '../includes/db.php';

class BlogControlador {
    private $conn;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function getAllPosts() {
        $query = $this->conn->query("SELECT * FROM blog ORDER BY fecha DESC");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getPostById($id) {
        $query = $this->conn->prepare("SELECT * FROM blog WHERE id = :id");
        $query->execute(['id' => $id]);
        return $query->fetch(PDO::FETCH_ASSOC);
    }
}
?>
