-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 11-12-2024 a las 18:13:18
-- Versión del servidor: 5.7.44
-- Versión de PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoapple`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloques`
--

CREATE TABLE `bloques` (
  `Identificador` int(255) NOT NULL,
  `categorias_nombre` int(255) NOT NULL,
  `tipobloque_tipo` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `imagen` mediumblob,
  `fondo` mediumblob,
  `estilo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bloques`
--

INSERT INTO `bloques` (`Identificador`, `categorias_nombre`, `tipobloque_tipo`, `titulo`, `subtitulo`, `texto`, `imagen`, `fondo`, `estilo`) VALUES
(1, 15, 1, 'Crosstraining', 'Ponte en forma con nosotros!', '', NULL, NULL, ''),
(2, 15, 2, 'Programacion en ia', 'Desarrollo de apps con ia', '', NULL, NULL, ''),
(3, 16, 1, 'bienvenidosssss', '', '', NULL, NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bloques`
--
ALTER TABLE `bloques`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `bloquesacategorias` (`categorias_nombre`),
  ADD KEY `bloquesatipos` (`tipobloque_tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bloques`
--
ALTER TABLE `bloques`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bloques`
--
ALTER TABLE `bloques`
  ADD CONSTRAINT `bloquesacategorias` FOREIGN KEY (`categorias_nombre`) REFERENCES `categorias` (`Identificador`),
  ADD CONSTRAINT `bloquesatipos` FOREIGN KEY (`tipobloque_tipo`) REFERENCES `tipobloque` (`Identificador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
