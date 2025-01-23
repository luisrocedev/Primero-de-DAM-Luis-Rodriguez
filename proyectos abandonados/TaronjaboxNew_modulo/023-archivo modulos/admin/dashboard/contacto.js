document.addEventListener('DOMContentLoaded', () => {
    const messagesContainer = document.getElementById('messagesContainer');

    // Cargar mensajes existentes
    const loadMessages = async () => {
        try {
            const response = await fetch('../../backend/routes/contacto.php');
            const messages = await response.json();

            messagesContainer.innerHTML = messages.map(message => `
                <div class="message">
                    <h3>De: ${message.nombre} (${message.email})</h3>
                    <p>${message.mensaje}</p>
                    <p><small>Enviado: ${new Date(message.creado_en).toLocaleString()}</small></p>
                    <button onclick="deleteMessage(${message.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar los mensajes:', error);
        }
    };

    // Eliminar mensaje
    window.deleteMessage = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/contacto.php?id=${id}`, {
                method: 'DELETE',
            });

            const result = await response.json();
            if (result.success) {
                loadMessages(); // Recargar los mensajes
            } else {
                console.error('Error al eliminar el mensaje:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error al eliminar el mensaje:', error);
        }
    };

    loadMessages();
});
