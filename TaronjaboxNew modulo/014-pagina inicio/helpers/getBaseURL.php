<?php
// Función para obtener la URL base del proyecto
function getBaseURL() {
    // Detecta automáticamente la URL base según la ubicación del script
    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http";
    $host = $_SERVER['HTTP_HOST'];
    $scriptDir = dirname($_SERVER['SCRIPT_NAME']);
    $baseURL = rtrim("$protocol://$host$scriptDir", '/');
    return $baseURL;
}
?>
