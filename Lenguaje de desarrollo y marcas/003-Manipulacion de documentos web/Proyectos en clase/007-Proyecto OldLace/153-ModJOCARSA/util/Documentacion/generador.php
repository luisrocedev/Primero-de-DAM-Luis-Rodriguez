<?php
function processFolder($source, $target) {
    // Ensure target folder exists
    if (!file_exists($target)) {
        mkdir($target, 0777, true); // Si no existe la carpeta de destino, la crea
    }

    // Scan the source directory
    $items = scandir($source); // Escanea la carpeta fuente

    foreach ($items as $item) {
        // Skip current and parent directory references
        if ($item === '.' || $item === '..') {
            continue; // Salta los directorios '.' y '..'
        }

        $sourcePath = $source . DIRECTORY_SEPARATOR . $item; // Ruta completa del archivo o carpeta fuente
        $targetPath = $target . DIRECTORY_SEPARATOR . $item; // Ruta completa del archivo o carpeta destino

        if (is_dir($sourcePath)) {
            // Si es un directorio, crea el directorio en el destino
            mkdir($targetPath, 0777, true);

            // Crea un archivo .txt vacío dentro de la carpeta
            $txtFilePath = $targetPath . DIRECTORY_SEPARATOR . $item . '.txt';
            file_put_contents($txtFilePath, '');

            // Recurre a la subcarpeta
            processFolder($sourcePath, $targetPath);
        } else if (is_file($sourcePath)) {
            // Si es un archivo, crea una carpeta con el mismo nombre del archivo (con extensión)
            $fileNameWithExtension = pathinfo($item, PATHINFO_BASENAME);
            $fileFolderPath = $target . DIRECTORY_SEPARATOR . $fileNameWithExtension;

            mkdir($fileFolderPath, 0777, true); // Crea la carpeta para el archivo

            // Crea un archivo .txt dentro de esta carpeta con el mismo nombre del archivo original
            $txtFilePath = $fileFolderPath . DIRECTORY_SEPARATOR . $fileNameWithExtension . '.txt';
            
            // Extrae el contenido de la docstring si está presente
            $docstringContent = extractDocstring($sourcePath);
            
            // Guarda el contenido extraído en el archivo .txt
            file_put_contents($txtFilePath, $docstringContent);
        }
    }
}

function extractDocstring($filePath) {
    $content = file_get_contents($filePath); // Obtiene el contenido del archivo
    $extension = pathinfo($filePath, PATHINFO_EXTENSION); // Obtiene la extensión del archivo

    switch ($extension) {
        case 'php':
            // Busca los comentarios de estilo PHPDoc
            if (preg_match('/<\\?php\\s*\\/\\*\\*(.*?)\\*\\//s', $content, $matches) ||
                preg_match('/<\\?php\\s*\\/\\*(.*?)\\*\\//s', $content, $matches)) {
                return trim($matches[1]);
            }
            break;

        case 'js':
        case 'css':
        case 'java':
        case 'c':
        case 'cpp':
            // Busca los comentarios de estilo /* ... */
            if (preg_match('/\\/\\*(.*?)\\*\\//s', $content, $matches)) {
                return trim($matches[1]);
            }
            break;

        case 'py':
            // Busca los docstrings de Python (""" ... """ o comentarios de una línea #)
            if (preg_match('/^\s*"""(.*?)"""/s', $content, $matches)) {
                return trim($matches[1]);
            } elseif (preg_match('/^\s*#\s*(.+)$/m', $content, $matches)) {
                return trim($matches[1]);
            }
            break;

        case 'html':
        case 'htm':
            // Busca los comentarios HTML <!-- ... -->
            if (preg_match('/<!--(.*?)-->/s', $content, $matches)) {
                return trim($matches[1]);
            }
            break;

        default:
            return ''; // Retorna vacío si no se encuentra docstring
    }

    return '';
}

// Ruta a la carpeta 'Admin' dentro de tu proyecto
$sourceFolder = realpath('../../Admin');  // Asegúrate de que 'Admin' sea con mayúscula

// Verifica si la ruta de la carpeta fuente existe
if ($sourceFolder === false || !is_dir($sourceFolder)) {
    echo "Error: The source folder does not exist. Please check the path.\n";
    echo "Source folder: $sourceFolder\n";  // Imprime la ruta absoluta
} else {
    echo "Source folder path: $sourceFolder\n";  // Imprime la ruta absoluta
    $targetFolder = 'Documentacion/docs/admin';  // Carpeta destino dentro de Documentacion
    processFolder($sourceFolder, $targetFolder);
}

echo "Processing complete!\n";
?>
