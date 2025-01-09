<?php
	include "config.php";
	$peticion = "
		SELECT * 
		FROM config
		;";
		$resultado = mysqli_query($conexion, $peticion);
		$datosweb = [];
		while($fila = mysqli_fetch_array($resultado, MYSQLI_ASSOC)){
			$datosweb[$fila['clave']] = $fila['valor'];
		}						
?>

<title><?php echo $datosweb['titulo']; ?></title>
<link rel="Stylesheet" href="estilo/general.css">
<meta charset="utf-8">
<link rel="icon" type="image/svg+xml" href="img/logo.svg">
<meta name="description" content="<?php echo $datosweb['descripcion']; ?>">
<meta name="robots" content="index,follow">
<meta name="keywords" content="<?php echo $datosweb['palabrasclave']; ?>">
<meta name="author" content="<?php echo $datosweb['autor']; ?>">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
