export function renderModal(title, content) {
    const modal = document.createElement('div');
    modal.classList.add('modal');
    modal.innerHTML = `
        <div class="modal-content">
            <h2>${title}</h2>
            <p>${content}</p>
            <button id="close-modal">Cerrar</button>
        </div>
    `;
    document.body.appendChild(modal);

    document.getElementById('close-modal').addEventListener('click', () => {
        modal.remove();
    });
}
