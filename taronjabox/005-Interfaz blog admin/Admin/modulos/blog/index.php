<?php
// Incluir el header
include_once '../../includes/header.php';
?>

<h1>Gestión del Blog</h1>

<div class="blog-container">
    <!-- Tabla para listar entradas -->
    <table>
        <thead>
            <tr>
                <th>Título</th>
                <th>Contenido</th>
                <th>Autor</th>
                <th>Fecha</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody id="blog-entries">
            <!-- Aquí se cargarán dinámicamente las entradas -->
        </tbody>
    </table>

    <!-- Botón para añadir una nueva entrada -->
    <button onclick="location.href='add.php'">Añadir Nueva Entrada</button>
</div>

<script src="../../js/blog.js"></script>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
