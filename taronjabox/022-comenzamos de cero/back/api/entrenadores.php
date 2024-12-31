<?php
header('Content-Type: application/json');
include_once '../controllers/EntrenadoresControlador.php';
include_once '../includes/db.php';

$EntrenadoresControlador = new EntrenadoresControlador($conn);

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $entrenadores = $EntrenadoresControlador->getAllEntrenadores();
    echo json_encode($entrenadores);
}
?>
