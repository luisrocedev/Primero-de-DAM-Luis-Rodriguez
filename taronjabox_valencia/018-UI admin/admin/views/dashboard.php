<?php
session_start();
if (!isset($_SESSION['admin_logged_in'])) {
    header('Location: ../login.php');
    exit;
}

$pageTitle = 'Inicio';
$view = 'dashboard-content.php';
require_once '../../admin/views/template.php';
