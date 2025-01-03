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

<script>
document.addEventListener('DOMContentLoaded', () => {
    const entriesContainer = document.getElementById('blog-entries');

    // Cargar entradas del blog
    fetch('../../../Back/api/blog.php')
        .then(response => response.json())
        .then(entries => {
            entriesContainer.innerHTML = '';
            entries.forEach(entry => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${entry.titulo}</td>
                    <td>${entry.contenido.substring(0, 50)}...</td>
                    <td>${entry.autor}</td>
                    <td>${entry.fecha}</td>
                    <td>
                        <button onclick="location.href='edit.php?id=${entry.id}'">Editar</button>
                        <button onclick="deleteEntry(${entry.id})">Eliminar</button>
                    </td>
                `;
                entriesContainer.appendChild(row);
            });
        })
        .catch(error => console.error('Error al cargar las entradas:', error));
});

// Función para eliminar una entrada
function deleteEntry(id) {
    if (confirm('¿Estás seguro de que deseas eliminar esta entrada?')) {
        fetch('../../../Back/api/blog.php', {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ id })
        })
        .then(response => response.json())
        .then(data => {
            alert(data.message);
            location.reload(); // Recargar la página para actualizar la lista
        })
        .catch(error => console.error('Error al eliminar la entrada:', error));
    }
}
</script>

<?php
// Incluir el footer
include_once '../../includes/footer.php';
?>
