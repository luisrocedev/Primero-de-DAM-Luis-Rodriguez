<?php
require_once 'AdminController.php';
require_once 'AdminModel.php';

use Backend\Modules\Admins\AdminController;
use Backend\Modules\Admins\AdminModel;

$db = connectDB();
$controller = new AdminController($db);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
    $username = sanitize($_POST['username']);
    $password = sanitize($_POST['password']);

    if ($controller->login($username, $password)) {
        redirect('/admin/dashboard.php');
    } else {
        echo "Usuario o contraseña incorrectos.";
    }
}
