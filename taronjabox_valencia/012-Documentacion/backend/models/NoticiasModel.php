<?php
require_once 'Database.php';
/**
 * Clase NoticiasModel
 *
 * Esta clase gestiona todas las operaciones relacionadas con las noticias en la base de datos.
 */
class NoticiasModel
{
    private $db;
    /**
     * Constructor de la clase.
     *
     * Establece la conexión con la base de datos.
     */
    public function __construct()
    {
        $this->db = new Database();
    }
    /**
     * Obtiene todas las noticias de la base de datos.
     *
     * @return array Arreglo asociativo con los datos de las noticias.
     */
    public function getAllNoticias()
    {
        $query = "SELECT * FROM noticias_eventos ORDER BY fecha_creacion DESC";
        return $this->db->query($query)->fetch_all(MYSQLI_ASSOC);
    }
    /**
     * Obtiene una noticia por su ID.
     *
     * @param int $id El ID de la noticia a obtener.
     * @return array|null Arreglo asociativo con los datos de la noticia o null si no existe.
     */
    public function getNoticiaById($id)
    {
        $query = "SELECT * FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        $stmt->execute();
        return $stmt->get_result()->fetch_assoc();
    }
    /**
     * Crea una nueva noticia en la base de datos.
     *
     * @param string $titulo El título de la noticia.
     * @param string $contenido El contenido de la noticia.
     * @param string|null $imagen URL de la imagen asociada (opcional).
     * @param string $fecha_evento La fecha del evento asociado.
     * @return bool True si la inserción fue exitosa, False en caso contrario.
     */
    public function createNoticia($titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "INSERT INTO noticias_eventos (titulo, contenido, imagen, fecha_evento) VALUES (?, ?, ?, ?)";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssss', $titulo, $contenido, $imagen, $fecha_evento);
        return $stmt->execute();
    }
    /**
     * Actualiza una noticia existente en la base de datos.
     *
     * @param int $id El ID de la noticia a actualizar.
     * @param string $titulo El nuevo título de la noticia.
     * @param string $contenido El nuevo contenido de la noticia.
     * @param string|null $imagen La nueva URL de la imagen asociada (opcional).
     * @param string $fecha_evento La nueva fecha del evento asociado.
     * @return bool True si la actualización fue exitosa, False en caso contrario.
     */
    public function updateNoticia($id, $titulo, $contenido, $imagen, $fecha_evento)
    {
        $query = "UPDATE noticias_eventos SET titulo = ?, contenido = ?, imagen = ?, fecha_evento = ? WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('ssssi', $titulo, $contenido, $imagen, $fecha_evento, $id);
        return $stmt->execute();
    }
    /**
     * Elimina una noticia de la base de datos.
     *
     * @param int $id El ID de la noticia a eliminar.
     * @return bool True si la eliminación fue exitosa, False en caso contrario.
     */
    public function deleteNoticia($id)
    {
        $query = "DELETE FROM noticias_eventos WHERE id = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param('i', $id);
        return $stmt->execute();
    }
}
