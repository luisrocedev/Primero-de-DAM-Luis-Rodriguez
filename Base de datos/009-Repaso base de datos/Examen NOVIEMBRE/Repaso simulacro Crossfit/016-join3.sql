SELECT 
asistencias.Fecha_Asistencia,
asistencias.Estado_Asistencia,
clientes.Fecha_Registro,
clientes.Correo
FROM asistencias
LEFT JOIN clientes
ON clientes.ID_Cliente = asistencias.ID_Cliente
;


------------
SELECT estudiantes.nombre AS nombre_estudiante, estudiantes.apellido, estudiantes.correo, cursos.nombre AS nombre_curso, cursos.descripcion FROM estudiantes_cursos LEFT JOIN estudiantes ON estudiantes_cursos.id_estudiante = estudiantes.Identificador LEFT JOIN cursos ON estudiantes_cursos.id_curso = cursos.Identificador;