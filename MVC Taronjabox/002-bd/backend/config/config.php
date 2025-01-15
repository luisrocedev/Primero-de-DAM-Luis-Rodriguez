<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'taronjabox');  // Cambia según tu base de datos
define('DB_USER', 'taronjabox');        // Cambia según tu configuración
define('DB_PASS', '');            // Cambia según tu configuración

function connectDB()
{
    try {
        $pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        return $pdo;
    } catch (PDOException $e) {
        die('Error al conectar con la base de datos: ' . $e->getMessage());
    }
}
