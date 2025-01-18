<?php
require_once '../backend/controllers/Controller.php';

$validRoutes = ['home', 'news'];

$route = isset($_GET['route']) ? $_GET['route'] : 'home';

if (in_array($route, $validRoutes)) {
    Controller::loadView('frontend', $route);
} else {
    Controller::loadView('frontend', '404');
}
