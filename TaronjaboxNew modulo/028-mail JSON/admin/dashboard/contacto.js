document.addEventListener('DOMContentLoaded', () => {
    const messagesContainer = document.getElementById('messagesContainer');

    // Cargar mensajes existentes
    const loadMessages = async () => {
        try {
            const response = await fetch('../../../backend/routes/contacto.php');
            const messages = await response.json();

            messagesContainer.innerHTML = messages.map(message => `
                <div class="message">
                    <p><strong>${message.nombre}</strong> (${message.email})</p>
                    <p>${message.mensaje}</p>
                    <p><small>${message.creado_en}</small></p>
                    <button onclick="window.deleteMessage(${message.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar los mensajes:', error);
        }
    };

    // Eliminar mensaje
    window.deleteMessage = async (id) => {
        console.log('Intentando eliminar mensaje con ID:', id); // Depuración

        try {
            const response = await fetch('../../../backend/routes/contacto.php', {
                method: 'DELETE',
                body: new URLSearchParams({ id }), // Construir el cuerpo de la solicitud con el ID
            });

            const result = await response.json();
            if (result.success) {
                console.log('Mensaje eliminado correctamente.');
                loadMessages(); // Recargar los mensajes después de eliminar
            } else {
                console.error('Error al eliminar el mensaje:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error al eliminar el mensaje:', error);
        }
    };

    // Inicializar la carga de mensajes
    loadMessages();
});
