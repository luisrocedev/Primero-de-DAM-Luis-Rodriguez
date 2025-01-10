<?php
require_once __DIR__ . '/../../../helpers/BaseModel.php';

class EditEntrenadorModel extends BaseModel {
    public function getEntrenadorById($id) {
        return $this->fetchById('entrenadores', $id);
    }

    public function updateEntrenador($id, $nombre, $descripcion, $foto) {
        $stmt = $this->pdo->prepare("
            UPDATE entrenadores 
            SET nombre = :nombre, descripcion = :descripcion, foto = :foto 
            WHERE id = :id
        ");
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':nombre', $nombre);
        $stmt->bindParam(':descripcion', $descripcion);
        $stmt->bindParam(':foto', $foto);
        $stmt->execute();
    }
}
?>
