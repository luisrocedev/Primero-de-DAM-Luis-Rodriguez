SELECT
capitulos.Titulo,
capitulos.Subtitulo,
expertos.Nombre,
expertos.Oficio
FROM `capitulosexpertos`
LEFT JOIN capitulos
ON capitulosexpertos.id_expertos = capitulos.Identificador
LEFT JOIN expertos
ON capitulosexpertos.id_capitulo = expertos.Identificador