<?php
include_once __DIR__ . '/../includes/db.php';                               // Incluye la conexión a la base de datos desde el archivo db.php

class BlogController {
    public function getConnectionStatus() {                                 // Función para comprobar la conexión
        global $conn;                                                       // Utiliza la variable global $conn para la conexión
        if (!$conn) {                                                       // Si la conexión no está activa
            return false;                                                   // Devuelve false indicando que la conexión falló
        }
        return true;                                                        // Si la conexión está activa, devuelve true
    }

    public function getAllPosts() {                                         // Función para obtener todas las entradas del blog
        global $conn;                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->query("SELECT * FROM blog ORDER BY fecha DESC");    // Consulta SQL para obtener todas las entradas del blog ordenadas por fecha (de más reciente a más antigua)
        return $query->fetchAll(PDO::FETCH_ASSOC);                          // Devuelve todas las entradas como un arreglo asociativo
    }

    public function getPostById($id) {                                      // Función para obtener una entrada específica por su ID
        global $conn;                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("SELECT * FROM blog WHERE id = :id");       // Consulta SQL para obtener una entrada por su ID
        $query->execute(['id' => $id]);                                     // Ejecuta la consulta pasando el ID
        return $query->fetch(PDO::FETCH_ASSOC);                             // Devuelve la entrada como un arreglo asociativo
    }

    public function createPost($titulo, $contenido, $autor) {               // Función para crear una nueva entrada en el blog
        global $conn;                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                    // Termina la ejecución con un mensaje de error
        }
        $fecha = date('Y-m-d H:i:s');                                       // Establece la fecha actual para la entrada del blog
        $query = $conn->prepare("INSERT INTO blog (titulo, contenido, autor, fecha) VALUES (:titulo, :contenido, :autor, :fecha)"); // Consulta SQL para insertar una nueva entrada en la base de datos
        return $query->execute(['titulo' => $titulo, 'contenido' => $contenido, 'autor' => $autor, 'fecha' => $fecha]);             // Ejecuta la consulta y devuelve el resultado
    }

    public function updatePost($id, $titulo, $contenido, $autor) {          // Función para actualizar una entrada existente en el blog
        global $conn;                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("UPDATE blog SET titulo = :titulo, contenido = :contenido, autor = :autor WHERE id = :id"); // Consulta SQL para actualizar una entrada existente en la base de datos
        return $query->execute(['titulo' => $titulo, 'contenido' => $contenido, 'autor' => $autor, 'id' => $id]);           // Ejecuta la consulta de actualización
    }

    public function deletePost($id) {                                       // Función para eliminar una entrada del blog
        global $conn;                                                       // Utiliza la conexión global
        if (!$this->getConnectionStatus()) {                                // Verificar que la conexión se haya establecido, es decir,si no hay conexión
            die("Conexión fallida a la base de datos.");                    // Termina la ejecución con un mensaje de error
        }
        $query = $conn->prepare("DELETE FROM blog WHERE id = :id");         // Consulta SQL para eliminar una entrada del blog de la base de datos
        return $query->execute(['id' => $id]);                              // Ejecuta la consulta para eliminar la entrada
    }
}
?>