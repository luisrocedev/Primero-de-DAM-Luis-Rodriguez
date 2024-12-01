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
						foreach ($productos as $clave =>$valor){
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
								$columnas = ['identificador','nombre','descripcion','precio','peso'];
								foreach ($columnas as $clave =>$valor){
									echo "<td>".$valor."</td>";
								}
							?>
						</tr>
					</thead>
				</table>
			</section>
		</main>
	</body>
</html>