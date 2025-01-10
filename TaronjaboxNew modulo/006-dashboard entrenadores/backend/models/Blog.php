<?php
require_once '../../config/database.php';

class Blog {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getAllPosts() {
        $stmt = $this->db->query("SELECT * FROM blog ORDER BY fecha DESC");
        return $stmt->fetchAll();
    }

    public function addPost($titulo, $contenido) {
        $stmt = $this->db->prepare("INSERT INTO blog (titulo, contenido) VALUES (?, ?)");
        return $stmt->execute([$titulo, $contenido]);
    }

    public function deletePost($id) {
        $stmt = $this->db->prepare("DELETE FROM blog WHERE id = ?");
        return $stmt->execute([$id]);
    }
}
?>
