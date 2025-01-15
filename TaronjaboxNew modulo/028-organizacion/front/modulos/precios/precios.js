document.addEventListener('DOMContentLoaded', async () => {
    const container = document.getElementById('pricePlans');

    const loadPrices = async () => {
        try {
            const response = await fetch('../../../backend/routes/precios.php'); // URL de la API
            const prices = await response.json();

            // Renderizar los planes de precios
            container.innerHTML = prices.map(price => `
                <div class="price-plan">
                    <h2>${price.nombre_plan}</h2>
                    <p>${price.descripcion}</p>
                    <p><strong>Precio:</strong> $${price.precio}</p>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar los precios:', error);
            container.innerHTML = '<p>Error al cargar los precios.</p>';
        }
    };

    await loadPrices();
});
