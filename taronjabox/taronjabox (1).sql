-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 30-12-2024 a las 22:50:50
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taronjabox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_entradas`
--

CREATE TABLE `blog_entradas` (
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_publicacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog_entradas`
--

INSERT INTO `blog_entradas` (`Identificador`, `titulo`, `contenido`, `fecha_publicacion`, `id_categoria`) VALUES
(1, 'Beneficios del CrossTraining', 'El CrossTraining es una actividad que...', '2024-12-24 10:30:15', 1),
(2, 'Competencias locales de CrossTraining', 'Se llevará a cabo un evento...', '2024-12-24 10:30:15', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Identificador` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Identificador`, `nombre_categoria`) VALUES
(1, 'Nutrición'),
(2, 'Entrenamientos'),
(3, 'Noticias'),
(4, 'Eventos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coaches`
--

CREATE TABLE `coaches` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coaches`
--

INSERT INTO `coaches` (`Identificador`, `nombre`) VALUES
(1, 'Ivan Colmenarejo'),
(2, 'Pablo Molina'),
(3, 'Sara Sanchez'),
(4, 'Edgar Eduardo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header`
--

CREATE TABLE `header` (
  `Identificador` int(11) NOT NULL,
  `seccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `header`
--

INSERT INTO `header` (`Identificador`, `seccion`) VALUES
(1, 'Inicio'),
(2, 'Quienes Somos'),
(3, 'Coaches'),
(4, 'Horario'),
(5, 'Tarifas'),
(6, 'Contacto'),
(7, 'Localización'),
(8, 'Zona Socios'),
(9, 'Blog'),
(11, 'prueba'),
(12, 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heroes`
--

CREATE TABLE `heroes` (
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `comprar` varchar(255) NOT NULL,
  `imagen` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `heroes`
--

INSERT INTO `heroes` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `Identificador` int(11) NOT NULL,
  `dia_semana` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL,
  `hora_inicio` time NOT NULL,
  `actividad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`Identificador`, `dia_semana`, `hora_inicio`, `actividad`) VALUES
(1, 'Lunes', '07:00:00', 'WOD'),
(2, 'Lunes', '08:00:00', 'WOD'),
(3, 'Lunes', '09:00:00', 'Open Box'),
(4, 'Lunes', '09:30:00', 'Descanso'),
(5, 'Lunes', '10:00:00', 'WOD'),
(6, 'Lunes', '11:00:00', 'Open Box'),
(7, 'Lunes', '12:00:00', 'Open Box'),
(8, 'Lunes', '13:00:00', 'Open Box'),
(9, 'Lunes', '14:30:00', 'WOD'),
(10, 'Lunes', '15:00:00', 'Open Box'),
(11, 'Lunes', '16:00:00', 'Open Box'),
(12, 'Lunes', '17:00:00', 'WOD'),
(13, 'Lunes', '18:00:00', 'WOD'),
(14, 'Lunes', '19:00:00', 'WOD'),
(15, 'Lunes', '20:00:00', 'WOD'),
(16, 'Martes', '07:00:00', 'WOD'),
(17, 'Martes', '08:00:00', 'WOD'),
(18, 'Martes', '09:00:00', 'Open Box'),
(19, 'Martes', '09:30:00', 'Descanso'),
(20, 'Martes', '10:00:00', 'WOD'),
(21, 'Martes', '11:00:00', 'Open Box'),
(22, 'Martes', '12:00:00', 'Open Box'),
(23, 'Martes', '13:00:00', 'Open Box'),
(24, 'Martes', '14:00:00', 'WOD'),
(25, 'Martes', '14:30:00', 'Descanso'),
(26, 'Martes', '15:00:00', 'Open Box'),
(27, 'Martes', '16:00:00', 'Open Box'),
(28, 'Martes', '17:00:00', 'WOD'),
(29, 'Martes', '18:00:00', 'WOD'),
(30, 'Martes', '19:00:00', 'WOD'),
(31, 'Martes', '20:00:00', 'WOD'),
(32, 'Miércoles', '07:00:00', 'WOD'),
(33, 'Miércoles', '08:00:00', 'WOD'),
(34, 'Miércoles', '09:00:00', 'Open Box'),
(35, 'Miércoles', '09:30:00', 'Descanso'),
(36, 'Miércoles', '10:00:00', 'WOD'),
(37, 'Miércoles', '11:00:00', 'Open Box'),
(38, 'Miércoles', '12:00:00', 'Open Box'),
(39, 'Miércoles', '13:00:00', 'Open Box'),
(40, 'Miércoles', '14:30:00', 'WOD'),
(41, 'Miércoles', '15:00:00', 'Open Box'),
(42, 'Miércoles', '16:00:00', 'Open Box'),
(43, 'Miércoles', '17:00:00', 'WOD'),
(44, 'Miércoles', '18:00:00', 'WOD'),
(45, 'Miércoles', '19:00:00', 'WOD'),
(46, 'Miércoles', '20:00:00', 'WOD'),
(47, 'Jueves', '07:00:00', 'WOD'),
(48, 'Jueves', '08:00:00', 'WOD'),
(49, 'Jueves', '09:00:00', 'Open Box'),
(50, 'Jueves', '09:30:00', 'Descanso'),
(51, 'Jueves', '10:00:00', 'WOD'),
(52, 'Jueves', '11:00:00', 'Open Box'),
(53, 'Jueves', '12:00:00', 'Open Box'),
(54, 'Jueves', '13:00:00', 'Open Box'),
(55, 'Jueves', '14:00:00', 'WOD'),
(56, 'Jueves', '14:30:00', 'Descanso'),
(57, 'Jueves', '15:00:00', 'Open Box'),
(58, 'Jueves', '16:00:00', 'Open Box'),
(59, 'Jueves', '17:00:00', 'WOD'),
(60, 'Jueves', '18:00:00', 'WOD'),
(61, 'Jueves', '19:00:00', 'WOD'),
(62, 'Jueves', '20:00:00', 'WOD'),
(63, 'Viernes', '07:00:00', 'WOD'),
(64, 'Viernes', '08:00:00', 'WOD'),
(65, 'Viernes', '09:00:00', 'Open Box'),
(66, 'Viernes', '09:30:00', 'Descanso'),
(67, 'Viernes', '10:00:00', 'WOD'),
(68, 'Viernes', '11:00:00', 'Open Box'),
(69, 'Viernes', '12:00:00', 'Open Box'),
(70, 'Viernes', '13:00:00', 'Open Box'),
(71, 'Viernes', '14:30:00', 'WOD'),
(72, 'Viernes', '15:00:00', 'Open Box'),
(73, 'Viernes', '16:00:00', 'Open Box'),
(74, 'Viernes', '17:00:00', 'WOD'),
(75, 'Viernes', '18:00:00', 'WOD'),
(76, 'Viernes', '19:00:00', 'WOD'),
(77, 'Sábado', '09:00:00', 'Open Box'),
(78, 'Sábado', '09:30:00', 'WOD'),
(79, 'Sábado', '10:00:00', 'Open Box');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `Identificador` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `fehcainicio` date NOT NULL,
  `fechafinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`Identificador`, `texto`, `enlace`, `fehcainicio`, `fechafinal`) VALUES
(2, '¡Proxima apertura en verano!', '', '2024-12-10', '2024-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobre_nosotros`
--

CREATE TABLE `sobre_nosotros` (
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `subida` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sobre_nosotros`
--

INSERT INTO `sobre_nosotros` (`Identificador`, `titulo`, `descripcion`, `imagen`, `subida`) VALUES
(1, 'Quiénes somos', 'Desde que abrimos en 2017 y hasta la actualidad, en Nexo nos gusta definirnos como el espacio donde interaccionan las ganas de aprender y mejorar junto con la capacidad de esfuerzo. Y todo ello, en un ambiente, no sólo respetuoso, sino que favorece los lazos de amistad duraderos.\r\n\r\nNexo es muy apropiado para aquellas personas que quieran mejorar constantemente, esforzarse por ser mejor técnica y físicamente, y que quieran disfrutar del proceso diariamente.\r\n\r\nNuestra metodología se fundamenta en conocimientos fisiológicos y biomecánicos y además apuesta por trabajar con un espíritu que busca alejarse de los egos sin sentido que rodean al mundo del fitness.\r\n\r\nPor esta razón, los ejercicios gimnásticos son uno de los pilares en el día a día. Los utilizamos para asentar la base de movimientos más complejos.\r\n\r\nTambién podríamos decir que si hay una frase que nos identifica es: \"más no es mejor, mejor es mejor\". Aunque sencilla, ejemplifica la necesidad de ejercitarse con seguridad para garantizar una mejora progresiva, sin incurrir en el error de abusar de volumen o de repetición excesiva de patrones.\r\n\r\nPor todo esto, hemos llegado a la conclusión que no queremos ser un box de CrossFit más. Hemos adaptado nuestra manera de planificar y entender el entrenamiento para que, si confías en nosotros, podamos acompañarte en tu proceso de mejora durante mucho tiempo.', 'https://performa.es/wp-content/uploads/2015/09/Que-es-el-corssfit-Entrenador-personal-Valencia.jpg', '2024-12-25 13:52:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `Identificador` int(11) NOT NULL,
  `nombre_tarifa` varchar(255) NOT NULL,
  `sesiones` varchar(255) NOT NULL,
  `incluye` text NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`Identificador`, `nombre_tarifa`, `sesiones`, `incluye`, `precio`) VALUES
(1, 'Novel', '8 sesiones', 'WOD, Weightlifting, Open Box', 55.00),
(2, 'Intermedio', '12 sesiones', 'WOD, Weightlifting, Open Box', 65.00),
(3, 'RX', '16 sesiones', 'WOD, Weightlifting, Open Box', 75.00),
(4, 'Élite', 'Sesiones ilimitadas', 'WOD, Weightlifting, Open Box', 85.00),
(5, 'Bono 5 sesiones', '5 sesiones', 'WOD, Weightlifting, Open Box', 35.00),
(6, 'Bono 10 sesiones', '10 sesiones', 'WOD, Weightlifting, Open Box', 70.00),
(7, 'Ampliación de tarifa', 'N/A', 'Para socios', 10.00),
(8, 'Bono 1 día', '1 día', 'WOD, Weightlifting, Open Box', 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Identificador` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Identificador`, `email`, `contrasena`) VALUES
(1, 'taronjabox@gmail.com', 'taronjabox');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog_entradas`
--
ALTER TABLE `blog_entradas`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `sobre_nosotros`
--
ALTER TABLE `sobre_nosotros`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog_entradas`
--
ALTER TABLE `blog_entradas`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `coaches`
--
ALTER TABLE `coaches`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `header`
--
ALTER TABLE `header`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `heroes`
--
ALTER TABLE `heroes`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sobre_nosotros`
--
ALTER TABLE `sobre_nosotros`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `blog_entradas`
--
ALTER TABLE `blog_entradas`
  ADD CONSTRAINT `blog_entradas_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`Identificador`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;