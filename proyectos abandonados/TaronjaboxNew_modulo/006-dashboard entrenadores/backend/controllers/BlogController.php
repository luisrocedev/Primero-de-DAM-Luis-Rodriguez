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
            case 'DELETE':
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->blog->deletePost($id)]);
                break;
        }
    }
}
?>
