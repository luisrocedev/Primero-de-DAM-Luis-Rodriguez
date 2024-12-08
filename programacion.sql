-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-12-2024 a las 19:24:26
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
-- Base de datos: `programacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Identificador`, `nombre`) VALUES
(1, 'Camisetas'),
(2, 'Pantalones'),
(3, 'Sudaderas'),
(4, 'Sombreros'),
(5, 'Calzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Identificador`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Cecilia', 'Blanes', 'cabezasasdrubal@hotmail.com'),
(2, 'Ximena', 'Luján', 'colomerligia@gmail.com'),
(3, 'Felipa', 'Gutierrez', 'bsobrino@garate-pujol.com'),
(4, 'Jose Angel', 'Garriga', 'taboadapascual@yahoo.com'),
(5, 'Esperanza', 'Pereira', 'jose-franciscorocha@porcel.com'),
(6, 'Régulo', 'Castro', 'maxirodriguez@gmail.com'),
(7, 'Consuela', 'Chamorro', 'curro69@jaume.es'),
(8, 'Adoración', 'Fernandez', 'mirandafabian@gmail.com'),
(9, 'Joaquín', 'Ferrándiz', 'nicolauanselmo@torrens.org'),
(10, 'Sara', 'Jordán', 'noemi52@herranz.net'),
(11, 'Milagros', 'Izaguirre', 'hernan18@yahoo.com'),
(12, 'Manu', 'Cabañas', 'dieguezluis@plana-cano.es'),
(13, 'Leonor', 'Ramírez', 'hernan55@gmail.com'),
(14, 'Teodosio', 'Codina', 'luis18@calderon.es'),
(15, 'Nidia', 'Alfonso', 'albina96@calleja-cordero.es'),
(16, 'Cándido', 'Flor', 'rita76@gmail.com'),
(17, 'Angelita', 'Pulido', 'eligiocordero@yahoo.com'),
(18, 'Curro', 'Julián', 'miguelfatima@yahoo.com'),
(19, 'Paz', 'Seguí', 'navarretemargarita@yahoo.com'),
(20, 'Curro', 'Linares', 'rosa-mariaizaguirre@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Identificador`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Inventore sudadera', 'Inventore sudadera de alta calidad para uso casual', 86.95),
(2, 'Recusandae camiseta', 'Recusandae camiseta de alta calidad para uso casual', 49.66),
(3, 'Quibusdam sandalias', 'Quibusdam sandalias de alta calidad para uso casual', 69.99),
(4, 'Id sombrero', 'Id sombrero de alta calidad para uso casual', 87.99),
(5, 'Corporis sandalias', 'Corporis sandalias de alta calidad para uso casual', 90.37),
(6, 'Nobis chaqueta', 'Nobis chaqueta de alta calidad para uso casual', 14.68),
(7, 'Veniam sombrero', 'Veniam sombrero de alta calidad para uso casual', 67.42),
(8, 'Quaerat sudadera', 'Quaerat sudadera de alta calidad para uso casual', 39.30),
(9, 'Pariatur pantalón', 'Pariatur pantalón de alta calidad para uso casual', 94.49),
(10, 'Odit pantalón', 'Odit pantalón de alta calidad para uso casual', 99.82),
(11, 'Distinctio chaqueta', 'Distinctio chaqueta de alta calidad para uso casual', 41.17),
(12, 'Voluptatum sandalias', 'Voluptatum sandalias de alta calidad para uso casual', 40.22),
(13, 'Iusto camiseta', 'Iusto camiseta de alta calidad para uso casual', 63.27),
(14, 'Sapiente sudadera', 'Sapiente sudadera de alta calidad para uso casual', 72.08),
(15, 'Quo zapatos', 'Quo zapatos de alta calidad para uso casual', 96.52),
(16, 'Perspiciatis sudadera', 'Perspiciatis sudadera de alta calidad para uso casual', 70.47),
(17, 'Reiciendis gorra', 'Reiciendis gorra de alta calidad para uso casual', 66.13),
(18, 'Voluptas gorra', 'Voluptas gorra de alta calidad para uso casual', 15.28),
(19, 'Assumenda bufanda', 'Assumenda bufanda de alta calidad para uso casual', 75.46),
(20, 'Temporibus sombrero', 'Temporibus sombrero de alta calidad para uso casual', 71.92);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
