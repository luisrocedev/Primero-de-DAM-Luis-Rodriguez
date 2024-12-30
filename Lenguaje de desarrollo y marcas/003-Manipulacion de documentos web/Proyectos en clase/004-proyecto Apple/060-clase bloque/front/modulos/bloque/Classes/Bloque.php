<?php
	abstract class Bloque{
			// Propiedades, son variables del objeto
				protected $titulo;
				protected $subtitulo;
				protected $texto;
				protected $imagen;
				protected $imagenfondo;
				
			
			// Métodos
				// Método constructor, le da valores iniciales al objeto
					public function __construct(
									$nuevotitulo,
									$nuevosubtitulo,
									$nuevotexto,
									$nuevaimagen,
									$nuevaimagenfondo			
											){
						$this->titulo = $nuevotitulo;
						$this->subtitulo = $nuevosubtitulo;
						$this->texto = $nuevotexto;
						$this->imagen = $nuevaimagen;
						$this->imagenfondo = $nuevaimagenfondo;
					}
				// Métodos set y get - leen y escriben valores a las propiedades 
					public function getBloque(){
						return "
							<div class='bloque'>
								<h3>".$this->titulo."</h3>
								<h4>".$this->subtitulo."</h4>
								<p>".$this->texto."</p>
							</div>
							";
					}
				// Métodos libres	
		}
		class BloqueCompleto extends Bloque{
			public function getBloque(){
						return "
							<div class='bloque completo'>
								<h3>".$this->titulo."</h3>
								<h4>".$this->subtitulo."</h4>
								<p>".$this->texto."</p>
							</div>
							";
					}
		}
		class BloqueCaja extends Bloque{
			public function getBloque(){
						return "
							<div class='bloque caja'>
								<h3>".$this->titulo."</h3>
								<h4>".$this->subtitulo."</h4>
								<p>".$this->texto."</p>
							</div>
							";
					}
		}
		
		class BloqueMosaico extends Bloque{
			public function __construct(
											$nuevotitulo, 
											$nuevosubtitulo, 
											$nuevotexto, 
											$nuevaimagen, 
											$nuevaimagenfondo, 
											$mosaicos = []) {
		     // Llamamos al constructor de la clase base
		     parent::__construct(
		     $nuevotitulo, 
		     $nuevosubtitulo, 
		     $nuevotexto, 
		     $nuevaimagen, 
		     $nuevaimagenfondo);
		     $this->mosaicos = $mosaicos; // Almacenamos el arreglo de objetos Bloque
		 }
			public function getBloque(){
						return "
							<div class='bloque mosaico'>
								<h3>".$this->titulo."</h3>
								<h4>".$this->subtitulo."</h4>
								<p>".$this->texto."</p>
							</div>
							";
					}
		}
?>
