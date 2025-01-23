<?php

/**
 * Crea una nueva entrada en el blog y la inserta en la base de datos.
 *
 * Este archivo maneja la creación de una nueva entrada de blog a través de un formulario.
 * El formulario recopila el título y el contenido de la entrada, los cuales se insertan en
 * la tabla `blog_posts` de la base de datos. Si la inserción es exitosa, se muestra un
 * mensaje de éxito, de lo contrario, se muestra un mensaje de error.
 *
 * La operación se realiza con seguridad utilizando sentencias preparadas para evitar
 * inyecciones SQL.
 *
 * @param string $title   Título de la entrada del blog.
 * @param string $content Contenido de la entrada del blog.
 *
 * @return void
 */

// Inicia la sesión para asegurar que se pueda verificar si el usuario está autenticado.
session_start();

// Incluir el archivo de conexión a la base de datos.
include '../config/db_connect.php';

// Verifica si el formulario ha sido enviado (cuando el método de la solicitud es POST).
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Recibe el título y el contenido del formulario.
    $title = $_POST['title'];
    $content = $_POST['content'];

    // Prepara la consulta SQL para insertar la nueva entrada en la base de datos.
    $sql = "INSERT INTO blog_posts (title, content) VALUES (?, ?)";

    // Prepara la consulta utilizando parámetros seguros para evitar SQL injection.
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ss', $title, $content);  // Asocia los parámetros de entrada con las variables $title y $content.

    // Ejecuta la consulta SQL. Si la ejecución es exitosa, muestra un mensaje de éxito.
    if ($stmt->execute()) {
        // Mensaje si la entrada de blog se ha creado correctamente.
        $message = "Entrada de blog creada exitosamente.";
    } else {
        // Mensaje si hubo un error al crear la entrada en la base de datos.
        $message = "Error al crear la entrada de blog.";
    }
}
?>

<!-- Formulario para crear una nueva entrada de blog -->
<form method="POST" action="create.php">
    <label for="title">Título:</label>
    <!-- Campo de entrada para el título del blog -->
    <input type="text" id="title" name="title" required>

    <label for="content">Contenido:</label>
    <!-- Área de texto para ingresar el contenido del blog -->
    <textarea id="content" name="content" required></textarea>

    <!-- Botón para enviar el formulario y crear la entrada de blog -->
    <button type="submit">Crear Entrada de Blog</button>
</form>

<?php
// Si hay un mensaje (es decir, si se ha creado o fallado la entrada), lo mostramos al usuario.
if (isset($message)) {
    echo "<p>$message</p>";
}
?>