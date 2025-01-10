<?php
require_once __DIR__ . '/../../../helpers/BaseModel.php';

class CreateEntrenadorModel extends BaseModel {
    public function createEntrenador($nombre, $especialidad, $descripcion, $foto_url) {
        $stmt = $this->pdo->prepare("
            INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) 
            VALUES (:nombre, :especialidad, :descripcion, :foto_url)
        ");
        $stmt->bindParam(':nombre', $nombre);
        $stmt->bindParam(':especialidad', $especialidad);
        $stmt->bindParam(':descripcion', $descripcion);
        $stmt->bindParam(':foto_url', $foto_url);
        $stmt->execute();
    }
}
?>
