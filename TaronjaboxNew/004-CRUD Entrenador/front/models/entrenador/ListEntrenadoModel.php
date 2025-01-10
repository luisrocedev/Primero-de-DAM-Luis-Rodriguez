<?php
require_once __DIR__ . '/../../../helpers/BaseModel.php';

class ListEntrenadorModel extends BaseModel {
    public function getAllEntrenadores() {
        return $this->fetchAll('entrenadores'); // Asume que la tabla se llama "entrenadores"
    }
}
?>
