<?php
require_once '../models/Precio.php';

class PrecioController {
    private $precio;

    public function __construct() {
        $this->precio = new Precio();
    }

    public function handleRequest() {
        $method = $_SERVER['REQUEST_METHOD'];
        switch ($method) {
            case 'GET':
                echo json_encode($this->precio->getAllPrices());
                break;
            case 'POST':
                $nombre_plan = $_POST['nombre_plan'] ?? '';
                $descripcion = $_POST['descripcion'] ?? '';
                $precio = $_POST['precio'] ?? 0;
                echo json_encode(['success' => $this->precio->addPrice($nombre_plan, $descripcion, $precio)]);
                break;
            case 'DELETE':
                $id = $_GET['id'] ?? 0;
                echo json_encode(['success' => $this->precio->deletePrice($id)]);
                break;
        }
    }
}
?>
