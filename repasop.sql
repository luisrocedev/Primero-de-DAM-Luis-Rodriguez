-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-12-2024 a las 19:24:42
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
-- Base de datos: `repasop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`Identificador`, `Titulo`, `Subtitulo`, `Texto`) VALUES
(7, 'Introducción al fitness', 'Cómo empezar con buen pie', 'El fitness es una actividad que mejora tu salud física y mental. Aquí aprenderás los conceptos básicos.'),
(8, 'Nutrición deportiva', 'Alimentos esenciales', 'Descubre qué alimentos son clave para rendir mejor en el deporte.'),
(9, 'Rutinas de entrenamiento', 'Guía para principiantes', 'Te mostramos una rutina fácil para empezar en el gimnasio.'),
(10, 'Importancia del descanso', 'Recuperación para el éxito', 'El descanso es crucial para maximizar los resultados de tu entrenamiento y evitar lesiones.'),
(12, 'dd', 'dd', 'addssd'),
(13, 'a', 'a', 'a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
