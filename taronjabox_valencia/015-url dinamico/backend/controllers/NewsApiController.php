<?php
require_once '../models/NewsModel.php';

header('Content-Type: application/json');

class NewsApiController
{
    private $model;

    public function __construct()
    {
        $this->model = new NewsModel();
    }

    public function getAllNews()
    {
        $news = $this->model->getAllNews();
        echo json_encode($news);
    }

    public function getSingleNews($id)
    {
        $news = $this->model->getNewsById($id);
        echo json_encode($news);
    }
}

// Manejar las solicitudes
$controller = new NewsApiController();

if (isset($_GET['action'])) {
    $action = $_GET['action'];
    $id = isset($_GET['id']) ? intval($_GET['id']) : null;

    switch ($action) {
        case 'list':
            $controller->getAllNews();
            break;
        case 'single':
            if ($id) {
                $controller->getSingleNews($id);
            } else {
                echo json_encode(['error' => 'ID no especificado.']);
            }
            break;
        default:
            echo json_encode(['error' => 'Acción no válida.']);
    }
} else {
    echo json_encode(['error' => 'No se especificó ninguna acción.']);
}
