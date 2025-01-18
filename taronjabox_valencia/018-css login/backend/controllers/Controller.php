<?php
class Controller
{
    public static function loadView($folder, $view, $data = [])
    {
        $viewPath = __DIR__ . "/../../$folder/views/$view.php";

        if (file_exists($viewPath)) {
            // Extrae las variables del array $data para que estén disponibles en la vista
            extract($data);
            require_once $viewPath;
        } else {
            die("La vista '$view' no se encuentra en '$folder'.");
        }
    }
}
