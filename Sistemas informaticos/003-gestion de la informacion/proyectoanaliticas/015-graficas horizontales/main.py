from JVAnaliticas import *
        
sesion = JVAnaliticas()
sesion.graficaTarta(
    """
    SELECT 
    COUNT(extra3) AS numero,
    extra3 as valor
    FROM logs
    WHERE extra3 != ""
    GROUP BY extra3
    ORDER BY numero DESC
    LIMIT 20;
    """, "paises.jpg","Paises visitantes"
)

sesion.graficaTarta(
    """
    SELECT 
    COUNT(referencia) AS numero,
    referencia as valor
    FROM logs
    WHERE referencia != ""
    GROUP BY referencia
    ORDER BY numero DESC
    LIMIT 20;
    """, "idiomas.jpg","Idiomas"
)
sesion.graficaBarras(
    """
    SELECT 
    COUNT(anio) AS numero,
    anio AS valor
    FROM logs
    GROUP BY anio
    """, "visitasporaño.jpg","Visitas por año"
)

sesion.graficaBarras(
    """
    SELECT 
    COUNT(mes) AS numero,
    mes AS valor
    FROM logs
    GROUP BY mes
    """, "visitaspormes.jpg","Visitas por mes"
)
sesion.graficaBarras(
    """
    SELECT 
    COUNT(dia) AS numero,
    dia AS valor
    FROM logs
    GROUP BY dia
    """, "visitaspordia.jpg","Visitas por día"
)
sesion.graficaBarras(
    """
    SELECT 
    COUNT(hora) AS numero,
    hora AS valor
    FROM logs
    GROUP BY hora
    """, "visitasporhora.jpg","Visitas por hora"
)
sesion.graficaTarta(
    """
    SELECT
    CASE
        WHEN navegador LIKE '%Windows%' THEN 'Windows'
        WHEN navegador LIKE '%Macintosh%' THEN 'Macintosh'
        WHEN navegador LIKE '%Linux%' THEN 'Linux'
        WHEN navegador LIKE '%Android%' THEN 'Android'
        WHEN navegador LIKE '%iPhone%' THEN 'iPhone'
        WHEN navegador LIKE '%iPad%' THEN 'iPad'
        ELSE 'Other'
    END AS valor,
    COUNT(*) AS numero
    FROM logs
    GROUP BY valor
    ORDER BY numero DESC;
    """, "sistemasoperativos.jpg","Sistemas operativos"
)

sesion.graficaTarta(
    """
    SELECT
    CASE
        WHEN navegador LIKE '%Chrome%' THEN 'Chrome'
        WHEN navegador LIKE '%Safari%' AND navegador NOT LIKE '%Chrome%' THEN 'Safari'
        WHEN navegador LIKE '%Firefox%' THEN 'Firefox'
        WHEN navegador LIKE '%Edge%' THEN 'Edge'
        WHEN navegador LIKE '%Opera%' OR navegador LIKE '%OPR%' THEN 'Opera'
        WHEN navegador LIKE '%MSIE%' OR navegador LIKE '%Trident%' THEN 'Internet Explorer'
        ELSE 'Other'
    END AS valor,
    COUNT(*) AS numero
    FROM logs
    GROUP BY valor
    ORDER BY numero DESC;
    """, "navegadores.jpg","Navegadores web"
)

sesion.graficaTarta(
    """
    SELECT 'bots' AS valor, COUNT(*) AS numero
    FROM logs
    WHERE navegador LIKE '%bot%'
    UNION ALL
    SELECT 'no bots' AS category, COUNT(*) AS numero
    FROM logs
    WHERE navegador NOT LIKE '%bot%';
    """, "bots.jpg","Bots"
)

sesion.graficaTarta(
    """
    SELECT 
        CONCAT(pantallax, 'x', pantallay) AS valor,
        COUNT(*) AS numero
    FROM 
        logs
    GROUP BY 
        pantallax, pantallay
    ORDER BY 
        numero DESC
    LIMIT 10;
    
    """, "pantallas.jpg","Resolucion de pantalla"
)
sesion.graficaBarrasHorizontales(
    """
    SELECT 
        extra2 as valor,
        count(extra2) as numero
        FROM logs
        GROUP BY extra2
        ORDER BY numero DESC
        LIMIT 10
    
    """, "paginasvisitadas.jpg","Páginas visitadas"
)