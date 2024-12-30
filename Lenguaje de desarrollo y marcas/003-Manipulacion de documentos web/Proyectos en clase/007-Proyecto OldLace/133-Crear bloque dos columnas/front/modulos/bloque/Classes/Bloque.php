<?php
class AtributoEstilo {
    public $atributo;
    public $valor;

    public function __construct($nuevoatributo, $nuevovalor) {
        $this->atributo = $nuevoatributo;
        $this->valor = $nuevovalor;
    }
}

class Estilo {
    public $estilo;

    public function __construct($estilos) {
        $this->estilo = $estilos;
    }
}

abstract class Bloque {
    protected $titulo;
    protected $subtitulo;
    protected $texto;
    protected $imagen;
    protected $imagenfondo;
    protected $estilo;

    public function __construct(
        $nuevotitulo,
        $nuevosubtitulo = "",
        $nuevotexto = "",
        $nuevaimagen = "",
        $nuevaimagenfondo = "",
        $nuevoestilo = []
    ) {
        $this->titulo = $nuevotitulo;
        $this->subtitulo = $nuevosubtitulo;
        $this->texto = $nuevotexto;
        $this->imagen = $nuevaimagen;
        $this->imagenfondo = $nuevaimagenfondo;
        $this->estilo = $nuevoestilo;
    }

    public function buildStyles() {
        $cadena = "";
        foreach ($this->estilo as $clave => $valor) {
            $cadena .= "$clave:$valor;";
        }
        return $cadena;
    }
}

class BloqueCompleto extends Bloque {
    public function getBloque() {
        $cadena = $this->buildStyles();
        $fondo = base64_encode($this->imagenfondo);
        //echo  $fondo;
        return "
            <div class='bloque completo' style='$cadena;background:url(\"data:image/png;base64,{$fondo}\");background-size:cover;background-position:center center;'>
                <h3>{$this->titulo}</h3>
                <h4>{$this->subtitulo}</h4>
                <p>{$this->texto}</p>
            </div>
        ";
    }
}

class BloqueCaja extends Bloque {
    public function getBloque() {
        $cadena = $this->buildStyles();
        return "
            <div class='bloque caja' style='$cadena'>
                <h3>{$this->titulo}</h3>
                <h4>{$this->subtitulo}</h4>
                <p>{$this->texto}</p>
            </div>
        ";
    }
}

class BloqueCajaDosColumnas extends Bloque {
    public function getBloque() {
        $cadena = $this->buildStyles();
        $textojson = json_decode($this->texto);
        //var_dump($textojson);
        return "
            <div class='bloque caja' style='$cadena'>
                <h3>{$this->titulo}</h3>
                <h4>{$this->subtitulo}</h4>
                <div class='doscolumnastexto'>
                	<p>{$textojson->columna1}</p>
                	<p>{$textojson->columna2}</p>
                </div>
            </div>
        ";
    }
}

class BloqueCajaYoutube extends Bloque {
    public function getBloque($video) {
        $cadena = $this->buildStyles();
        return '
            <div class="bloque caja" style="'.$cadena.'">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/'.$video.'?si=iJbR_XbLmg8-dssi" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        ';
    }
}

class BloqueMosaico extends Bloque {
    private $mosaicos;

    public function __construct(
        $nuevotitulo,
        $nuevosubtitulo = "",
        $nuevotexto = "",
        $nuevaimagen = "",
        $nuevaimagenfondo = "",
        $mosaicos = []
    ) {
        parent::__construct(
            $nuevotitulo,
            $nuevosubtitulo,
            $nuevotexto,
            $nuevaimagen,
            $nuevaimagenfondo
        );
        $this->mosaicos = $mosaicos;
    }

    public function getBloque() {
        $cadena = $this->buildStyles();
        $contenido = "
            <div class='bloque mosaico' style='$cadena'>
                <h3>{$this->titulo}</h3>
                <h4>{$this->subtitulo}</h4>
                
					<div class='rejilla'>
                ";
               
					$this->mosaicos = json_decode($this->texto);
					
                foreach($this->mosaicos as $clave=>$valor){
                	$contenido .= "
                		<div class='celda'>
                		{$valor}
                		</div>
                	";
                }
                
                
        $contenido .= "
        		</div>
            </div>
        ";
        
        return $contenido;
    }
}
?>
