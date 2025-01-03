<?php
header('Content-Type: application/json');
include_once '../controllers/HorariosControlador.php';
include_once '../includes/db.php';

$HorariosControlador = new HorariosControlador($conn);

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $horarios = $HorariosControlador->getAllHorarios();
    echo json_encode($horarios);
}
?>
