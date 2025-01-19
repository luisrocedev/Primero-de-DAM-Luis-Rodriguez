const API_BASE_URL = "/backend/controllers/NoticiasController.php";

export async function getNoticias() {
    try {
        const response = await fetch(`${API_BASE_URL}?action=list`);
        if (!response.ok) throw new Error("Error al obtener las noticias");
        return await response.json();
    } catch (error) {
        console.error(error);
        return [];
    }
}

export async function createNoticia(noticia) {
    try {
        const response = await fetch(`${API_BASE_URL}?action=create`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(noticia),
        });
        if (!response.ok) throw new Error("Error al crear la noticia");
        return await response.json();
    } catch (error) {
        console.error(error);
        return null;
    }
}
