<main>
    <?php
    include "modulos/bloque/bloque.php";
    
    $conexion = mysqli_connect(
			"localhost", 
			"proyectoapple", 
			"proyectoapple", 
			"proyectoapple"
		);		
	
		$peticion = "
		SELECT * 
		FROM bloquesproductos
		WHERE productos_titulo = ".$_GET['prod']."
		;";																					// Creo una petición
		//echo $peticion;
		$resultado = mysqli_query($conexion, $peticion);						// Ejecuto la petición contra el servidor
																								// Creo un array vacio
		while($fila = mysqli_fetch_array($resultado, MYSQLI_ASSOC)){		// Para cada uno de los resultados
			if($fila['tipobloque_tipo'] == "1"){
				$bloque = new BloqueCompleto($fila['titulo'], $fila['subtitulo']);
    			echo $bloque->getBloque();
			}else if($fila['tipobloque_tipo'] == "2"){
				$bloque = new BloqueCaja($fila['titulo'], $fila['subtitulo']);
    			echo $bloque->getBloque();
			}
		 }
																		
		

    
    ?>
</main>
<script>
    <?php include "producto.js"; ?>
</script>
<style>
    <?php 
    	include "producto.css"; 
    	?>
</style>