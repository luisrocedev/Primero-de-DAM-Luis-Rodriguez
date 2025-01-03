<?php
header('Content-Type: application/json');
include_once '../controllers/BlogControlador.php';
include_once '../includes/db.php';

$blogControlador = new BlogControlador($conn);

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $posts = $blogControlador->getAllPosts();
    echo json_encode($posts);
}
?>
