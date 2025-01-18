<?php
require_once '../../models/GalleryModel.php';

class GalleryController
{
    private $model;

    public function __construct()
    {
        $this->model = new GalleryModel();
    }

    public function list()
    {
        return $this->model->getAllImages();
    }

    public function upload($imagen, $descripcion)
    {
        return $this->model->uploadImage($imagen, $descripcion);
    }

    public function get($id)
    {
        return $this->model->getImageById($id);
    }

    public function update($id, $imagen, $descripcion)
    {
        return $this->model->updateImage($id, $imagen, $descripcion);
    }

    public function delete($id)
    {
        return $this->model->deleteImage($id);
    }
}
