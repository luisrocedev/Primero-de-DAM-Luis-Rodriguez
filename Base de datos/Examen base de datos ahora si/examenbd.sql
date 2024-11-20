-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 23:26:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviso legal`
--

CREATE TABLE `aviso legal` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aviso legal`
--

INSERT INTO `aviso legal` (`Identificador`, `Titulo`, `Texto`) VALUES
(1, '1. Datos identificativos', 'El presente aviso legal recoge las condiciones generales que rigen el acceso y el uso del sitio web https://cienciaycatedral.ubuinvestiga.es, titularidad de la Universidad de Burgos.\r\n\r\nEn cumplimiento con el deber de información recogido en el artículo 10 de la Ley 34/2002, de 11 de julio, de Servicios de la Sociedad de la Información y del Comercio Electrónico, a continuación, se reflejan los siguientes datos: La entidad titular de esta website es la Universidad de Burgos con domicilio en Hospital del Rey s/n. CP  09001 Burgos. España que es una entidad pública con CIF: CIF: Q-0968272-E\r\n\r\nE-mail: sec.secretariageneral@ubu.es'),
(2, '2. Uso de la Web', 'La visita o acceso a este sitio web es absolutamente voluntaria atribuyendo a quien accede al mismo la condición de usuario. Atendiendo a su condición de usuario, y por el hecho de acceder a este sitio web, se le exige la aceptación de los Términos de Uso que en cada momento se encuentren vigentes en la presente dirección, por lo cual el Usuario deberá leer detenidamente y aceptar sin ningún tipo de reservas la presente Advertencia Legal antes de realizar cualquier tipo de operación, visionado, utilización, etc. con este sitio web. Y hacer un uso correcto del Portal de conformidad con la Ley 34/2002, de 11 de Julio, LSSICE.'),
(3, '1. Datos identificativos', 'El presente aviso legal recoge las condiciones generales que rigen el acceso y el uso del sitio web https://cienciaycatedral.ubuinvestiga.es, titularidad de la Universidad de Burgos.\r\n\r\nEn cumplimiento con el deber de información recogido en el artículo 10 de la Ley 34/2002, de 11 de julio, de Servicios de la Sociedad de la Información y del Comercio Electrónico, a continuación, se reflejan los siguientes datos: La entidad titular de esta website es la Universidad de Burgos con domicilio en Hospital del Rey s/n. CP  09001 Burgos. España que es una entidad pública con CIF: CIF: Q-0968272-E\r\n\r\nE-mail: sec.secretariageneral@ubu.es'),
(4, '2. Uso de la Web', 'La visita o acceso a este sitio web es absolutamente voluntaria atribuyendo a quien accede al mismo la condición de usuario. Atendiendo a su condición de usuario, y por el hecho de acceder a este sitio web, se le exige la aceptación de los Términos de Uso que en cada momento se encuentren vigentes en la presente dirección, por lo cual el Usuario deberá leer detenidamente y aceptar sin ningún tipo de reservas la presente Advertencia Legal antes de realizar cualquier tipo de operación, visionado, utilización, etc. con este sitio web. Y hacer un uso correcto del Portal de conformidad con la Ley 34/2002, de 11 de Julio, LSSICE.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliografia`
--

CREATE TABLE `bibliografia` (
  `Identificador` int(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `Identificador` int(255) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`Identificador`, `Numerador`, `Titulo`, `Subtitulo`, `Texto`, `Imagen`, `Video`) VALUES
(1, 'Capítulo I', 'La arquitectura', 'De los cimientos a las agujas', 'La Catedral de Burgos ha visto pasar 800 años. Generación tras generación, este edificio tan singular ha visto pasar guerras, pandemias, temporales y miles de vidas que han continuado asombrándose con su figura.\r\n\r\nEn el año 1221 se colocó la primera piedra de un proyecto ideado por el Obispo Mauricio y Fernando III el Santo. La nueva catedral, de orden gótico, estaba llamada a sustituir la antigua construcción románica y marcar un hito en el Camino de Santiago y en la historia del arte, inspirándose en las basílicas francesas. La llegada del gótico permitió aligerar los muros y comenzar a construir en altura, buscando el cielo y permitir el paso de la luz.\r\n\r\nEn este primer capítulo, dos profesores de la Universidad de Burgos nos guiarán por las fórmulas de construcción del templo. René Payo y José Matesanz nos introducen en la técnica empleada para levantar las paredes de la catedral, un prodigio científico y tecnológico aún en nuestros días y con la dificultad adicional de los medios empleados por parte de obreros y canteros.\r\n\r\nAdemás, nos adentramos en el Archivo de la seo burgalesa con Matías Vicario, canónigo archivero, para recorrer la memoria de la catedral, con cientos de documentos que no sólo recogen textos eclesiásticos, sino multitud de documentación sobre la vida en la ciudad, la economía, medicina… además de toda la producción documental de la propia Catedral. Una auténtica joya conservada por siglos.\r\n\r\nSin embargo, la construcción de la basílica burgalesa fue todo un desafío que se extendió durante siglos. Las agujas, el cimborrio y algunas de las capillas más emblemáticas son construcciones posteriores que conjugan estilos y técnicas de diferentes épocas. Es precisamente esta unión de estilos, como el gótico, el renacimiento, el barroco y el neoclásico lo que convierte a la catedral de Burgos en un monumento único. Para comprender las particularidades de su construcción, Javier Garabito, arquitecto de la catedral y profesor de la Universidad de Burgos, nos enseña los fundamentos del gótico y la importancia de sus bóvedas, arcos y arbotantes.\r\n\r\nAdemás, la ciencia de la época se basaba, en buena parte, en el ensayo y el error. Prueba de ello fue la caída del cimborrio original ya que, a pesar del enorme conocimiento de los constructores, su técnica podía fallar en ocasiones. Por otro lado, la posición de la seo, construida en cuesta, supone un desafío adicional para su construcción.', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-arquitectura-min.jpg', 'https://youtu.be/N-OBoksb9oQ'),
(2, 'Capítulo II', 'La piedra', 'La piel de la catedral', 'La piel de la catedral de Burgos es especial. El revestimiento pétreo de caliza, extraído de las proximidades de Burgos, en la cantera de Hontoria, le da un color muy característico, mientras ha permitido que su estructura y su belleza se mantengan hasta nuestros días.\r\n\r\nLa llegada del gótico a las catedrales supone comenzar a dar importancia a la luz. Los muros suben hacia el cielo, las paredes se abren con vidrieras de colores y la luminosidad de la piedra comienza a ser más importante que nunca. Gabriel García Agudo, uno de los responsables de Patrimonio de la Luz, responsables de la gestión de las canteras en la actualidad, nos acerca a lo que supuso extraer la piedra de la roca viva con herramientas artesanales. Para conocer las técnicas de extracción y labrado recurrimos a José Javier Barrio, restaurador y tallista, que nos enseña los secretos de la talla, tanto para los sillares como para los elementos decorativos.\r\n\r\nLa piedra blanca de Hontoria otorga un brillo muy especial a la basílica, tanto en el exterior como en su interior. René Payo y José Matesanz, profesores de la Universidad de Burgos, nos señalan sus características: una piedra maleable, que gana en resistencia con el paso del tiempo. Sin embargo, toda piedra necesita mantenimiento y restauración. Los trabajos en la catedral, como señala José Javier Barrio, son constantes y se realizan con métodos artesanales para respetar al máximo el espíritu y la estética de la catedral.\r\n\r\nQuizá la actuación más visible haya sido, precisamente, la realizada sobre la fachada de la seo burgalesa. La limpieza del exterior volvió a mostrar el color blanco de sus paredes, dejando atrás el gris que durante tanto tiempo habíamos conocido. No solo se realizó la limpieza, sino que se aplicaron técnicas de conservación que, sin alterar su aspecto, protegen la piel de la basílica.\r\n\r\nLos cambios no fueron solo estéticos. La piedra supone el principal elemento estructural de toda la catedral y su cuidado debe ser constante. Aplicar los conocimientos de física, química, ingeniería y arquitectura resulta fundamental para protegerla de la oxidación, de gelifracción (la ruptura por el hielo), la contaminación… La Catedral de Burgos goza de una excelente salud tras las restauraciones llevadas a cabo los últimos años, pero los cuidados deben ser constantes y delicados para mantener su magnífico aspecto y la firmeza que ha mantenido durante sus 800 años de historia.              ', 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/06/La-ciencia-que-esconde-la-catedral-de-Burgos-La-piedra-min.jpg', 'https://youtu.be/vIDIP3gjGcY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulosexpertos`
--

CREATE TABLE `capitulosexpertos` (
  `Identificador` int(11) NOT NULL,
  `id_capitulo` int(11) NOT NULL,
  `id_expertos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capitulosexpertos`
--

INSERT INTO `capitulosexpertos` (`Identificador`, `id_capitulo`, `id_expertos`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cookies`
--

INSERT INTO `cookies` (`Identificador`, `Titulo`, `Texto`) VALUES
(1, '1. Introducción', 'Nuestra web, https://cienciaycatedral.ubuinvestiga.es (en adelante: «la web») utiliza cookies y otras tecnologías relacionadas (para mayor comodidad, todas las tecnologías se denominan «cookies»). Las cookies también son colocadas por terceros a los que hemos contratado. En el siguiente documento te informamos sobre el uso de cookies en nuestra web.'),
(2, '2. ¿Qué son las cookies?', 'Una cookie es un pequeño archivo que se envía junto con las páginas de esta web y que tu navegador almacena en el disco duro de su ordenador u otro dispositivo. La información almacenada puede ser devuelta a nuestros servidores o a los servidores de terceros apropiados durante una visita posterior.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Personas` varchar(255) NOT NULL,
  `Cargos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `Identificador` int(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `id_categoria` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentaciongrafica`
--

INSERT INTO `documentaciongrafica` (`Identificador`, `Imagen`, `Texto`, `id_categoria`) VALUES
(3, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_0000C529.jpg', 'La_Catedral_de_Burgos_0000C529', 1),
(4, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_0001B8D1.jpg', 'La_Catedral_de_Burgos_0001B8D1', 1),
(5, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_Vista_panoramica_de_Burgos.jpg', 'La_Catedral_de_Burgos_Vista_panorámica_de_Burgos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongraficacategorias`
--

CREATE TABLE `documentaciongraficacategorias` (
  `Identificador` int(255) NOT NULL,
  `nombrecategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentaciongraficacategorias`
--

INSERT INTO `documentaciongraficacategorias` (`Identificador`, `nombrecategoria`) VALUES
(1, 'Archivo Municipal de Burgos'),
(2, 'Biblioteca nacional'),
(3, 'bibliotecadigital.jcyl'),
(4, 'ceres'),
(5, 'Europeana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Oficio` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`Identificador`, `Nombre`, `Oficio`, `Video`, `Texto`) VALUES
(1, 'Gabriel García Agudo', 'Experto en turismo', 'https://youtu.be/1CeWkrwcLRY', 'Gabriel García Agudo es el responsable del proyecto Patrimonio de la Luz y experto en turismo. Su empresa gestiona las canteras de las que se extrajo la piedra de la catedral de Burgos, convertidas ahora en un monumento natural que cada vez atrae a más turistas. García Aguado ha realizado trabajo de investigación sobre las canteras de Hontoria, que sirvieron de materia prima para muchas construcciones en la provincia de Burgos y conoce al detalle la forma de extracción y de trabajo dentro de estas canteras.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos nos muestra los lugares de extracción de esa piedra blanca tan característica de la seo burgalesa, guiándonos a través de las marcas de las picas de la extracción. Además, nos describe el transporte desde la sierra burgalesa hasta el templo, donde los diferentes talleres de cantería tallaban los bloques y los ornamentos necesarios.'),
(2, 'Javier Garabito', 'Arquitecto de la catedral de Burgos y especialista en restauración del patrimonio', 'https://youtu.be/HIXji4n0DbM', 'Javier Garabito López es profesor de la Universidad de Burgos y arquitecto de la catedral de Burgos y especialista en restauración del patrimonio y de bienes monumentales. Se ha encargado de diferentes proyectos de restauración en el templo burgalés, así como numerosas publicaciones y estudios científicos   a propósito de la restauración y conservación patrimonial.\r\n\r\nJunto a José Álvarez Cuesta, ha diseñado las obras de restauración de la catedra, estudiando su estructura, sus problemas potenciales y las necesidades de actuación sobre los muros, las torres y los diferentes elementos arquitectónicos que necesitaban una intervención.\r\n\r\nEn La ciencia que estudia la Catedral de Burgos nos describe las particularidades del estilo gótico, un estilo muy innovador con una aplicación sorprendente de la física y las cargas de peso sobre muros y arbotantes. Por ejemplo, nos describe las bóvedas como un “alarde” técnico, además de los medios de construcción disponibles durante el proceso de la catedral, medios muy limitados y de enorme riesgo, pero tremendamente efectivos.\r\n\r\nGarabito nos habla también de la caída del primer cimborrio, producida, seguramente, por problemas en la estructura. Así, el nuevo cimborrio, ya de estilo renacentista, refuerza esa estructura con unas columnas especialmente gruesas. Además, nos explica una de las grandes particularidades de la catedral de Burgos, que está construida en cuesta. Este desafío genera, además, un problema a la hora de acceder a la calle Fernán González resuelto con la Escalera dorada, además de otros problemas, como las humedades.\r\n\r\nEn definitiva, desde la arquitectura, la catedral de Burgos supone un prodigio, no sólo por su esbeltez sino también por los numerosos retos y desafíos que entraña su localización.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaexpertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaexpertos` (
`Titulo` varchar(255)
,`Subtitulo` varchar(255)
,`Nombre` varchar(255)
,`Oficio` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaexpertos`
--
DROP TABLE IF EXISTS `vistaexpertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaexpertos`  AS SELECT `capitulos`.`Titulo` AS `Titulo`, `capitulos`.`Subtitulo` AS `Subtitulo`, `expertos`.`Nombre` AS `Nombre`, `expertos`.`Oficio` AS `Oficio` FROM ((`capitulosexpertos` left join `capitulos` on(`capitulosexpertos`.`id_expertos` = `capitulos`.`Identificador`)) left join `expertos` on(`capitulosexpertos`.`id_capitulo` = `expertos`.`Identificador`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aviso legal`
--
ALTER TABLE `aviso legal`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `capitulosexpertos_capitulos` (`id_capitulo`),
  ADD KEY `capitulosexpertos_expertos` (`id_expertos`);

--
-- Indices de la tabla `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `documentaciongraficaacategoria` (`id_categoria`);

--
-- Indices de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `expertos`
--
ALTER TABLE `expertos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aviso legal`
--
ALTER TABLE `aviso legal`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  ADD CONSTRAINT `capitulosexpertos_capitulos` FOREIGN KEY (`id_capitulo`) REFERENCES `capitulos` (`Identificador`),
  ADD CONSTRAINT `capitulosexpertos_expertos` FOREIGN KEY (`id_expertos`) REFERENCES `expertos` (`Identificador`);

--
-- Filtros para la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD CONSTRAINT `documentaciongraficaacategoria` FOREIGN KEY (`id_categoria`) REFERENCES `documentaciongraficacategorias` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
