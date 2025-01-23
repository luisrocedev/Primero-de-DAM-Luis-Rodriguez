document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('contactForm');
    const responseMessage = document.getElementById('responseMessage');

    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);

        try {
            const response = await fetch('../../../backend/routes/contacto.php', {
                method: 'POST',
                body: formData,
            });

            const result = await response.json();
            if (result.success) {
                responseMessage.textContent = 'Mensaje enviado correctamente.';
                responseMessage.style.color = 'green';
                form.reset();
            } else {
                responseMessage.textContent = 'Error al enviar el mensaje.';
                responseMessage.style.color = 'red';
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
            responseMessage.textContent = 'Error al enviar el mensaje.';
            responseMessage.style.color = 'red';
        }
    });
});
