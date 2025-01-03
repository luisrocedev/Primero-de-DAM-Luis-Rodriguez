<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: ../../login.php");
    exit();
}

include '../../includes/db.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = $conn->prepare("DELETE FROM blog WHERE id = :id");
    $query->execute(['id' => $id]);
}

header("Location: index.php");
exit();
?>
