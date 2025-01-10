<?php
require_once '../../config/database.php';

class Admin {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    public function getAdminByUsername($username) {
        $stmt = $this->db->prepare("SELECT * FROM admins WHERE username = ?");
        $stmt->execute([$username]);
        return $stmt->fetch();
    }
}
?>
