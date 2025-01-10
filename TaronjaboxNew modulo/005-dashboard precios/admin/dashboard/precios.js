document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('addPriceForm');
    const pricesContainer = document.getElementById('pricesContainer');

    // Cargar planes existentes
    const loadPrices = async () => {
        const response = await fetch('../../backend/routes/precios.php');
        const prices = await response.json();
        pricesContainer.innerHTML = prices.map(price => `
            <div class="price">
                <h3>${price.nombre_plan}</h3>
                <p>${price.descripcion}</p>
                <p>Precio: $${price.precio}</p>
                <button onclick="deletePrice(${price.id})">Eliminar</button>
            </div>
        `).join('');
    };

    // Añadir plan
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        await fetch('../../backend/routes/precios.php', {
            method: 'POST',
            body: formData
        });
        form.reset();
        loadPrices();
    });

    // Eliminar plan
    window.deletePrice = async (id) => {
        await fetch(`../../backend/routes/precios.php?id=${id}`, {
            method: 'DELETE'
        });
        loadPrices();
    };

    loadPrices();
});
