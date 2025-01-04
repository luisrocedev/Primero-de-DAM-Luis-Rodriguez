<?php

// Incluir la conexión a la base de datos
include_once __DIR__ . '/../includes/db.php';

class EntrenadoresController {
    
    // Función para comprobar la conexión
    public function getConnectionStatus() {
        global $conn;

        if (!$conn) {
            return false;
        }
        return true;
    }

    // Función para obtener todos los entrenadores
    public function getAllEntrenadores() {
        global $conn;

        // Verificar que la conexión se haya establecido
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }

        // Consulta para obtener todos los entrenadores
        $query = $conn->query("SELECT * FROM entrenadores ORDER BY nombre ASC");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    // Función para obtener un entrenador específico por su ID
    public function getEntrenadorById($id) {
        global $conn;

        // Verificar que la conexión se haya establecido
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }

        // Consulta para obtener un entrenador por su ID
        $query = $conn->prepare("SELECT * FROM entrenadores WHERE id = :id");
        $query->execute(['id' => $id]);
        return $query->fetch(PDO::FETCH_ASSOC);
    }

    // Función para crear un nuevo entrenador
    public function createEntrenador($nombre, $especialidad, $descripcion, $foto_url) {
        global $conn;

        // Verificar que la conexión se haya establecido
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }

        // Insertar el nuevo entrenador en la base de datos
        $query = $conn->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) VALUES (:nombre, :especialidad, :descripcion, :foto_url)");
        return $query->execute([
            'nombre' => $nombre, 
            'especialidad' => $especialidad, 
            'descripcion' => $descripcion, 
            'foto_url' => $foto_url
        ]);
    }

    // Función para actualizar un entrenador existente
    public function updateEntrenador($id, $nombre, $especialidad, $descripcion, $foto_url) {
        global $conn;

        // Verificar que la conexión se haya establecido
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }

        // Actualizar los datos del entrenador en la base de datos
        $query = $conn->prepare("UPDATE entrenadores SET nombre = :nombre, especialidad = :especialidad, descripcion = :descripcion, foto_url = :foto_url WHERE id = :id");
        return $query->execute([
            'nombre' => $nombre, 
            'especialidad' => $especialidad, 
            'descripcion' => $descripcion, 
            'foto_url' => $foto_url, 
            'id' => $id
        ]);
    }

    // Función para eliminar un entrenador
    public function deleteEntrenador($id) {
        global $conn;
   
        // Verificar que la conexión se haya establecido
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }
   
        // Eliminar los horarios asociados al entrenador
        $query = $conn->prepare("DELETE FROM horarios WHERE entrenador_id = :id");
        $query->execute(['id' => $id]);
   
        // Eliminar el entrenador de la base de datos
        $query = $conn->prepare("DELETE FROM entrenadores WHERE id = :id");
        return $query->execute(['id' => $id]);
    }
   
}
?>
