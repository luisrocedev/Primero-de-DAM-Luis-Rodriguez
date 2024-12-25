<?php
	$servidor = "localhost";				// Defino el servidor
	$usuario = "taronjabox";			// Defino el usuario con permiso
	$contrasena = "taronjabox";		// Defino la contraseña de ese usuario
	$base = "taronjabox";				// Defino la base de datos

	$conexion = new mysqli(
		$servidor, 
		$usuario, 
		$contrasena, 
		$base
	);												// Creo una conexión de tipo MySQL
?>