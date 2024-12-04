<!doctype html>
<html>
	<head>
		<link rel="Stylesheet" href="estilo/escritorio.css">
	</head>
	<body>
		<header></header>
		<main>
			<nav>
				<ul>
					<?php
						$productos = ['iPad','iPhone','iMac','airPods'];
						foreach($productos as $clave=>$valor){
							echo "<li>".$valor."</li>";
						}
					?>
				</ul>
			</nav>
			<section>
				<table>
					<thead>
						<tr>
							<?php 
								$columnas = ['Identificador','nombre','descripcion','precio','peso'];
								foreach($columnas as $clave=>$valor){
									echo "<td>".$valor."</td>";
								}	
							?>
						</tr>
					</thead>
					<tbody>
						<?php
							for($i = 0;$i<30;$i++){
								echo "<tr>";
								foreach($columnas as $clave=>$valor){
									echo "<td>".$valor."</td>";
								}
								echo "</tr>";
							}
						?>
					</tbody>
				</table>
			</section>
		</main>
	</body>
</html>

