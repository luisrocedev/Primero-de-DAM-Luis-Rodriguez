-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2024 a las 21:40:59
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
-- Base de datos: `basededatoscookies`
--
CREATE DATABASE IF NOT EXISTS `basededatoscookies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `basededatoscookies`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cookies`
--

INSERT INTO `cookies` (`Identificador`, `titulo`, `Subtitulo`, `texto`) VALUES
(1, '1. Introducción', '', 'Nuestra web, https://cienciaycatedral.ubuinvestiga.es (en adelante: «la web») utiliza cookies y otras tecnologías relacionadas (para mayor comodidad, todas las tecnologías se denominan «cookies»). Las cookies también son colocadas por terceros a los que hemos contratado. En el siguiente documento te informamos sobre el uso de cookies en nuestra web.'),
(2, '2. ¿Qué son las cookies?', '', 'Una cookie es un pequeño archivo que se envía junto con las páginas de esta web y que tu navegador almacena en el disco duro de su ordenador u otro dispositivo. La información almacenada puede ser devuelta a nuestros servidores o a los servidores de terceros apropiados durante una visita posterior.'),
(3, '3. ¿Qué son los scripts?', '', 'Un script es un fragmento de código de programa que se utiliza para hacer que nuestra web funcione correctamente y de forma interactiva. Este código se ejecuta en nuestro servidor o en tu dispositivo.'),
(4, '4. ¿Qué es una baliza web?', '', 'Una baliza web (o una etiqueta de píxel) es una pequeña e invisible pieza de texto o imagen en una web que se utiliza para monitorear el tráfico en una web. Para ello, se almacenan varios datos sobre usted mediante estas balizas web.'),
(5, '5. Cookies', '5.1 Cookies técnicas o funcionales', 'Algunas cookies aseguran que ciertas partes de la web funcionen correctamente y que tus preferencias de usuario sigan recordándose. Al colocar cookies funcionales, te facilitamos la visita a nuestra web. De esta manera, no necesitas introducir repetidamente la misma información cuando visitas nuestra web y, por ejemplo, los artículos permanecen en tu cesta de la compra hasta que hayas pagado. Podemos colocar estas cookies sin tu consentimiento.'),
(6, '', '5.2 Cookies de estadísticas', 'Utilizamos cookies estadísticas para optimizar la experiencia de la web para nuestros usuarios. Con estas cookies estadísticas obtenemos información sobre el uso de nuestra web. Te pedimos tu permiso para colocar cookies de estadísticas.'),
(7, '', '5.3 Cookies de marketing/seguimiento', 'Las cookies de marketing/seguimiento son cookies, o cualquier otra forma de almacenamiento local, usadas para crear perfiles de usuario para mostrar publicidad o para hacer el seguimiento del usuario en esta web o en varias webs con fines de marketing similares.'),
(8, '7. Consentimiento', '', 'Cuando visites nuestra web por primera vez, te mostraremos una ventana emergente con una explicación sobre las cookies. Tan pronto como hagas clic en «Guardar preferencias», aceptas que usemos las categorías de cookies y plugins que has seleccionado en la ventana emergente, tal y como se describe en esta política de cookies. Puedes desactivar el uso de cookies a través de tu navegador, pero, por favor, ten en cuenta que nuestra web puede dejar de funcionar correctamente.'),
(9, '8. Activación/desactivación y borrado de cookies', '', 'Puedes utilizar tu navegador de Internet para eliminar las cookies de forma automática o manual. También puedes especificar que ciertas cookies no pueden ser colocadas. Otra opción es cambiar los ajustes de tu navegador de Internet para que recibas un mensaje cada vez que se coloca una cookie. Para obtener más información sobre estas opciones, consulta las instrucciones de la sección «Ayuda» de tu navegador.\r\n\r\nTen en cuenta que nuestra web puede no funcionar correctamente si todas las cookies están desactivadas. Si borras las cookies de tu navegador, se volverán a colocar después de tu consentimiento cuando vuelvas a visitar nuestras webs.'),
(10, '9. Tus derechos con respecto a los datos personales', '', 'Tienes los siguientes derechos con respecto a tus datos personales:\r\n\r\nTiene derecho a saber por qué se necesitan tus datos personales, qué sucederá con ellos y durante cuánto tiempo se conservarán.\r\nDerecho de acceso: tienes derecho a acceder a tus datos personales que conocemos.\r\nDerecho de rectificación: tienes derecho a completar, rectificar, borrar o bloquear tus datos personales cuando lo desees.\r\nSi nos das tu consentimiento para procesar tus datos, tienes derecho a revocar dicho consentimiento y a que se eliminen tus datos personales.\r\nDerecho de cesión de tus datos: tienes derecho a solicitar todos tus datos personales al responsable del tratamiento y a transferirlos íntegramente a otro responsable del tratamiento.\r\nDerecho de oposición: puedes oponerte al tratamiento de tus datos. Nosotros cumplimos con esto, a menos que existan motivos justificados para el procesamiento.'),
(11, '10. Datos de contacto', '', 'Para preguntas y/o comentarios sobre nuestra política de cookies y esta declaración, por favor, contacta con nosotros usando los siguientes datos de contacto:\r\n\r\nUniversidad de Burgos\r\nUnidad de Cultura Científica e Innovación (UCC+i-UBU).\r\nCentro de I+D+I/CIBA. Plaza Misael Bañuelos García s/n\r\n09001 Burgos (Burgos). España\r\nEspaña\r\nWeb: https://cienciaycatedral.ubuinvestiga.es\r\nCorreo electrónico: ucci@ubu.es\r\nNúmero de teléfono: 947109576\r\n\r\nEsta política de cookies se ha sincronizado con cookiedatabase.org el 13 de julio de 2022.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Base de datos: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `países`
--

CREATE TABLE `países` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `países`
--
ALTER TABLE `países`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `países`
--
ALTER TABLE `países`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT;
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
-- Base de datos: `cookiesexamen`
--
CREATE DATABASE IF NOT EXISTS `cookiesexamen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cookiesexamen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cookies`
--

INSERT INTO `cookies` (`Identificador`, `titulo`, `subtitulo`, `texto`) VALUES
(1, '1. Introducción', '', 'Nuestra web, https://cienciaycatedral.ubuinvestiga.es (en adelante: «la web») utiliza cookies y otras tecnologías relacionadas (para mayor comodidad, todas las tecnologías se denominan «cookies»). Las cookies también son colocadas por terceros a los que hemos contratado. En el siguiente documento te informamos sobre el uso de cookies en nuestra web.'),
(2, '2. ¿Qué son las cookies?', '', 'Una cookie es un pequeño archivo que se envía junto con las páginas de esta web y que tu navegador almacena en el disco duro de su ordenador u otro dispositivo. La información almacenada puede ser devuelta a nuestros servidores o a los servidores de terceros apropiados durante una visita posterior.'),
(3, '3. ¿Qué son los scripts?', '', 'Un script es un fragmento de código de programa que se utiliza para hacer que nuestra web funcione correctamente y de forma interactiva. Este código se ejecuta en nuestro servidor o en tu dispositivo.'),
(4, '4. ¿Qué es una baliza web?', '', 'Una baliza web (o una etiqueta de píxel) es una pequeña e invisible pieza de texto o imagen en una web que se utiliza para monitorear el tráfico en una web. Para ello, se almacenan varios datos sobre usted mediante estas balizas web.'),
(5, '5. Cookies', '5.1 Cookies técnicas o funcionales', 'Algunas cookies aseguran que ciertas partes de la web funcionen correctamente y que tus preferencias de usuario sigan recordándose. Al colocar cookies funcionales, te facilitamos la visita a nuestra web. De esta manera, no necesitas introducir repetidamente la misma información cuando visitas nuestra web y, por ejemplo, los artículos permanecen en tu cesta de la compra hasta que hayas pagado. Podemos colocar estas cookies sin tu consentimiento.'),
(6, '', '5.2 Cookies de estadísticas', 'Utilizamos cookies estadísticas para optimizar la experiencia de la web para nuestros usuarios. Con estas cookies estadísticas obtenemos información sobre el uso de nuestra web. Te pedimos tu permiso para colocar cookies de estadísticas.'),
(7, '', '5.3 Cookies de marketing/seguimiento', 'Las cookies de marketing/seguimiento son cookies, o cualquier otra forma de almacenamiento local, usadas para crear perfiles de usuario para mostrar publicidad o para hacer el seguimiento del usuario en esta web o en varias webs con fines de marketing similares.'),
(8, '7. Consentimiento', '', 'Cuando visites nuestra web por primera vez, te mostraremos una ventana emergente con una explicación sobre las cookies. Tan pronto como hagas clic en «Guardar preferencias», aceptas que usemos las categorías de cookies y plugins que has seleccionado en la ventana emergente, tal y como se describe en esta política de cookies. Puedes desactivar el uso de cookies a través de tu navegador, pero, por favor, ten en cuenta que nuestra web puede dejar de funcionar correctamente.'),
(9, '8. Activación/desactivación y borrado de cookies', '', 'Puedes utilizar tu navegador de Internet para eliminar las cookies de forma automática o manual. También puedes especificar que ciertas cookies no pueden ser colocadas. Otra opción es cambiar los ajustes de tu navegador de Internet para que recibas un mensaje cada vez que se coloca una cookie. Para obtener más información sobre estas opciones, consulta las instrucciones de la sección «Ayuda» de tu navegador.\r\n\r\nTen en cuenta que nuestra web puede no funcionar correctamente si todas las cookies están desactivadas. Si borras las cookies de tu navegador, se volverán a colocar después de tu consentimiento cuando vuelvas a visitar nuestras webs.'),
(10, '9. Tus derechos con respecto a los datos personales', '', 'Tienes los siguientes derechos con respecto a tus datos personales:\r\n\r\nTiene derecho a saber por qué se necesitan tus datos personales, qué sucederá con ellos y durante cuánto tiempo se conservarán.\r\nDerecho de acceso: tienes derecho a acceder a tus datos personales que conocemos.\r\nDerecho de rectificación: tienes derecho a completar, rectificar, borrar o bloquear tus datos personales cuando lo desees.\r\nSi nos das tu consentimiento para procesar tus datos, tienes derecho a revocar dicho consentimiento y a que se eliminen tus datos personales.\r\nDerecho de cesión de tus datos: tienes derecho a solicitar todos tus datos personales al responsable del tratamiento y a transferirlos íntegramente a otro responsable del tratamiento.\r\nDerecho de oposición: puedes oponerte al tratamiento de tus datos. Nosotros cumplimos con esto, a menos que existan motivos justificados para el procesamiento.\r\n\r\nPara ejercer estos derechos, por favor, contacta con nosotros. Por favor, consulta los detalles de contacto en la parte inferior de esta política de cookies. Si tienes alguna queja sobre cómo gestionamos tus datos, nos gustaría que nos la hicieras saber, pero también tienes derecho a enviar una queja a la autoridad supervisora (la autoridad de protección de datos).'),
(11, '10. Datos de contacto', '', 'Para preguntas y/o comentarios sobre nuestra política de cookies y esta declaración, por favor, contacta con nosotros usando los siguientes datos de contacto:\r\n\r\nUniversidad de Burgos\r\nUnidad de Cultura Científica e Innovación (UCC+i-UBU).\r\nCentro de I+D+I/CIBA. Plaza Misael Bañuelos García s/n\r\n09001 Burgos (Burgos). España\r\nEspaña\r\nWeb: https://cienciaycatedral.ubuinvestiga.es\r\nCorreo electrónico: ucci@ubu.es\r\nNúmero de teléfono: 947109576\r\n\r\nEsta política de cookies se ha sincronizado con cookiedatabase.org el 13 de julio de 2022.'),
(23, 'finalizando', 'recta final', 'finish!'),
(25, 'prueba final', 'prueba final si o si', 'estamos en la recta final');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `memebresias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `memebresias` (
`Fecha_Asistencia` date
,`Estado_Asistencia` int(255)
,`Fecha_Registro` date
,`Noobs` varchar(255)
,`Entrenadores` varchar(255)
,`Tipo_Membresia` varchar(255)
,`Costo` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `memebresias`
--
DROP TABLE IF EXISTS `memebresias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memebresias`  AS SELECT `asistencias`.`Fecha_Asistencia` AS `Fecha_Asistencia`, `asistencias`.`Estado_Asistencia` AS `Estado_Asistencia`, `clientes`.`Fecha_Registro` AS `Fecha_Registro`, `clientes`.`Nombre` AS `Noobs`, `entrenadores`.`Nombre` AS `Entrenadores`, `membresias`.`Tipo_Membresia` AS `Tipo_Membresia`, `membresias`.`Costo` AS `Costo` FROM ((((`asistencias` left join `clientes` on(`clientes`.`ID_Cliente` = `asistencias`.`ID_Cliente`)) left join `clases` on(`clases`.`ID_Clase` = `asistencias`.`ID_Clase`)) left join `entrenadores` on(`entrenadores`.`ID_Entrenador` = `clases`.`ID_Entrenador`)) left join `membresias` on(`membresias`.`ID_Membresia` = `clientes`.`ID_Membresia`)) WHERE `entrenadores`.`ID_Entrenador` = 1 ;

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
-- Base de datos: `examenbd`
--
CREATE DATABASE IF NOT EXISTS `examenbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `examenbd`;

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
(5, 'Lionel', 'Messi', '2004-10-01', 9),
(9, 'manito', 'pollo', '2004-11-06', 135),
(10, 'AAA', 'AAA', '2004-11-06', 128),
(11, 'ccc', 'cccc', '1994-11-12', 137),
(12, 'ffff', 'fff', '2004-10-15', 145),
(13, 'IOII', 'III', '2004-10-15', 130);

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
(5, 'Lionel', 'Messi', '2004-10-01', 9),
(9, 'manito', 'pollo', '2004-11-06', 135),
(10, 'AAA', 'AAA', '2004-11-06', 128),
(11, 'ccc', 'cccc', '1994-11-12', 137),
(12, 'ffff', 'fff', '2004-10-15', 145),
(13, 'IOII', 'III', '2004-10-15', 130);

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
  MODIFY `identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`Identificador`, `nombre`, `email`, `asunto`, `texto`) VALUES
(1, 'Luis', 'luisilustraciones@gmail.com', 'Base de datos', 'Hola este es un mensaje.'),
(2, 'Josue Rodriguez', 'josu.rodriguez.1997@gmail.com', 'Prime Video', 'Quiero pagar el prime video.');

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
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
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
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `manytomany`
--
CREATE DATABASE IF NOT EXISTS `manytomany` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `manytomany`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Identificador`, `nombre`, `descripcion`) VALUES
(1, 'Matemáticas', 'Curso básico de álgebra y geometría'),
(2, 'Historia', 'Historia universal desde la Edad Media'),
(3, 'Programación', 'Introducción al desarrollo de software'),
(4, 'Inglés', 'Curso de inglés básico e intermedio'),
(5, 'Física', 'Fundamentos de la física clásica y moderna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`Identificador`, `nombre`, `apellido`, `correo`) VALUES
(1, 'Ana', 'Pérez', 'ana.perez@mail.com'),
(2, 'Luis', 'Martínez', 'luis.martinez@mail.com'),
(3, 'Carla', 'López', 'carla.lopez@mail.com'),
(4, 'Miguel', 'Gómez', 'miguel.gomez@mail.com'),
(5, 'Sofía', 'Ramírez', 'sofia.ramirez@mail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_cursos`
--

CREATE TABLE `estudiantes_cursos` (
  `Identificador` int(255) NOT NULL,
  `id_estudiante` int(255) NOT NULL,
  `id_curso` int(255) NOT NULL,
  `fecha_inscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes_cursos`
--

INSERT INTO `estudiantes_cursos` (`Identificador`, `id_estudiante`, `id_curso`, `fecha_inscripcion`) VALUES
(1, 1, 1, '2024-01-10'),
(2, 1, 3, '2024-01-12'),
(3, 2, 2, '2024-01-11'),
(4, 2, 4, '2024-01-15'),
(5, 3, 1, '2024-01-20'),
(6, 3, 5, '2024-01-25'),
(7, 4, 3, '2024-01-18'),
(8, 4, 4, '2024-01-22'),
(9, 5, 2, '2024-01-14'),
(10, 5, 5, '2024-01-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `estudiantes_cursos`
--
ALTER TABLE `estudiantes_cursos`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `estudiantesacursos` (`id_estudiante`),
  ADD KEY `cursosaestuadiente` (`id_curso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes_cursos`
--
ALTER TABLE `estudiantes_cursos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes_cursos`
--
ALTER TABLE `estudiantes_cursos`
  ADD CONSTRAINT `cursosaestuadiente` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`Identificador`),
  ADD CONSTRAINT `estudiantesacursos` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`Identificador`);
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
-- Base de datos: `navidana`
--
CREATE DATABASE IF NOT EXISTS `navidana` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `navidana`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `Identificador` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`Identificador`, `nombre`, `email`, `asunto`, `texto`) VALUES
(10, 'Luis', 'luisilustraciones@gmail.com', 'Donacion Juguetes', 'Quiero donar juguetes.'),
(11, 'jose', 'jose@gmail.com', 'prueba', 'pruebanhsdfgbghkj gkdfg'),
(12, 'jose', 'jose@gmail.com', 'bnvhfk', 'fadsfg dgfd h');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

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

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('crossfit', 1, 'c1'),
('basededatoscookies', 2, 'cookies');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cookiesexamen\",\"table\":\"cookies\"},{\"db\":\"examenbd\",\"table\":\"proyecto\"},{\"db\":\"examenbd\",\"table\":\"inicio\"},{\"db\":\"examenbd\",\"table\":\"expertos\"},{\"db\":\"examenbd\",\"table\":\"documentaciongraficacategorias\"},{\"db\":\"examenbd\",\"table\":\"documentaciongrafica\"},{\"db\":\"examenbd\",\"table\":\"creditos\"},{\"db\":\"examenbd\",\"table\":\"cookies\"},{\"db\":\"examenbd\",\"table\":\"capitulosexpertos\"},{\"db\":\"examenbd\",\"table\":\"capitulos\"}]');

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

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('basededatoscookies', 'cookies', 2, 636, 148),
('crossfit', 'asistencias', 1, 806, 68),
('crossfit', 'clases', 1, 770, 490),
('crossfit', 'clientes', 1, 337, 349),
('crossfit', 'entrenadores', 1, 1155, 193),
('crossfit', 'membresias', 1, 363, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('examenbd', 'documentaciongrafica', 'Imagen'),
('programacionrepaso', 'documentaciongrafica', 'imagen');

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
('root', '2024-12-04 20:40:31', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":308}');

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
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `programacion`
--
CREATE DATABASE IF NOT EXISTS `programacion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `programacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
--
-- Base de datos: `programacionrepaso`
--
CREATE DATABASE IF NOT EXISTS `programacionrepaso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `programacionrepaso`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `Identificador` int(255) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`Identificador`, `Numerador`, `Titulo`, `Subtitulo`, `Imagen`, `Video`, `Texto`) VALUES
(1, 'Capítulo I', 'La Arquitectura', 'De los cimientos a las agujas', 'La-ciencia-que-esconde-la-catedral-de-Burgos-La-arquitectura-min.jpg', 'https://www.youtube.com/watch?v=N-OBoksb9oQ', 'La Catedral de Burgos ha visto pasar 800 años. Generación tras generación, este edificio tan singular ha visto pasar guerras, pandemias, temporales y miles de vidas que han continuado asombrándose con su figura.\r\n\r\nEn el año 1221 se colocó la primera piedra de un proyecto ideado por el Obispo Mauricio y Fernando III el Santo. La nueva catedral, de orden gótico, estaba llamada a sustituir la antigua construcción románica y marcar un hito en el Camino de Santiago y en la historia del arte, inspirándose en las basílicas francesas. La llegada del gótico permitió aligerar los muros y comenzar a construir en altura, buscando el cielo y permitir el paso de la luz.\r\n\r\nEn este primer capítulo, dos profesores de la Universidad de Burgos nos guiarán por las fórmulas de construcción del templo. René Payo y José Matesanz nos introducen en la técnica empleada para levantar las paredes de la catedral, un prodigio científico y tecnológico aún en nuestros días y con la dificultad adicional de los medios empleados por parte de obreros y canteros.\r\n\r\nAdemás, nos adentramos en el Archivo de la seo burgalesa con Matías Vicario, canónigo archivero, para recorrer la memoria de la catedral, con cientos de documentos que no sólo recogen textos eclesiásticos, sino multitud de documentación sobre la vida en la ciudad, la economía, medicina… además de toda la producción documental de la propia Catedral. Una auténtica joya conservada por siglos.\r\n\r\nSin embargo, la construcción de la basílica burgalesa fue todo un desafío que se extendió durante siglos. Las agujas, el cimborrio y algunas de las capillas más emblemáticas son construcciones posteriores que conjugan estilos y técnicas de diferentes épocas. Es precisamente esta unión de estilos, como el gótico, el renacimiento, el barroco y el neoclásico lo que convierte a la catedral de Burgos en un monumento único. Para comprender las particularidades de su construcción, Javier Garabito, arquitecto de la catedral y profesor de la Universidad de Burgos, nos enseña los fundamentos del gótico y la importancia de sus bóvedas, arcos y arbotantes.\r\n\r\nAdemás, la ciencia de la época se basaba, en buena parte, en el ensayo y el error. Prueba de ello fue la caída del cimborrio original ya que, a pesar del enorme conocimiento de los constructores, su técnica podía fallar en ocasiones. Por otro lado, la posición de la seo, construida en cuesta, supone un desafío adicional para su construcción.'),
(2, 'Capítulo II', 'La piedra', 'De los cimientos a las agujas', 'La-ciencia-que-esconde-la-catedral-de-Burgos-La-piedra-min.jpg', 'https://youtu.be/vIDIP3gjGcY', 'La piel de la catedral de Burgos es especial. El revestimiento pétreo de caliza, extraído de las proximidades de Burgos, en la cantera de Hontoria, le da un color muy característico, mientras ha permitido que su estructura y su belleza se mantengan hasta nuestros días.\r\n\r\nLa llegada del gótico a las catedrales supone comenzar a dar importancia a la luz. Los muros suben hacia el cielo, las paredes se abren con vidrieras de colores y la luminosidad de la piedra comienza a ser más importante que nunca. Gabriel García Agudo, uno de los responsables de Patrimonio de la Luz, responsables de la gestión de las canteras en la actualidad, nos acerca a lo que supuso extraer la piedra de la roca viva con herramientas artesanales. Para conocer las técnicas de extracción y labrado recurrimos a José Javier Barrio, restaurador y tallista, que nos enseña los secretos de la talla, tanto para los sillares como para los elementos decorativos.\r\n\r\nLa piedra blanca de Hontoria otorga un brillo muy especial a la basílica, tanto en el exterior como en su interior. René Payo y José Matesanz, profesores de la Universidad de Burgos, nos señalan sus características: una piedra maleable, que gana en resistencia con el paso del tiempo. Sin embargo, toda piedra necesita mantenimiento y restauración. Los trabajos en la catedral, como señala José Javier Barrio, son constantes y se realizan con métodos artesanales para respetar al máximo el espíritu y la estética de la catedral.\r\n\r\nQuizá la actuación más visible haya sido, precisamente, la realizada sobre la fachada de la seo burgalesa. La limpieza del exterior volvió a mostrar el color blanco de sus paredes, dejando atrás el gris que durante tanto tiempo habíamos conocido. No solo se realizó la limpieza, sino que se aplicaron técnicas de conservación que, sin alterar su aspecto, protegen la piel de la basílica.\r\n\r\nLos cambios no fueron solo estéticos. La piedra supone el principal elemento estructural de toda la catedral y su cuidado debe ser constante. Aplicar los conocimientos de física, química, ingeniería y arquitectura resulta fundamental para protegerla de la oxidación, de gelifracción (la ruptura por el hielo), la contaminación… La Catedral de Burgos goza de una excelente salud tras las restauraciones llevadas a cabo los últimos años, pero los cuidados deben ser constantes y delicados para mantener su magnífico aspecto y la firmeza que ha mantenido durante sus 800 años de historia.           '),
(3, 'Capítulo III', 'Las matemáticas', 'Geometrías sagradas', 'La-ciencia-que-esconde-la-catedral-de-Burgos-Las-matematicas-min.jpg', 'https://youtu.be/AMpqREfzuCk', 'La catedral de Burgos está hecha de piedra… y matemáticas. Alberga multitud de proporciones, relaciones y figuras geométricas que no sólo hacen que se mantenga en pie, sino que nos parezca armónica y bella.\r\n\r\nEn palabras de René Payo, profesor de la Universidad de Burgos, los constructores de las catedrales, los canteros, estaban “obsesionados” con la geometría y las proporciones matemáticas. Estas proporciones armónicas nos transmiten, por un lado, una sensación de belleza, pero también con un sentimiento religioso relacionado con la idea de paz y perfección. Para acercarnos a estos conceptos entrevistamos a Constantino de la Fuente, matemático y catedrático de matemáticas del instituto cardenal López de Mendoza. De la Fuente nos relata los procesos utilizados para el diseño y creación de la Catedral de Burgos basada en la proporción, la relación entre dos magnitudes.\r\n\r\nAl medir en función de proporciones, no importa tanto el dato numérico de una de las cantidades, sino la relación entre las dos. Si miramos bajo este prisma, las matemáticas surgen por todas partes en la basílica. Esta geometría permite crear patrones y adaptarlos en los diferentes diseños ornamentales. Uno de los diseños más presentes en la Catedral de Burgos es la vesica piscis, el símbolo del pez usado por los primeros cristianos y que corresponde a la zona común entre dos círculos. Esta figura permite mantener armonía y ritmo en los diseños.\r\n\r\nTampoco podía faltar el número más famoso si hablamos de proporciones: phi, el número áureo. La proporción áurea, conocida en multitud de animales y plantas, está presente en la catedral de Burgos en el cimborrio y la Escalera Dorada, dos de los elementos más reconocibles del interior de la seo, especialmente en la escalera. Diseñada en el Renacimiento, Diego de Siloé conocía, a buen seguro, la proporción áurea y la aplicó en su diseño, además de incluir el llamado “triángulo dorado”, que sigue la misma proporción que las agujas de la catedral.\r\n\r\nAdemás de todas estas proporciones, existen muchas otras relaciones geométricas en la Catedral, como el número de plata o la proporción cordobesa, muy ligada al arte mudéjar, formando un conjunto de hibridación y unión de estilos y culturas.\r\n\r\nComo señala el profesor de la Universidad de Burgos, José Matesanz, estas proporciones eran bien conocidas por los constructores de la catedral y le otorgan buena parte de la belleza presente en el edificio, tanto en su exterior como en su luminoso interior.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulosexpertos`
--

CREATE TABLE `capitulosexpertos` (
  `Identificador` int(255) NOT NULL,
  `capitulos_nombre` int(255) NOT NULL,
  `expertos_nombre` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `capitulosexpertos`
--

INSERT INTO `capitulosexpertos` (`Identificador`, `capitulos_nombre`, `expertos_nombre`) VALUES
(1, 3, 1),
(2, 2, 2),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cookies`
--

INSERT INTO `cookies` (`Identificador`, `Titulo`, `Subtitulo`, `Texto`) VALUES
(1, 'pete', '', 'Los sitios web y los servicios online de Apple pueden usar «cookies». Las cookies te permiten comprar mediante el carrito y personalizar los sitios, y a nosotros nos permiten saber qué páginas visitan los clientes. Nos ayudan a medir la eficacia de los anuncios y búsquedas, y nos dan información sobre el comportamiento de los usuarios, que utilizamos para mejorar nuestros productos y mensajes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `Identificador` int(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `documentaciongraficacategorias_nombrecategoria` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentaciongrafica`
--

INSERT INTO `documentaciongrafica` (`Identificador`, `imagen`, `texto`, `documentaciongraficacategorias_nombrecategoria`) VALUES
(1, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2021/09/Fachada-de-la-Catedral-de-Burgos-min-400x284.jpg', 'Fachada de la Catedral de Burgos', 4),
(2, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_00000159-400x284.jpg', 'La_Catedral_de_Burgos_00000159', 1),
(3, 'https://cienciaycatedral.ubuinvestiga.es/wp-content/uploads/sites/14/2022/07/La_Catedral_de_Burgos_00000091-400x284.jpg', 'La_Catedral_de_Burgos_00000091', 1);

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
(1, 'Österreichische Nationalbibliothek'),
(2, 'Wikimedia Commons'),
(3, 'Portal de Archivos Españoles (PARES)'),
(4, 'Museo del Prado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `Identificador` int(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Oficio` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`Identificador`, `Nombre`, `Oficio`, `Imagen`, `Video`, `Texto`) VALUES
(1, 'Constantino de la Fuente', 'Catedrático de secundaria y doctor en matemáticas', '', 'https://youtu.be/RHI6dUOBeVM', 'Constantino de la Fuente es catedrático de secundaria y doctor en matemáticas, además de presidente fundador de la Sociedad Castellana y Leonesa de Educación matemática Miguel de Guzmán.\r\n\r\nHa desarrollado una intensa carrera investigadora con numerosos artículos en revistas científicas, además de conferencias en jornadas y congresos, todo ello mientras desarrollaba su actividad docente en el IES Cardenal López de Mendoza.  De la Fuente es autor de dos libros sobre matemáticas en la catedral de Burgos y ha destacado por su implicación en la divulgación de la cultura científica y matemática entre los más jóvenes.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, De la Fuente nos guía por los secretos matemáticos que esconde el templo, tanto en su construcción como en su decoración. Proporciones como el número áureo, el rectángulo de plata o la proporción cordobesa se encuentran en algunos de los lugares más emblemáticos de la catedral, como el rosetón del Sarmental, la escalera dorada y el cimborrio la combinación de sus octógonos. \r\n\r\nEstas proporciones también pueden albergar un significado religioso, como en la vesica piscis, la intersección entre dos círculos que se utilizó como símbolo de Cristo entre los primeros creyentes. Todas estas proporciones, formas geométricas y algebraicas revelan una comprensión de las matemáticas muy precisa que llega a su punto más alto con la Escalera dorada. La obra de Diego de Siloé está inspirada en el renacimiento italiano y en su construcción alberga un sinfín de proporciones relacionadas que le permiten ser una solución arquitectónica brillante y, al mismo tiempo, una obra armónica que ha deslumbrado a arquitectos de todo el mundo.\r\n\r\nPor último, nos enseña que en las proporciones también puede haber ecos de otras culturas, como en el Cimborrio de la catedral, donde el arte mozárabe está presente en algunas de las relaciones y proporciones que conforman esta obra de arte barroca.'),
(2, 'Enrique Barrio', 'Maestro vidriero. Ha restaurado y recreado vidrieras en la catedral', '', 'https://youtu.be/fQ_t4d-z7vM', 'Enrique Barrio es maestro vidriero y ha colaborado en la restauración y recreación de varias vidrieras en la catedral de Burgos. Con formación tanto en la técnica de las vidrieras como en estudios históricos sobre el vidrio, colabora habitualmente en publicaciones y proyectos científicos, así como en la difusión de su trabajo a través de conferencias para dar a conocer la importancia del mantenimiento y la conservación del patrimonio artístico.\r\n\r\nAdemás de en la catedral de Burgos, ha realizado actuaciones en las catedrales de Astorga, Mallorca, Orense y Cienfuegos (Cuba) y mantiene formas de trabajo tradicionales para la creación y conservación de los vitrales. Para realizar las labores de conservación, Enrique Barrio realiza un estudio de las características físicas y químicas de cada vidrio completo, sus materiales y los problemas de degradación y deterioro que presenta.\r\n\r\nEn La ciencia que esconde la Catedral de Burgos, Barrio nos muestra su trabajo en el taller, en el que mantiene las formas de creación, pintura, corte y emplomado tradicionales y que resultan fundamentales para que se mantenga la esencia y el aspecto de las vidrieras tradicionales del templo, que, además, suponen una enorme muestra del recorrido histórico del arte de la vidriera a lo largo de los siglos. Además, nos enseña los criterios a la hora del mantenimiento y sustitución de los vitrales.');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `expertosencapitulos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `expertosencapitulos` (
`Numerador` varchar(255)
,`Titulo` varchar(255)
,`Subtitulo` varchar(255)
,`nombre` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `expertosencapitulos`
--
DROP TABLE IF EXISTS `expertosencapitulos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expertosencapitulos`  AS SELECT `capitulos`.`Numerador` AS `Numerador`, `capitulos`.`Titulo` AS `Titulo`, `capitulos`.`Subtitulo` AS `Subtitulo`, `expertos`.`Nombre` AS `nombre` FROM ((`capitulosexpertos` left join `capitulos` on(`capitulosexpertos`.`capitulos_nombre` = `capitulos`.`Identificador`)) left join `expertos` on(`capitulosexpertos`.`expertos_nombre` = `expertos`.`Identificador`)) ;

--
-- Índices para tablas volcadas
--

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
  ADD KEY `capitulosexpertos_capitulos` (`capitulos_nombre`),
  ADD KEY `capitulosexpertos_expertos` (`expertos_nombre`);

--
-- Indices de la tabla `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD PRIMARY KEY (`Identificador`),
  ADD KEY `documentaciongraficaacategoria` (`documentaciongraficacategorias_nombrecategoria`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  ADD CONSTRAINT `capitulosexpertos_capitulos` FOREIGN KEY (`capitulos_nombre`) REFERENCES `capitulos` (`Identificador`),
  ADD CONSTRAINT `capitulosexpertos_expertos` FOREIGN KEY (`expertos_nombre`) REFERENCES `expertos` (`Identificador`);

--
-- Filtros para la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  ADD CONSTRAINT `documentaciongraficaacategoria` FOREIGN KEY (`documentaciongraficacategorias_nombrecategoria`) REFERENCES `documentaciongraficacategorias` (`Identificador`);
--
-- Base de datos: `proyectoapple`
--
CREATE DATABASE IF NOT EXISTS `proyectoapple` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proyectoapple`;
--
-- Base de datos: `repasop`
--
CREATE DATABASE IF NOT EXISTS `repasop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `repasop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `Identificador` int(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `Identificador` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
