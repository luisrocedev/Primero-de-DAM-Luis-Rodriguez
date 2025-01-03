<?php
// Incluir la conexión a la base de datos
include_once '../includes/db.php';

class BlogController {

    // Función para obtener todas las entradas del blog
    public function getAllPosts() {
        global $conn;

        // Verificar que la conexión se haya establecido
        if (!$conn) {
            die("Conexión fallida a la base de datos.");
        }

        // Consulta para obtener todas las entradas del blog ordenadas por fecha
        $query = $conn->query("SELECT * FROM blog ORDER BY fecha DESC");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    // Función para obtener una entrada específica por su ID
    public function getPostById($id) {
        global $conn;

        // Consulta para obtener una entrada por su ID
        $query = $conn->prepare("SELECT * FROM blog WHERE id = :id");
        $query->execute(['id' => $id]);
        return $query->fetch(PDO::FETCH_ASSOC);
    }

    // Función para crear una nueva entrada en el blog
    public function createPost($titulo, $contenido, $autor) {
        global $conn;

        // Establecer la fecha actual
        $fecha = date('Y-m-d H:i:s');

        // Insertar la nueva entrada en la base de datos
        $query = $conn->prepare("INSERT INTO blog (titulo, contenido, autor, fecha) VALUES (:titulo, :contenido, :autor, :fecha)");
        return $query->execute(['titulo' => $titulo, 'contenido' => $contenido, 'autor' => $autor, 'fecha' => $fecha]);
    }

    // Función para actualizar una entrada existente en el blog
    public function updatePost($id, $titulo, $contenido, $autor) {
        global $conn;

        // Actualizar la entrada en la base de datos
        $query = $conn->prepare("UPDATE blog SET titulo = :titulo, contenido = :contenido, autor = :autor WHERE id = :id");
        return $query->execute(['titulo' => $titulo, 'contenido' => $contenido, 'autor' => $autor, 'id' => $id]);
    }

    // Función para eliminar una entrada del blog
    public function deletePost($id) {
        global $conn;

        // Eliminar la entrada de la base de datos
        $query = $conn->prepare("DELETE FROM blog WHERE id = :id");
        return $query->execute(['id' => $id]);
    }
}
?>
