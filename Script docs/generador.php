<?php

// Función para recorrer las carpetas del proyecto y generar archivos .txt con los docstrings
function processFolder($source, $target)
{
    echo "Procesando carpeta: $source\n";

    // Asegurarse de que la carpeta de destino exista
    if (!file_exists($target)) {
        if (!mkdir($target, 0777, true)) {
            throw new Exception("No se pudo crear la carpeta de destino: $target");
        }
    }

    // Obtener archivos PHP y CSS directamente
    $files = array_merge(
        glob($source . DIRECTORY_SEPARATOR . '*.php'),
        glob($source . DIRECTORY_SEPARATOR . '*.css')
    );

    foreach ($files as $file) {
        echo "Extrayendo docstring de: $file\n";
        $fileNameWithoutExtension = pathinfo($file, PATHINFO_FILENAME);
        $fileFolderPath = $target . DIRECTORY_SEPARATOR . $fileNameWithoutExtension . '.txt';

        $docstringContent = extractDocstring($file);

        // Guardar el contenido del docstring en el archivo .txt
        if (!file_put_contents($fileFolderPath, $docstringContent)) {
            throw new Exception("No se pudo escribir en el archivo: $fileFolderPath");
        }
    }

    // Procesar subcarpetas recursivamente
    $folders = glob($source . DIRECTORY_SEPARATOR . '*', GLOB_ONLYDIR);
    foreach ($folders as $folder) {
        echo "Procesando subcarpeta: $folder\n";
        $folderName = basename($folder);
        $newTarget = $target . DIRECTORY_SEPARATOR . $folderName;
        processFolder($folder, $newTarget);
    }
}

// Función para extraer el docstring de los archivos PHP y CSS
function extractDocstring($filePath)
{
    $content = file_get_contents($filePath);
    $extension = pathinfo($filePath, PATHINFO_EXTENSION);

    switch ($extension) {
        case 'php':
            // Buscar docstrings que comienzan con /** (comentarios de documentación)
            if (preg_match_all('/\/\*\*([\s\S]*?)\*\//', $content, $matches)) {
                return implode("\n\n", array_map('trim', $matches[1])); // Unir múltiples docstrings
            }
            break;

        case 'css':
            // Buscar comentarios que comienzan con /* (incluyendo docstrings)
            if (preg_match_all('/\/\*([\s\S]*?)\*\//', $content, $matches)) {
                return implode("\n\n", array_map('trim', $matches[1])); // Unir múltiples comentarios
            }
            break;

        default:
            return '';
    }

    return '';
}

// Usar la función para procesar la carpeta
$sourceFolder = '../darkorange/014-documentacion/'; // Ruta a tu carpeta de archivos PHP y CSS (ajústala según tu estructura)
$targetFolder = 'documentacion/docs/admin';  // Ruta de destino donde se almacenarán los archivos .txt

// Ejecutar la función de procesamiento
try {
    processFolder($sourceFolder, $targetFolder);
    echo "Procesamiento completado con éxito!\n";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
