<?php
include_once __DIR__ . '/../includes/db.php'; // Incluye la conexión a la base de datos desde el archivo db.php

class EntrenadoresController {
    public function getConnectionStatus() {                                                 // Función para comprobar la conexión
        global $conn;                                                                       // Utiliza la variable global $conn para la conexión
        if (!$conn) {                                                                       // Si la conexión no está activa
            return false;                                                                   // Devuelve false indicando que la conexión falló
        }
        return true;                                                                        // Si la conexión está activa, devuelve true
    }
    
    public function getAllEntrenadores() {                                                  // Función para obtener todos los entrenadores
        global $conn;                                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->query("SELECT * FROM entrenadores ORDER BY nombre ASC");            // Consulta SQL para obtener todos los entrenadores ordenados alfabéticamente por su nombre
        return $query->fetchAll(PDO::FETCH_ASSOC);                                          // Devuelve todos los entrenadores como un arreglo asociativo
    }
    
    public function getEntrenadorById($id) {                                                // Función para obtener un entrenador específico por su ID
        global $conn;                                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("SELECT * FROM entrenadores WHERE id = :id");               // Consulta SQL para obtener un entrenador específico por su ID
        $query->execute(['id' => $id]);                                                     // Ejecuta la consulta pasando el ID
        return $query->fetch(PDO::FETCH_ASSOC);                                             // Devuelve el entrenador como un arreglo asociativo
    }

    public function createEntrenador($nombre, $especialidad, $descripcion, $foto_url) {
        global $conn;  // Usa la conexión global
        if (!$this->getConnectionStatus()) {
            die("Conexión fallida a la base de datos.");
        }
        // Consulta SQL para insertar un nuevo entrenador
        $query = $conn->prepare("INSERT INTO entrenadores (nombre, especialidad, descripcion, foto_url) 
                                 VALUES (:nombre, :especialidad, :descripcion, :foto_url)");
        // Ejecuta la consulta con los valores proporcionados
        return $query->execute([
            'nombre' => $nombre, 
            'especialidad' => $especialidad, 
            'descripcion' => $descripcion, 
            'foto_url' => $foto_url  // Guarda la URL de la imagen
        ]);
    }
    
    public function updateEntrenador($id, $nombre, $especialidad, $descripcion, $foto_url) {// Función para actualizar un entrenador existente
        global $conn;                                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("UPDATE entrenadores SET nombre = :nombre, especialidad = :especialidad, descripcion = :descripcion, foto_url = :foto_url WHERE id = :id"); // Consulta SQL para actualizar los datos de un entrenador
        return $query->execute([
            'nombre' => $nombre, 
            'especialidad' => $especialidad, 
            'descripcion' => $descripcion, 
            'foto_url' => $foto_url, 
            'id' => $id
        ]);                                                                                 // Ejecuta la consulta de actualización
    }

    public function deleteEntrenador($id) {                                                 // Función para eliminar un entrenador
        global $conn;                                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("DELETE FROM horarios WHERE entrenador_id = :id");          // Eliminar los horarios asociados al entrenador
        $query->execute(['id' => $id]);                                                     // Ejecuta la eliminación de horarios asociados
        $query = $conn->prepare("DELETE FROM entrenadores WHERE id = :id");                 // Eliminar el entrenador de la base de datos
        return $query->execute(['id' => $id]);                                              // Ejecuta la eliminación del entrenador
    }
}
?>
