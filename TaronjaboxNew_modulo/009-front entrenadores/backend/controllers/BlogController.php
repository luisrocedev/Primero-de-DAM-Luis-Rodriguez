<?php
require_once '../models/Blog.php';

class BlogController {
    private $blog;

    public function __construct() {
        $this->blog = new Blog();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'GET':
                echo json_encode($this->blog->getAllPosts());
                break;

            case 'POST':
                $titulo = $_POST['titulo'] ?? '';
                $contenido = $_POST['contenido'] ?? '';
                echo json_encode(['success' => $this->blog->addPost($titulo, $contenido)]);
                break;

            case 'PUT': // Editar una publicación existente
                parse_str(file_get_contents("php://input"), $_PUT);
                $id = $_PUT['id'] ?? 0;
                $titulo = $_PUT['titulo'] ?? '';
                $contenido = $_PUT['contenido'] ?? '';
                echo json_encode(['success' => $this->blog->updatePost($id, $titulo, $contenido)]);
                break;
                                
            case 'DELETE':
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->blog->deletePost($id)]);
                break;
        }
    }
}
?>
