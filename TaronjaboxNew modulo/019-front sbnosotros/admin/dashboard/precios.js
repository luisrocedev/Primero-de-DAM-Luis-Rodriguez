document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('priceForm');
    const pricesContainer = document.getElementById('pricesContainer');
    const formButton = document.getElementById('formButton');
    let editMode = false; // Indica si estamos editando o añadiendo

    // Cargar precios existentes
    const loadPrices = async () => {
        try {
            const response = await fetch('../../backend/routes/precios.php');
            const prices = await response.json();
            pricesContainer.innerHTML = prices.map(price => `
                <div class="price">
                    <h3>${price.nombre_plan}</h3>
                    <p>${price.descripcion}</p>
                    <p>Precio: $${price.precio}</p>
                    <button onclick="editPrice(${price.id}, '${price.nombre_plan}', '${price.descripcion}', ${price.precio})">Editar</button>
                    <button onclick="deletePrice(${price.id})">Eliminar</button>
                </div>
            `).join('');
        } catch (error) {
            console.error('Error al cargar precios:', error);
        }
    };

    // Editar precio
    window.editPrice = (id, nombre_plan, descripcion, precio) => {
        document.getElementById('id').value = id;
        document.getElementById('nombre_plan').value = nombre_plan;
        document.getElementById('descripcion').value = descripcion;
        document.getElementById('precio').value = precio;
        formButton.textContent = 'Actualizar Precio';
        editMode = true;
    };

    // Añadir o actualizar precio
    form.addEventListener('submit', async (e) => {
        e.preventDefault();
        const formData = new FormData(form);
        const method = editMode ? 'PUT' : 'POST'; // PUT para actualizar, POST para añadir
        const body = method === 'PUT' ? new URLSearchParams(formData) : formData;

        try {
            const response = await fetch('../../backend/routes/precios.php', {
                method: method,
                body: body
            });

            const result = await response.json();
            console.log('Respuesta del servidor:', result); // Depuración

            if (result.success) {
                form.reset();
                formButton.textContent = 'Añadir Precio';
                editMode = false;
                loadPrices();
            } else {
                console.error('Error en la solicitud:', result.message || 'Error desconocido');
            }
        } catch (error) {
            console.error('Error en la solicitud al servidor:', error);
        }
    });

    // Eliminar precio
    window.deletePrice = async (id) => {
        try {
            const response = await fetch(`../../backend/routes/precios.php?id=${id}`, {
                method: 'DELETE'
            });

            const result = await response.json();
            console.log('Precio eliminado:', result); // Depuración
            loadPrices();
        } catch (error) {
            console.error('Error al eliminar precio:', error);
        }
    };

    loadPrices();
});
