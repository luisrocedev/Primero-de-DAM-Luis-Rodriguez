<?php
// Archivo: Back/includes/helpers.php

/**
 * Devuelve la URL base del proyecto dinámicamente.
 * Ejemplo de salida: http://localhost/Primero-de-DAM-Luis-Rodriguez/taronjabox/023-Css%20admin
 */
function getBaseURL() {
    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';
    $host = $_SERVER['HTTP_HOST'];
    $scriptDir = str_replace('\\', '/', dirname($_SERVER['SCRIPT_NAME'])); // Directorio del script
    $basePath = rtrim($scriptDir, '/modulos'); // Ajusta si tu carpeta raíz está en otro lugar
    return $protocol . '://' . $host . $basePath . '/';
}
