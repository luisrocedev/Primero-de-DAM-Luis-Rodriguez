-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2024 a las 17:09:35
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
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`identificador`, `titulo`, `fecha`, `contenido`) VALUES
(1, 'Primer articulo desde MySQL', '2024-09-30', 'Si estas viendo esto es por que esta ligado a MySQL'),
(2, 'Segundo articulo desde MySQL', '2024-09-30', 'Si estas viendo esto otra vez es por que te lo esta dando MySQL'),
(4, 'Otra prueba mas de que esto esta siendo hecho en MySQL', '2024-09-30', 'Comprobamos que estamos recibiendo artículos desde la base de datos.'),
(5, 'articulo nuevo', '2024-10-12', 'este es el nuevo articulo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `identificador` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`identificador`, `usuario`, `contrasena`) VALUES
(1, 'luis', 'luis');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `crossfit`
--
CREATE DATABASE IF NOT EXISTS `crossfit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crossfit`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `ID_Asistencia` int(255) NOT NULL,
  `ID_Cliente` int(255) NOT NULL,
  `ID_Clase` int(255) NOT NULL,
  `Fecha_Asistencia` date NOT NULL,
  `Estado_Asistencia` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`ID_Asistencia`, `ID_Cliente`, `ID_Clase`, `Fecha_Asistencia`, `Estado_Asistencia`) VALUES
(1, 1, 1, '2024-10-01', 1),
(2, 2, 2, '2024-10-02', 1),
(3, 3, 3, '2024-10-03', 0),
(4, 4, 4, '2024-10-04', 1),
(5, 5, 5, '2024-10-05', 1),
(6, 6, 1, '2024-10-06', 0),
(7, 7, 2, '2024-10-07', 1),
(8, 8, 3, '2024-10-08', 1),
(9, 9, 4, '2024-10-09', 0),
(10, 10, 5, '2024-10-10', 1),
(11, 11, 1, '2024-10-11', 1),
(12, 12, 2, '2024-10-12', 0),
(13, 13, 3, '2024-10-13', 1),
(14, 14, 4, '2024-10-14', 1),
(15, 15, 5, '2024-10-15', 0),
(16, 16, 1, '2024-10-16', 1),
(17, 17, 2, '2024-10-17', 1),
(18, 18, 3, '2024-10-18', 0),
(19, 19, 4, '2024-10-19', 1),
(20, 20, 5, '2024-10-20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `ID_Clase` int(255) NOT NULL,
  `Nombre_Clase` varchar(255) NOT NULL,
  `Horario` varchar(255) NOT NULL,
  `Capacidad_Maxima` int(255) NOT NULL,
  `ID_Entrenador` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`ID_Clase`, `Nombre_Clase`, `Horario`, `Capacidad_Maxima`, `ID_Entrenador`) VALUES
