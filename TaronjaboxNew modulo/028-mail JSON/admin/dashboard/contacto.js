document.addEventListener('DOMContentLoaded', () => {
    const messagesContainer = document.getElementById('messagesContainer');

    const loadMessages = async () => {
        try {
            const response = await fetch('../../../../backend/routes/contacto.php');
            const messages = await response.json();
            messagesContainer.innerHTML = messages.map(message => `
                <div>
                    <p><strong>${message.nombre}</strong> (${message.email})</p>
                    <p>${message.mensaje}</p>
                    <p><em>${message.creado_en}</em></p>
                    <button onclick="deleteMessage(${message.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar mensajes:', error);
        }
    };

    window.deleteMessage = async (id) => {
        try {
            const response = await fetch(`../../../backend/routes/contacto.php?id=${id}`, {
                method: 'DELETE'
            });
            const result = await response.json();
            if (result.success) {
                loadMessages();
            } else {
                console.error('Error al eliminar el mensaje:', result.message);
            }
        } catch (error) {
            console.error('Error al eliminar el mensaje:', error);
        }
    };

    loadMessages();
});
