SELECT 
asistencias.Fecha_Asistencia,
asistencias.Estado_Asistencia,
clientes.Fecha_Registro,
clientes.Correo
FROM asistencias
LEFT JOIN clientes
ON clientes.ID_Cliente = asistencias.ID_Cliente
;