<?php
require_once __DIR__ . '/../../../helpers/BaseModel.php';

class AdminListEntrenadorModel extends BaseModel {
    public function getAllEntrenadores() {
        return $this->fetchAll('entrenadores');
    }
}
?>
