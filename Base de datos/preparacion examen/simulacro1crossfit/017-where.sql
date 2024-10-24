SELECT

asistencias.Fecha_Asistencia,
asistencias.Estado_Asistencia,
clientes.Fecha_Registro,
clientes.Nombre AS Noobs,
entrenadores.Nombre AS Entrenadores,
membresias.Tipo_Membresia,
membresias.Costo

FROM asistencias

LEFT JOIN clientes
ON clientes.ID_Cliente = asistencias.ID_Cliente
LEFT JOIN clases
ON clases.ID_Clase = asistencias.ID_Clase
LEFT JOIN entrenadores
ON entrenadores.ID_Entrenador = clases.ID_Entrenador
LEFT JOIN membresias
ON membresias.ID_Membresia = clientes.ID_Membresia

WHERE entrenadores.ID_Entrenador = 1
;