<?php
// Función para sanitizar datos
function sanitize($data)
{
    return htmlspecialchars(strip_tags(trim($data)));
}

// Redirigir dinámicamente
function redirect($url)
{
    header("Location: $url");
    exit();
}

// Mostrar errores personalizados
function showError($message)
{
    die("<h1>Error</h1><p>$message</p>");
}
