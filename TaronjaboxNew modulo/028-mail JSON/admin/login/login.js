document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('loginForm');
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const response = await fetch(form.action, {
            method: 'POST',
            body: formData,
        });
        const result = await response.json();
        if (result.success) {
            window.location.href = '../dashboard/index.php';
        } else {
            document.getElementById('error-message').innerText = result.message;
        }
    });
});