<?php
function runSEOTool($url)
{
    // Escapamos la URL para evitar problemas
    $escapedUrl = escapeshellarg($url);

    // Ruta al archivo Python
    $pythonScript = __DIR__ . '/seo_checker.py';

    // Comando para ejecutar el script
    $command = "python3 $pythonScript $escapedUrl";

    // Ejecutamos el comando
    $output = shell_exec($command);

    // Retornamos el resultado
    return nl2br($output);
}
