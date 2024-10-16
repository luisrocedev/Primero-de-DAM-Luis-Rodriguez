SELECT 
COUNT(identificador) AS "Numero de cliente",
poblacion
FROM clientes
GROUP BY(poblacion)
ORDER BY COUNT identificador DESC
;