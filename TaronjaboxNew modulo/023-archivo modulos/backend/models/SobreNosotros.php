<?php
require_once '../../config/database.php';

class SobreNosotros {
    private $db;

    public function __construct() {
        $this->db = Database::getConnection();
    }

    // Obtener toda la información
    public function getAll() {
        $stmt = $this->db->query("SELECT * FROM sobre_nosotros ORDER BY id DESC");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Obtener un registro específico
    public function getById($id) {
        $stmt = $this->db->prepare("SELECT * FROM sobre_nosotros WHERE id = ?");
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Añadir un nuevo registro
    public function add($titulo, $contenido, $imagen_url = null) {
        $stmt = $this->db->prepare("INSERT INTO sobre_nosotros (titulo, contenido, imagen_url) VALUES (?, ?, ?)");
        return $stmt->execute([$titulo, $contenido, $imagen_url]);
    }

    // Actualizar un registro existente
    public function update($id, $titulo, $contenido, $imagen_url = null) {
        $stmt = $this->db->prepare("UPDATE sobre_nosotros SET titulo = ?, contenido = ?, imagen_url = ? WHERE id = ?");
        return $stmt->execute([$titulo, $contenido, $imagen_url, $id]);
    }

    // Eliminar un registro
    public function delete($id) {
        $stmt = $this->db->prepare("DELETE FROM sobre_nosotros WHERE id = ?");
        return $stmt->execute([$id]);
    }
}
?>
