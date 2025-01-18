<?php

/**
 * Script para generar y actualizar la documentación dinámica del proyecto.
 */

$projectPath = __DIR__;
$docFile = $projectPath . '/documentacion_dinamica.md';
$filesToScan = [
    $projectPath . '/backend/models', // Escanear modelos
    $projectPath . '/backend/controllers', // Escanear controladores del backend
    $projectPath . '/admin/controllers', // Escanear controladores del admin
];

// Inicializar contenido del archivo de documentación
$docContent = "# Documentación Dinámica del Proyecto: TaronjaBox Valencia\n\n";
$docContent .= "## Descripción del Proyecto\n";
$docContent .= "TaronjaBox Valencia es una plataforma web desarrollada con una estructura modular basada en el patrón MVC.\n";
$docContent .= "Está diseñada para gestionar de manera dinámica contenido relacionado con un centro de crossfit.\n\n";
$docContent .= "---\n\n";
$docContent .= "## Docstrings en el Código\n\n";
$docContent .= "*(Actualizado el: " . date('Y-m-d H:i:s') . ")*\n\n";

foreach ($filesToScan as $path) {
    if (is_dir($path)) {
        $files = glob($path . '/*.php');

        foreach ($files as $file) {
            $fileContent = file_get_contents($file);
            preg_match_all('/\/\*\*([\s\S]*?)\*\//', $fileContent, $matches, PREG_SET_ORDER);

            if (!empty($matches)) {
                $docContent .= "### Archivo: `" . basename($file) . "`\n";
                foreach ($matches as $match) {
                    $docString = trim($match[1]);
                    preg_match('/\*\s+(.*?)(\n|\r|$)/', $docString, $functionMatch);
                    $description = $functionMatch[1] ?? 'Descripción no encontrada';
                    $docContent .= "- " . htmlspecialchars($description) . "\n";
                }
                $docContent .= "\n";
            }
        }
    }
}

// Guardar el archivo actualizado
file_put_contents($docFile, $docContent);

echo "Documentación generada correctamente en: $docFile\n";
