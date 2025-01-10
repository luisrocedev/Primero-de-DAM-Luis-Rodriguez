<?php
require_once __DIR__ . '/../../../helpers/BaseModel.php';

class DeleteEntrenadorModel extends BaseModel {
    public function deleteEntrenador($id) {
        $stmt = $this->pdo->prepare("DELETE FROM entrenadores WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
    }
}
?>
