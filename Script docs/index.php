<!doctype html>
<html>

<head>
    <style>
        /* General styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        h1 {
            text-align: center;
            margin: 0;
            padding: 1rem;
            background-color: #007BFF;
            color: white;
        }

        .sidebar {
            width: 25%;
            background-color: #f8f9fa;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
        }

        .sidebar h2 {
            padding: 1rem;
            background-color: #e9ecef;
            margin: 0;
            font-size: 1.2rem;
            text-transform: uppercase;
            color: #495057;
        }

        .toc {
            list-style-type: none;
            padding: 1rem;
            margin: 0;
        }

        .toc li {
            margin-bottom: 0.5rem;
        }

        .toc li a {
            text-decoration: none;
            color: #007BFF;
            padding: 0.5rem;
            display: block;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .toc li a:hover {
            background-color: #e9ecef;
        }

        .content {
            width: 75%;
            padding: 2rem;
            overflow-y: auto;
            background-color: #ffffff;
        }

        pre {
            font-family: 'Courier New', monospace;
            background-color: #f1f1f1;
            padding: 1rem;
            border-radius: 8px;
            border: 1px solid #dee2e6;
            overflow-x: auto;
            white-space: pre-wrap;
        }

        .loading {
            color: #6c757d;
            font-size: 1.1rem;
            text-align: center;
        }

        .error {
            color: red;
            font-size: 1.1rem;
            text-align: center;
        }

        /* Animación de deslizamiento */
        .nested {
            list-style: none;
            padding-left: 20px;
            margin: 0;
            overflow: hidden;
            max-height: 0;
            transition: max-height 0.3s ease-out;
        }

        .nested.open {
            max-height: 500px;
            /* Lo suficientemente grande para contener el contenido */
            transition: max-height 0.3s ease-in;
        }

        .folder {
            cursor: pointer;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .folder::before {
            content: '📁';
            margin-right: 5px;
        }

        .folder.open::before {
            content: '📂';
            /* Cambia el icono al abrir */
        }
    </style>
    <script>
        // Función para manejar la expansión/contracción de carpetas
        function toggleFolder(event) {
            const folder = event.currentTarget;
            const nestedList = folder.nextElementSibling;

            if (nestedList.classList.contains('open')) {
                nestedList.classList.remove('open'); // Contraer
            } else {
                nestedList.classList.add('open'); // Expandir
            }
        }

        // Función para cargar el contenido del archivo con AJAX
        function loadFile(filePath) {
            const contentDiv = document.getElementById('content');
            contentDiv.innerHTML = '<p class="loading">Cargando contenido...</p>';

            fetch(filePath)
                .then(response => {
                    if (!response.ok) throw new Error(`Error al cargar el archivo: ${response.status}`);
                    return response.text();
                })
                .then(data => {
                    contentDiv.innerHTML = `<pre>${data}</pre>`;
                })
                .catch(error => {
                    contentDiv.innerHTML = `<p class="error">Error al cargar el archivo: ${error.message}</p>`;
                });
        }
    </script>
</head>

<body>
    <div class="sidebar">
        <h1>Documentación</h1>
        <h2>Índice</h2>
        <ul class="toc">
            <?php
            // Ruta a la carpeta 'docs'
            $baseDir = 'documentacion/docs';

            // Función recursiva para procesar las carpetas y mostrar los archivos .txt
            function processFolderForHtml($source)
            {
                $html = "";
                $items = scandir($source);
                foreach ($items as $item) {
                    if ($item === '.' || $item === '..') {
                        continue;
                    }

                    $sourcePath = $source . DIRECTORY_SEPARATOR . $item;
                    if (is_dir($sourcePath)) {
                        // Carpeta
                        $html .= "<li><div class='folder' onclick='toggleFolder(event)'>$item</div>";
                        $html .= "<ul class='nested'>";
                        $html .= processFolderForHtml($sourcePath);
                        $html .= "</ul></li>";
                    } else if (is_file($sourcePath) && pathinfo($item, PATHINFO_EXTENSION) === 'txt') {
                        // Archivo
                        $fileNameWithoutExtension = pathinfo($item, PATHINFO_FILENAME);
                        $publicPath = str_replace(DIRECTORY_SEPARATOR, '/', $sourcePath); // Convierte rutas a formato web
                        $html .= "<li><a href='#' onclick=\"loadFile('$publicPath'); return false;\">$fileNameWithoutExtension</a></li>";
                    }
                }
                return $html;
            }

            echo processFolderForHtml($baseDir);
            ?>
        </ul>
    </div>

    <div class="content" id="content">
        <h2>Selecciona un archivo para visualizar</h2>
        <p>El contenido del archivo aparecerá aquí.</p>
    </div>
</body>

</html>