(1, 'Yoga Vinyasa', 'Lunes 8:00 AM - 9:00 AM', 20, 1),
(2, 'HIIT Intensivo', 'Martes 6:00 PM - 7:00 PM', 15, 2),
(3, 'Pilates Reformer', 'Miércoles 10:00 AM - 11:00 AM', 12, 3),
(4, 'Entrenamiento Funcional', 'Jueves 7:00 PM - 8:00 PM', 18, 4),
(5, 'Zumba Fitness', 'Viernes 5:00 PM - 6:00 PM', 25, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` int(255) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `ID_Membresia` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `Nombre`, `Correo`, `Telefono`, `Fecha_Registro`, `ID_Membresia`) VALUES
(1, 'Pedro', 'pedro58@yahoo.com', 603001058, '2019-09-14', 2),
(2, 'Julia', 'julia17@hotmail.com', 673682685, '2021-10-31', 3),
(3, 'Fernando', 'fernando35@yahoo.com', 613759168, '2020-05-12', 4),
(4, 'Carmen', 'carmen10@yahoo.com', 610870431, '2020-01-10', 2),
(5, 'Julia', 'julia25@gmail.com', 677729088, '2022-11-20', 4),
(6, 'María', 'maría3@yahoo.com', 694913938, '2023-05-09', 2),
(7, 'María', 'maría7@yahoo.com', 682144544, '2022-07-31', 5),
(8, 'Roberto', 'roberto55@yahoo.com', 695088382, '2021-01-25', 1),
(9, 'Carlos', 'carlos68@yahoo.com', 635946435, '2021-07-17', 5),
(10, 'María', 'maría32@hotmail.com', 637337381, '2021-11-11', 1),
(11, 'Claudia', 'claudia24@gmail.com', 655538851, '2022-02-12', 1),
(12, 'Fernando', 'fernando56@hotmail.com', 662042651, '2021-09-12', 1),
(13, 'María', 'maría37@hotmail.com', 634664208, '2019-08-25', 3),
(14, 'Carmen', 'carmen44@gmail.com', 616716674, '2019-11-01', 1),
(15, 'Antonio', 'antonio10@gmail.com', 689501006, '2024-10-14', 4),
(16, 'Julia', 'julia43@gmail.com', 623681167, '2022-08-16', 1),
(17, 'Carlos', 'carlos13@gmail.com', 696674101, '2020-12-22', 5),
(18, 'Claudia', 'claudia43@hotmail.com', 625553664, '2023-07-27', 4),
(19, 'Jorge', 'jorge98@hotmail.com', 699020059, '2024-01-19', 1),
(20, 'Jorge', 'jorge39@hotmail.com', 665369144, '2022-05-24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenadores`
--

CREATE TABLE `entrenadores` (
  `ID_Entrenador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Especialidad` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Certificaciones` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrenadores`
--

INSERT INTO `entrenadores` (`ID_Entrenador`, `Nombre`, `Especialidad`, `Correo`, `Telefono`, `Certificaciones`) VALUES
(1, 'Carlos Martínez', 'Entrenamiento Funcional', 'carlos.martinez@ejemplo.com', '2147483647', 'Certificación en CrossFit, Certificación en Entrenamiento Funcional'),
(2, 'María Gómez', 'Pilates', 'maria.gomez@ejemplo.com', '2147483647', 'Certificación en Pilates, Yoga Instructor Certificado'),
(3, 'Juan Pérez', 'Levantamiento de Pesas', 'juan.perez@ejemplo.com', '2147483647', 'Certificación en Levantamiento de Pesas, Certificación en Nutrición Deportiva'),
(4, 'Carlos Martínez', 'Entrenamiento Funcional', 'carlos.martinez@ejemplo.com', '5551234567', 'Certificación en CrossFit, Certificación en Entrenamiento Funcional'),
(5, 'María Gómez', 'Pilates', 'maria.gomez@ejemplo.com', '5552345678', 'Certificación en Pilates, Yoga Instructor Certificado'),
(6, 'Juan Pérez', 'Levantamiento de Pesas', 'juan.perez@ejemplo.com', '5553456789', 'Certificación en Levantamiento de Pesas, Certificación en Nutrición Deportiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `ID_Membresia` int(255) NOT NULL,
  `Tipo_Membresia` varchar(255) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `Duracion` int(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`ID_Membresia`, `Tipo_Membresia`, `Costo`, `Duracion`, `Descripcion`) VALUES
(1, 'Mensual Básica', 500.00, 30, 'Acceso ilimitado a clases regulares durante 1 mes'),
(2, 'Mensual Premium', 800.00, 30, 'Acceso a clases premium y regulares durante 1 mes'),
(3, 'Trimestral Básica', 1400.00, 90, 'Acceso ilimitado a clases regulares durante 3 meses'),
(4, 'Trimestral Premium', 2200.00, 90, 'Acceso a clases premium y regulares durante 3 meses'),
(5, 'Semestral Básica', 2700.00, 180, 'Acceso ilimitado a clases regulares durante 6 meses'),
(6, 'Semestral Premium', 4200.00, 180, 'Acceso a clases premium y regulares durante 6 meses'),
(7, 'Anual Básica', 5000.00, 365, 'Acceso ilimitado a clases regulares durante 1 año'),
(8, 'Anual Premium', 7500.00, 365, 'Acceso a clases premium y regulares durante 1 año'),
(9, 'Mensual CrossFit', 1000.00, 30, 'Acceso ilimitado a clases de CrossFit durante 1 mes'),
(10, 'Trimestral CrossFit', 2800.00, 90, 'Acceso ilimitado a clases de CrossFit durante 3 meses'),
(11, 'Semestral CrossFit', 5400.00, 180, 'Acceso ilimitado a clases de CrossFit durante 6 meses'),
(12, 'Anual CrossFit', 10000.00, 365, 'Acceso ilimitado a clases de CrossFit durante 1 año'),
(13, 'Mensual Yoga', 700.00, 30, 'Acceso ilimitado a clases de Yoga durante 1 mes'),
(14, 'Trimestral Yoga', 1900.00, 90, 'Acceso ilimitado a clases de Yoga durante 3 meses'),
(15, 'Semestral Yoga', 3500.00, 180, 'Acceso ilimitado a clases de Yoga durante 6 meses'),
(16, 'Anual Yoga', 6500.00, 365, 'Acceso ilimitado a clases de Yoga durante 1 año'),
(17, 'Mensual Boxeo', 900.00, 30, 'Acceso ilimitado a clases de Boxeo durante 1 mes'),
(18, 'Trimestral Boxeo', 2500.00, 90, 'Acceso ilimitado a clases de Boxeo durante 3 meses'),
(19, 'Semestral Boxeo', 4700.00, 180, 'Acceso ilimitado a clases de Boxeo durante 6 meses'),
(20, 'Anual Boxeo', 9000.00, 365, 'Acceso ilimitado a clases de Boxeo durante 1 año');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`ID_Asistencia`),
  ADD KEY `asistenciasacliente` (`ID_Cliente`),
  ADD KEY `asistenciaaclase` (`ID_Clase`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`ID_Clase`),
  ADD KEY `clasesaentrenador` (`ID_Entrenador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD KEY `clienteamebresia` (`ID_Membresia`);

--
-- Indices de la tabla `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD PRIMARY KEY (`ID_Entrenador`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`ID_Membresia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `ID_Asistencia` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `ID_Clase` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `entrenadores`
--
ALTER TABLE `entrenadores`
  MODIFY `ID_Entrenador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `ID_Membresia` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistenciaaclase` FOREIGN KEY (`ID_Clase`) REFERENCES `clases` (`ID_Clase`),
  ADD CONSTRAINT `asistenciasacliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clasesaentrenador` FOREIGN KEY (`ID_Entrenador`) REFERENCES `entrenadores` (`ID_Entrenador`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clienteamebresia` FOREIGN KEY (`ID_Membresia`) REFERENCES `membresias` (`ID_Membresia`);
--
-- Base de datos: `futbol`
--
CREATE DATABASE IF NOT EXISTS `futbol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `futbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`identificador`, `nombre`) VALUES
(1, 'Primera'),
(2, 'Segunda'),
(3, 'Primera Federación'),
(4, 'Segunda Federación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `divsiones_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`identificador`, `nombre`, `divsiones_nombre`) VALUES
(1, 'Denia club de futbol', 2),
(3, 'Vergel CF', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichajes`
--

CREATE TABLE `fichajes` (
  `identificador` int(255) NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `jugadores_nombre` int(255) NOT NULL,
  `equipos_nombre` int(255) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fichajes`
--

INSERT INTO `fichajes` (`identificador`, `valor`, `jugadores_nombre`, `equipos_nombre`, `fechainicio`, `fechafinal`) VALUES
(1, 10000000.00, 1, 3, '2024-10-18', '2025-10-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `identificador` int(255) NOT NULL,
  `fecha` date NOT NULL,
  `divsiones_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`identificador`, `fecha`, `divsiones_nombre`) VALUES
(1, '2024-10-18', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `paises_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`identificador`, `nombre`, `apellidos`, `fechadenacimiento`, `paises_nombre`) VALUES
(1, 'Marcos', 'Pereira', '2004-10-15', 3),
(3, 'Paco', 'Borvachov', '1994-10-14', 129),
(5, 'Lionel', 'Messi', '2004-10-01', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores_copia`
--

CREATE TABLE `jugadores_copia` (
  `identificador` int(255) NOT NULL DEFAULT 0,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `paises_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores_copia`
--

INSERT INTO `jugadores_copia` (`identificador`, `nombre`, `apellidos`, `fechadenacimiento`, `paises_nombre`) VALUES
(1, 'Marcos', 'Pereira', '2004-10-15', 3),
(3, 'Paco', 'Borvachov', '1994-10-14', 129),
(5, 'Lionel', 'Messi', '2004-10-01', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`identificador`, `nombre`) VALUES
(1, 'Afganist?n\r'),
(2, 'Albania'),
(3, 'Alemania'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua y Barbuda'),
(7, 'Arabia Saudita'),
(8, 'Argelia'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Azerbaiy?n\r'),
(14, 'Bahamas'),
(15, 'Banglad?s\r'),
(16, 'Barbados'),
(17, 'Bar?in'),
(18, 'B?lgica'),
(19, 'Belice'),
(20, 'Ben?n\r'),
(21, 'Bielorrusia'),
(22, 'Birmania'),
(23, 'Bolivia'),
(24, 'Bosnia y Herzegovina'),
(25, 'Botsuana'),
(26, 'Brasil'),
(27, 'Brun?i\r'),
(28, 'Bulgaria'),
(29, 'Burkina Faso'),
(30, 'Burundi'),
(31, 'But?n\r'),
(32, 'Cabo Verde'),
(33, 'Camboya'),
(34, 'Camer?n'),
(35, 'Afganist?n\r'),
(36, 'Albania'),
(37, 'Alemania'),
(38, 'Andorra'),
(39, 'Angola'),
(40, 'Antigua y Barbuda'),
(41, 'Arabia Saudita'),
(42, 'Argelia'),
(43, 'Argentina'),
(44, 'Armenia'),
(45, 'Australia'),
(46, 'Austria'),
(47, 'Azerbaiy?n\r'),
(48, 'Bahamas'),
(49, 'Banglad?s\r'),
(50, 'Barbados'),
(51, 'Bar?in'),
(52, 'B?lgica'),
(53, 'Belice'),
(54, 'Ben?n\r'),
(55, 'Bielorrusia'),
(56, 'Birmania'),
(57, 'Bolivia'),
(58, 'Bosnia y Herzegovina'),
(59, 'Botsuana'),
(60, 'Brasil'),
(61, 'Brun?i\r'),
(62, 'Bulgaria'),
(63, 'Burkina Faso'),
(64, 'Burundi'),
(65, 'But?n\r'),
(66, 'Cabo Verde'),
(67, 'Camboya'),
(68, 'Camer?n'),
(69, 'Canad?\r\nCatar'),
(70, 'Chad'),
(71, 'Chile'),
(72, 'China'),
(73, 'Chipre'),
(74, 'Ciudad del Vaticano'),
(75, 'Colombia'),
(76, 'Comoras'),
(77, 'Corea del Norte'),
(78, 'Corea del Sur'),
(79, 'Costa de Marfil'),
(80, 'Costa Rica'),
(81, 'Croacia'),
(82, 'Cuba'),
(83, 'Dinamarca'),
(84, 'Dominica'),
(85, 'Ecuador'),
(86, 'Egipto'),
(87, 'El Salvador'),
(88, 'Emiratos ?rabes Unidos'),
(89, 'Eritrea'),
(90, 'Eslovaquia'),
(91, 'Eslovenia'),
(92, 'Espa?a\r\nEstados Unidos'),
(93, 'Estonia'),
(94, 'Etiop?a\r'),
(95, 'Filipinas'),
(96, 'Finlandia'),
(97, 'Fiyi'),
(98, 'Francia'),
(99, 'Gab?n\r\nGambia'),
(100, 'Georgia'),
(101, 'Ghana'),
(102, 'Granada'),
(103, 'Grecia'),
(104, 'Guatemala'),
(105, 'Guinea'),
(106, 'Guinea-Bis?u\r'),
(107, 'Guinea Ecuatorial'),
(108, 'Guyana'),
(109, 'Hait?\r\nHonduras'),
(110, 'Hungr?a\r'),
(111, 'India'),
(112, 'Indonesia'),
(113, 'Irak'),
(114, 'Ir?n\r'),
(115, 'Irlanda'),
(116, 'Islandia'),
(117, 'Islas Marshall'),
(118, 'Islas Salom?n\r\nIsrael'),
(119, 'Italia'),
(120, 'Jamaica'),
(121, 'Jap?n\r\nJordania'),
(122, 'Kazajist?n\r'),
(123, 'Kenia'),
(124, 'Kirguist?n\r'),
(125, 'Kiribati'),
(126, 'Kuwait'),
(127, 'Laos'),
(128, '? Lesoto'),
(129, '? Letonia'),
(130, '? L?bano'),
(131, '? Liberia'),
(132, '? Libia'),
(133, '? Liechtenstein'),
(134, '? Lituania'),
(135, '? Luxemburgo'),
(136, '? Macedonia del Norte'),
(137, '? Madagascar'),
(138, '? Malasia'),
(139, '? Malaui'),
(140, '? Maldivas'),
(141, '? Mal?\r\n? Malta'),
(142, '? Marruecos'),
(143, '? Mauricio'),
(144, '? Mauritania'),
(145, '? M?xico'),
(146, '? Micronesia'),
(147, '? Moldavia'),
(148, '? M?naco'),
(149, '? Mongolia'),
(150, '? Montenegro'),
(151, '? Mozambique'),
(152, '? Namibia'),
(153, '? Nauru'),
(154, '? Nepal'),
(155, '? Nicaragua'),
(156, '? N?ger'),
(157, '? Nigeria'),
(158, '? Noruega'),
(159, '? Nueva Zelanda'),
(160, '? Om?n\r'),
(161, '? Pa?ses Bajos'),
(162, '? Pakist?n\r'),
(163, '? Palaos'),
(164, '? Panam?\r\n? Pap?a Nueva Guinea'),
(165, '? Paraguay'),
(166, '? Per?'),
(167, '? Polonia'),
(168, '? Portugal'),
(169, '? Reino Unido'),
(170, '? Rep?blica Centroafricana'),
(171, '? Rep?blica Checa'),
(172, '? Rep?blica del Congo'),
(173, '? Rep?blica Democr?tica del Congo'),
(174, '? Rep?blica Dominicana'),
(175, '? Ruanda'),
(176, '? Ruman?a\r'),
(177, '? Rusia'),
(178, '? Samoa'),
(179, '? San Crist?bal y Nieves'),
(180, '? San Marino'),
(181, '? San Vicente y las Granadinas'),
(182, '? Santa Luc?a\r'),
(183, '? Santo Tom? y Pr?ncipe'),
(184, '? Senegal'),
(185, '? Serbia'),
(186, '? Seychelles'),
(187, '? Sierra Leona'),
(188, '? Singapur'),
(189, '? Siria'),
(190, '? Somalia'),
(191, '? Sri Lanka'),
(192, '? Suazilandia'),
(193, '? Sud?frica'),
(194, '? Sud?n\r'),
(195, '? Sud?n del Sur'),
(196, '? Suecia'),
(197, '? Suiza'),
(198, '? Surinam'),
(199, '? Tailandia'),
(200, '? Taiw?n\r'),
(201, '? Tanzania'),
(202, '? Tayikist?n\r'),
(203, '? Timor Oriental'),
(204, '? Togo'),
(205, '? Tonga'),
(206, '? Trinidad y Tobago'),
(207, '? T?nez'),
(208, '? Turkmenist?n\r'),
(209, '? Turqu?a\r'),
(210, '? Tuvalu'),
(211, '? Ucrania'),
(212, '? Uganda'),
(213, '? Uruguay'),
(214, '? Uzbekist?n\r'),
(215, '? Vanuatu'),
(216, '? Venezuela'),
(217, '? Vietnam'),
(218, '? Yemen'),
(219, '? Yibuti'),
(220, '? Zambia'),
(221, '? Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `identificador` int(255) NOT NULL,
  `visitante` int(255) NOT NULL,
  `local` int(255) NOT NULL,
  `jornadas` int(255) NOT NULL,
  `horadeinicio` time NOT NULL,
  `golesvisitante` int(255) NOT NULL,
  `goleslocal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`identificador`, `visitante`, `local`, `jornadas`, `horadeinicio`, `golesvisitante`, `goleslocal`) VALUES
(1, 1, 3, 1, '21:00:00', 1, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `divsionesaequipos` (`divsiones_nombre`);

--
-- Indices de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `jugadoresafichaje` (`jugadores_nombre`),
  ADD KEY `equiposafichaje` (`equipos_nombre`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `divsionesjornadas` (`divsiones_nombre`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `paisesajugadores` (`paises_nombre`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `visitanteapartido` (`visitante`),
  ADD KEY `localapartido` (`local`),
  ADD KEY `jornadaapartido` (`jornadas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `divsionesaequipos` FOREIGN KEY (`divsiones_nombre`) REFERENCES `divisiones` (`identificador`);

--
-- Filtros para la tabla `fichajes`
--
ALTER TABLE `fichajes`
  ADD CONSTRAINT `equiposafichaje` FOREIGN KEY (`equipos_nombre`) REFERENCES `equipos` (`identificador`),
  ADD CONSTRAINT `jugadoresafichaje` FOREIGN KEY (`jugadores_nombre`) REFERENCES `jugadores` (`identificador`);

--
-- Filtros para la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD CONSTRAINT `divsionesjornadas` FOREIGN KEY (`divsiones_nombre`) REFERENCES `divisiones` (`identificador`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `paisesajugadores` FOREIGN KEY (`paises_nombre`) REFERENCES `paises` (`identificador`);

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `jornadaapartido` FOREIGN KEY (`jornadas`) REFERENCES `jornadas` (`identificador`),
  ADD CONSTRAINT `localapartido` FOREIGN KEY (`local`) REFERENCES `equipos` (`identificador`),
  ADD CONSTRAINT `visitanteapartido` FOREIGN KEY (`visitante`) REFERENCES `equipos` (`identificador`);
--
-- Base de datos: `landing`
--
CREATE DATABASE IF NOT EXISTS `landing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `landing`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`Identificador`, `titulo`, `fecha`, `texto`) VALUES
(1, 'Aplicación de videoconferencia', '2024-11-07', 'El otro día en clase hicimos una aplicación CRUD'),
(2, 'Aplicación código libre ', '2024-11-03', 'El otro día creamos una aplicación de código libre '),
(3, 'Pagina web con js', '2024-11-07', 'Estamos haciendo una web introduciendo JS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

CREATE TABLE `portafolio` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `portafolio`
--

INSERT INTO `portafolio` (`Identificador`, `titulo`, `texto`) VALUES
(1, 'Aplicaciones 3D', 'Programo aplicaciones 3D'),
(2, 'USA', 'Unete a la marina xD'),
(3, 'Ilustraciones IA', 'Programo ilustraciones creadas con IA'),
(4, 'Invierte en Tesla', 'Tienes que invertir en Tesla...'),
(5, 'Kqi', 'Invierte en el patinete Kqi'),
(6, 'Intel', 'Intel resurge de sus cenizas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `miempresa`
--
CREATE DATABASE IF NOT EXISTS `miempresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `miempresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `poblacion` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`identificador`, `nombre`, `apellidos`, `email`, `poblacion`, `fechadenacimiento`) VALUES
(1, 'pepe', 'Gómez Pérez', 'carlos.gomez@example.com', 'Madrid', '1985-07-13'),
(2, 'Lucía', 'Fernández García', 'lucia.fernandez@example.com', 'Barcelona', '1990-04-22'),
(3, 'Javier', 'Martínez López', 'javier.martinez@example.com', 'Valencia', '1983-11-30'),
(4, 'María', 'Rodríguez Sánchez', 'maria.rodriguez@example.com', 'Sevilla', '1992-06-10'),
(5, 'Pablo', 'Díaz Torres', 'pablo.diaz@example.com', 'Bilbao', '1987-09-25'),
(6, 'Sara', 'Hernández Ruiz', 'sara.hernandez@example.com', 'Zaragoza', '1995-02-14'),
(7, 'Andrés', 'Jiménez Gómez', 'andres.jimenez@example.com', 'Alicante', '1980-03-19'),
(8, 'Ana', 'López Martínez', 'ana.lopez@example.com', 'Granada', '1993-05-07'),
(9, 'Manuel', 'Pérez Ortega', 'manuel.perez@example.com', 'Córdoba', '1989-08-17'),
(10, 'Elena', 'Sánchez Muñoz', 'elena.sanchez@example.com', 'Málaga', '1991-12-03'),
(11, 'Alberto', 'Romero Pérez', 'alberto.romero@example.com', 'Salamanca', '1984-01-12'),
(12, 'Clara', 'Vega González', 'clara.vega@example.com', 'Pamplona', '1996-07-18'),
(13, 'Miguel', 'Navarro Torres', 'miguel.navarro@example.com', 'Murcia', '1979-10-23'),
(14, 'Paula', 'Castro Jiménez', 'paula.castro@example.com', 'Logroño', '1991-11-05'),
(15, 'Raúl', 'Santos Morales', 'raul.santos@example.com', 'Santander', '1988-09-15'),
(16, 'Cristina', 'Gil Fernández', 'cristina.gil@example.com', 'Oviedo', '1994-03-08'),
(17, 'Iván', 'Ortega Martínez', 'ivan.ortega@example.com', 'Valladolid', '1982-06-21'),
(18, 'Beatriz', 'Lorenzo Ruiz', 'beatriz.lorenzo@example.com', 'Toledo', '1986-02-27'),
(19, 'Sergio', 'Cano Ortiz', 'sergio.cano@example.com', 'Almería', '1993-05-10'),
(20, 'Laura', 'Molina Reyes', 'laura.molina@example.com', 'León', '1990-12-17'),
(22, 'luispython', 'rodriguezPython', 'luis', 'ciudadPython', '2024-09-26'),
(26, 'Goky', 'Vegeta', 'gokuvegeta@gmail.com', 'namekusein', '2024-10-05'),
(27, 'Prueba 1', '2', 'a', 'a', '2024-10-06'),
(29, 'Jackson', 'Five', 'jacksonfive', 'eeuu', '2024-10-07'),
(30, 'aaa', 'ee', 'aa', 'aa', '2024-10-10'),
(31, 'aa', 'aa', 'aa', 'aa', '2024-10-12'),
(32, 'a', 'a', 'a', 'a', '2024-10-14'),
(33, 'Pepe', 'Jeans', 'pepejeans@gmail.com', 'hornohorno', '2024-10-16'),
(34, 'Pepo', 'a', 'a', 'a', '2024-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `identificador` int(10) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `codigopostal` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `empleados_nombre` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`identificador`, `calle`, `codigopostal`, `pais`, `empleados_nombre`) VALUES
(1, 'Calle horno de los apóstoles, 8', '46001', 'España', 1),
(2, 'Segunda calle del cliente', '46001', 'España', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `empladosydirecciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `empladosydirecciones` (
`nombre` varchar(100)
,`apellidos` varchar(100)
,`calle` varchar(100)
,`codigopostal` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `identificador` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`identificador`, `nombre`, `apellidos`, `telefono`, `email`) VALUES
(1, 'Luis', 'Rodriguez Cedenio', '722152111', 'luis@gmail.com'),
(3, 'Josue', 'Rodriguez', '722152111', 'luis@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedido`
--

CREATE TABLE `lineaspedido` (
  `identificador` int(255) NOT NULL,
  `pedidos_fecha` int(10) NOT NULL,
  `productos_nombre` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lineaspedido`
--

INSERT INTO `lineaspedido` (`identificador`, `pedidos_fecha`, `productos_nombre`, `cantidad`) VALUES
(1, 3, 1, 1),
(6, 3, 1, 1),
(7, 3, 2, 2),
(8, 4, 2, 1),
(9, 4, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `identificador` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `clientes_apellidos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`identificador`, `fecha`, `clientes_apellidos`) VALUES
(1, '2024-10-05', 22),
(3, '2024-10-05', 22),
(4, '2024-10-06', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`identificador`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Patinete de xiamoi 365', 'Patinete para ir por la calle con mucha autonomía ', 400.00),
(2, 'Dualtron', 'Patinete de otra marca diferente', 1000.00);

-- --------------------------------------------------------

--
-- Estructura para la vista `empladosydirecciones`
--
DROP TABLE IF EXISTS `empladosydirecciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empladosydirecciones`  AS SELECT `empleados`.`nombre` AS `nombre`, `empleados`.`apellidos` AS `apellidos`, `direcciones`.`calle` AS `calle`, `direcciones`.`codigopostal` AS `codigopostal` FROM (`empleados` left join `direcciones` on(`direcciones`.`empleados_nombre` = `empleados`.`identificador`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `direcciones a empleados` (`empleados_nombre`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `lineasapedidos` (`pedidos_fecha`),
  ADD KEY `lineasaproductos` (`productos_nombre`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`identificador`),
  ADD KEY `pedidos a clientes` (`clientes_apellidos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `identificador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `identificador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `identificador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD CONSTRAINT `direcciones a empleados` FOREIGN KEY (`empleados_nombre`) REFERENCES `empleados` (`identificador`);

--
-- Filtros para la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  ADD CONSTRAINT `lineasapedidos` FOREIGN KEY (`pedidos_fecha`) REFERENCES `pedidos` (`identificador`),
  ADD CONSTRAINT `lineasaproductos` FOREIGN KEY (`productos_nombre`) REFERENCES `productos` (`identificador`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos a clientes` FOREIGN KEY (`clientes_apellidos`) REFERENCES `clientes` (`identificador`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-11-10 16:08:35', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
