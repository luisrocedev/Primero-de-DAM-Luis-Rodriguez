<?php
require_once '../../models/NewsModel.php';

class NewsController
{
    private $model;

    public function __construct()
    {
        $this->model = new NewsModel();
    }

    public function list()
    {
        return $this->model->getAllNews();
    }

    public function create($titulo, $contenido, $imagen, $fecha_evento)
    {
        return $this->model->createNews($titulo, $contenido, $imagen, $fecha_evento);
    }

    public function get($id)
    {
        return $this->model->getNewsById($id);
    }

    public function update($id, $titulo, $contenido, $imagen, $fecha_evento)
    {
        return $this->model->updateNews($id, $titulo, $contenido, $imagen, $fecha_evento);
    }

    public function delete($id)
    {
        return $this->model->deleteNews($id);
    }
}
