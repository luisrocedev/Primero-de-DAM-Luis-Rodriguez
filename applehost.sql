-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-12-2024 a las 19:22:24
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
-- Base de datos: `basededatoscookies`
--
CREATE DATABASE IF NOT EXISTS `basededatoscookies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `basededatoscookies`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookies`
--

CREATE TABLE `cookies` (
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT;
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
  `identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
  `ID_Asistencia` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Clase` int(11) NOT NULL,
  `Fecha_Asistencia` date NOT NULL,
  `Estado_Asistencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ID_Clase` int(11) NOT NULL,
  `Nombre_Clase` varchar(255) NOT NULL,
  `Horario` varchar(255) NOT NULL,
  `Capacidad_Maxima` int(11) NOT NULL,
  `ID_Entrenador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `ID_Membresia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ID_Entrenador` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Especialidad` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Certificaciones` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `ID_Membresia` int(11) NOT NULL,
  `Tipo_Membresia` varchar(255) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `Duracion` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
,`Estado_Asistencia` int(11)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `memebresias`  AS SELECT `asistencias`.`Fecha_Asistencia` AS `Fecha_Asistencia`, `asistencias`.`Estado_Asistencia` AS `Estado_Asistencia`, `clientes`.`Fecha_Registro` AS `Fecha_Registro`, `clientes`.`Nombre` AS `Noobs`, `entrenadores`.`Nombre` AS `Entrenadores`, `membresias`.`Tipo_Membresia` AS `Tipo_Membresia`, `membresias`.`Costo` AS `Costo` FROM ((((`asistencias` left join `clientes` on((`clientes`.`ID_Cliente` = `asistencias`.`ID_Cliente`))) left join `clases` on((`clases`.`ID_Clase` = `asistencias`.`ID_Clase`))) left join `entrenadores` on((`entrenadores`.`ID_Entrenador` = `clases`.`ID_Entrenador`))) left join `membresias` on((`membresias`.`ID_Membresia` = `clientes`.`ID_Membresia`))) WHERE (`entrenadores`.`ID_Entrenador` = 1) ;

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
  MODIFY `ID_Asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `ID_Clase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `entrenadores`
--
ALTER TABLE `entrenadores`
  MODIFY `ID_Entrenador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `ID_Membresia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `Identificador` int(11) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Personas` varchar(255) NOT NULL,
  `Cargos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentaciongrafica`
--

CREATE TABLE `documentaciongrafica` (
  `Identificador` int(11) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `nombrecategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Oficio` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaexpertos`  AS SELECT `capitulos`.`Titulo` AS `Titulo`, `capitulos`.`Subtitulo` AS `Subtitulo`, `expertos`.`Nombre` AS `Nombre`, `expertos`.`Oficio` AS `Oficio` FROM ((`capitulosexpertos` left join `capitulos` on((`capitulosexpertos`.`id_expertos` = `capitulos`.`Identificador`))) left join `expertos` on((`capitulosexpertos`.`id_capitulo` = `expertos`.`Identificador`))) ;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `bibliografia`
--
ALTER TABLE `bibliografia`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `divsiones_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `valor` decimal(15,2) NOT NULL,
  `jugadores_nombre` int(11) NOT NULL,
  `equipos_nombre` int(11) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `divsiones_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `paises_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `paises_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `visitante` int(11) NOT NULL,
  `local` int(11) NOT NULL,
  `jornadas` int(11) NOT NULL,
  `horadeinicio` time NOT NULL,
  `golesvisitante` int(11) NOT NULL,
  `goleslocal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `texto` text COLLATE utf8mb4_spanish_ci NOT NULL
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
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `texto` text COLLATE utf8mb4_spanish_ci NOT NULL
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
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `texto` text COLLATE utf8mb4_spanish_ci NOT NULL
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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `fecha_inscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes_cursos`
--
ALTER TABLE `estudiantes_cursos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `poblacion` varchar(255) NOT NULL,
  `fechadenacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `codigopostal` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `empleados_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `pedidos_fecha` int(11) NOT NULL,
  `productos_nombre` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clientes_apellidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `identificador` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `empladosydirecciones`  AS SELECT `empleados`.`nombre` AS `nombre`, `empleados`.`apellidos` AS `apellidos`, `direcciones`.`calle` AS `calle`, `direcciones`.`codigopostal` AS `codigopostal` FROM (`empleados` left join `direcciones` on((`direcciones`.`empleados_nombre` = `empleados`.`identificador`))) ;

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
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lineaspedido`
--
ALTER TABLE `lineaspedido`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  `Identificador` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `texto` text COLLATE utf8mb4_spanish_ci NOT NULL
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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
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
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
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
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"INFORMATION_SCHEMA\",\"table\":\"TABLES\"},{\"db\":\"proyectoapple\",\"table\":\"usuarios\"},{\"db\":\"proyectoapple\",\"table\":\"oferta\"},{\"db\":\"proyectoapple\",\"table\":\"heroes\"},{\"db\":\"proyectoapple\",\"table\":\"destacados\"},{\"db\":\"proyectoapple\",\"table\":\"categorias\"},{\"db\":\"cookiesexamen\",\"table\":\"cookies\"},{\"db\":\"examenbd\",\"table\":\"proyecto\"},{\"db\":\"examenbd\",\"table\":\"inicio\"},{\"db\":\"examenbd\",\"table\":\"expertos\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
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
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-08 19:22:00', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":308}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  `Identificador` int(11) NOT NULL,
  `Numerador` varchar(255) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `capitulos_nombre` int(11) NOT NULL,
  `expertos_nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Subtitulo` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `documentaciongraficacategorias_nombrecategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `nombrecategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Identificador` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Oficio` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `expertosencapitulos`  AS SELECT `capitulos`.`Numerador` AS `Numerador`, `capitulos`.`Titulo` AS `Titulo`, `capitulos`.`Subtitulo` AS `Subtitulo`, `expertos`.`Nombre` AS `nombre` FROM ((`capitulosexpertos` left join `capitulos` on((`capitulosexpertos`.`capitulos_nombre` = `capitulos`.`Identificador`))) left join `expertos` on((`capitulosexpertos`.`expertos_nombre` = `expertos`.`Identificador`))) ;

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
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `capitulosexpertos`
--
ALTER TABLE `capitulosexpertos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cookies`
--
ALTER TABLE `cookies`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `documentaciongrafica`
--
ALTER TABLE `documentaciongrafica`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `documentaciongraficacategorias`
--
ALTER TABLE `documentaciongraficacategorias`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
(1, 'Store'),
(2, 'Mac'),
(3, 'iPad'),
(4, 'iPad'),
(5, 'iPhone'),
(6, 'Watch'),
(7, 'Vision'),
(8, 'AirPods'),
(9, 'TV&Home'),
(10, 'Entertainment'),
(11, 'Accesories'),
(12, 'Suport'),
(14, 'Prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `Identificador` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `comprar` varchar(255) NOT NULL,
  `imagen` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(1, 'AirPods Pro 2', 'Now with a Hearing Aid feature.', '', '', 0x5249464642700000574542505650382036700000b094029d012a2003c2013e91429b4a25a3af2da7728b69e01209626d2ab16654b73505c4f5f8524addfb74ddb1f89af1efe8566b5400f069e6473c5ff97e8773e1f2adc5587f3e4c63ecdff0ffa6f4a9e3def43e9df8aff3fc999b8796fbd27a7cfd9bec47faffd507ce37eed7ee47bbafaa0fefdea51fda7aaebd0efa63bf7a3d29fffff67bf397f797cf87ad9ff4ff81e73fbf9fe4ff7ded77ff3eb5fe3bff0f3d3fb3ff69cb4b505ecb2fe3edbc64fe8f60e4f45ffb79d2fdaf7e78615cb9b37aa8f33ff79103df80a0f5b428c71a19e8ca0dd73629e5feb1be523ce7e626180293ca8b1af42907035392943d20c87945d0dc174b695ffbba16e911a62b6904e990e89757d06cda3694a4affa86c317ba2aa0787dacf6095fe6402d269fe5a48f9c46fd529c91d69367ea4c414e561fee1d32de0cca94af0ffabc41d83c14fb1e94feb22c5fde3fff50e277c7d3ffe1b6f7b8d6d6f325fa60911fbf25aaf6d5d7034237cdec7ab6f0826f8f1b47b60f503afe990cb1d96909ee91d5f086494c5abf6c360f65ddf22b1d4d03c6818f29d541e46919ef24a16dc53ddf8ccb5f45f8dfd42da0c7f52442a27224df69c890e745fa1b5cb9bbaa8a7b6444142e87d55dd6cd957c7d48004a36d8315f48e2055410877aa72dada352860c2312b3cba24ff6f726c3d14d68972ea7f5eebd06fe8f2fd3289eaece80e2467c2cf678752025301292f726b81f8e788499576cc57d0835d74ee4aa1b70022902cefa510d0bd277b0c59faac93324e7cea7887f5d63ee30bcf5e01b1bb578ce0b0975d51c295c6f2efc3e01f96b51cb7da8a869531a7de37f35527a12a84cd51fff47bd1197b24e4f86021bd8f43a8713283f2ee7334523d6a036fb798f167ec3e11c45e75cf6fd911694963f5dc59c3f2c5c0c4bf623fa3b58e3310cc0ae8a27e62f7be6976db04c2b76d1dcc6743751b784fe82a05e20091ea234b3128443ff19973103128e0a3bd354bf9e0928f6fcee2c740a9d3e6180982fbaef3111e643410d04d3fc9ede608d97ad6c5c578085d5cfc78961d2e970d1c44fd3ff8548360b7d71c2892dd4eb33d34212bbb3bf02689746483b48995f560f44a1f9a6c383b2b561d74545a076d79359ba69ca57e762182bf4798b211487f0b8194a47106244b0713d46563898b9c1c04fc0bc6234aac098e2385c35fffe8d3a9b510eb0626b5fc9d8485cca1fc0dd7b91b02ebe3daa15ec13ebdbe9b628632353c677cc143354264466d75b03770e217c67bb46acd75a90a0bea023fb546643a0c904e54889dbc3381ec6a1e2ad331934a3881ced785349b60ae19891295014cb9143e7ea8c616c5356808464e5604afa24f37db7d4ec461b96343dc57d6a929530c8b36798075bfb9e3d01773f7d67ba0e31c53c87d31e0a2465651228c3c3980defe19e3a0396270ce8e2f73c4900d3d7d3d7b61d8e3decf4fb34796a185f54f6ee4a65aa8842725f1803cb8ff2760bfe7d1be362fef4b41599d71515094e2e44d9afa5209be703385399418c928fd4d41ac70c2ff8a044c23376aa850f86123d5fea8d98b1262ad90b503de37733047601e970123f329b209c3ee5fc5fbb8d9248199533154cb466af664fa44be316240f2305a7682c85126e878eb0c25c4ea3692099fda11c819d2b8234de2ab65544d7c24cf0d5164871c2889418c1c9a6846b69670f29d21164262b7187dbfa8a2f5e2b599eb9ab165a3b00129427bce24c1c4320a60e82ce467d11a2ebdeaabb75e0f627b892b96698d61cd1e1f0a7051cdfab82f0edd387660eecc89fb2953596c7a38300943ca5b91ae3a41997bad4aae3c9ebd9b335e64cbd27d7e77ffecc1cab3580e68979aa65cc2b164c828281c2509ebdae9b022fd858befc52f219421f43210a417bbe1ffe7910d6d0406f1ac93efb8c6d121a72fa73dd16bb649ae98a7636b9785cc63c4bfbdfd4f972be4323e5ea3c1c60ce28cf6705809bf9897d10a28d5a2e938943e63052d1c4ad143ba133c8c8ea2d264c87e5508997b631d223c561a54a2c345499a9684f05c9ef17aaff8fa2100a441d50d35a84ba3d6e9a9ccf0b52a87118684bd40425cd7fdff825f6f4de93350c5bf4cc7f0b4cffdd5a42d235249874c214aa4676285554903536870420f73cca817abc2e66a177891613aff486696dc2583fdc13ac03bf97b971f85a978da35244f3446cc0de72964e512d4471134e33a951d3ade37ffd8c15bd10ccbb9fd306d193c1e594cbd8b2d613b98b89c88365a0d3b78f0089ea9ab01847af6d0ac17330c3004202a27877bd7ff6e0eb044a350aefcefef3ee9b1db505cc4bca349b50caaa4162ef89f72dfc16bb186153bd54c1d226ca1a01cf5c775366c51690c1e5ed9b264de3f4c583eb8ff64c0584a3eca378a5fedf104a8bd2296d64d1a2afc347dc4c15f5f9f600caa19d5bb701fbcac2b6b57552306abc7c364fe2a806b5064a0e0d1e6a30e2c51cc3d96e9d42c659d53f0a23d3ba4bc5218258084b7f59224fb758a39d5f6e07a24aac698ca25fd1621ffaacff5e50ceb7f05667bae5689cb37becb36a368aaf4b3903d5ca84e7ae565759b8aab9046ab122257b03b62c5783920d3965d0739acae43bed878e664d24cdf200fae706ea1919095c10439d32107b37765cddd078847abd8b8f68f6d18dd55cccae48dd14939aa455a62a62b8944b7c9c9df6a8f2e40012f0d3dfa4337e934fbcf6a85939de5be32fd3143e878122ce98f78793b057bdd819eaeb224ce7b991b04217297e90d5d470c510a7ea2405d1aabd4132d87c58bebe533c051511ee0d636353c4a294e80903efabd16813af2a0a5899ee3f6d3d14b0d5619a4c5e8e2e075d2bb7b2b237e6f0544641231c239ef865d87635ac8315ee840135dafcab6089f5ebfe45bec24f2b47d1fb26b8e14968d07f7e7d8a6109d08854fef8919eecad659bde38098590f642deed684468b507769ed8c725bb4176712ee39f659b7ed2faab5341271223f5d8b7e3a38e66eb5684d489d73d362acdddcf66f9736f1a0966c90795f7e2b2b235b4916d3749c304178e71295cf556e93f36d1a8c7ffa6bd6613ca046e0e3e52bfdd9d4dc6b5e2d84b11c3773a7d68360564f53d7d12e7f019f9ee2d12424c18b5af485d26919361396304f6694d39e8fa5e842abb410f7830684401f06948dfd9debfb859f456c39345c79cdf9cc7c5f4f61389bf4b93647020cb377e678d64f01faef0b74123ec5f6d8b598c70c5503e863afe8ce593461aa59b2ede5672c2b9efc67938f4037739dbbf0fab666f7e370afdbeec001c208c4e93af91824b423d9876fb3352a88be5fbfa0cef882b6d9c704d8c9eecde5812d47887b5307efc32c7c65504d1009427be70ca5b613a94fb515a03f9ddbedf9a174c9d61376342fde2b264b150484b2b99bff676aaa9227de89425e8d904cca0a8e27de0ac12598ef4b5d2270355b9ac2f5cd693770c7a5ffdc2ff78e323343e07fdd4bd3d266546eb5ef50e346cf28318bb7d62f087647d09208dc996cd52090b66e6c3f7c1c48acc02630fce239963db4b160ced2cde76dd3d22a88d4c00b4b75063bc2644700e8ecb8007a1ecdf12137caf26b249951d5e1f768cf23814552b7f809089bb92ed43a719dd3fcb29738164f7e60f842ee699be96dd67f6031bb1377a067c538d28a79349b43f6773e1aa54ddf4b73733a8d768fc8ffcdb35fc7d8b16ef85e72fdf6e6f131d766b5db863c717784f518dd8dc32cf8a66272cdc660084a503fd12f3e2afd9d156a1afb6759a8041d0c122c4e3d4390e67633367a264718e863cabead0e098dc92bca2e1ed7bba989d17c101f0288bd073693f7fd6ff8fa510a96dcbbde1a75bc2098da5df7e362e2c7e30326e1a1576bc86023a43175f6ef79b6b23628b6eb946acd15eec28ceeffc1a1dadfaeb2de480f6cfc13f171f8c8be171f482e38b8a30e2e7e626b9ab574cf6368a48a1a696e409eeec6ee56868fc20bb8e385820cbbef3f3fa34002d5becf8f3a490c9705b012ac2408db632ba689d04dedabf70ab6a8d9817b0603f7e12aa34426718a4d4281732f9210de0b5c3255a746139745dbf1a50118b4c1067bab83b55b55972a2e82510813b76b003ad34d2f5427512241c5bbdd26c0c61eddcef17962c2101d53c0e0cfca7bbe1e853afbe544b4075430d79d57f55fcc684a6b65c63a5f7ff29b1f8661cfc3fbaf83851db98b6ac0626d7475cab2bc09ff2f10bf748b520376deb015f471324cd6bb1847d538e0d05e7c9a8165a37ae6798ce731520ff61cd3c1e11d99e9acff369f25f8501cc8b8b69bd2dcc8f3a33d78a8e5361833f6fd9531b9667025608c08bcea1818162f039a244329d76783a11751502018d3f2ac67ecca3983e3f94179c430f1a6312d26f26621af31ae3847c1dd1fa1dc444872ad3f3def2113ddfd9fa8f790778187648e228a821c2db43f0914a1b4415cf13508cffcf36c0040a766c64e085a1d51324d01e626a12b309ea41c76afdcd989cefb7e9502aedd00c5c3f612ebeca32edf2d5ed6342e9341014f406ade58ab9c7067c1c6329be5eae8555ca0c2d5626efff995026ea2c573c442bbfdf571f05454e5c535ac1a4d8fda588cd44d8a60367fef3f4b53612268427ce8c8f282edd4544e0d4c6b7e55e936e43d00ec3ca4a11efe8535f6dab08caf0f87cc2e17ce9d40989ad3b3e876c945a6a9bfcde4ef9980f8e00ef78bc6f9aff8ce18533ed1e76e900bd7a2c4ca40bc6f985a00e2602c29590be7f4ca936c82691b3c64f79d00d728d201f09c0e50bc501061b6873c0e99408ad5d2700efab6c77ce1896038576fbd638372153279b2ade559eb6c779b84fb41e28851d727b2a865c8cf9774fc2d76acd7be415f180d9c6b149c44c4c5e58941b2d2007d4aa040fa3fbc77fbcf4f15680d56e23fe66aa05cf1695318db214a723f6dc309e0917888c751d648bbff94d946ecb61642afc7e4dbbfffe698adabe13bb7bf62cff5d53c0ba16078cde48bbfa3b6b98df3d8212c235c45707c3bd8eebb053d9ba63ea4844cdfeefa8206939fdb073546ebde83c92e14fe81125a277bcfa84818915fed790fa1ed18a8757e2e2671915ae1e5b121f4b4ac93af05ad38d508539a030740ebf9464e62f01b46ba0bf1d3f85944103d404fb07af8a2c41058b39b085ec506daf554d6a1a49e2faa79334685d3f3dab9f5240005b9cbbd0294eb6be6adfff56f60b29b0cb1071f536e45dd3e9168cfa8e29957728a9f296184a300ed7fa292d312c2597d8c787be572b0032b1a70be0968763a719478a93feb8df47c00b32127d7a5384cc39c663e83673e1f3ba27fb92b346c436e2fd3acfca5cf4da4222e9124575e62bcd65ff2704bfeb2d6a5650bd3383ace004b396a86a40e12b281ccd6525180852f75635228842829aaf7da12ed8b4ac1f80444ff9571a7f1efdfd467c851ed1b83d74a7cb6d0bc285973c70d707b6897c71c3e45b47e0ed2ded833c0936d295d80b365ac2c70f714aeed2979b2dd7b1f744ada46b11f52056b3a7e674a417e042b1defd0baf0d96dfd2ee73eba5f81c11f18da91a38bb67614207c2f1d427ba892b3a888b88972c8049bb68fbd5cdb5b36d006df4d2bc6d9fdc7fb74b7d536d7a72681a3755f0c0672875fad74e730bcf216ae6cab1d075dda3efbdc655f1532569051e54847ca46abfe86ab2bd01cabcab34fe40b8287289f4d93c15291e31b9c0c08261a88da1fceb41dc10f9e5770cc5d8031ad8db7cfe1d9db6c882a44d59f16af3dff11563d1060c794a2c29b03c4cc4a9f32277cf320fc1d30de6b39ddb8c21bd1c6d3ce4c422cfcf6ba1b55e3f07284daab179621fb85974d7a50dab3eeba4f951f10ad7e427b77e35a7bbd386ebc044c2d16535f17244aa91f41b52837d218c24ec3f04e1285ccd13c0c39a4d7cf92db0546dc6094c11cad735cc072c474077fffb65073150412420752976bb68fd7da1da6272681f48d224cde8f184958de7473498e5e6c24dd43b85f41477b103854f35981c0d446a90dab6e4955c0c7affcee6c69fabb65779ecaf6e827988cb19b2d0144cc8685c3a7568cb79bb69bc0e0405ff3f0b741d684b179fe14207b1146c819f3073b4952debed3d4a8ea8fc9152b66cc84c7df6cca43e71ec77ce6377f8e3d6424c59e7ddf8a0ca6cb36fedb0738874b47990e1ee3e1f7ebe3cdc19f2d35dfa5e7d96998a23625343430f41af8e1d72dc66ce9c20c3f126c5dd58340af6c3597be140c38c60cf7697270b841b6315e802e6de75a86b9229c8535736fc68aae9293a527fb428015abc59e57f23c0805abf7951ebf00084baa10792d45e5ada68e31ba38209afad938b077375f4fae6b2cd29185d9b01e8bc82ed5030ae9b8df83cea3a014007447dbe75d86e597480f2d06235e8fb7290ff4ce45ad25d7da0dc72659c056f909f6e577ef1dc1dfcc52bcf0f3774a216df5176051628fbd240cc2bc14badc0aa825f8d08abba01d11b8d1154af79a35d44e4a85718015af7e6cbbdbfa39c0624200ad8aac248ea5dd450926f56ae9af853bb93fda2ceba0d2229a4dedabcf8382dc47458bf7c1bc7a3fa3568576dc966a6d24ebc15eaf578cbf5571c63731677b730394b343ef1da65cc72316c0e6200ca071a93452c94c16a0eecc8595eaf15f645f0fc46e42b2d7f4d8df9fede42f2c01a219b3dd709987a2b3e8eac5c4bee3d8478938da666a0ebd4263d2c17d61c12f9a795c7d7af94573e8924cea1d4ed0ee59baebd9cb275c88d6b8a8d6f02af51b73cb32df5cb6a690a56879736407193955204dd309aa3632c85ce9ddbb0b522519d9fcf94b9cbf119601d1e0d13337e03b0bfb4d274eb58fc6f2277448af1b7b0d4e6cb1917cb11d80d6f0d21960e1789fecb481539957c4fd37ed95cae54e774580a38e718c083aebbb865f669bc58ec6ccff1e3902c474e2d5081cf6b0e8a827337bd7717c4f7ee519b0bcf495cc250fd6f5ab146d49e43d72a6d352b4ee60893d0c01c8cea29df9c2bd5cccd1cb7534f8564e06f2ddf3a7e1596166e762b85d32448c5c79af6f6899a057797cfc416ed1aa5d599d45271327f504d80dc13b78f224ae22b9a02219e182a7f391cb8cc96f083babfa0d57a5b8c2781eb3ab6ceaa38baac8f4998e688dba6da230e90f1005f92ba16443860e7a01b653c28730a22dc886a77d4afa4a00b355359585a1801bf09ab988001c8e7b6db455b65dbef5a84b42c845c7835b57c9984ec44ddb6ff389b169a3389e6bb1d80a784f2b9b8322129d59e1e708e6310057ccc932f99273107ec90152903631939e676eefcb21889b6c95ef05c201294c7927608e130edce41e79d5156894fa5b944235ad53a03e1c45cfd34dd999678851bff5ebeea52cf3f557fad13aac795d038f8811ee3c0b8b9a2b9ceb5397acc206912cc0c98daf35000feeb656f64041974271d15cffffc69ff94e52fc23f06ee5f4977fc53610dd12687b2f86442a4224b24a8ad70cb81f49a7be7f8089281b6400de7bd93dabb44130e3c62e9250bfe9d9e154332ff4845f7bd82a848f73e8e61b74da39531587283929c9313dfb2bf40b2df41e078df3556de77b945a833b2b469c4b21cf33bd6658e23cb0abe566cede48c08e59b562012f96ee2bbb46ecc8e664fd8faba5a86795e0d2368699ec57523048db0152cf4cd326098d289f05d5d8cb5040e31b296642568f6823733fbe371d1d4428d2c6203d5d5847f17699a2f5e95002a3d693143d15cb6bc06067cc7b83ffe3a0b2e31f910e8e4ea744e85a807d7bc6397ef4734fc323a6a40c4fe01c12b674cd248f8c61dec415e68df16c8112658267e91ee62fe7268b78d07d4e3aa6e3cc867679d6723fadbc09088e1761b93051eb1369d002eaeaa53625055498a7f21025d8b78841839b433a30bc983112cf62e8211ee51963e3e896c36ac975744716fab50fdfb993b8bfb42e51053abd49190e245af3bf70deef7b933addb58bb318de0bab0d596540c499237fc186ec1fcbb450882704e7622f20227248e2cacd53d5b580ce2c621dc427e3eb4c3ee3aa1fe5033c78116454347ed2a01fa3f7552361f8f09fb47a42298209a542dbc4e9565555d4bc8b806555ab687135c7ea211c0f08e123c54e68a937832ecf70a5481e7325ca46cff2bc525ee5cbcbd67a9d91e4dbb420a499e9e625259e7f08ee38fd4cd26aaaa8bf27fc3ded52c17fd5989b324b799ea830602dffd9d39cc3f57523af7a89b8a9d3eefc5cdfc3bd772afbbb2fd32a8ffc70ee495275da059f3c1134d31d57bfc04150d427145bd5473f592aa371340376051c7076388fa40c64ebf5127ab855c4fae1cd66680ade5ec354ad404bc7148b28201417a0289025e8012e0ad6db6d04b72aaba36c4fd1ee1e3f09f0fe15158ef36a9c8225ecdf67b40e15e23a523b6af0ecfb8eefe9529e77ea312647d47101072e47c31462f86f786fb233eabe40913fda62bf848666b47ecb6fa1fa00c21fa0156f21997df430396efb29310115e47d35ef380de37b75832171e6bb6b1d99d2f8313b4c10cac34f64c9299865609e3a8f355e4487fcdab172a7a781b91fc7b0ff580aca1f9ed0dce39ab2cc9c3e871e33da828d52949f5ecc88841eedbec0f26d05b1748c6e4e95f688a5e358659f6d50b30f03d29551ecec5bb9c04a9b8270c34aebb04acce305b1aa2632c904258aea818af20537cfd3ce8dbc32c3315a9250587202352642bf90b2e2b7be81adb49891d224c9c2115a37455326d722cada87b7acdc385879a5949f82f460d90824291ed2873b0024ce599bbdca5bfb83b4f98a3bb7eae9d45ff097cc273347ee58ef57fa9cfea6156f9c9d7792e8876a95e7ca02b7f5722abc4a60e612233958e14b897daf8e14c512704b6319648fe3bbe4c9ec1e8b35b8e8aa064bbb003e65495aca831b2b3b4d0fe9ccbf1cb6563a239239a069f98bd2a4c2eb8637b782ed5d95770f97b2ee971879b0f5393241fb1dbab8bacf17c993f951ec42703c74ef92e0b1aa7bbd4ba2cde593a9195aa0eaabb8e737131ddf1813c1412a352b949f50ccce1e00e188bba7b57cc709df254b3ac6dc45909c1adc6179762779df19cebe9b8afd84b3fbfb880411cd54902015a4d310db36958ae8085c3b8d5f68d663a1ea4baf5a900b6da505a33bff0192785a13f8043b4fdf9b89ce6904abccb890d309f2aaebcfbf5a65265a033bc00634171288292952dbb0e0f4e28037beb75eae6a48968dcefbfa68c77d0dd2f252752d8bff7bb57dfe9d865dfba0741c399c387590fcaccf92a0fdb06b0d727ed527dedf4707801ef01f2d41c4948129ed2b444e53b104df5c8480808d10029cc7a4dc0be438a96d23b7f51fe55a27af41f00c8e37bf16c0e5aa0aa232a4f9081a9846eb75b4b08dbfc0fdc73c30d6b9f1e4207d0fc3a0213d34a821d54792ec273e1341811d89d469d9267e56f38e5a86ea4426bf3ceba7e8a40246b02337f4c559139570cc5a07030ac62732ed23315de3fbdca15a4dcda69fc76d642a9ea43d0039b62c05fe6b29264ea5fd7786c99cfe50416d58cce89a7edfaee56ca99224a1f8c9fa64f0dcdc455e89a3f3c3d82cd2c5a292f28af3ea0561f2bed73e945ce5781e580d1c01c8da09dbaf9e523e65c89f226d49884e37410ac94f86b7a53a55631e8cf448ee8ab9b51a427fd8b16d9564f84a5f90e7f466d2ec2d72e4202ef88bd0a7b49a21cde03ee7d1d97a6367463d2144b3f88ac06ad6e83892d828a50422977b10364d48c4d350245f575b5ed0f54c1847ad070820a1a4557fd711754d83b8ff5ea831e018cb3677dc55716aae6e852b65879f141e11ed0b4e979858430429a14005308ee693ff14af631b4582c62d56c29f3c36334664effced32a07825b00dadc360582779e3757daf935329092b0545e452f5ec0cdf1b2836a5312403735de70c37e32bafefac1ca74a8568fc6884692d6fd96ac68bfb0106cfac24af0f080fcc8ec823bd576c72438180ec7f40fffcdd9425520634112bf84a648d4554db8bfec70f3e963eb6a33c418af1c1915913f27040e72121003a17a396e0a60106603938af222d47087efbe2297ce378b4495f3ca197c23d44e46d1f1fbddacfd8ddca7fdfc88baad09b8c993560c842812a76ab71fefcf072920b3da2fbb8effd91b51ab8df982bb23f6ce9188e1e28cdfdc53c3287a28bc3bec1bcf6887c9a354f417b61ca202ccfe9d7d71efdf03cb363912a5bf6e31ba280f6d5d9069b5027c4b29fa4a10f8798a3d28280229dd426835b3681dc6e3efc4e4aa09bd2c8f3b13e8d4b2367271aa80ca915cec380cbbc699cdae11c78cfe04a65295292f2e6b0c3b2013ed2b049533b81db0274baaa874f4bc941b2b92eb0f8ff8b5dae51d4d47f835308ccefd0e569adb9005307d0e5bddaa4c2466326f67b3f410070d5b00f00a6a52264ee3a9bfbb3c7f77b20dc75f3b1e05b1271fa2f68c50de78e1d2f258f27c92dace83aa452cc985b92bad4b2de95161447feae7fd9e0120aa3f1d9d462a2c961ab42cbf1fb8c3186480ef3a7fd55b575195624891dfc72140fbfe6bf8784d17bb336cbb536ef17ea102b1b723b5a0cd68c453dca71877404589923f9d2f9d0e43741d8fe44d2bb156d73f5d3b5c2c23a2177ef34dd43a5bac8000fb7f3705c7225bbb6797c06dce42aba9cc6807925f9a9f2958105a590f1e43c6ca34308ccaccdaa12b9343d755499312ebee85d9cff42cbe27e2444e21801987cb8ea5b9677c07a77cb88aeca3a14c6a8ac61a2f40e4b08d0b00c3dccb8aaa8303ef2100aa2e361c9db43e141d9c7fdb9c5ca9f1bb959ee38dff1368311b6943cf41ab41e6503c13751c1d1003672a0129b538e19dd20e66a6dd51881bd3378d784b51a846cb254f97b24a7c0db9810f9e11b86a17fd06758cc4f32fdee036b77c3a78d897a94d2409dfa3aab304b1084abe67391f39ae8df59e4eeed3dff541ae4aa2aa511d66387a95a579337cec1d68d9316ab0e601d6631cbb849c0ecbbbcac41fc3c79c450d6542d2656914b34da0f898e13a7915e8f2006f7245908ec38c4846af93aa010727290bfeebdf288c3d738409cc11714a85db58d5b2c3cc9c6f8dd8113f6d440e9c754750420385f4e3f432dc14c264b5870423cf0dc7770242fdf861a8bd1c73bd619d520c377d60e65314064e320fa53820ec3cba5bb373d036a301594f7e2cb438e45d33b95ed2c3a34f4d85ee5d743d46db99ab08fae6b5092fc8061aaf70a487e8d46f971cb7a0f2e005111e0206f103776ac438c4d4ca99a0b8a1de5d2ad36440c117c06e03b9334e93cd7c007782ae97d44881fac8102bfe28a4d6b9117d631258131931f58a39aacef93b89426ac98bd554ffe0c07d86b2701e165c80e9010fa857378b5953ff4c2e9634f39d54e4a8b27ce6e472f49862d810cc09d10695d059f0ab470847e9ba3179898a3d472234f06184db517cf61d40617886bf9f3a39adc8c775d723c368ba1b636ae609a391d9406ada4f097f1576ae21f5f87705b204da6dd3a13b6af97bef2e49b99e036a7f8c4d8154a92ddc650a0a3f90eee50558d08143bd2b8f35e8860705a827d50c7c67a1ff50109db32a24e736cfacae009b59c078eba860629919c74ac1ce10b616916057a0526bfa2592572b1e3faa2eb538fa3fd362bd423ef26416756297216b0dd2acc1f452fcca43f2ffb0e892a5253dd0ee07536e6423bbdc8c86d4a90384fbf03c03d0ba93220a4f85864fcdf361996b332f5c839a6ee1b4d13ff4b7f9d0c0927f17cc8533a6defb80bb84e978d9ca2aa0294b9d4f0e5fafe2214fcc7c636ae10b9c04f16337c6b30ea0fa5fd69231c9c84b0302b6d95893dd1a8834a50919ba17c03f432a001f9fb81dc28e4752bcba8d5b103d4098081dd5f56cbbe37309b9a1b91f2c2e7d90a150ade7b18bf7000bef12591af96874c41f85a856f7d080413f8aeb6570f20b33674eead66fa5f9a23aa0baaba20c21d3a647935f0ceb8dbd6facf17495a70d2283fe507555b368dde21441118af4f79b2ac07e47c2e85ea249c0e1303c4856197541e765f2a9294cd5e525044e9abd8895df724dea3643a8578a224e3bdeaf7c2fba253ed8e469ffbefc6d245e7f20edd0470b3acfa75b6561a5da5ce4fe15706f69526bd4982b8b6a0a6130ac88a956deddc8dcd964a44e9faf9cc4dabb10a022a8ad74099bbc762df7260213c1c307523198c0f2de9e14292f72a71d4d043efcde8fbe8f86e6729d82e84ca182a5f987f0fe4f190e1714543506bb5b7d6de0f1483b91a6ba9411ad3fe100fd90e39df130bddc031fb348eb54b8e2bf1a93c20da05838ebc609ecb2fb8eee160af5bc8e91a5029af037502f3ce8b88cd53837a6cabab6596cc5e3a40fb9c70ebd9ac63ee9f7dd836ca0e2c0b956d5e9494b8fcb80cb70a62e1b6c36d6259b188d3cb2f48d12b328a5288b9660112d7d4b8def796f883ae73ab8b95867f6fa4fbb9c765c828a72059b371e7de9e2691758f57fd0af5535259483f2c5fa80bdc92eddfcb8050b918cefbad628b3325d69e8375218109c28f20d9ac47287a1ea04bd89dc69edb157b4d8029e6fdb68f24a893b545a572d0f808411f662851658a836e484e7bed75d1f6c79ef3782acd389c30a1b8f352f0e83b16709e27a332ab6466248a4fed3e5a700b9b07fb406cd24d9db3faf9fece6029150d6b1d3c36430387e4160b0712db083bef15de94f872d1d5cdaaae8881697b5284129d6a7be234b594ff76705594b8372628748dece7fea8687d8ad51ccf6bf7a967584ff8d95c14a3cd38133b5632d06ff743a57e539a5d11d76e4d1ba84aa10bf3af23231de1fd67c1458af24822943ded5e58135722326aef1e5de29215ef255c26ed472c6a05602433696c84155d551bd0076a92ec1e763fe7df291a1d68df9d9571ad8169d6f13606e07bf1b5e5c5467852dcc095c2ef400386e54e3d20c9c57856ce94fd9a8aac6ec159773253973ae26f1036dd448037336df952bf639077b1fd91a95e7d91df8e05ac1891087c26a4140ebcada563b4837129fe4d73e188664d30490e4ac631e30016f880b9bb08e093871a7a9089401a3723968e9314371b66d044bfb65e3254aa6a6337aa37832a7fbb7562abf08ab700ce7ad1af0a7550ea3e0fb73b90554c0fe8810503671358272ced910f1d39609ef0f56d64d36df7d5890c6ee2e040dec3cf4b36bc2bbf438cc1932ec276839beee0375874b811b495e8792e82d374dcbb949f12c44c2db65f0738fedefa03e2e5e231809c9fae2349aa903fc5b2b4a3cecbb7577b12caeabc18354a20971ac61c1d5e908b76b9c1330bbbbbc73dfea98c77e01c23fe6f71e2f19ea81094d7e194cf4704cc064b6d3c9f4143fdb7841ae68aa900ad3ccce63d3ad5078d8e5b2306ee287921a84e8e2ccb5997f7da8aec7e2a860f1fadb39d682aaa82d8d97f6875784be76418ac036ffe416fa1d4569f9df81a6f94ca8dddcb9dd775cabaa2437cb3ca6483d9c51de44245209f5cb2d816392ef8c887286bb17da0ea4a43f3fc4214cdab9d11f924558768157431a338197b285517e96bec45cd371b50927b0c90f045472b9d601ad239eb0a0e7df078035a39c318fff0ac47261521981bc18b253f6b67eba32e5a5142516a2630c6eec2a7031e2dd5081ef90101483688afd90ffde30e5012966c5ee910b88adcf442687e1fc85e9a61460a469fb5ad14c22d7da99783b8812361da108777d3802a091d308129b8b5258471d6f0a17ad7b0c2e7bff870208f848dd644995c7e93e014c8028d1054f92b7a8410aad4e385c4fe6979d30219f752ca9ac901adf886b85eeda86b6fbe4f51a53bda60f4768535f1ae68dc8b54fc9dea5d388ca9119e61de6fc6cc044f03896226c63fd82c9cf3bfad95fa70952947df8e5796517db28b116ea33bd0d6819417d71f43b1ea3e89679ea817aa669218604a6e92f8e3f9e63cc3dcf7e3fd7f32526c072af7cabf820fc2b11cf212c8f7e0e7ccdf4736cb052d5a5491706b97e8b74170b08a04f1b9ca5447eed6248ed340d61eda8886077ab4fa62a5acabec006e4bec8ca91711a239129930ac5f1e49e325e80152492a0b5daae7a7b21d31d6fec1138fbad3f681f09602ff17c53c70c59fa2559888487679ce2666b6ad8313abe3f0d1f8c850a66236ad34912ed6fef004557ee7b724801b8d88186836ba49331fbbcd00a5a5f4376058ea912ed7c15c2e999667a7cd97aadf59994b1ce1f39ffde7401782944e26d62632e5336c2860eb303c3ee290d723190c9735b47036d80eac9e4e82c5a3282f073c5521f1a2f31c58ace99434bc8bc7c559b585137b65b280f1f8ad3a2c4a6af05603b98db9d5705a4cd2038b05c3e1f9e36b34872d6430a6268e953bb4676b059372adbaa587610c5bcc459257d8f2510e3ac6ea338b138540cad5ce7ca7580be3778e8dfe492e50c16a0b23a16342bade885c59eec57647447725a19b87fc1f737ac94f904d054f1d5384e90a5ca139e3230da8e4a31b19eab9674c4eac7094738e845c8a7101ea54b083c32565eb1e9286a3c9ba487ed6a9ece56179b22230d0cf4748cfac564483841848eb5b890aaca2f403ce95e2c683dca81fe730b5114b45a3a7c4de33cf0dd3cd7c3cded8660b549795deefca8a4364e12c2f587e469b66fd23fa93f960999ba303607232eb365472f1871084b25d7b74be2b7e2924cc54507d8c67b18b01daceebfa00827f653cd5f8dbab8003bc2c99a95467fbf9bad417ef41082e9f431cf480fa09ffc45aae4c4e62a66f2ad8fa940b800d36ae4a9028507feb50e1c3c9ea2f982be8dc2c3225f93d275a43ae4443d2dbbe9d26c90ba70c1c3cd809ba34b322cd80296e2b5f7058307622aba2053574d2e4ff6bb40947554fcdbfa61dc28c4799bbdbed6132161ad5be3ad1204c2bcaba833870f227f441715a13f809f7f745012372fc2a0366e1102906272ad6e996ce7a3d0eab6596df471aa74d9e16f43e9df63dba8eecd72cd1ee1c4c67db31e686ae38442b6495bee70abbf98aa5fdfdd3dd32708e31a11bb657ffd1b13157d16d31aff4e27422a21c27816330209b2f02ca19c1ce9542baf4637946cc99a740747703942acb702fe68ed33d9feb907c4eb08a92427e3c25d4fdb38040acd7a5f78c06491537f48ad9ec7d9392edc9ee17aa4d627e5fb2204bd3d0b833e17eb1175442350cb4cfab528d212b192bc63a4101fe50a60c5947e230d7bef8df3ec85a74cd1efe3ce3ba4468a0ad97b4bd2692f3aecc0e8dc951510820b397a375f1dfc7c445661ebc128f5cc0fcc5050822ff9c5a72fd6b9660ebcf041bd85dd024fdb585ac4e841963666b338ace84029e7c6ed5f1a2390117b50863e803da300db465b67236060eca6eca9d69fe5060fb7cc4ca3d3207e28aa3a5c1f19f8e4e9f8bfda4afe262290f77fdd552cc27e505ae42c90acff5d3615cb99c8ae02fa7f74c3b6d32882135e3e504ece02280366f7faebeca154bc13ce0c28a57a3ae20a7f8dbb983b5b876a508f45951a29f7eddcfe54b30f1153b5cccb24bc67c1dbedbbad3f113d7041337cf157930f63d68a12796dfc7b824f1ba747ca358b7beca90ead6d6c537aa599909b2485eaa704ae74723c31121af4762bcdfeba890f519f88994fc7f7e218ae98532b9af1119d30c8c1c23ad46f080410a3e6ee6807453115dc3bc0bad6562b8e00e8aaeeed67577beb07248cb323cb3d3a066d3a2fcdf5cf07833c97fd8cdd0fdff1b74f914ac03826cfe874f8e6d347d418948b15ba660c62e4d7f2d6f37360ae9d300d6c2db425796ed6e79389aa31b703c00ebef5c71d2333e8d7dc64ed9314c9cd0dbe44935fcee22558e373988ab9295158ce9c6b45c5e27fbd8282bb608f9174f5d1d4d50ebdeee735771a59cd47a0191a157efb32f9bd8c1271036940c1a9a39c8e7bd1f5304631006f1d67adea2e21da23b38cec8925207fc09f7a98162f080f24dc5a3c1886e32a60ad753def34e549933b0a3fd7b4e27ec953fa5fb92b9bdb359de1cccbe4eb4c45e959ebd33b6aabbb23b194e48574a02c4031a62a81a6bb84c3158426ef0eebbc296ec940076cf9d26a61f9b62a3468a0c7f8596c8f5c61f7a85c46fc95a6e8e13a7564c01e59a638222879fd4087044e513503b57b21fbf151c52333b61d60ead92365da287217a2a766d65d15438833ee62165091f44e5110b74c46e857c7ac5346e302f3c38e85bbd4b9e188e78ea67285ffefc5cb453d244d6089cc975e8fc9e4533235bfdbd1ed13071d56cd5355275cb3247edf4703cce8ccc92f824566301341efd6058e2c2e32788540844329b403c1183fee8ff339597a8212857e200d091682682d19124c5ddbe69287506c4eeb8ab525ccfed4f20e2c54119c3e1d06cdb49a0380faff2f8d8900aab09f46ee6a34d3efc6b82bcc666a2d9e628908a18e4a6c654828f5337c7167bf546fa508a15d09289d1dea548dd49d362fa2ae865be0c1d5920dfc97cfeee7c4465230c9a056e75a0d32f5d858980a05a4ea804a234651feed1851b542dcd537532ff6342a091eed23f0885b3f705386fb51e58c0fcf1439c4fd676870e8b8c9d88da12be0205bef68997424fcbebdd9544272aa0a59129eabc598409dc8624f25c6e55c01d96f3809e094909868606a770fad61da043258a950e82a4e000fbe5cbb9cd40425355fd162c6321dca87b7bfb6b8408e205fdad238288059c08495f4873a58ef9477f2929d767fa7833f4268fee4a87f650a3880db163bcdffcf57023279343da107002c615153e1e342b6cf7e11033d9cea58c0dc6da5a2f73ab20a7063bfd90b738da3fc8142b914a7055f8604b963d4c8262e3a2d5545d5cc5e9c3380693afd5679582efd198c651a9f47ae16e0610830b0804f64383b0530341964f8c874bbafb4c6d1db56c25e19355e77a4df1246e06b0dd4d98767f3bc8ca2dfbca69b4e4be3dd39a5b54a959e010520e6dcf51a1b470e6514f3a26ae19d90c3dfc0a2a950e81c522bbff34a08ec355fc7d866e018fde946181e1923c8f325943bcbdd8a320ae2a6bf1f54ad12bdbcb357d021e9379073d37b213c18eee5e40dd522212dc41affa3d88a82a70b442802fc6e89816908a38d6d27e2ea4e865985844dfcc47e9063c4179e6700ef0aebfca41a28b77f33727483bda2ed513452a57efa3a3274f80cdf2f028374bc0ad0c76ff3cc722d5ff6fd94a0021414af7ce318b922bdcab267ef808d49c586c7733c19de299fb354c8fddef5af8627d7f69c73f86da7d483905803e0f07068efd4738d2d68e5540191ed22b5a4adc197230c0ea23d7a9945fa779e62590820b2f4eda273d62e34a67e45706b1fbb926af89fcc1df5751815a724ced70d7fae89f1effe09b3557e911247dc0b898499d086821ebe4d9e151830d1dc552bb6f7405f7add600478dca9723d027f0ebc1937f98bce6dc0fb127de5efbea53c2cbde164096bdc37fac98bcc3f79a1c46d915bfbac0daf950a6597d81bcc79b14f4cb7eaf0c97b1d9663dc55bbca1c19311a9300df0e3496589dee09c46205277ad6da5fbafc7aeaa5eddbaa1f88228c4042c80a6fe56b77e59b5d538017eadc43e4f74469fbd0d0ceb3e17258ce5ebfb1ec5f034d04350fbc37e6e7381561c71856746affa583b0105a4598501d368ba939a8864a35bdd767e71d93ef350312228f0ee29decff7e17c73c31a11a6c3f22b5ea8a53964fa276c116f5312901be06ca2f80f2c0312b90ae6f5dad7ea6af2b0d21dde34f09d535948baeb5f6474b0a77ec7018b32d2a106908978eddf2f7c6fa6502c2ef05bd928be239741c712eb92593ed5b31975549198e1f170a2fd55731040ba3cc6c5906096c7f6ef7d6e5f0afc19a42163f65d1989872d67f0cf96b9dcdba8a8bff27c469bfe7cb66de795393e32f4bbbe0fbe85e34bc40e8d0d5e501cddb99504c82b1cc1842ed285437cebc679e77d106c629085752eac351a2b82b338f857c28f8aa77f4358d33f699cdac4b76441de1a1896d1f6435206844880a3c99be03c255792d29f5b92a7d3ab5de245835379f67a098de62693b8d44ee3e420b64ddb8328059e4d1821a1781ac1d8b8658a01927062f38dee35c45e0d0eb724ac12989528f3a757b466cd66981e1d9a54a2ec782a19f9bbfd4169a2e76fa84e6e19014997a695b2cd0ead1fbff636781205df5af5c275d5bc387a156ba11b72191eb3b494d6ab94e169c1954f502586cc0d0374ee9d9b9e8832b657c355e7e88dda30a9fad06c3fd8fd4531284be28ce02bd194a340ef0a85f7275d84bc351aacb50dba0dcb406d18e679fca1b1349f65241b5cda5102437c1209c79a972c23eeb4a6ad23f43bff91194ee5c2e40ec6142daf4d26035a2e34dcb311549a25f2d17ad089dace50f6aae82032325cf2148135256881590720b2f2211d2a01652c93ef9ee93b1e454f94b19eab9fbaf637e4b303392b8f0281a35cbcb2096589c1c30dfd7edd1cfce41445dba9ab0fd3e560c0b8ec5207b84d06bc6581b6f0bfa858e3907c8daa3089e2239e5151966698e97c30f00a4d4abb2e7113ee304f40ca25105643569574b0bb642f0c158d25c455d496e85b6f48a544ff5b1d52d751180295e5156fc81d24a231422474042aca3f9f943e696167ab884b187ff64fd12faa10dd63c2181e62dbbead2b347a18d91909819be69892a03dd0a90e1aeabfe8a65cc456d9d12482f00544869fe83f4494551d2f5b90849b8c6e320ea54441ab0af86e67ab195c43990d84fcc43c684ed6860e799e1737bff406a77276d4169a3b40d52f13e99bc9c68a59b5d738ac34f82a21f54e4909bd77f6c786eb3ff1fe1d473d5bc221c16770b74d2d99eef0dd344f0703a70b8f9d4de5a22077063363a29a70daf302d492187eee54ab92aaaedb104497f7ff509c9691f7d073022a96b945c28d0d98cf6d010fbc80fe5f9ba5dd8778d7c9b43f99f473c547ec51f799e02e76273253d6908b73fd1d875690dfb5ed815f7cd6ac71800cf6ea5782dd19b52f842a8b13fb98fb13e3e49f32473b0cfa302fa8bae2c16b09e8fe92b498e84ce5e55ea56d465d604be481efb0257e0f06bdcb0aca3fc19dc20454ee3bf960a65dc0ad423b788a7c2350441ccd34303d472f907109c197836b3b2218b4604987b422e1301215bc57ae05e2e8d030f3c3be5f262e8842d436a62747caa3c1239ad69fece7b673ea0ae7b7ab7fa19231ed131f7d766979050a651d5083ab4e477988f6331bf1f60a9c3b3daaa0bd6550e0f146677fa64ce9e2faa19f52512dc8bf88636fc43db9d2fec6da06cdacf9d9d817be794a692a7636dd98662dcdb457ebab06e2556b465acbcc9de1857c25137348b32f6852629016eb807e12d1859233e208d158075c7e90fea27840e0f31655c8a2577577d80466b90922a6a35f97c613451ee98d1296957a34933c26ec9c74776f32a4fefecd9f38ef31b0d4b7606fbafa0a4d57a916ded142e1d5b71103026700d5d33b073f54dd0945ba7c8292c43e813f1db7596479ee8637a111e81d142fd1802cc87d71d7b8c5be2520120f88c4d2be9fd47fd25f93316b81c3c273240cfca96d965eee676f1ef8ae74c546064865d6107822dde763f4f6cf99d7f7f4840b68feb709d2e9c795c0d4701d7d169c1641320c0dbe78428162a7e19165565aa53b9e0f534747afc7311454346acd9982924a5bc6f7d264ebedc29cb29ea7b3a676ef71c719853ca08200693a1baa734c8be8c709a3b905f626653d79496a514e1c92173822111bdcc2719c95284002501c159e5a5edf1530a78c39f18dd7a6eb848350ded50f668d9573e9889b59ef8f85945e1ac1b96b3e5d4aeafb758e5b43f8881997b5d9929612f5801be5d39920a2dbdb63f21f1e47b396665a2991cabbe126e8489fb56834bc6bad8179f62807ff566e24cd814e1d7ddff3dc20da1ed3e96502b3c61674262ee88c6134160739af26a7ef5704ac1c45074da084f411713cf4d5360a97f0c4d6db0b2de11db3b25ff8349fccda9a31e3641b5585c2d35b143267a54934109618cb78bb9ce1b7bf3e4aef5ae58ffe593a833678972c88bc91e6a376399510c227249b2969716cebd8ad2896e6cdfde6e613e33c48845edae70611217c32dd53ddc7afe9c7573d2214a270d25575805e7826ddb4bfbb3bf3f28d7c9ef3f9637275d78a8e16bc38e8d241069f9005da9fb20f7f67bad978b6ff6fa0f10d7a6827da0b9b1dcf1ce56ac72b99771f673700efbf4cdc46be2c047ee4e8034977d36deada74aa52921d8558a0dc4784a7b17b252e6abc9fd48dab3c7bc9e5b4a58991fbdbfefeba7314a11b771394436f9054781f8623ef865472fdfc52d58b8dce4cd59427a2ea45bc178375d8be6194ae067478c6522222d13bd9bcaa5cb70c11237e6e4289e1f9d4e3b1b03e7b2b43a58ce0fa8cd4d1af4f43fef7025a98dc2be16d26b69b81f50d2f04f8adcb7f4c13b12a4c3cfc262d590917471ca89f210934fb8de4a1bc7360ebc4b5755c007cffdba0b17a75e729a648dc8b16c29bafeaf8ba697151246065de84a67fa09907108f3a9bb01543395721170c92c126c8165dcd18ee5a98761fbf16cc38223adffdc7394133c73817d68d32dc6989bc703332a03d92f2004a0afeb0ccf926dc2f3fdfcd083889308418b2fb7c75d9bf30b7a96d95ce51e3a5bb6ac97ac162ed08b5c89d72eb9384b32bfeb047b5d7098f1f879ead73aa9fc05d60f4f52be80e2abe8e5a201c06592319205a875e34a59cbc9c883acdedd0d3644d8e2baa4694ec0b95ef5918dac7bd3cb35bb98b7c65d8a5002ecfc79d9ddf6b9a601be7fd1a2152f9f3ac4dbd40c218974ef8eff91a5c79decbb8d10f30e31453eff02623c06ae7f4235f182d818263c5bc55b4a34f21141ea345139d3ac50d1a9e149b2da065de265c75ede90c137e0952c3daeb439f3cf1e5d66bb7398d2fa3e2537179a67dba728d83f20a438718a8cdddd9dbad045223bedf42901ed9b664bd4bcc8c5b50dd51c4a1acdf568a9eb357d0e24388cab050cc06fbc699651cb0130d490399424c1166588e860f8b960c062f9b0fde61fa6c5af083e7bec48994a532a51e89045af63e8aa2fa2bb194a14da9c66fbd3d5c3ee3afe4cf21a8b3f7ebc79bbc38315b5ecef13c04fbfec5e4211ff3166280aa4bdaa42c59a1e2a42131795fd21dd3174d06a595f98c5c608e523cceee63b1a4cc8a9c1291995b0d66990383668a4e5b5cc4744bd21238e40889a64c2ee0d3bfa216aa59f9cda6ef8fb1d83eb9f9cee3a960849cd0b21d739adb0e58cc380b6284aa30841c3da2f546825ae028224e5518584c07b9afcff421a46cccdeb14b60d006038a78c84b319f3599ee99f79553d50f6c4de01c4bc3636f0579ce4e4a2b80b9aafb5163380681548cf4b685c9cc39e720eedcb43886e35d58a4c85af9b6ab14f98d5e84c1884d614a5a502d65e6e71d51a88324f572e2881532f38f9bec827d5f7d1bfb4fd0cd15259ff6e4140728d9db9fe94d17337bbc2559296340117ae5c62625af4d5e3af4fc12dfe9e0b74b5d4bf205f593227496ceb0baacbff83da5193bbb1419d4a884f3a4cb631c530b9d340eb1b2400427cf57fddf3a5d688f648e1b9c5d96b808195c00a2f990868f1773acef78c30ccd835a66ddda88f4e503bca2914aa779ff4fe604b202d18596416c0cdf92030114e8dac6861c2377d305c8ae720bf9be4fc4074a142d7afabe748436c818d66506b8c99a1acb12a2886fd7ce4ea3d35d27cd5b008452517ed20311f738ada3c4ef1cb122748d7633a20a87fe937ce4cb22d4a138e44e42652a1638686ca7a3cb7b60872a42b74e70c59b92bac6dbb1b56911b0347b71b6e2bf69debe683c1e4b9f45d6de3069e2a89d65bf80d76c798bc94ea49111ac6748b28971056caa8f74206d5523d2abaa65d7c7a4db4d61bd4b7238fff5f7a71f093866098fc232a4f458705ee711d6bafd057f60f2b9bba9e1bc2f7945efd9ba537641ef4af39f18f186bb31be57956fba2b14ed7204ca0c45d7d50e8ec25eb96e778531ff44cda3d5a8d22371650bf18020ca539e2fafceb0516de8977ad0ac63ba28430d8f3896c367d339df2198408943861b7d87fa394f5366cefba392d46e677a01a6b493f9eda057d711881d9d38eb0e44dda8a819f2d14980cae9fc70ffe39a15c822a0be776faca065aed940fb1866f74742edef26751035892d4e4c206a852a4aa49e7dfebec592072c5df09d496874994b7b082187ee706a0230e1c4020b6758cc97f6edb78e9e826063628012e963979d96139d6c9989ddd3ee351488f332e0f74120bbb2648d9019b881cafef74614f424f71eef0481990cd6b0198f4fb84650ba707765105d533bbc9fb3d0219bb7a8edab9726250276409d14885a7d11cdb7b6e40c5347d127bae4377c2fbfd8ee68ff5b3b1900f37b13cf29fc640198e359c212cae5b20c81cc31bd567c6a2ddae4e3665f8052797528014b5d52963486dd0655ebad3aff5a593747f0b6518c867f90a1c7a561ca3c1337024e76b98f23d0b6bb878ccffca4c7dba90d20623680a3d2f984961c26530a794fde47fe1c6ab2535855418c2759496cba1c751a621e781c29450c14d40f36f6820f8f071b401bad6eadbdb81d08a868dab077a99464ef7ad4dafc437cd328c5980f6e3a79073af1f7987a431270280366298da9871bed9b88c2fab54a404d444c2e2babf14e0f3996818fe70c3dd6bad31f3dc2524650725ec73edbb46669622d19a5027019203090af52a0ce8d76672cb015494d8090a5c2057307759b81a4e21a063984fefb2bd7f158670b3a06bd654c7d0f77341e2137083621f34c13b5205e5b73800e6af3f037e84a180cd9f5e99627f7750e54d778c7422a0e305c70b9a541a18a29fddc42b4f81639f74882cfd28b0706824ab970e1a49227e9decabb0771e0327f69d99e6360560a459d32d0f4c6b611fae9ea9dfd4712775ad5e822faffca32d259950df7bdc3f7156a67e9e70c49504e84d105a6f286b4e889dd5081f5e5f1029231db2649a619cb3be36966872cf1cc3e0fb33493cad894f51df7a145b926dc199b9e20134c9ca9a86f7c3f7355787d979bb3fc0d526a3fe68c14ae2bdf53204393fd5b7ee980028fdb675ca321d2de1ba8d3570d3eff3fa3090db3f26fefad20586d66058b75ff1778fd3c7222ce64e3ea8e90c8341d7869e5067e775a6ec7e92b47bf8bb4af76913a3a6ef9a56a68bcb63549bff5ca38be28d5d889b2f0c0e81a812d594b47aee183bc7d87fa24741fe32400ad7aae555a2f7f732ebd149f458ec25751d8e4744a2bb014f9dbbf04ad2443b0455a94e641e98b684630ae5e5449446a73784398a29bf64c189424396e7274dc55764cf91a8746d73cc0df1187108f84ddd8dabddac7d8387ccac9beb32f98b1d1dc8d7cf9295573b069f9a895f52a12d59cf6640e0c61c8adccfa9cc9cd2a96619c2fd4a1b17e05587a2c082e58f07d1504a0a35b71ea3b99d2f67d66a41ea1436cc1b5aabd9e1e123d909b6e17ea800d94620e628bfac9bb117d2a4148e06c52aa892889b0f3ef3c14d82fddce3ac29fc382f7cb9fdc2ef0784698552b0b3c86dfa32e466bdf729ec95a2614ecead9756f600996816801c38a6d7a9e85b437f65f4850d847390de8caac8e71356a59acc84900d820de0765add0589b23b8e5ef813f20dbb4f583a33b20ac741305d458d6a010f05089b6b44a476426ebc680bc4b74d4083e5e0caed28b22498e73afe624ecfcb48bafd83bacfa7d1b8e05e67bb3b791e941efc8e76c813dcdbe172127fad737dd962a39ae925d90e265cb564c635bb18d972b1bc8264b452eb0466aae00bfbdfa6c5e0bdf4d07b2da72e4b2e44c4c134d5f1df2ee99c556b735ac536f481ec949e57bb44879f1802508efcb5fb80038dc0e62e590e64736076342558053a31ea4898083f9157b8305feea48af05514d66f995b830453a54771cd429d378690b4d9b2938c3bc1a2fe532285dc462703b02776e7196e2bf598a29e116ad3d30d6b1436eaf83462cbab0533a51912b1394ddc302ef253c8620280f624a5512f8fc4cb1e3fe79deb8cecee1ac6e1363354929449589d5e4477f6fcb5e66a3ded915dc5d0416b5d574d47ab9b7e3f38dad5c8fb243550412945989657bc6f8f38ec6eec616bdcd603390d8a55d3b5a3430c9a9c2952ad47dc69a4b860b35c70033046dfafdc445084396fca95a6eb096ece68301525531857c91bbf7f1f708dce5018b4baf873e55e639fce295a5fb9441010d88a228402cb457eafda4b1376839bd1b4459842296dc23a40de4eafa8cd64f185cf41b887f8e63d2a70e4b329324d9b7f6ff4d736b1c95bcff5b20ba79e8803b1c06653e884c6bfc95d45d1d24b25964000bd83a673ab30043d424bfb6f2ac187b96cc4fe864e02f32f77371d314cd0208abdb7b7ee312d3732a2482d1d6c587b27dacb08bad361ee48a2bbf5a353168f67c945667b9c103f722c16f74edecf7656de56da3eeab2ab922411f0ecbf6d56e3d4363ebceee2a05a4aacdbf1c2aeec9ea842cf386e98dfcac15eda76553dcddb0624fa8490f834cdd4e3cc541aa92d65a0c16d4bbaeebbbadf71826a09ba955ed72ae13e777846a947ad2075e06bc439a7f94c073010e7e77586b1130f3566a9e241d30e73aeaf0a34b5460220e2ec87e16ceb76a338490fc90b3439dc2cbc72bc6e77955dcf929b7680b0119a3001de56535e511cda2f04a9361be7aec0b6b4d0718cc965cd3bb10446716f145a96cd3eb9306893aef1310a4df0bd381474f3c881e5878b71be7516a4f648c49ea30aee4c1c0411aa3c33d2c4ed922e390a364e9c493a4342228762285e996547d82e4bba1a45c610072979e654e5941ef700af49eb9b77a60a0d6a3891e73300e2a832019937e000e0e3dbec1ab5d13340cd54b2202e63c62347f8bfdf1cefc98bd0d0a0d67e56d656c66ccbb4fcae245dfe3d713fa5b74a053da979d0b9c178384c227bcf0ed712cbac3cc6e7ff0f979ce4723c6760069339d5b59ecda39c0757c606b92ff9f19d2eb32afac271706b296cb1cdb3e4e09e3fa95d4b60f5eb25214f06baf6998a2339e9d068176b504e732f76fc62216377d276d2fd7bbc89dade35eee728678f6119f2a8a0dc5a893ef2a703b75e59809a9aff4955c515814497f2bd76c68de6cedc582fb05cd66a8fd3058ddfbdb3aedfd7e9611426ddac88e6f2e1ca3157ac501a4aa8e6229eb281f595683f5acc446dac33e0e6854d7aeeeb634746c862e09a5e2cd2855e8cca6cc257ddd137d413fdc98192d4465ba8ce50ed15a6f9d27ff07941d9e068fd5e0179b6f69666f6eec07eb5b64001dc1d768beb1a28f46c2097ed34fbfc1f9977f6216960186e7389c001c1209cc1a26a94f86245ba75c112e3a944babf5a8d0596b95ba5ddc90df23ec450636179346b8edc63e6ec5a7a4746a9cf4b58115980fdecf86e44b09085fda0e0914794daa2cb3be507fdfd440a2a3652b1548f38b0771931fbe7f551b91d7e46435d78e90fd402a69bf3d2b074b68dc6c32be05ce71c8441c03578f0a294391b7562a98fabc2d2506564c90f2ca05e7cc33b58bd6933c2af740cd7a8172dc14aa5e75314ffbeb830c38dbceeae6c7ffc484ce8206ed35531c7973ecc3a4f2168f0390007d9c49a85f667e855076ce193e94756e600ca5b931c8d6d2db1e475192801f3819fe20bf01051dba379878176e07a47ddc237a074d4902c0cf2f559cf78f1aa0e65d2af0703eb2a62c59c0e7f0ee1164d2aace3485d8debbda10a7542883b80d84e1fcc7b1013336c95a9476a3677015f06bea666e0f02eef10eaf71c590bb224a9dda80a29b9382d02a4cb7889e8abe3daeb4508776ef2c5d4ed41ad92667523e357b11a53bed2d2c9a7492a15ec71ef9a981f44e3bbe9d7377ec6d8adbea677b1fa9c0fbf36cc313ef526d9f6ff3aa7e16d725d92d1f15c3011a1735faa5fbce41f27d1c2e52fc8a2030d53f86836741d6a2604c69b9d7a062eb39d8067830ae1181582aa7cea02ac6fa6136271fe9506027b57fd906823616a21631c9763abf5d5a5c959a41b529e6e3c7f7191a8f576ae2c6e6f319046159ce65d5e6b61ae3c3126b2dc45259c3dc01f067028f4ff7818baf7ad8a9623a9a632037a2b7e1a2d0467431b413ce5130e868ef1147352d10b987bed07bbded305e7ef02e1e290b65f2f57a2406610f256ce96d7bda950a882b715cf56c0c9fc795a8a7e550b35c375ddb0f8e4ea870f2c844c42b7cbf1cd0a64a8ec782926b8e9e762952c5db977cfcf6791ba99799d2e12ca782eda5e9540826238637d000f097542fe40497360071f24a9fd0d6ad6f23be31a3e19cc4a5afeacb39b8fe62bb6b02f05ebaac2c9155631bf3d9726f2973517e66ee51861057618fa015ce1adda1fe1fb218eab1ee7893fc1eec3403f8817d75fba1017a6cb0c4cad99dd70a405d0a7d8904aca1407e6bb9cf3b1f1ad36ea8fb630427dcbbb286b7e0577be0693da06c592e1d402a7cf5e4ad9233e1dafeff2a6f156a778ee215002ec794cb6438ab6c6a8994043eb1a4224743af4b76ac2d80645241aa4e356375b666346f93c854dd040d4e6eddc5acd67bac407f4579c9cdfe49e9a17b788d511f6a1b4fb97421a825644f914abcf6c5e15bc1f38aa84de2bc6bf7d3522e4afce48fd1430beef1c7cb1fc41138de10db719ae71a044239201f73d32135d612a2e07a1a4d4d5f21693ef19a9df93219d4b4aec5aead0576e542bdcbfdfd46e44862b9f22a271e01db0a8122e554e466cfd64e65697ef30267b0fa54bf75b535340d8f79214c9ae137f82d831cbe0443c06c74ff761f28cb77d0ed8ca658a5f37eeb86f63d404870096ad7721dc2d463087f7c6599413f538c4a1dde84c36fc8ac612a13b1497ae5ff53896bcb564bb42381a192c041c9fb12ff00eff0a2ed68d07c5c76d34b721b446b736f1fd3c2be38163e4ca3c02fd2ea2a7bffa264d21d20490bc67755ba58bd4e39359fe5e0be22822fa6110444503e721680c5aad50100ab16591fd4276901cee9841a1c4d9e3b7947843cc99fc48fc3716ca5039202082f50c5b762fea932445fb3706f697a772fe8b8795af52fa2f310152d5be21ec165586c57a3feef8eefaf91d975fcd4955e2237b3ae405f60ed3347ec3230b14a1145c38025d34db550bd526674a01b8f6e1d84565f13515b02591ffe03e927bbbd0ae92499f9cf4bafac8a1f0df1e2fead75ccbde9dee9793ca5f456a3d8eace3b7c30296f5fa47b1cd0327042a30bc6d75bda39139fbf7bfde672f16da789e46579d52de0ea00b8e022dfb11cb0fb10979eeb09afdd9afce46fa88f3fcd843cd272fe4467e96eb9e769f129e9e8f4cf9aba91398de953f5e7f7f708e6f1e9400a768937ab3ba7f2191a59284a791ccdc35f64ee8f273a4581c3cf45fce110cf4e2c84422963e74ce7faed4a7c63abf2b99ae8d3f2009a9b8a59141c5ec106cb56cc8f83857845c20f543ab68903b9886be3563a1bfa45f4a13f1d8e5f87b344dc4af5ecbd74504009c9d744d9b0db7a0a61ce2e3ac6403d17a21fd1d7856239027f07d05cc6a83682925e0bf3b099820b3d7bf77edd4ac34f052f3d666d6f5eed6d7737952ca92feb7ce635c07a9a0df70a1d573f9ff4b6366ffdd0cd88e2ba56b5186fc3fd015c6a76fc9dd6ab8acf161d3fc213dc65434638055b6a1fbf2ad87198d277ab1adac5ef8c1b8d578482515cb52a937b8388d678cd975f0c5e20c7e782fcf6a1a2c1317fcbf63c1fd6697e538359dd64e1f93d8c19453ef6a7e855b406e152fc3c245b46ac7c49df0c74ae68b29ec8fc9cb5d9de5ea7bd81d69c8c9a6c75a600dad719890eca628bb3c59ca7e13ded64769ab655494c44f5094bc694571c25f84ae611a385c5b44e7a564baf82e55f7126d50f78a96b29de143e2ef1e9c84cf5b3f9e4fb6339ee88a2b68c38481c8af0e884381b06cf6b82ca61dac40edf85dd530472648cdc0dc86cdbb6f50c51544b96fc3ecee9adc3f1f3e6bd2339ba9702be1d5472ae4b0c7ed71adc9e2323cb3d561282bc17fec48988dc3d80150c26e85c9f50df944337a698ffebe15a93e0ecfb95d630a7c7884af0f810978f4666089924cc70ff00c8e5078c24d25e70eef4fd64b9e8b23eedb1fa4797777f2508e108843f2b43ef1941b6839b9075dc71d6809d682dd0954651aebb1559b9a28b82c99a3f92346df025e73be4ba7ac3bc3638e7a641b5d731a4fb95599868c34f1c69ea74159927163aa7c9258694e663db5d56a4ee5854879c54426b731f1b89809b128b3cafedde3f27add4ec12e1775c1cdeee68288b4c83df0fc42836d4e54e6220708109b8d3ef3d8d0df9d6630a12da759dcd1784f12eac4c0b82db29ae2568188fc5cc701875600e202be5a4b7c664f3da3893732c9b96df3b4556f03d263175faaa95e847d73fae0ecd85330919c62f491000e3ceaa1254f467b37944d556b9d8a16fbc8a7d97b1d877466934c53feb3b2b2190c7e94dadf4a61ca673013dad014bdebdffd28459db65053c47474192fc5f91c8e9436dbfe141c5c58568b3c2dd1b14fc88c5dec67a0a1144e9104bb2fee6e20e80fa7a1acbfd61bc0a3e725f561d04a84e3b24528d722da84e2fa849e2b35ae2e1a0e36e4c23d8a9923fbb0fdfe2fa25444be0fa72e90c86632005c5a1fce53b2cb6896c7df87baf5a3d9273b6320b0ca93d9fd105a8aa68dd708e33249a125d713cfb9cc2ab6ef49c421cf23ede56405c54dfc8bd472058c605e9be3bc1cbef6da490394230b4950b2e0eecd006bcd94ebdb72e121d18cc66da1a72f81b10e68191ba70dcebfc3f43e3d6166ecdd8273cff380a698baacce430c6a76c40513726f9d83bb0938bcf604cdd21f152ce0960ada44770641a95b5d2d445c9036fb2f3a83b824bcdc4ec5dc3c06436ee4e935051aa5ff349344516f8bbb84630c961be8c762fcc716b7ebd36d0e2bfd05858e65553b89f87c75b1c7c641c37a0d075a311d47f671ae6f61e327259a65e4e46ff397a1d03fb3b94901709557983fde003ae18aaf7ac2851aa6ae07ae7c986204f1eccd884f18f423145fa0c6c77f870268d1993258b12cf504d15b2e46103cdd251ffa4fa6f59638d1c42a3a156cfca95da5b4f75f6702e0d7d8fddafa5fec97dbc8dcfd7855d7db7fae67b10158052fb637b00e1ecdde79f815e251dff20551bf157a4e4cd0e635e0c007be0d8a74d5b42e18d031a89bb25c00ba95405e001427483d591a8d10886dc543c3bf7f521ba514496b29435a73f9d28262c9798c2737f1d570620bfe4c45e2b10726048c9975b76582fb18613a65ebad698121c53683da461e970c92bffc060357f28809be782e67388d57d8d5195a6824638341f80a9d108a76fad42c545ead5b949a2a156e0859c2b238844d2c5018f60201c44508c9b5e438b29c76b7b60efe8fb4efca021d742923df00a5ae7f7e4d317c5fd0e6d8118bf44385109daf4a9a67232abb677284e8b6ba9bf60310159aa4e43e20f157e46695b673395433f45c0460505fb3a8111e7ade5ae9bc4a53fc56b204a177b5338681d0a684ae8525a158b474000a5146ee1123220fa51f2914e419f97946f3ac72c0ca72cd6d81acad0f5e8d536163f1587ee4ead8803c3a32916dd286cc8f0bfbeab5e930ebb9eb6f84da98ab71d091412abb455ec9e4f98e179c6241e7c7a51c7dc2e82328745ce879ecc49c8a56ca4bd113ad566cb97e638f07e847684bbfac7c24fdac35774b869c962e7dc42280c958505cf6c701e88d547aa9998839dfd44436e1158f6c0695c3a28de6086b90374ee145b870ba5bb0cddd76b2eccfd1e831d97c4365306da1169eb61311d98e4e18e4ce17ca4e569b8caa94b48c6f25d9f35909fac67db0cd7d69c2352e73ec6614cb17f2dd609a5339cd4b18f29ed17dccdce4cd50204bc38b0ac00d790329f4e67f39a8c1ab42e8645d28d50fabeee956f69e026a0f01adac1b036b2e3fffd326d2d1bed6847e6dd87e6436393ace44d3f1d659bc52db816f4dbd55f34dcebf18c02a79433d4815d783c6df87a90594f1eac253a2e0326d8debcd196e9f5f670f5bc25cac510644e84c44456de2c6266392fce7ff839fb87c3e54452da2657964d438e1ceea6f9229e419e68c42f3e1e67760234f7a567e56af03cced54073ea1fe513b440c9311c91649db35978ffd143d95ee1f89780dc892d95caa43ef02a2e9087ffc9c02fc3c4029cc95c9b6c923b48ed0c344265f7350c7e57c7e1219cf7ca3f3fddf442aa91b439beb2d853ec5b937b82097957da70f1ad87456c47dff0cdf8b390890f23e3ebf74250b7ee6f8ac22ac45562b60766aa73a28d029712481506e6c7084ce328d72ccd23640285dc97ca02481ea054d61869697593241efcc7cf22f937625021b12151bdf73cc5b40136dffc26a9abfcd5139c4ac12fd69b3d176aa0898eaffb43df6d1d5ae0ab16356bb39f25b25ee18a2ab4f4e7f655052d60957be24759231302ec8e30963afdeb188d9b1830d91083dd44aefe23cd9beb6800b89ebb01cd9f99a742102ca79cdf3b51a3168f468e8a46a34978880dbc2dd55e8b3d4f50b9b9ae16f51ea27adfa715d3364f697de8b993d20b7c24d69fa93ccc0222280e59cc3722668cb19318901741f8b5e8ebd25f072b5c6b48da9e646abef0c9ffeb74af44fef5a6a640c46c13802d7a34ad9babda656f8f6d502d708c39c1ed9020bf6197bb245e1f13d3bc6d7ce9ef957fbeb952dcde82d7296a27cb9e357a414ac94d7f04ab2422990c40e51f23791c7e904be581d6827e46e05321beefde9d676f48848fe2ddcadf98ecdb20e2e726329c694cd7b69dcc815795dde24ee5b5c7f8cf96c34001831fa638270c662eb5c9a7c648c425f2f2ab401516f66450f21d7c919a9303e3099e6ad81b8f566712d9d6f8a47f91104eddfb4fef0af2bdc7b03784fe0ef87eca524fb1d22c950cbb07f223f5ca06ca08b29f6b98f563206709628b0546b8091cc291d9badca0cb99e69a1431a31c1673463e456035c96f676961320e1b41425fd9e29c564024c486e95352c7c34a8f665c98802fc890d4a2cb25e6ae64608efc15274c5860c134d7c924f1445b4c29d4e90c9fd2912be48c5a5662a01cbfe2aeee2706d243a225b9efc1b27759f03c4812eeb620c03b2ff800cdd5749918e49845991da510fd4d9dd9a7bb939473a5fa6227e5dd0cc2625b31946744f7817dc3e706e1448fd608fa603cc98f0fdef57758e1dca3f8a8fa3c78ff1bb3b5180616c01978b1efdd85cfa78e5f3ec2f6984647edbfc41dc0e1985f9b8be620861f426a0aefa0360be424102f0dcf42aee3813c7aeea94417d59966d4d8ad5e54b25e454f638bf1085ad4f5a9e6173a694ce4bf51d06aff0608ca28cd71cbd3c88c9f157ff612a1d98a4b44faf2218463b280db2ad859414c05a7a3266887aac8ab6567fd73b21608173853022be24f4fb4fd171e9e8e0c460cf5f8c9f139354d30b1954bbe6a029c740ea7076387b55638fd5cc6f8041fe4fd07e5a3d2ec118d88ae70ad1b6763ca97831178b97618afe67f5dd62090067d5bb0f6d61fefd66aa5e15fec064d4faee6d00d42dd25ff4d8762697158e10eeec9ae8d0297e841e8c2f237a8d97ad6f978c8a8bbebd6890cb1c11bb7556291ff90760891ca52d2d55c37e5531a6cec1608b81c5822c58f3bb6048f5dc5b86e2a40a82298c38513b579db1b971fd42f76a9bef102456a4699588c83e245d30f24babdd163ed466e0c9afc027cdeb20b748a7b1592774f338f7f664017d1df19bace4545feb020dadc77f1262893329e6f92eea8cd29c90ca89549d07f36019429287ac915459d4e79e1fead1046a8682d000171fe47f6defc3900108c617d428ceb6cc9609504a32df0aaacb143c1b4f7387a03cb3a2a0dc341969d0aef9125080ede8576dd8146431a69b1ab08a53523f52067510390f5af8cd347b56799029228a6307326d0395016723a4e5a2956a54b68d6550ad95f6c2a9dd12949a9830a7125a6377a3fdc16e63d15f4c8429aca4d640dc4ce4d45174ad5e5458c0a204ce7fbdd4c67d3c9b98ca0ade28f09c2e43e70a0357b36a78b125ba8afd881705ea5f71a6eaeee5e522543494add89998f1c5f87c38d095f731761c14a296caad34e1655779880221c8480a7653b871e337bb4f81ee68bbb3f45d65cc42886b2a92959abba38a92a4326b34508bf145ad291d6a1ee173359c16b085064bfa93f2fe25101ff5b852ad4d51bfcf0b74fa3c1bb301d82a1be18cd75f5623c12be8aa3ff24d74947168c136350a110025ef1c5b4c7443fc7d289ee01db4085fc0e4de1e0fb2d86ac21bbe70e5d3150e276c6e0935a3130a0485bb3f10ebf1f2c3f245f8af575d005895c503e48b5fc2e95bd6b65c45fb889cdfc7e45afd1bebdbe14ce858c4c5f3d1376508003607ddecc565151aaffa8f6612d77331517f4fed2b7e0b4f49e15ee8da819cefdc5dfd78b4c049fee94255e206003508c775232125708ac5428c0be9306ab8b6b163992f0349d8f6238f6b2711616c4712aa6106e9a81d8a8111a559a877c45dfd7fb6bd93b88f7957841c69dbe9b52b4b50785bf8c5ee9d678684a033c28a88c206301c031c3cc782e453aff2b1cbeab4eb064c66e1efc00b44a4e7402c78a3a3331dbfd42da7590f11155324751e7f82c1c6b33b02d718205c24033e004a7386b903b20947bca25b35e457f71521c5e1b5f8f681ff12ed5c3817793f92991f3447276ad2191af36dfb995ec77968b9c1b1f8a7b8d9e75b4d7059f5ceaf6950827eef48f056126c9fd383c8ae57c1366eb3dcb1e451507837d1a52d2ec86b7a22b90555eddf7c09e1561cb9391b3e4591c7c35b585b39e0f91acc5f9469a74587855dc1852251c29dc08e723b08b607fe8a810078dd4e05dd433e1bb1546be80057f2a5e3dc0c4c3eb37981e8a79d0f5c39e574a2f4a2418d3b4d24382b9955a8142f3c4509312eacaaf32ba12882229a8a759e79acb0ea6676e548fa807025dd4dbf69df79011741dce17a8ab5027c75bf723d76107bb3cf96e2b48228c66bedd16cb2cb96d1ee75d6f6a7abb88da8d874ab8aec22bf0f1e497c8c8d1593cb6bd763404adc7afb7e967200fdd06d6cb4ea01942e05a2e88b5ad0446e3ed58751d1a47ffda993112bb422ab21658fe8de2f1686167146acf8ad5425c06eed699a6436b131b1ebb2af08f3e80aa724df27fca693d85183ae8c30a05e4434d1733e2cdff097b7b6f8d004f76643bf6b9d2c50af35e41f7a3215fd74b28260cce25a731f33027cc29bf5fb69256495408f59c3f1c270517b6c9f96259234e145c256f060c9786a80d669d6a0bb7ccd7d330121e67480e59899fd8bf4edf4926b97bc964f1fe6c34c7720e246ea634cb15b5b218102d013e284801a2a63295cd081053582b4c1204f5a22c10dcdefdf44f421d8d6742086b4ad5b62acb7b1d79201a5bd7fe25b068767ba9ee7992a0493cb60138c366dfb1e74a9e86f222c5372203096dcbb310db0300c905f087f23e6af5c01c05206188fcfb4ecc54c79238913cdc992800d82b045b157812c5b0ad1411d3826bd6a919ebef22a05cdf7766607188ad158166554d46dcd00c3c2fa988965ab670f703d1bab333469f393a65def8c4730b5932f02b69b5d7ddc90f515e4e4b38db49112fd108c832de6e4593738d481bb8d81cac492825aea827df391f983f0d4d01a02bfb6050b2807ffd1a8f21dc6c4899e22035d8eb4489348bc0c28b280fc39e918e3f657b3e806c32495ba06e068cf0202f2354355448e58736e014c013bc7b3e71f8a2619b031e0cf0fea07e3dde3d8e1c7f40d97d34d7fb523c038b3b996fd5c120d95fc5bbcadb1f0c14f29ac9dfb6bbb58167fdaf2b100188c103bce46eaf3e589b0c885840782f8106c87ff83692d4da900169c0a39d88592f5216440a429b09e0981b6a2240abee1c19042c83a071321aae91b2408e6e929fb561c4c15f2d8005e3cf63fbfb846afce4999a21f2a5e3513a44f84cdb603dc6675018c6f6566511c9f50063c6a61d31f4083908ca7f42d508d210c1215da843a9d7a86cce513c11a45ff0a2a65eec31c402378ac6ee60ab56f35d40035cbb7785030e513caa7f1bb637998cf0abd877cf87fddcbaf48eeb1c3ad6ba39f36514923b42070cbd6bab53f015b48e37ca3068dd77ed012ddc838569041768f0ff604e35adf45c68ee44f0b6f20aa5151d16c79b542b8dca1f4747086768c6f9c808c516798c37d4a48bbbb19d7df3ad986b0defce5572e9aefb1d6a7d4f4382e146587ffd9f920d909cb9b398327130daf81be871235836d472fe4960a8746ed34a5ebef261791e30f7215c1f89d56d725facc5464dedb264e9b482d11144467bea8e7ebbaed0d1187eeb7a877baac45a305949e0fefb847e9a980d3060070c6c7d50b6c5a8c69b098827e5315b161957811d39a17e7b2e58866d78fbdb3b612b87d5268e943cafa557ac19127d899fc3f3168b73d87c440dfdf5c98ba0831817a314a5a3e44126b64f3c11cbaefcb7bacb3e429252db67e4ac7d0cfa499fb5e563decf51dded2bfaba14dbc11d454e331a69a72b69477ab1c4d8604b9a5b8da1b1e4aa1282af8ee50ed8d500df7924dcd8c1cc8e39a637b8559d2a7340d10103422180619aedb53de5b492e449deaa24ffc994aa7188b3dac6e93f7249feb521af248cb6632a6ac67389b5bc81a37422b2a2d174aa5bd0c9c0858666bd65a8bfeade4bc8b074a26481ee99267b70e82f34188669fe2942ba846c6b5b5e1a892d6665e6dc4fd28208b89a5b9f36c1dd0ab0c123a41ab57c883b545643f13a400be3f11b99bb6fe3cc1c79256194539192f4f2480efcbc6f4193479459ba2bb9d7cf04dd1f416245e484d79a7d9a1af37b3573b66e8a5ee4a96a1707887f26447bd04c23e1b13620c4c9a9868d83b425a280d24b222f4a038c35607b13157a8571bb9cbe1b733526f6793b28898418501edd4c9edb5b622c464c1e6e9bc5ae3bb4da4922c2bc23c75d4d22a7e653874b2337f2ad623a86901ac75fdc46915f22ca4f5839562f745afe7b1187ded9b9d09e8e84cacd4638feed7885205a524196d8fba97b91521ef81c4108fb09a7bf4495c1374c72543c090eaf8f6ba138aa624caf30bb7762506b26c107d1095d0c47de6b9ac6012416ba8898190d3b301b7f3b4cd6224e96361d59a1307fe0bb4105ff3f28b8102e538493c7b29d98e0513dd84b95eb8a9987d2dacb51ec55352a736988392dba6ef692fec56bc9b6a9dbb20717c63ee5943f50ddef3410b54bd1fef782d0cd52be6ced6b2199934372a7d0b4dc4f112d81cfec8c93c41917e6b4e7dc0bd0300dd7eced7ef3f11fde19fe0ac47b5bef9c4ad0eb6facfaced2a40680f33d09c6295f987020905564bdabba37eac50b9c1dd98bb353be00591dcfe2bc03aafb39cb9f6fd46f514c43e9cb8deee7dd98f80491b7062a54507bbf070d2f6f5703f3c9374c5984545d2046254a3aeccf1a094f6a6f065369dd7320e3bd9be08679eeefec8ec37aff9a1da05e55079bb4b0516845be98c4ad8b88b36d4e1d95ad7dac5cf26aa3e87fe94d06cdad1508b3964664c976d6dc5acd6c75f9375a555d4af989cbe5f201118a17cdb426236abe4e569de7480cd1cb0f6ac88c9c62e1ea90519bb703ab8bc6fbcdec1b3aa7a8d1a6592cec509976cd651c553b4a03989713ad7a05e93732fe18d0e6e15ebaead120fcb67404e1964de9d59be8585f410262dcaeea152561fb8f56b1603a214ee8e3d195b3c03aac63477ac5a19a6f9ae19d89db53d189b94c2c2c50f73e3192a2d68ea6e1368fbb437cecebec34f25c6b85512aba37d12523b8dc650977e4ece5d38f07da3fcf14b351bd60a2f8e1def945d1d7f746bdd88a0a34c124e7ebb848c721b00aef8f8ae525ca95714c9e1a0e7764a5200690f53cf8a150dc81eb71bde574f93ae0f627a417d7d8c1eea17614f13a25d627ab3d900601fdd900be73506759a55e47f5d7c2f0ecb6e2df8ccf8830d09b6e93b855910be2df020dd9c09792d0b3eed0f058e454bfb4de2ffebb418b9d1b6d4c28407df5e4ae94de8830e9cd59d5cf78b9ca33dad35f03318f11992834bfc62a9131291cb3de6db76341f7eb37764894957e64dfeb779041142249c3dd201c8593a88aff0ab24362835b36f67b7ff5b7634d0445d34a10054f835e650fd4483135bc0650f6b07d753d9cdd62de1faaf1b242f7697dd32e5eebcfb8b5b6917c634d1a91770e40ac691ecf5e7ea58f8eee3c18fb7b5ee0de0ada5d3fd0a2bfd1c5b54cbf3a92cb919bdb809bb5456c9a51020aff9b6fa15785d8b1ee0ed14b31d2f8e0471176bc10665a0d4a51f835799270805bd1398fb46639687b2b4f11a10b268fac74418f9898504259593ed8231f166511bc60a695c6aaa6e8a63a7c35c25c9f0973067538cff0e77d62f579361852cad21bc886f6cc95d8dca01656913dbfa080993e30dc3f5098db094b8a95329f3da9526a4cb6ef0ecf887a27f67bcd8d7bdb41047cdff03a029dd1433a28374466db43f997f5aaf63fc63ca2f1913b2999c4d8253911fa3596f87e60bdd39461c9023678b2dec2733c1a7c858f5d4317915aa04cbd4e613ece7d0a30c01564e931490180cfce48340176a2a91d286a658205e72ec0edb3c7917c8998ef832402dbcb0e3f2a97f2aa2b7199b13492df832e845a544ae07314d7650168f873ce6f67367d1cc23154ad344072aaec357699d4204335986c05a55d4f9749038d0afed9ca022240ea623bafc969a4c91514b63570a7ef1ba0825c4b3acbbd93a44c381e3b09bdb8c20211841b25a248a4a435b8ffcce137143fd8bfae829f25f652e079db39d7d9785f0f76f628e42fa672e23fbdef4dd47d06196ccfa79185a4304880403f5fee40b2817cc9d22235e65a9b6980452be3f560c54a6382f2c1f8521f4849092da76cb8fb6b314f975922d21df18d10c65827cedc3e7363dc9152f10348223f99295171cdb93d296c3f5aa3e06233efbe2e088e0b8ce0758ff44dad4b6605d674de242f0ca810ca08dd796e2a62d205b05b185bac97cd5290f5d8608a9df09b0c5d5f042208a476f90ff8716378cb0cff37748467290046c99721aba060d3d9a4ac64d9f7a10d17881f5310abd487d45db90557a58c29a27520ffd04496d946026a7972efdaa5ac76c30aada02c088e0ba8d873a3d92ca962fabef4d614befe5391e6a3c94b1ac559ca56ef41c0941a7d60b58c901eaf66198188d4858378be912d02fcbfdb80582f0b50c7c9ed8bbbd84d5405eeec28eae535f84611c77e7b2b7a81fdf6e48d9d4971e911715bac148412439452cae3d24b8ffaeab7064d4813180b22ba2fd645891d33dc4847766c49316de3346478342f8bd9d442fcf6d1f028c7ef893024f260002982566da1f84d49c0d8e6b62caeedf2189e1e7998130658069a21d6fc69e5ca5e5f40ecfb95db49d7102da09a86bca76dc2095d61f4811dc99f4269039b86dd87fb0d779de5e6c081a70085732ffa3c071063a254451de7862bb1b8002fcb812d822ff3da6536c493bbb0e064977556be59bb2378d2b48c542b7c49695a5106f4c00d7dea627b0a8dd8625dff0c3f1846baca447650fb5d053f472a8385d4adce21b595e6cf72ff1c9936d525c0bfd186d09e0242132bc9319abf106e40d12f86464ba76cad8136f1845704af7a0a179ac31fa21b94d5ee6f1e939c488cac1a78287bbb016c8f741f820a344d7aecc0ebcde91c097e56437840103b36b005972ec9a52fac6b0356025ab2ef679c56c53024dd389da64389efafcdc2651e59e270520fb6e8e2cb4dd7fc76c3621a4b3701e15967febfe98124aebfbf273a06dcfc68b6a0dcfbec4d437963bc87a6ab492a3aec7c2c97eb713ada76620c40b70cbcfe70c8f878d6e4ea8a12110631a6b0b1ffba60bfe80b06e5cdbe1fb376c659e8edea239ee77c3dc24c128213c3ffcacaace22d3657e9b19ec3b62007041a29b6948170446c146e009df0aa063dd325a076f21247f84391e636f5f987105245476d6a61f6a5143ec46a62a729740f17934e2e4e927f91f02ce9953476ca161dd0997a50ee08e7463c3b20fafd48571a1c2babf54719aed69093b5bb7163ba1e1d74b85da11e69de0d4bd30c2132e7aac0d11978324cfb7471098a7e7d4426e4b2fedc9b5d6e2213d040be7bb703a43343855569daac662b8d64f81045b95ec11be320bd56fa34831f9c60bbfb76485ab1021df6b0d5c0608e32d428453b990f943d97e1ab722ee79f9648b833f706629b97c566828c22ed67da3fb5a990bdf55e695cd5ac3ad8204b9b893302c0b0820ea72a836b75d7476a5f5d2d3e201a3c023cca48cc49f8abb7e58f60a7b9079e69f9070dd1384f5e6cc32ddaf289aa7db373371f5ecf57409bc08d1f70ca3af3c5cf1d4c34c8fa14083dd8b57f8e32e75ee85d923838c6a83b4394a7784b13fe506a26ed6dea6c910f7001bf32ca8f69af43a264ef4a2e5af64e4a1b5b1704ff45ffb785bf930fcf4700df65bc4dbfaecc574ea6ed425158cd9ed4036bdbbe340086d6ca41c88b50b0030e6895c539e1907a3aa3997e0cdd1339cdc4d30c689d1e793f5a541b04e53d7bb1122d2f0e4def85a78f280ec63c0b27b10ee0f9b87e166c518feec3ebb15eda478d3fd86b3fc5abec2578938260f3c0e28b388f360b17c4655f7b34a2cf11e19412c646331af3bf336d9c0d13005c580d167468b65709c1501c3be4c921e9913ef1fefc0d67bb5455b6aa8960519fca5812d7d9106a3ac7b989c8e4e5492476420a1d845b36f27e5e868ca932fa35be94c5109441a9a8669a753413e9e8528ec23116d7566baa522f17afc463de2f3678764477230a75adfe9b6fd740490d64749d1b8a916cb31ce08289fe08bc93bdd7b9ef430668ba1f3873cd8d45a708011d160f07d7fa69ddb29ee7bd57c66ed1691d3458791f66c1dadf5752383ab2a559f4b12b007254e43ed075db260f758489cff646e6597ae93d9b51529c1769becd9b5b577aa1088f7465b37b95b243c63669bbc48a6fd61b5d2a2edba4ac838b35bfd09b8f912ede4e79327eba57cc52fcc6bf9a1befab71b3843e271a9518bc6bdd9fea956bed7441e5802459b074f649aedc868790a6b43cf8db9aca16017aa62b6cd3e27c61b8c6951d98e956346d073461dbffaa7c4efb595b64026d8666e0d4391139605f50328fe21e3d9b53526f306cd0cebc427c1a0b3fc878a49be5a4781907a3b7f9718b23c70476be6336b945ce66a28178c8b683f78e8a5fbd21a312aa007fb322e4bff7a7c8c854dff9943b8ae603ac3aa0b2a490a800bee342fd656e499ccabef0b0c978817f2581f69d02527ed6cb7570becda0c36fd0bf02cfcc9e5c0d4fc701dd92c76c188527bb0ea60a03ea38b75dc00f8153c2db69c878a10f74a626abaa2ef1abcae3dc9e96c756c7bf52839848fa67f343daa38317bd214aafd24441c760ef0002c7f714daad965f535e1d1d2a59e6a2200d54035134db58030a9779bda0d46a901f41a440dd3b824b08b6b955ae6e9f4698fda797a935b424025e9198c1373c07bbdea03b5801d703747c5bcf14e7e25be222d01d94a2c0fd562f4fec5faa05df8afd0eb16098112b985e06f358f02d2ff45328680d23485046a103d33912ff09505cc50478edae20497725c15e5803ef2cce1ad02c2cda1bfffea8e688e0537bb0bce2a0d856a7507fbeb83708878ed5967bbc028f9d4e794c8f9a3fa56ae402c1b9e810f905cdd74e1d37f5d3f939d39210fa9e2ac589e3e4c0a6efbfa042ac09d0753ddfb21f13a2b1186911722264b62d7689141d61a23f990a190aecb2218a231f5432ed0d30c9275817e5183ad18e32d1aea64cc59bc91b0a1223901a0590966052a4b06989a25f89d0e220801b515cc7b868f58be415d1dddf8090a66178fb4ca90119ee56136070201d7370a0414a929e2e301d5176a9fed3c287f018cc34c1028cb06c8d614cbbdea28a8dc4a12afb87d681659fef6bb599bd962d7393c8504401006743e198467295e720d57e62f1600f508ac02fe0189538038ebc6fa15c067658aae149bbd62e00087d12685709cb36e650881152ef4c1724d8c12b287425be2cc05b003b8ba1fc51e5287b49b363dfc7615dde926a6a37a5172f1cf66fce3413fe472801e8870e65f9a6766c6e68020110f767d5fbf1249d3849760b3a4ad31607946702000b8f884d9409eb79423f7712e232992a09d09b0d059bd36d2ae378c48b375ee6a0bb075d1911406c45b0946a4000000);
INSERT INTO `destacados` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(2, 'AirPods Pro 2', 'Now with a Hearing Aid feature.', '', '', 0x5249464642700000574542505650382036700000b094029d012a2003c2013e91429b4a25a3af2da7728b69e01209626d2ab16654b73505c4f5f8524addfb74ddb1f89af1efe8566b5400f069e6473c5ff97e8773e1f2adc5587f3e4c63ecdff0ffa6f4a9e3def43e9df8aff3fc999b8796fbd27a7cfd9bec47faffd507ce37eed7ee47bbafaa0fefdea51fda7aaebd0efa63bf7a3d29fffff67bf397f797cf87ad9ff4ff81e73fbf9fe4ff7ded77ff3eb5fe3bff0f3d3fb3ff69cb4b505ecb2fe3edbc64fe8f60e4f45ffb79d2fdaf7e78615cb9b37aa8f33ff79103df80a0f5b428c71a19e8ca0dd73629e5feb1be523ce7e626180293ca8b1af42907035392943d20c87945d0dc174b695ffbba16e911a62b6904e990e89757d06cda3694a4affa86c317ba2aa0787dacf6095fe6402d269fe5a48f9c46fd529c91d69367ea4c414e561fee1d32de0cca94af0ffabc41d83c14fb1e94feb22c5fde3fff50e277c7d3ffe1b6f7b8d6d6f325fa60911fbf25aaf6d5d7034237cdec7ab6f0826f8f1b47b60f503afe990cb1d96909ee91d5f086494c5abf6c360f65ddf22b1d4d03c6818f29d541e46919ef24a16dc53ddf8ccb5f45f8dfd42da0c7f52442a27224df69c890e745fa1b5cb9bbaa8a7b6444142e87d55dd6cd957c7d48004a36d8315f48e2055410877aa72dada352860c2312b3cba24ff6f726c3d14d68972ea7f5eebd06fe8f2fd3289eaece80e2467c2cf678752025301292f726b81f8e788499576cc57d0835d74ee4aa1b70022902cefa510d0bd277b0c59faac93324e7cea7887f5d63ee30bcf5e01b1bb578ce0b0975d51c295c6f2efc3e01f96b51cb7da8a869531a7de37f35527a12a84cd51fff47bd1197b24e4f86021bd8f43a8713283f2ee7334523d6a036fb798f167ec3e11c45e75cf6fd911694963f5dc59c3f2c5c0c4bf623fa3b58e3310cc0ae8a27e62f7be6976db04c2b76d1dcc6743751b784fe82a05e20091ea234b3128443ff19973103128e0a3bd354bf9e0928f6fcee2c740a9d3e6180982fbaef3111e643410d04d3fc9ede608d97ad6c5c578085d5cfc78961d2e970d1c44fd3ff8548360b7d71c2892dd4eb33d34212bbb3bf02689746483b48995f560f44a1f9a6c383b2b561d74545a076d79359ba69ca57e762182bf4798b211487f0b8194a47106244b0713d46563898b9c1c04fc0bc6234aac098e2385c35fffe8d3a9b510eb0626b5fc9d8485cca1fc0dd7b91b02ebe3daa15ec13ebdbe9b628632353c677cc143354264466d75b03770e217c67bb46acd75a90a0bea023fb546643a0c904e54889dbc3381ec6a1e2ad331934a3881ced785349b60ae19891295014cb9143e7ea8c616c5356808464e5604afa24f37db7d4ec461b96343dc57d6a929530c8b36798075bfb9e3d01773f7d67ba0e31c53c87d31e0a2465651228c3c3980defe19e3a0396270ce8e2f73c4900d3d7d3d7b61d8e3decf4fb34796a185f54f6ee4a65aa8842725f1803cb8ff2760bfe7d1be362fef4b41599d71515094e2e44d9afa5209be703385399418c928fd4d41ac70c2ff8a044c23376aa850f86123d5fea8d98b1262ad90b503de37733047601e970123f329b209c3ee5fc5fbb8d9248199533154cb466af664fa44be316240f2305a7682c85126e878eb0c25c4ea3692099fda11c819d2b8234de2ab65544d7c24cf0d5164871c2889418c1c9a6846b69670f29d21164262b7187dbfa8a2f5e2b599eb9ab165a3b00129427bce24c1c4320a60e82ce467d11a2ebdeaabb75e0f627b892b96698d61cd1e1f0a7051cdfab82f0edd387660eecc89fb2953596c7a38300943ca5b91ae3a41997bad4aae3c9ebd9b335e64cbd27d7e77ffecc1cab3580e68979aa65cc2b164c828281c2509ebdae9b022fd858befc52f219421f43210a417bbe1ffe7910d6d0406f1ac93efb8c6d121a72fa73dd16bb649ae98a7636b9785cc63c4bfbdfd4f972be4323e5ea3c1c60ce28cf6705809bf9897d10a28d5a2e938943e63052d1c4ad143ba133c8c8ea2d264c87e5508997b631d223c561a54a2c345499a9684f05c9ef17aaff8fa2100a441d50d35a84ba3d6e9a9ccf0b52a87118684bd40425cd7fdff825f6f4de93350c5bf4cc7f0b4cffdd5a42d235249874c214aa4676285554903536870420f73cca817abc2e66a177891613aff486696dc2583fdc13ac03bf97b971f85a978da35244f3446cc0de72964e512d4471134e33a951d3ade37ffd8c15bd10ccbb9fd306d193c1e594cbd8b2d613b98b89c88365a0d3b78f0089ea9ab01847af6d0ac17330c3004202a27877bd7ff6e0eb044a350aefcefef3ee9b1db505cc4bca349b50caaa4162ef89f72dfc16bb186153bd54c1d226ca1a01cf5c775366c51690c1e5ed9b264de3f4c583eb8ff64c0584a3eca378a5fedf104a8bd2296d64d1a2afc347dc4c15f5f9f600caa19d5bb701fbcac2b6b57552306abc7c364fe2a806b5064a0e0d1e6a30e2c51cc3d96e9d42c659d53f0a23d3ba4bc5218258084b7f59224fb758a39d5f6e07a24aac698ca25fd1621ffaacff5e50ceb7f05667bae5689cb37becb36a368aaf4b3903d5ca84e7ae565759b8aab9046ab122257b03b62c5783920d3965d0739acae43bed878e664d24cdf200fae706ea1919095c10439d32107b37765cddd078847abd8b8f68f6d18dd55cccae48dd14939aa455a62a62b8944b7c9c9df6a8f2e40012f0d3dfa4337e934fbcf6a85939de5be32fd3143e878122ce98f78793b057bdd819eaeb224ce7b991b04217297e90d5d470c510a7ea2405d1aabd4132d87c58bebe533c051511ee0d636353c4a294e80903efabd16813af2a0a5899ee3f6d3d14b0d5619a4c5e8e2e075d2bb7b2b237e6f0544641231c239ef865d87635ac8315ee840135dafcab6089f5ebfe45bec24f2b47d1fb26b8e14968d07f7e7d8a6109d08854fef8919eecad659bde38098590f642deed684468b507769ed8c725bb4176712ee39f659b7ed2faab5341271223f5d8b7e3a38e66eb5684d489d73d362acdddcf66f9736f1a0966c90795f7e2b2b235b4916d3749c304178e71295cf556e93f36d1a8c7ffa6bd6613ca046e0e3e52bfdd9d4dc6b5e2d84b11c3773a7d68360564f53d7d12e7f019f9ee2d12424c18b5af485d26919361396304f6694d39e8fa5e842abb410f7830684401f06948dfd9debfb859f456c39345c79cdf9cc7c5f4f61389bf4b93647020cb377e678d64f01faef0b74123ec5f6d8b598c70c5503e863afe8ce593461aa59b2ede5672c2b9efc67938f4037739dbbf0fab666f7e370afdbeec001c208c4e93af91824b423d9876fb3352a88be5fbfa0cef882b6d9c704d8c9eecde5812d47887b5307efc32c7c65504d1009427be70ca5b613a94fb515a03f9ddbedf9a174c9d61376342fde2b264b150484b2b99bff676aaa9227de89425e8d904cca0a8e27de0ac12598ef4b5d2270355b9ac2f5cd693770c7a5ffdc2ff78e323343e07fdd4bd3d266546eb5ef50e346cf28318bb7d62f087647d09208dc996cd52090b66e6c3f7c1c48acc02630fce239963db4b160ced2cde76dd3d22a88d4c00b4b75063bc2644700e8ecb8007a1ecdf12137caf26b249951d5e1f768cf23814552b7f809089bb92ed43a719dd3fcb29738164f7e60f842ee699be96dd67f6031bb1377a067c538d28a79349b43f6773e1aa54ddf4b73733a8d768fc8ffcdb35fc7d8b16ef85e72fdf6e6f131d766b5db863c717784f518dd8dc32cf8a66272cdc660084a503fd12f3e2afd9d156a1afb6759a8041d0c122c4e3d4390e67633367a264718e863cabead0e098dc92bca2e1ed7bba989d17c101f0288bd073693f7fd6ff8fa510a96dcbbde1a75bc2098da5df7e362e2c7e30326e1a1576bc86023a43175f6ef79b6b23628b6eb946acd15eec28ceeffc1a1dadfaeb2de480f6cfc13f171f8c8be171f482e38b8a30e2e7e626b9ab574cf6368a48a1a696e409eeec6ee56868fc20bb8e385820cbbef3f3fa34002d5becf8f3a490c9705b012ac2408db632ba689d04dedabf70ab6a8d9817b0603f7e12aa34426718a4d4281732f9210de0b5c3255a746139745dbf1a50118b4c1067bab83b55b55972a2e82510813b76b003ad34d2f5427512241c5bbdd26c0c61eddcef17962c2101d53c0e0cfca7bbe1e853afbe544b4075430d79d57f55fcc684a6b65c63a5f7ff29b1f8661cfc3fbaf83851db98b6ac0626d7475cab2bc09ff2f10bf748b520376deb015f471324cd6bb1847d538e0d05e7c9a8165a37ae6798ce731520ff61cd3c1e11d99e9acff369f25f8501cc8b8b69bd2dcc8f3a33d78a8e5361833f6fd9531b9667025608c08bcea1818162f039a244329d76783a11751502018d3f2ac67ecca3983e3f94179c430f1a6312d26f26621af31ae3847c1dd1fa1dc444872ad3f3def2113ddfd9fa8f790778187648e228a821c2db43f0914a1b4415cf13508cffcf36c0040a766c64e085a1d51324d01e626a12b309ea41c76afdcd989cefb7e9502aedd00c5c3f612ebeca32edf2d5ed6342e9341014f406ade58ab9c7067c1c6329be5eae8555ca0c2d5626efff995026ea2c573c442bbfdf571f05454e5c535ac1a4d8fda588cd44d8a60367fef3f4b53612268427ce8c8f282edd4544e0d4c6b7e55e936e43d00ec3ca4a11efe8535f6dab08caf0f87cc2e17ce9d40989ad3b3e876c945a6a9bfcde4ef9980f8e00ef78bc6f9aff8ce18533ed1e76e900bd7a2c4ca40bc6f985a00e2602c29590be7f4ca936c82691b3c64f79d00d728d201f09c0e50bc501061b6873c0e99408ad5d2700efab6c77ce1896038576fbd638372153279b2ade559eb6c779b84fb41e28851d727b2a865c8cf9774fc2d76acd7be415f180d9c6b149c44c4c5e58941b2d2007d4aa040fa3fbc77fbcf4f15680d56e23fe66aa05cf1695318db214a723f6dc309e0917888c751d648bbff94d946ecb61642afc7e4dbbfffe698adabe13bb7bf62cff5d53c0ba16078cde48bbfa3b6b98df3d8212c235c45707c3bd8eebb053d9ba63ea4844cdfeefa8206939fdb073546ebde83c92e14fe81125a277bcfa84818915fed790fa1ed18a8757e2e2671915ae1e5b121f4b4ac93af05ad38d508539a030740ebf9464e62f01b46ba0bf1d3f85944103d404fb07af8a2c41058b39b085ec506daf554d6a1a49e2faa79334685d3f3dab9f5240005b9cbbd0294eb6be6adfff56f60b29b0cb1071f536e45dd3e9168cfa8e29957728a9f296184a300ed7fa292d312c2597d8c787be572b0032b1a70be0968763a719478a93feb8df47c00b32127d7a5384cc39c663e83673e1f3ba27fb92b346c436e2fd3acfca5cf4da4222e9124575e62bcd65ff2704bfeb2d6a5650bd3383ace004b396a86a40e12b281ccd6525180852f75635228842829aaf7da12ed8b4ac1f80444ff9571a7f1efdfd467c851ed1b83d74a7cb6d0bc285973c70d707b6897c71c3e45b47e0ed2ded833c0936d295d80b365ac2c70f714aeed2979b2dd7b1f744ada46b11f52056b3a7e674a417e042b1defd0baf0d96dfd2ee73eba5f81c11f18da91a38bb67614207c2f1d427ba892b3a888b88972c8049bb68fbd5cdb5b36d006df4d2bc6d9fdc7fb74b7d536d7a72681a3755f0c0672875fad74e730bcf216ae6cab1d075dda3efbdc655f1532569051e54847ca46abfe86ab2bd01cabcab34fe40b8287289f4d93c15291e31b9c0c08261a88da1fceb41dc10f9e5770cc5d8031ad8db7cfe1d9db6c882a44d59f16af3dff11563d1060c794a2c29b03c4cc4a9f32277cf320fc1d30de6b39ddb8c21bd1c6d3ce4c422cfcf6ba1b55e3f07284daab179621fb85974d7a50dab3eeba4f951f10ad7e427b77e35a7bbd386ebc044c2d16535f17244aa91f41b52837d218c24ec3f04e1285ccd13c0c39a4d7cf92db0546dc6094c11cad735cc072c474077fffb65073150412420752976bb68fd7da1da6272681f48d224cde8f184958de7473498e5e6c24dd43b85f41477b103854f35981c0d446a90dab6e4955c0c7affcee6c69fabb65779ecaf6e827988cb19b2d0144cc8685c3a7568cb79bb69bc0e0405ff3f0b741d684b179fe14207b1146c819f3073b4952debed3d4a8ea8fc9152b66cc84c7df6cca43e71ec77ce6377f8e3d6424c59e7ddf8a0ca6cb36fedb0738874b47990e1ee3e1f7ebe3cdc19f2d35dfa5e7d96998a23625343430f41af8e1d72dc66ce9c20c3f126c5dd58340af6c3597be140c38c60cf7697270b841b6315e802e6de75a86b9229c8535736fc68aae9293a527fb428015abc59e57f23c0805abf7951ebf00084baa10792d45e5ada68e31ba38209afad938b077375f4fae6b2cd29185d9b01e8bc82ed5030ae9b8df83cea3a014007447dbe75d86e597480f2d06235e8fb7290ff4ce45ad25d7da0dc72659c056f909f6e577ef1dc1dfcc52bcf0f3774a216df5176051628fbd240cc2bc14badc0aa825f8d08abba01d11b8d1154af79a35d44e4a85718015af7e6cbbdbfa39c0624200ad8aac248ea5dd450926f56ae9af853bb93fda2ceba0d2229a4dedabcf8382dc47458bf7c1bc7a3fa3568576dc966a6d24ebc15eaf578cbf5571c63731677b730394b343ef1da65cc72316c0e6200ca071a93452c94c16a0eecc8595eaf15f645f0fc46e42b2d7f4d8df9fede42f2c01a219b3dd709987a2b3e8eac5c4bee3d8478938da666a0ebd4263d2c17d61c12f9a795c7d7af94573e8924cea1d4ed0ee59baebd9cb275c88d6b8a8d6f02af51b73cb32df5cb6a690a56879736407193955204dd309aa3632c85ce9ddbb0b522519d9fcf94b9cbf119601d1e0d13337e03b0bfb4d274eb58fc6f2277448af1b7b0d4e6cb1917cb11d80d6f0d21960e1789fecb481539957c4fd37ed95cae54e774580a38e718c083aebbb865f669bc58ec6ccff1e3902c474e2d5081cf6b0e8a827337bd7717c4f7ee519b0bcf495cc250fd6f5ab146d49e43d72a6d352b4ee60893d0c01c8cea29df9c2bd5cccd1cb7534f8564e06f2ddf3a7e1596166e762b85d32448c5c79af6f6899a057797cfc416ed1aa5d599d45271327f504d80dc13b78f224ae22b9a02219e182a7f391cb8cc96f083babfa0d57a5b8c2781eb3ab6ceaa38baac8f4998e688dba6da230e90f1005f92ba16443860e7a01b653c28730a22dc886a77d4afa4a00b355359585a1801bf09ab988001c8e7b6db455b65dbef5a84b42c845c7835b57c9984ec44ddb6ff389b169a3389e6bb1d80a784f2b9b8322129d59e1e708e6310057ccc932f99273107ec90152903631939e676eefcb21889b6c95ef05c201294c7927608e130edce41e79d5156894fa5b944235ad53a03e1c45cfd34dd999678851bff5ebeea52cf3f557fad13aac795d038f8811ee3c0b8b9a2b9ceb5397acc206912cc0c98daf35000feeb656f64041974271d15cffffc69ff94e52fc23f06ee5f4977fc53610dd12687b2f86442a4224b24a8ad70cb81f49a7be7f8089281b6400de7bd93dabb44130e3c62e9250bfe9d9e154332ff4845f7bd82a848f73e8e61b74da39531587283929c9313dfb2bf40b2df41e078df3556de77b945a833b2b469c4b21cf33bd6658e23cb0abe566cede48c08e59b562012f96ee2bbb46ecc8e664fd8faba5a86795e0d2368699ec57523048db0152cf4cd326098d289f05d5d8cb5040e31b296642568f6823733fbe371d1d4428d2c6203d5d5847f17699a2f5e95002a3d693143d15cb6bc06067cc7b83ffe3a0b2e31f910e8e4ea744e85a807d7bc6397ef4734fc323a6a40c4fe01c12b674cd248f8c61dec415e68df16c8112658267e91ee62fe7268b78d07d4e3aa6e3cc867679d6723fadbc09088e1761b93051eb1369d002eaeaa53625055498a7f21025d8b78841839b433a30bc983112cf62e8211ee51963e3e896c36ac975744716fab50fdfb993b8bfb42e51053abd49190e245af3bf70deef7b933addb58bb318de0bab0d596540c499237fc186ec1fcbb450882704e7622f20227248e2cacd53d5b580ce2c621dc427e3eb4c3ee3aa1fe5033c78116454347ed2a01fa3f7552361f8f09fb47a42298209a542dbc4e9565555d4bc8b806555ab687135c7ea211c0f08e123c54e68a937832ecf70a5481e7325ca46cff2bc525ee5cbcbd67a9d91e4dbb420a499e9e625259e7f08ee38fd4cd26aaaa8bf27fc3ded52c17fd5989b324b799ea830602dffd9d39cc3f57523af7a89b8a9d3eefc5cdfc3bd772afbbb2fd32a8ffc70ee495275da059f3c1134d31d57bfc04150d427145bd5473f592aa371340376051c7076388fa40c64ebf5127ab855c4fae1cd66680ade5ec354ad404bc7148b28201417a0289025e8012e0ad6db6d04b72aaba36c4fd1ee1e3f09f0fe15158ef36a9c8225ecdf67b40e15e23a523b6af0ecfb8eefe9529e77ea312647d47101072e47c31462f86f786fb233eabe40913fda62bf848666b47ecb6fa1fa00c21fa0156f21997df430396efb29310115e47d35ef380de37b75832171e6bb6b1d99d2f8313b4c10cac34f64c9299865609e3a8f355e4487fcdab172a7a781b91fc7b0ff580aca1f9ed0dce39ab2cc9c3e871e33da828d52949f5ecc88841eedbec0f26d05b1748c6e4e95f688a5e358659f6d50b30f03d29551ecec5bb9c04a9b8270c34aebb04acce305b1aa2632c904258aea818af20537cfd3ce8dbc32c3315a9250587202352642bf90b2e2b7be81adb49891d224c9c2115a37455326d722cada87b7acdc385879a5949f82f460d90824291ed2873b0024ce599bbdca5bfb83b4f98a3bb7eae9d45ff097cc273347ee58ef57fa9cfea6156f9c9d7792e8876a95e7ca02b7f5722abc4a60e612233958e14b897daf8e14c512704b6319648fe3bbe4c9ec1e8b35b8e8aa064bbb003e65495aca831b2b3b4d0fe9ccbf1cb6563a239239a069f98bd2a4c2eb8637b782ed5d95770f97b2ee971879b0f5393241fb1dbab8bacf17c993f951ec42703c74ef92e0b1aa7bbd4ba2cde593a9195aa0eaabb8e737131ddf1813c1412a352b949f50ccce1e00e188bba7b57cc709df254b3ac6dc45909c1adc6179762779df19cebe9b8afd84b3fbfb880411cd54902015a4d310db36958ae8085c3b8d5f68d663a1ea4baf5a900b6da505a33bff0192785a13f8043b4fdf9b89ce6904abccb890d309f2aaebcfbf5a65265a033bc00634171288292952dbb0e0f4e28037beb75eae6a48968dcefbfa68c77d0dd2f252752d8bff7bb57dfe9d865dfba0741c399c387590fcaccf92a0fdb06b0d727ed527dedf4707801ef01f2d41c4948129ed2b444e53b104df5c8480808d10029cc7a4dc0be438a96d23b7f51fe55a27af41f00c8e37bf16c0e5aa0aa232a4f9081a9846eb75b4b08dbfc0fdc73c30d6b9f1e4207d0fc3a0213d34a821d54792ec273e1341811d89d469d9267e56f38e5a86ea4426bf3ceba7e8a40246b02337f4c559139570cc5a07030ac62732ed23315de3fbdca15a4dcda69fc76d642a9ea43d0039b62c05fe6b29264ea5fd7786c99cfe50416d58cce89a7edfaee56ca99224a1f8c9fa64f0dcdc455e89a3f3c3d82cd2c5a292f28af3ea0561f2bed73e945ce5781e580d1c01c8da09dbaf9e523e65c89f226d49884e37410ac94f86b7a53a55631e8cf448ee8ab9b51a427fd8b16d9564f84a5f90e7f466d2ec2d72e4202ef88bd0a7b49a21cde03ee7d1d97a6367463d2144b3f88ac06ad6e83892d828a50422977b10364d48c4d350245f575b5ed0f54c1847ad070820a1a4557fd711754d83b8ff5ea831e018cb3677dc55716aae6e852b65879f141e11ed0b4e979858430429a14005308ee693ff14af631b4582c62d56c29f3c36334664effced32a07825b00dadc360582779e3757daf935329092b0545e452f5ec0cdf1b2836a5312403735de70c37e32bafefac1ca74a8568fc6884692d6fd96ac68bfb0106cfac24af0f080fcc8ec823bd576c72438180ec7f40fffcdd9425520634112bf84a648d4554db8bfec70f3e963eb6a33c418af1c1915913f27040e72121003a17a396e0a60106603938af222d47087efbe2297ce378b4495f3ca197c23d44e46d1f1fbddacfd8ddca7fdfc88baad09b8c993560c842812a76ab71fefcf072920b3da2fbb8effd91b51ab8df982bb23f6ce9188e1e28cdfdc53c3287a28bc3bec1bcf6887c9a354f417b61ca202ccfe9d7d71efdf03cb363912a5bf6e31ba280f6d5d9069b5027c4b29fa4a10f8798a3d28280229dd426835b3681dc6e3efc4e4aa09bd2c8f3b13e8d4b2367271aa80ca915cec380cbbc699cdae11c78cfe04a65295292f2e6b0c3b2013ed2b049533b81db0274baaa874f4bc941b2b92eb0f8ff8b5dae51d4d47f835308ccefd0e569adb9005307d0e5bddaa4c2466326f67b3f410070d5b00f00a6a52264ee3a9bfbb3c7f77b20dc75f3b1e05b1271fa2f68c50de78e1d2f258f27c92dace83aa452cc985b92bad4b2de95161447feae7fd9e0120aa3f1d9d462a2c961ab42cbf1fb8c3186480ef3a7fd55b575195624891dfc72140fbfe6bf8784d17bb336cbb536ef17ea102b1b723b5a0cd68c453dca71877404589923f9d2f9d0e43741d8fe44d2bb156d73f5d3b5c2c23a2177ef34dd43a5bac8000fb7f3705c7225bbb6797c06dce42aba9cc6807925f9a9f2958105a590f1e43c6ca34308ccaccdaa12b9343d755499312ebee85d9cff42cbe27e2444e21801987cb8ea5b9677c07a77cb88aeca3a14c6a8ac61a2f40e4b08d0b00c3dccb8aaa8303ef2100aa2e361c9db43e141d9c7fdb9c5ca9f1bb959ee38dff1368311b6943cf41ab41e6503c13751c1d1003672a0129b538e19dd20e66a6dd51881bd3378d784b51a846cb254f97b24a7c0db9810f9e11b86a17fd06758cc4f32fdee036b77c3a78d897a94d2409dfa3aab304b1084abe67391f39ae8df59e4eeed3dff541ae4aa2aa511d66387a95a579337cec1d68d9316ab0e601d6631cbb849c0ecbbbcac41fc3c79c450d6542d2656914b34da0f898e13a7915e8f2006f7245908ec38c4846af93aa010727290bfeebdf288c3d738409cc11714a85db58d5b2c3cc9c6f8dd8113f6d440e9c754750420385f4e3f432dc14c264b5870423cf0dc7770242fdf861a8bd1c73bd619d520c377d60e65314064e320fa53820ec3cba5bb373d036a301594f7e2cb438e45d33b95ed2c3a34f4d85ee5d743d46db99ab08fae6b5092fc8061aaf70a487e8d46f971cb7a0f2e005111e0206f103776ac438c4d4ca99a0b8a1de5d2ad36440c117c06e03b9334e93cd7c007782ae97d44881fac8102bfe28a4d6b9117d631258131931f58a39aacef93b89426ac98bd554ffe0c07d86b2701e165c80e9010fa857378b5953ff4c2e9634f39d54e4a8b27ce6e472f49862d810cc09d10695d059f0ab470847e9ba3179898a3d472234f06184db517cf61d40617886bf9f3a39adc8c775d723c368ba1b636ae609a391d9406ada4f097f1576ae21f5f87705b204da6dd3a13b6af97bef2e49b99e036a7f8c4d8154a92ddc650a0a3f90eee50558d08143bd2b8f35e8860705a827d50c7c67a1ff50109db32a24e736cfacae009b59c078eba860629919c74ac1ce10b616916057a0526bfa2592572b1e3faa2eb538fa3fd362bd423ef26416756297216b0dd2acc1f452fcca43f2ffb0e892a5253dd0ee07536e6423bbdc8c86d4a90384fbf03c03d0ba93220a4f85864fcdf361996b332f5c839a6ee1b4d13ff4b7f9d0c0927f17cc8533a6defb80bb84e978d9ca2aa0294b9d4f0e5fafe2214fcc7c636ae10b9c04f16337c6b30ea0fa5fd69231c9c84b0302b6d95893dd1a8834a50919ba17c03f432a001f9fb81dc28e4752bcba8d5b103d4098081dd5f56cbbe37309b9a1b91f2c2e7d90a150ade7b18bf7000bef12591af96874c41f85a856f7d080413f8aeb6570f20b33674eead66fa5f9a23aa0baaba20c21d3a647935f0ceb8dbd6facf17495a70d2283fe507555b368dde21441118af4f79b2ac07e47c2e85ea249c0e1303c4856197541e765f2a9294cd5e525044e9abd8895df724dea3643a8578a224e3bdeaf7c2fba253ed8e469ffbefc6d245e7f20edd0470b3acfa75b6561a5da5ce4fe15706f69526bd4982b8b6a0a6130ac88a956deddc8dcd964a44e9faf9cc4dabb10a022a8ad74099bbc762df7260213c1c307523198c0f2de9e14292f72a71d4d043efcde8fbe8f86e6729d82e84ca182a5f987f0fe4f190e1714543506bb5b7d6de0f1483b91a6ba9411ad3fe100fd90e39df130bddc031fb348eb54b8e2bf1a93c20da05838ebc609ecb2fb8eee160af5bc8e91a5029af037502f3ce8b88cd53837a6cabab6596cc5e3a40fb9c70ebd9ac63ee9f7dd836ca0e2c0b956d5e9494b8fcb80cb70a62e1b6c36d6259b188d3cb2f48d12b328a5288b9660112d7d4b8def796f883ae73ab8b95867f6fa4fbb9c765c828a72059b371e7de9e2691758f57fd0af5535259483f2c5fa80bdc92eddfcb8050b918cefbad628b3325d69e8375218109c28f20d9ac47287a1ea04bd89dc69edb157b4d8029e6fdb68f24a893b545a572d0f808411f662851658a836e484e7bed75d1f6c79ef3782acd389c30a1b8f352f0e83b16709e27a332ab6466248a4fed3e5a700b9b07fb406cd24d9db3faf9fece6029150d6b1d3c36430387e4160b0712db083bef15de94f872d1d5cdaaae8881697b5284129d6a7be234b594ff76705594b8372628748dece7fea8687d8ad51ccf6bf7a967584ff8d95c14a3cd38133b5632d06ff743a57e539a5d11d76e4d1ba84aa10bf3af23231de1fd67c1458af24822943ded5e58135722326aef1e5de29215ef255c26ed472c6a05602433696c84155d551bd0076a92ec1e763fe7df291a1d68df9d9571ad8169d6f13606e07bf1b5e5c5467852dcc095c2ef400386e54e3d20c9c57856ce94fd9a8aac6ec159773253973ae26f1036dd448037336df952bf639077b1fd91a95e7d91df8e05ac1891087c26a4140ebcada563b4837129fe4d73e188664d30490e4ac631e30016f880b9bb08e093871a7a9089401a3723968e9314371b66d044bfb65e3254aa6a6337aa37832a7fbb7562abf08ab700ce7ad1af0a7550ea3e0fb73b90554c0fe8810503671358272ced910f1d39609ef0f56d64d36df7d5890c6ee2e040dec3cf4b36bc2bbf438cc1932ec276839beee0375874b811b495e8792e82d374dcbb949f12c44c2db65f0738fedefa03e2e5e231809c9fae2349aa903fc5b2b4a3cecbb7577b12caeabc18354a20971ac61c1d5e908b76b9c1330bbbbbc73dfea98c77e01c23fe6f71e2f19ea81094d7e194cf4704cc064b6d3c9f4143fdb7841ae68aa900ad3ccce63d3ad5078d8e5b2306ee287921a84e8e2ccb5997f7da8aec7e2a860f1fadb39d682aaa82d8d97f6875784be76418ac036ffe416fa1d4569f9df81a6f94ca8dddcb9dd775cabaa2437cb3ca6483d9c51de44245209f5cb2d816392ef8c887286bb17da0ea4a43f3fc4214cdab9d11f924558768157431a338197b285517e96bec45cd371b50927b0c90f045472b9d601ad239eb0a0e7df078035a39c318fff0ac47261521981bc18b253f6b67eba32e5a5142516a2630c6eec2a7031e2dd5081ef90101483688afd90ffde30e5012966c5ee910b88adcf442687e1fc85e9a61460a469fb5ad14c22d7da99783b8812361da108777d3802a091d308129b8b5258471d6f0a17ad7b0c2e7bff870208f848dd644995c7e93e014c8028d1054f92b7a8410aad4e385c4fe6979d30219f752ca9ac901adf886b85eeda86b6fbe4f51a53bda60f4768535f1ae68dc8b54fc9dea5d388ca9119e61de6fc6cc044f03896226c63fd82c9cf3bfad95fa70952947df8e5796517db28b116ea33bd0d6819417d71f43b1ea3e89679ea817aa669218604a6e92f8e3f9e63cc3dcf7e3fd7f32526c072af7cabf820fc2b11cf212c8f7e0e7ccdf4736cb052d5a5491706b97e8b74170b08a04f1b9ca5447eed6248ed340d61eda8886077ab4fa62a5acabec006e4bec8ca91711a239129930ac5f1e49e325e80152492a0b5daae7a7b21d31d6fec1138fbad3f681f09602ff17c53c70c59fa2559888487679ce2666b6ad8313abe3f0d1f8c850a66236ad34912ed6fef004557ee7b724801b8d88186836ba49331fbbcd00a5a5f4376058ea912ed7c15c2e999667a7cd97aadf59994b1ce1f39ffde7401782944e26d62632e5336c2860eb303c3ee290d723190c9735b47036d80eac9e4e82c5a3282f073c5521f1a2f31c58ace99434bc8bc7c559b585137b65b280f1f8ad3a2c4a6af05603b98db9d5705a4cd2038b05c3e1f9e36b34872d6430a6268e953bb4676b059372adbaa587610c5bcc459257d8f2510e3ac6ea338b138540cad5ce7ca7580be3778e8dfe492e50c16a0b23a16342bade885c59eec57647447725a19b87fc1f737ac94f904d054f1d5384e90a5ca139e3230da8e4a31b19eab9674c4eac7094738e845c8a7101ea54b083c32565eb1e9286a3c9ba487ed6a9ece56179b22230d0cf4748cfac564483841848eb5b890aaca2f403ce95e2c683dca81fe730b5114b45a3a7c4de33cf0dd3cd7c3cded8660b549795deefca8a4364e12c2f587e469b66fd23fa93f960999ba303607232eb365472f1871084b25d7b74be2b7e2924cc54507d8c67b18b01daceebfa00827f653cd5f8dbab8003bc2c99a95467fbf9bad417ef41082e9f431cf480fa09ffc45aae4c4e62a66f2ad8fa940b800d36ae4a9028507feb50e1c3c9ea2f982be8dc2c3225f93d275a43ae4443d2dbbe9d26c90ba70c1c3cd809ba34b322cd80296e2b5f7058307622aba2053574d2e4ff6bb40947554fcdbfa61dc28c4799bbdbed6132161ad5be3ad1204c2bcaba833870f227f441715a13f809f7f745012372fc2a0366e1102906272ad6e996ce7a3d0eab6596df471aa74d9e16f43e9df63dba8eecd72cd1ee1c4c67db31e686ae38442b6495bee70abbf98aa5fdfdd3dd32708e31a11bb657ffd1b13157d16d31aff4e27422a21c27816330209b2f02ca19c1ce9542baf4637946cc99a740747703942acb702fe68ed33d9feb907c4eb08a92427e3c25d4fdb38040acd7a5f78c06491537f48ad9ec7d9392edc9ee17aa4d627e5fb2204bd3d0b833e17eb1175442350cb4cfab528d212b192bc63a4101fe50a60c5947e230d7bef8df3ec85a74cd1efe3ce3ba4468a0ad97b4bd2692f3aecc0e8dc951510820b397a375f1dfc7c445661ebc128f5cc0fcc5050822ff9c5a72fd6b9660ebcf041bd85dd024fdb585ac4e841963666b338ace84029e7c6ed5f1a2390117b50863e803da300db465b67236060eca6eca9d69fe5060fb7cc4ca3d3207e28aa3a5c1f19f8e4e9f8bfda4afe262290f77fdd552cc27e505ae42c90acff5d3615cb99c8ae02fa7f74c3b6d32882135e3e504ece02280366f7faebeca154bc13ce0c28a57a3ae20a7f8dbb983b5b876a508f45951a29f7eddcfe54b30f1153b5cccb24bc67c1dbedbbad3f113d7041337cf157930f63d68a12796dfc7b824f1ba747ca358b7beca90ead6d6c537aa599909b2485eaa704ae74723c31121af4762bcdfeba890f519f88994fc7f7e218ae98532b9af1119d30c8c1c23ad46f080410a3e6ee6807453115dc3bc0bad6562b8e00e8aaeeed67577beb07248cb323cb3d3a066d3a2fcdf5cf07833c97fd8cdd0fdff1b74f914ac03826cfe874f8e6d347d418948b15ba660c62e4d7f2d6f37360ae9d300d6c2db425796ed6e79389aa31b703c00ebef5c71d2333e8d7dc64ed9314c9cd0dbe44935fcee22558e373988ab9295158ce9c6b45c5e27fbd8282bb608f9174f5d1d4d50ebdeee735771a59cd47a0191a157efb32f9bd8c1271036940c1a9a39c8e7bd1f5304631006f1d67adea2e21da23b38cec8925207fc09f7a98162f080f24dc5a3c1886e32a60ad753def34e549933b0a3fd7b4e27ec953fa5fb92b9bdb359de1cccbe4eb4c45e959ebd33b6aabbb23b194e48574a02c4031a62a81a6bb84c3158426ef0eebbc296ec940076cf9d26a61f9b62a3468a0c7f8596c8f5c61f7a85c46fc95a6e8e13a7564c01e59a638222879fd4087044e513503b57b21fbf151c52333b61d60ead92365da287217a2a766d65d15438833ee62165091f44e5110b74c46e857c7ac5346e302f3c38e85bbd4b9e188e78ea67285ffefc5cb453d244d6089cc975e8fc9e4533235bfdbd1ed13071d56cd5355275cb3247edf4703cce8ccc92f824566301341efd6058e2c2e32788540844329b403c1183fee8ff339597a8212857e200d091682682d19124c5ddbe69287506c4eeb8ab525ccfed4f20e2c54119c3e1d06cdb49a0380faff2f8d8900aab09f46ee6a34d3efc6b82bcc666a2d9e628908a18e4a6c654828f5337c7167bf546fa508a15d09289d1dea548dd49d362fa2ae865be0c1d5920dfc97cfeee7c4465230c9a056e75a0d32f5d858980a05a4ea804a234651feed1851b542dcd537532ff6342a091eed23f0885b3f705386fb51e58c0fcf1439c4fd676870e8b8c9d88da12be0205bef68997424fcbebdd9544272aa0a59129eabc598409dc8624f25c6e55c01d96f3809e094909868606a770fad61da043258a950e82a4e000fbe5cbb9cd40425355fd162c6321dca87b7bfb6b8408e205fdad238288059c08495f4873a58ef9477f2929d767fa7833f4268fee4a87f650a3880db163bcdffcf57023279343da107002c615153e1e342b6cf7e11033d9cea58c0dc6da5a2f73ab20a7063bfd90b738da3fc8142b914a7055f8604b963d4c8262e3a2d5545d5cc5e9c3380693afd5679582efd198c651a9f47ae16e0610830b0804f64383b0530341964f8c874bbafb4c6d1db56c25e19355e77a4df1246e06b0dd4d98767f3bc8ca2dfbca69b4e4be3dd39a5b54a959e010520e6dcf51a1b470e6514f3a26ae19d90c3dfc0a2a950e81c522bbff34a08ec355fc7d866e018fde946181e1923c8f325943bcbdd8a320ae2a6bf1f54ad12bdbcb357d021e9379073d37b213c18eee5e40dd522212dc41affa3d88a82a70b442802fc6e89816908a38d6d27e2ea4e865985844dfcc47e9063c4179e6700ef0aebfca41a28b77f33727483bda2ed513452a57efa3a3274f80cdf2f028374bc0ad0c76ff3cc722d5ff6fd94a0021414af7ce318b922bdcab267ef808d49c586c7733c19de299fb354c8fddef5af8627d7f69c73f86da7d483905803e0f07068efd4738d2d68e5540191ed22b5a4adc197230c0ea23d7a9945fa779e62590820b2f4eda273d62e34a67e45706b1fbb926af89fcc1df5751815a724ced70d7fae89f1effe09b3557e911247dc0b898499d086821ebe4d9e151830d1dc552bb6f7405f7add600478dca9723d027f0ebc1937f98bce6dc0fb127de5efbea53c2cbde164096bdc37fac98bcc3f79a1c46d915bfbac0daf950a6597d81bcc79b14f4cb7eaf0c97b1d9663dc55bbca1c19311a9300df0e3496589dee09c46205277ad6da5fbafc7aeaa5eddbaa1f88228c4042c80a6fe56b77e59b5d538017eadc43e4f74469fbd0d0ceb3e17258ce5ebfb1ec5f034d04350fbc37e6e7381561c71856746affa583b0105a4598501d368ba939a8864a35bdd767e71d93ef350312228f0ee29decff7e17c73c31a11a6c3f22b5ea8a53964fa276c116f5312901be06ca2f80f2c0312b90ae6f5dad7ea6af2b0d21dde34f09d535948baeb5f6474b0a77ec7018b32d2a106908978eddf2f7c6fa6502c2ef05bd928be239741c712eb92593ed5b31975549198e1f170a2fd55731040ba3cc6c5906096c7f6ef7d6e5f0afc19a42163f65d1989872d67f0cf96b9dcdba8a8bff27c469bfe7cb66de795393e32f4bbbe0fbe85e34bc40e8d0d5e501cddb99504c82b1cc1842ed285437cebc679e77d106c629085752eac351a2b82b338f857c28f8aa77f4358d33f699cdac4b76441de1a1896d1f6435206844880a3c99be03c255792d29f5b92a7d3ab5de245835379f67a098de62693b8d44ee3e420b64ddb8328059e4d1821a1781ac1d8b8658a01927062f38dee35c45e0d0eb724ac12989528f3a757b466cd66981e1d9a54a2ec782a19f9bbfd4169a2e76fa84e6e19014997a695b2cd0ead1fbff636781205df5af5c275d5bc387a156ba11b72191eb3b494d6ab94e169c1954f502586cc0d0374ee9d9b9e8832b657c355e7e88dda30a9fad06c3fd8fd4531284be28ce02bd194a340ef0a85f7275d84bc351aacb50dba0dcb406d18e679fca1b1349f65241b5cda5102437c1209c79a972c23eeb4a6ad23f43bff91194ee5c2e40ec6142daf4d26035a2e34dcb311549a25f2d17ad089dace50f6aae82032325cf2148135256881590720b2f2211d2a01652c93ef9ee93b1e454f94b19eab9fbaf637e4b303392b8f0281a35cbcb2096589c1c30dfd7edd1cfce41445dba9ab0fd3e560c0b8ec5207b84d06bc6581b6f0bfa858e3907c8daa3089e2239e5151966698e97c30f00a4d4abb2e7113ee304f40ca25105643569574b0bb642f0c158d25c455d496e85b6f48a544ff5b1d52d751180295e5156fc81d24a231422474042aca3f9f943e696167ab884b187ff64fd12faa10dd63c2181e62dbbead2b347a18d91909819be69892a03dd0a90e1aeabfe8a65cc456d9d12482f00544869fe83f4494551d2f5b90849b8c6e320ea54441ab0af86e67ab195c43990d84fcc43c684ed6860e799e1737bff406a77276d4169a3b40d52f13e99bc9c68a59b5d738ac34f82a21f54e4909bd77f6c786eb3ff1fe1d473d5bc221c16770b74d2d99eef0dd344f0703a70b8f9d4de5a22077063363a29a70daf302d492187eee54ab92aaaedb104497f7ff509c9691f7d073022a96b945c28d0d98cf6d010fbc80fe5f9ba5dd8778d7c9b43f99f473c547ec51f799e02e76273253d6908b73fd1d875690dfb5ed815f7cd6ac71800cf6ea5782dd19b52f842a8b13fb98fb13e3e49f32473b0cfa302fa8bae2c16b09e8fe92b498e84ce5e55ea56d465d604be481efb0257e0f06bdcb0aca3fc19dc20454ee3bf960a65dc0ad423b788a7c2350441ccd34303d472f907109c197836b3b2218b4604987b422e1301215bc57ae05e2e8d030f3c3be5f262e8842d436a62747caa3c1239ad69fece7b673ea0ae7b7ab7fa19231ed131f7d766979050a651d5083ab4e477988f6331bf1f60a9c3b3daaa0bd6550e0f146677fa64ce9e2faa19f52512dc8bf88636fc43db9d2fec6da06cdacf9d9d817be794a692a7636dd98662dcdb457ebab06e2556b465acbcc9de1857c25137348b32f6852629016eb807e12d1859233e208d158075c7e90fea27840e0f31655c8a2577577d80466b90922a6a35f97c613451ee98d1296957a34933c26ec9c74776f32a4fefecd9f38ef31b0d4b7606fbafa0a4d57a916ded142e1d5b71103026700d5d33b073f54dd0945ba7c8292c43e813f1db7596479ee8637a111e81d142fd1802cc87d71d7b8c5be2520120f88c4d2be9fd47fd25f93316b81c3c273240cfca96d965eee676f1ef8ae74c546064865d6107822dde763f4f6cf99d7f7f4840b68feb709d2e9c795c0d4701d7d169c1641320c0dbe78428162a7e19165565aa53b9e0f534747afc7311454346acd9982924a5bc6f7d264ebedc29cb29ea7b3a676ef71c719853ca08200693a1baa734c8be8c709a3b905f626653d79496a514e1c92173822111bdcc2719c95284002501c159e5a5edf1530a78c39f18dd7a6eb848350ded50f668d9573e9889b59ef8f85945e1ac1b96b3e5d4aeafb758e5b43f8881997b5d9929612f5801be5d39920a2dbdb63f21f1e47b396665a2991cabbe126e8489fb56834bc6bad8179f62807ff566e24cd814e1d7ddff3dc20da1ed3e96502b3c61674262ee88c6134160739af26a7ef5704ac1c45074da084f411713cf4d5360a97f0c4d6db0b2de11db3b25ff8349fccda9a31e3641b5585c2d35b143267a54934109618cb78bb9ce1b7bf3e4aef5ae58ffe593a833678972c88bc91e6a376399510c227249b2969716cebd8ad2896e6cdfde6e613e33c48845edae70611217c32dd53ddc7afe9c7573d2214a270d25575805e7826ddb4bfbb3bf3f28d7c9ef3f9637275d78a8e16bc38e8d241069f9005da9fb20f7f67bad978b6ff6fa0f10d7a6827da0b9b1dcf1ce56ac72b99771f673700efbf4cdc46be2c047ee4e8034977d36deada74aa52921d8558a0dc4784a7b17b252e6abc9fd48dab3c7bc9e5b4a58991fbdbfefeba7314a11b771394436f9054781f8623ef865472fdfc52d58b8dce4cd59427a2ea45bc178375d8be6194ae067478c6522222d13bd9bcaa5cb70c11237e6e4289e1f9d4e3b1b03e7b2b43a58ce0fa8cd4d1af4f43fef7025a98dc2be16d26b69b81f50d2f04f8adcb7f4c13b12a4c3cfc262d590917471ca89f210934fb8de4a1bc7360ebc4b5755c007cffdba0b17a75e729a648dc8b16c29bafeaf8ba697151246065de84a67fa09907108f3a9bb01543395721170c92c126c8165dcd18ee5a98761fbf16cc38223adffdc7394133c73817d68d32dc6989bc703332a03d92f2004a0afeb0ccf926dc2f3fdfcd083889308418b2fb7c75d9bf30b7a96d95ce51e3a5bb6ac97ac162ed08b5c89d72eb9384b32bfeb047b5d7098f1f879ead73aa9fc05d60f4f52be80e2abe8e5a201c06592319205a875e34a59cbc9c883acdedd0d3644d8e2baa4694ec0b95ef5918dac7bd3cb35bb98b7c65d8a5002ecfc79d9ddf6b9a601be7fd1a2152f9f3ac4dbd40c218974ef8eff91a5c79decbb8d10f30e31453eff02623c06ae7f4235f182d818263c5bc55b4a34f21141ea345139d3ac50d1a9e149b2da065de265c75ede90c137e0952c3daeb439f3cf1e5d66bb7398d2fa3e2537179a67dba728d83f20a438718a8cdddd9dbad045223bedf42901ed9b664bd4bcc8c5b50dd51c4a1acdf568a9eb357d0e24388cab050cc06fbc699651cb0130d490399424c1166588e860f8b960c062f9b0fde61fa6c5af083e7bec48994a532a51e89045af63e8aa2fa2bb194a14da9c66fbd3d5c3ee3afe4cf21a8b3f7ebc79bbc38315b5ecef13c04fbfec5e4211ff3166280aa4bdaa42c59a1e2a42131795fd21dd3174d06a595f98c5c608e523cceee63b1a4cc8a9c1291995b0d66990383668a4e5b5cc4744bd21238e40889a64c2ee0d3bfa216aa59f9cda6ef8fb1d83eb9f9cee3a960849cd0b21d739adb0e58cc380b6284aa30841c3da2f546825ae028224e5518584c07b9afcff421a46cccdeb14b60d006038a78c84b319f3599ee99f79553d50f6c4de01c4bc3636f0579ce4e4a2b80b9aafb5163380681548cf4b685c9cc39e720eedcb43886e35d58a4c85af9b6ab14f98d5e84c1884d614a5a502d65e6e71d51a88324f572e2881532f38f9bec827d5f7d1bfb4fd0cd15259ff6e4140728d9db9fe94d17337bbc2559296340117ae5c62625af4d5e3af4fc12dfe9e0b74b5d4bf205f593227496ceb0baacbff83da5193bbb1419d4a884f3a4cb631c530b9d340eb1b2400427cf57fddf3a5d688f648e1b9c5d96b808195c00a2f990868f1773acef78c30ccd835a66ddda88f4e503bca2914aa779ff4fe604b202d18596416c0cdf92030114e8dac6861c2377d305c8ae720bf9be4fc4074a142d7afabe748436c818d66506b8c99a1acb12a2886fd7ce4ea3d35d27cd5b008452517ed20311f738ada3c4ef1cb122748d7633a20a87fe937ce4cb22d4a138e44e42652a1638686ca7a3cb7b60872a42b74e70c59b92bac6dbb1b56911b0347b71b6e2bf69debe683c1e4b9f45d6de3069e2a89d65bf80d76c798bc94ea49111ac6748b28971056caa8f74206d5523d2abaa65d7c7a4db4d61bd4b7238fff5f7a71f093866098fc232a4f458705ee711d6bafd057f60f2b9bba9e1bc2f7945efd9ba537641ef4af39f18f186bb31be57956fba2b14ed7204ca0c45d7d50e8ec25eb96e778531ff44cda3d5a8d22371650bf18020ca539e2fafceb0516de8977ad0ac63ba28430d8f3896c367d339df2198408943861b7d87fa394f5366cefba392d46e677a01a6b493f9eda057d711881d9d38eb0e44dda8a819f2d14980cae9fc70ffe39a15c822a0be776faca065aed940fb1866f74742edef26751035892d4e4c206a852a4aa49e7dfebec592072c5df09d496874994b7b082187ee706a0230e1c4020b6758cc97f6edb78e9e826063628012e963979d96139d6c9989ddd3ee351488f332e0f74120bbb2648d9019b881cafef74614f424f71eef0481990cd6b0198f4fb84650ba707765105d533bbc9fb3d0219bb7a8edab9726250276409d14885a7d11cdb7b6e40c5347d127bae4377c2fbfd8ee68ff5b3b1900f37b13cf29fc640198e359c212cae5b20c81cc31bd567c6a2ddae4e3665f8052797528014b5d52963486dd0655ebad3aff5a593747f0b6518c867f90a1c7a561ca3c1337024e76b98f23d0b6bb878ccffca4c7dba90d20623680a3d2f984961c26530a794fde47fe1c6ab2535855418c2759496cba1c751a621e781c29450c14d40f36f6820f8f071b401bad6eadbdb81d08a868dab077a99464ef7ad4dafc437cd328c5980f6e3a79073af1f7987a431270280366298da9871bed9b88c2fab54a404d444c2e2babf14e0f3996818fe70c3dd6bad31f3dc2524650725ec73edbb46669622d19a5027019203090af52a0ce8d76672cb015494d8090a5c2057307759b81a4e21a063984fefb2bd7f158670b3a06bd654c7d0f77341e2137083621f34c13b5205e5b73800e6af3f037e84a180cd9f5e99627f7750e54d778c7422a0e305c70b9a541a18a29fddc42b4f81639f74882cfd28b0706824ab970e1a49227e9decabb0771e0327f69d99e6360560a459d32d0f4c6b611fae9ea9dfd4712775ad5e822faffca32d259950df7bdc3f7156a67e9e70c49504e84d105a6f286b4e889dd5081f5e5f1029231db2649a619cb3be36966872cf1cc3e0fb33493cad894f51df7a145b926dc199b9e20134c9ca9a86f7c3f7355787d979bb3fc0d526a3fe68c14ae2bdf53204393fd5b7ee980028fdb675ca321d2de1ba8d3570d3eff3fa3090db3f26fefad20586d66058b75ff1778fd3c7222ce64e3ea8e90c8341d7869e5067e775a6ec7e92b47bf8bb4af76913a3a6ef9a56a68bcb63549bff5ca38be28d5d889b2f0c0e81a812d594b47aee183bc7d87fa24741fe32400ad7aae555a2f7f732ebd149f458ec25751d8e4744a2bb014f9dbbf04ad2443b0455a94e641e98b684630ae5e5449446a73784398a29bf64c189424396e7274dc55764cf91a8746d73cc0df1187108f84ddd8dabddac7d8387ccac9beb32f98b1d1dc8d7cf9295573b069f9a895f52a12d59cf6640e0c61c8adccfa9cc9cd2a96619c2fd4a1b17e05587a2c082e58f07d1504a0a35b71ea3b99d2f67d66a41ea1436cc1b5aabd9e1e123d909b6e17ea800d94620e628bfac9bb117d2a4148e06c52aa892889b0f3ef3c14d82fddce3ac29fc382f7cb9fdc2ef0784698552b0b3c86dfa32e466bdf729ec95a2614ecead9756f600996816801c38a6d7a9e85b437f65f4850d847390de8caac8e71356a59acc84900d820de0765add0589b23b8e5ef813f20dbb4f583a33b20ac741305d458d6a010f05089b6b44a476426ebc680bc4b74d4083e5e0caed28b22498e73afe624ecfcb48bafd83bacfa7d1b8e05e67bb3b791e941efc8e76c813dcdbe172127fad737dd962a39ae925d90e265cb564c635bb18d972b1bc8264b452eb0466aae00bfbdfa6c5e0bdf4d07b2da72e4b2e44c4c134d5f1df2ee99c556b735ac536f481ec949e57bb44879f1802508efcb5fb80038dc0e62e590e64736076342558053a31ea4898083f9157b8305feea48af05514d66f995b830453a54771cd429d378690b4d9b2938c3bc1a2fe532285dc462703b02776e7196e2bf598a29e116ad3d30d6b1436eaf83462cbab0533a51912b1394ddc302ef253c8620280f624a5512f8fc4cb1e3fe79deb8cecee1ac6e1363354929449589d5e4477f6fcb5e66a3ded915dc5d0416b5d574d47ab9b7e3f38dad5c8fb243550412945989657bc6f8f38ec6eec616bdcd603390d8a55d3b5a3430c9a9c2952ad47dc69a4b860b35c70033046dfafdc445084396fca95a6eb096ece68301525531857c91bbf7f1f708dce5018b4baf873e55e639fce295a5fb9441010d88a228402cb457eafda4b1376839bd1b4459842296dc23a40de4eafa8cd64f185cf41b887f8e63d2a70e4b329324d9b7f6ff4d736b1c95bcff5b20ba79e8803b1c06653e884c6bfc95d45d1d24b25964000bd83a673ab30043d424bfb6f2ac187b96cc4fe864e02f32f77371d314cd0208abdb7b7ee312d3732a2482d1d6c587b27dacb08bad361ee48a2bbf5a353168f67c945667b9c103f722c16f74edecf7656de56da3eeab2ab922411f0ecbf6d56e3d4363ebceee2a05a4aacdbf1c2aeec9ea842cf386e98dfcac15eda76553dcddb0624fa8490f834cdd4e3cc541aa92d65a0c16d4bbaeebbbadf71826a09ba955ed72ae13e777846a947ad2075e06bc439a7f94c073010e7e77586b1130f3566a9e241d30e73aeaf0a34b5460220e2ec87e16ceb76a338490fc90b3439dc2cbc72bc6e77955dcf929b7680b0119a3001de56535e511cda2f04a9361be7aec0b6b4d0718cc965cd3bb10446716f145a96cd3eb9306893aef1310a4df0bd381474f3c881e5878b71be7516a4f648c49ea30aee4c1c0411aa3c33d2c4ed922e390a364e9c493a4342228762285e996547d82e4bba1a45c610072979e654e5941ef700af49eb9b77a60a0d6a3891e73300e2a832019937e000e0e3dbec1ab5d13340cd54b2202e63c62347f8bfdf1cefc98bd0d0a0d67e56d656c66ccbb4fcae245dfe3d713fa5b74a053da979d0b9c178384c227bcf0ed712cbac3cc6e7ff0f979ce4723c6760069339d5b59ecda39c0757c606b92ff9f19d2eb32afac271706b296cb1cdb3e4e09e3fa95d4b60f5eb25214f06baf6998a2339e9d068176b504e732f76fc62216377d276d2fd7bbc89dade35eee728678f6119f2a8a0dc5a893ef2a703b75e59809a9aff4955c515814497f2bd76c68de6cedc582fb05cd66a8fd3058ddfbdb3aedfd7e9611426ddac88e6f2e1ca3157ac501a4aa8e6229eb281f595683f5acc446dac33e0e6854d7aeeeb634746c862e09a5e2cd2855e8cca6cc257ddd137d413fdc98192d4465ba8ce50ed15a6f9d27ff07941d9e068fd5e0179b6f69666f6eec07eb5b64001dc1d768beb1a28f46c2097ed34fbfc1f9977f6216960186e7389c001c1209cc1a26a94f86245ba75c112e3a944babf5a8d0596b95ba5ddc90df23ec450636179346b8edc63e6ec5a7a4746a9cf4b58115980fdecf86e44b09085fda0e0914794daa2cb3be507fdfd440a2a3652b1548f38b0771931fbe7f551b91d7e46435d78e90fd402a69bf3d2b074b68dc6c32be05ce71c8441c03578f0a294391b7562a98fabc2d2506564c90f2ca05e7cc33b58bd6933c2af740cd7a8172dc14aa5e75314ffbeb830c38dbceeae6c7ffc484ce8206ed35531c7973ecc3a4f2168f0390007d9c49a85f667e855076ce193e94756e600ca5b931c8d6d2db1e475192801f3819fe20bf01051dba379878176e07a47ddc237a074d4902c0cf2f559cf78f1aa0e65d2af0703eb2a62c59c0e7f0ee1164d2aace3485d8debbda10a7542883b80d84e1fcc7b1013336c95a9476a3677015f06bea666e0f02eef10eaf71c590bb224a9dda80a29b9382d02a4cb7889e8abe3daeb4508776ef2c5d4ed41ad92667523e357b11a53bed2d2c9a7492a15ec71ef9a981f44e3bbe9d7377ec6d8adbea677b1fa9c0fbf36cc313ef526d9f6ff3aa7e16d725d92d1f15c3011a1735faa5fbce41f27d1c2e52fc8a2030d53f86836741d6a2604c69b9d7a062eb39d8067830ae1181582aa7cea02ac6fa6136271fe9506027b57fd906823616a21631c9763abf5d5a5c959a41b529e6e3c7f7191a8f576ae2c6e6f319046159ce65d5e6b61ae3c3126b2dc45259c3dc01f067028f4ff7818baf7ad8a9623a9a632037a2b7e1a2d0467431b413ce5130e868ef1147352d10b987bed07bbded305e7ef02e1e290b65f2f57a2406610f256ce96d7bda950a882b715cf56c0c9fc795a8a7e550b35c375ddb0f8e4ea870f2c844c42b7cbf1cd0a64a8ec782926b8e9e762952c5db977cfcf6791ba99799d2e12ca782eda5e9540826238637d000f097542fe40497360071f24a9fd0d6ad6f23be31a3e19cc4a5afeacb39b8fe62bb6b02f05ebaac2c9155631bf3d9726f2973517e66ee51861057618fa015ce1adda1fe1fb218eab1ee7893fc1eec3403f8817d75fba1017a6cb0c4cad99dd70a405d0a7d8904aca1407e6bb9cf3b1f1ad36ea8fb630427dcbbb286b7e0577be0693da06c592e1d402a7cf5e4ad9233e1dafeff2a6f156a778ee215002ec794cb6438ab6c6a8994043eb1a4224743af4b76ac2d80645241aa4e356375b666346f93c854dd040d4e6eddc5acd67bac407f4579c9cdfe49e9a17b788d511f6a1b4fb97421a825644f914abcf6c5e15bc1f38aa84de2bc6bf7d3522e4afce48fd1430beef1c7cb1fc41138de10db719ae71a044239201f73d32135d612a2e07a1a4d4d5f21693ef19a9df93219d4b4aec5aead0576e542bdcbfdfd46e44862b9f22a271e01db0a8122e554e466cfd64e65697ef30267b0fa54bf75b535340d8f79214c9ae137f82d831cbe0443c06c74ff761f28cb77d0ed8ca658a5f37eeb86f63d404870096ad7721dc2d463087f7c6599413f538c4a1dde84c36fc8ac612a13b1497ae5ff53896bcb564bb42381a192c041c9fb12ff00eff0a2ed68d07c5c76d34b721b446b736f1fd3c2be38163e4ca3c02fd2ea2a7bffa264d21d20490bc67755ba58bd4e39359fe5e0be22822fa6110444503e721680c5aad50100ab16591fd4276901cee9841a1c4d9e3b7947843cc99fc48fc3716ca5039202082f50c5b762fea932445fb3706f697a772fe8b8795af52fa2f310152d5be21ec165586c57a3feef8eefaf91d975fcd4955e2237b3ae405f60ed3347ec3230b14a1145c38025d34db550bd526674a01b8f6e1d84565f13515b02591ffe03e927bbbd0ae92499f9cf4bafac8a1f0df1e2fead75ccbde9dee9793ca5f456a3d8eace3b7c30296f5fa47b1cd0327042a30bc6d75bda39139fbf7bfde672f16da789e46579d52de0ea00b8e022dfb11cb0fb10979eeb09afdd9afce46fa88f3fcd843cd272fe4467e96eb9e769f129e9e8f4cf9aba91398de953f5e7f7f708e6f1e9400a768937ab3ba7f2191a59284a791ccdc35f64ee8f273a4581c3cf45fce110cf4e2c84422963e74ce7faed4a7c63abf2b99ae8d3f2009a9b8a59141c5ec106cb56cc8f83857845c20f543ab68903b9886be3563a1bfa45f4a13f1d8e5f87b344dc4af5ecbd74504009c9d744d9b0db7a0a61ce2e3ac6403d17a21fd1d7856239027f07d05cc6a83682925e0bf3b099820b3d7bf77edd4ac34f052f3d666d6f5eed6d7737952ca92feb7ce635c07a9a0df70a1d573f9ff4b6366ffdd0cd88e2ba56b5186fc3fd015c6a76fc9dd6ab8acf161d3fc213dc65434638055b6a1fbf2ad87198d277ab1adac5ef8c1b8d578482515cb52a937b8388d678cd975f0c5e20c7e782fcf6a1a2c1317fcbf63c1fd6697e538359dd64e1f93d8c19453ef6a7e855b406e152fc3c245b46ac7c49df0c74ae68b29ec8fc9cb5d9de5ea7bd81d69c8c9a6c75a600dad719890eca628bb3c59ca7e13ded64769ab655494c44f5094bc694571c25f84ae611a385c5b44e7a564baf82e55f7126d50f78a96b29de143e2ef1e9c84cf5b3f9e4fb6339ee88a2b68c38481c8af0e884381b06cf6b82ca61dac40edf85dd530472648cdc0dc86cdbb6f50c51544b96fc3ecee9adc3f1f3e6bd2339ba9702be1d5472ae4b0c7ed71adc9e2323cb3d561282bc17fec48988dc3d80150c26e85c9f50df944337a698ffebe15a93e0ecfb95d630a7c7884af0f810978f4666089924cc70ff00c8e5078c24d25e70eef4fd64b9e8b23eedb1fa4797777f2508e108843f2b43ef1941b6839b9075dc71d6809d682dd0954651aebb1559b9a28b82c99a3f92346df025e73be4ba7ac3bc3638e7a641b5d731a4fb95599868c34f1c69ea74159927163aa7c9258694e663db5d56a4ee5854879c54426b731f1b89809b128b3cafedde3f27add4ec12e1775c1cdeee68288b4c83df0fc42836d4e54e6220708109b8d3ef3d8d0df9d6630a12da759dcd1784f12eac4c0b82db29ae2568188fc5cc701875600e202be5a4b7c664f3da3893732c9b96df3b4556f03d263175faaa95e847d73fae0ecd85330919c62f491000e3ceaa1254f467b37944d556b9d8a16fbc8a7d97b1d877466934c53feb3b2b2190c7e94dadf4a61ca673013dad014bdebdffd28459db65053c47474192fc5f91c8e9436dbfe141c5c58568b3c2dd1b14fc88c5dec67a0a1144e9104bb2fee6e20e80fa7a1acbfd61bc0a3e725f561d04a84e3b24528d722da84e2fa849e2b35ae2e1a0e36e4c23d8a9923fbb0fdfe2fa25444be0fa72e90c86632005c5a1fce53b2cb6896c7df87baf5a3d9273b6320b0ca93d9fd105a8aa68dd708e33249a125d713cfb9cc2ab6ef49c421cf23ede56405c54dfc8bd472058c605e9be3bc1cbef6da490394230b4950b2e0eecd006bcd94ebdb72e121d18cc66da1a72f81b10e68191ba70dcebfc3f43e3d6166ecdd8273cff380a698baacce430c6a76c40513726f9d83bb0938bcf604cdd21f152ce0960ada44770641a95b5d2d445c9036fb2f3a83b824bcdc4ec5dc3c06436ee4e935051aa5ff349344516f8bbb84630c961be8c762fcc716b7ebd36d0e2bfd05858e65553b89f87c75b1c7c641c37a0d075a311d47f671ae6f61e327259a65e4e46ff397a1d03fb3b94901709557983fde003ae18aaf7ac2851aa6ae07ae7c986204f1eccd884f18f423145fa0c6c77f870268d1993258b12cf504d15b2e46103cdd251ffa4fa6f59638d1c42a3a156cfca95da5b4f75f6702e0d7d8fddafa5fec97dbc8dcfd7855d7db7fae67b10158052fb637b00e1ecdde79f815e251dff20551bf157a4e4cd0e635e0c007be0d8a74d5b42e18d031a89bb25c00ba95405e001427483d591a8d10886dc543c3bf7f521ba514496b29435a73f9d28262c9798c2737f1d570620bfe4c45e2b10726048c9975b76582fb18613a65ebad698121c53683da461e970c92bffc060357f28809be782e67388d57d8d5195a6824638341f80a9d108a76fad42c545ead5b949a2a156e0859c2b238844d2c5018f60201c44508c9b5e438b29c76b7b60efe8fb4efca021d742923df00a5ae7f7e4d317c5fd0e6d8118bf44385109daf4a9a67232abb677284e8b6ba9bf60310159aa4e43e20f157e46695b673395433f45c0460505fb3a8111e7ade5ae9bc4a53fc56b204a177b5338681d0a684ae8525a158b474000a5146ee1123220fa51f2914e419f97946f3ac72c0ca72cd6d81acad0f5e8d536163f1587ee4ead8803c3a32916dd286cc8f0bfbeab5e930ebb9eb6f84da98ab71d091412abb455ec9e4f98e179c6241e7c7a51c7dc2e82328745ce879ecc49c8a56ca4bd113ad566cb97e638f07e847684bbfac7c24fdac35774b869c962e7dc42280c958505cf6c701e88d547aa9998839dfd44436e1158f6c0695c3a28de6086b90374ee145b870ba5bb0cddd76b2eccfd1e831d97c4365306da1169eb61311d98e4e18e4ce17ca4e569b8caa94b48c6f25d9f35909fac67db0cd7d69c2352e73ec6614cb17f2dd609a5339cd4b18f29ed17dccdce4cd50204bc38b0ac00d790329f4e67f39a8c1ab42e8645d28d50fabeee956f69e026a0f01adac1b036b2e3fffd326d2d1bed6847e6dd87e6436393ace44d3f1d659bc52db816f4dbd55f34dcebf18c02a79433d4815d783c6df87a90594f1eac253a2e0326d8debcd196e9f5f670f5bc25cac510644e84c44456de2c6266392fce7ff839fb87c3e54452da2657964d438e1ceea6f9229e419e68c42f3e1e67760234f7a567e56af03cced54073ea1fe513b440c9311c91649db35978ffd143d95ee1f89780dc892d95caa43ef02a2e9087ffc9c02fc3c4029cc95c9b6c923b48ed0c344265f7350c7e57c7e1219cf7ca3f3fddf442aa91b439beb2d853ec5b937b82097957da70f1ad87456c47dff0cdf8b390890f23e3ebf74250b7ee6f8ac22ac45562b60766aa73a28d029712481506e6c7084ce328d72ccd23640285dc97ca02481ea054d61869697593241efcc7cf22f937625021b12151bdf73cc5b40136dffc26a9abfcd5139c4ac12fd69b3d176aa0898eaffb43df6d1d5ae0ab16356bb39f25b25ee18a2ab4f4e7f655052d60957be24759231302ec8e30963afdeb188d9b1830d91083dd44aefe23cd9beb6800b89ebb01cd9f99a742102ca79cdf3b51a3168f468e8a46a34978880dbc2dd55e8b3d4f50b9b9ae16f51ea27adfa715d3364f697de8b993d20b7c24d69fa93ccc0222280e59cc3722668cb19318901741f8b5e8ebd25f072b5c6b48da9e646abef0c9ffeb74af44fef5a6a640c46c13802d7a34ad9babda656f8f6d502d708c39c1ed9020bf6197bb245e1f13d3bc6d7ce9ef957fbeb952dcde82d7296a27cb9e357a414ac94d7f04ab2422990c40e51f23791c7e904be581d6827e46e05321beefde9d676f48848fe2ddcadf98ecdb20e2e726329c694cd7b69dcc815795dde24ee5b5c7f8cf96c34001831fa638270c662eb5c9a7c648c425f2f2ab401516f66450f21d7c919a9303e3099e6ad81b8f566712d9d6f8a47f91104eddfb4fef0af2bdc7b03784fe0ef87eca524fb1d22c950cbb07f223f5ca06ca08b29f6b98f563206709628b0546b8091cc291d9badca0cb99e69a1431a31c1673463e456035c96f676961320e1b41425fd9e29c564024c486e95352c7c34a8f665c98802fc890d4a2cb25e6ae64608efc15274c5860c134d7c924f1445b4c29d4e90c9fd2912be48c5a5662a01cbfe2aeee2706d243a225b9efc1b27759f03c4812eeb620c03b2ff800cdd5749918e49845991da510fd4d9dd9a7bb939473a5fa6227e5dd0cc2625b31946744f7817dc3e706e1448fd608fa603cc98f0fdef57758e1dca3f8a8fa3c78ff1bb3b5180616c01978b1efdd85cfa78e5f3ec2f6984647edbfc41dc0e1985f9b8be620861f426a0aefa0360be424102f0dcf42aee3813c7aeea94417d59966d4d8ad5e54b25e454f638bf1085ad4f5a9e6173a694ce4bf51d06aff0608ca28cd71cbd3c88c9f157ff612a1d98a4b44faf2218463b280db2ad859414c05a7a3266887aac8ab6567fd73b21608173853022be24f4fb4fd171e9e8e0c460cf5f8c9f139354d30b1954bbe6a029c740ea7076387b55638fd5cc6f8041fe4fd07e5a3d2ec118d88ae70ad1b6763ca97831178b97618afe67f5dd62090067d5bb0f6d61fefd66aa5e15fec064d4faee6d00d42dd25ff4d8762697158e10eeec9ae8d0297e841e8c2f237a8d97ad6f978c8a8bbebd6890cb1c11bb7556291ff90760891ca52d2d55c37e5531a6cec1608b81c5822c58f3bb6048f5dc5b86e2a40a82298c38513b579db1b971fd42f76a9bef102456a4699588c83e245d30f24babdd163ed466e0c9afc027cdeb20b748a7b1592774f338f7f664017d1df19bace4545feb020dadc77f1262893329e6f92eea8cd29c90ca89549d07f36019429287ac915459d4e79e1fead1046a8682d000171fe47f6defc3900108c617d428ceb6cc9609504a32df0aaacb143c1b4f7387a03cb3a2a0dc341969d0aef9125080ede8576dd8146431a69b1ab08a53523f52067510390f5af8cd347b56799029228a6307326d0395016723a4e5a2956a54b68d6550ad95f6c2a9dd12949a9830a7125a6377a3fdc16e63d15f4c8429aca4d640dc4ce4d45174ad5e5458c0a204ce7fbdd4c67d3c9b98ca0ade28f09c2e43e70a0357b36a78b125ba8afd881705ea5f71a6eaeee5e522543494add89998f1c5f87c38d095f731761c14a296caad34e1655779880221c8480a7653b871e337bb4f81ee68bbb3f45d65cc42886b2a92959abba38a92a4326b34508bf145ad291d6a1ee173359c16b085064bfa93f2fe25101ff5b852ad4d51bfcf0b74fa3c1bb301d82a1be18cd75f5623c12be8aa3ff24d74947168c136350a110025ef1c5b4c7443fc7d289ee01db4085fc0e4de1e0fb2d86ac21bbe70e5d3150e276c6e0935a3130a0485bb3f10ebf1f2c3f245f8af575d005895c503e48b5fc2e95bd6b65c45fb889cdfc7e45afd1bebdbe14ce858c4c5f3d1376508003607ddecc565151aaffa8f6612d77331517f4fed2b7e0b4f49e15ee8da819cefdc5dfd78b4c049fee94255e206003508c775232125708ac5428c0be9306ab8b6b163992f0349d8f6238f6b2711616c4712aa6106e9a81d8a8111a559a877c45dfd7fb6bd93b88f7957841c69dbe9b52b4b50785bf8c5ee9d678684a033c28a88c206301c031c3cc782e453aff2b1cbeab4eb064c66e1efc00b44a4e7402c78a3a3331dbfd42da7590f11155324751e7f82c1c6b33b02d718205c24033e004a7386b903b20947bca25b35e457f71521c5e1b5f8f681ff12ed5c3817793f92991f3447276ad2191af36dfb995ec77968b9c1b1f8a7b8d9e75b4d7059f5ceaf6950827eef48f056126c9fd383c8ae57c1366eb3dcb1e451507837d1a52d2ec86b7a22b90555eddf7c09e1561cb9391b3e4591c7c35b585b39e0f91acc5f9469a74587855dc1852251c29dc08e723b08b607fe8a810078dd4e05dd433e1bb1546be80057f2a5e3dc0c4c3eb37981e8a79d0f5c39e574a2f4a2418d3b4d24382b9955a8142f3c4509312eacaaf32ba12882229a8a759e79acb0ea6676e548fa807025dd4dbf69df79011741dce17a8ab5027c75bf723d76107bb3cf96e2b48228c66bedd16cb2cb96d1ee75d6f6a7abb88da8d874ab8aec22bf0f1e497c8c8d1593cb6bd763404adc7afb7e967200fdd06d6cb4ea01942e05a2e88b5ad0446e3ed58751d1a47ffda993112bb422ab21658fe8de2f1686167146acf8ad5425c06eed699a6436b131b1ebb2af08f3e80aa724df27fca693d85183ae8c30a05e4434d1733e2cdff097b7b6f8d004f76643bf6b9d2c50af35e41f7a3215fd74b28260cce25a731f33027cc29bf5fb69256495408f59c3f1c270517b6c9f96259234e145c256f060c9786a80d669d6a0bb7ccd7d330121e67480e59899fd8bf4edf4926b97bc964f1fe6c34c7720e246ea634cb15b5b218102d013e284801a2a63295cd081053582b4c1204f5a22c10dcdefdf44f421d8d6742086b4ad5b62acb7b1d79201a5bd7fe25b068767ba9ee7992a0493cb60138c366dfb1e74a9e86f222c5372203096dcbb310db0300c905f087f23e6af5c01c05206188fcfb4ecc54c79238913cdc992800d82b045b157812c5b0ad1411d3826bd6a919ebef22a05cdf7766607188ad158166554d46dcd00c3c2fa988965ab670f703d1bab333469f393a65def8c4730b5932f02b69b5d7ddc90f515e4e4b38db49112fd108c832de6e4593738d481bb8d81cac492825aea827df391f983f0d4d01a02bfb6050b2807ffd1a8f21dc6c4899e22035d8eb4489348bc0c28b280fc39e918e3f657b3e806c32495ba06e068cf0202f2354355448e58736e014c013bc7b3e71f8a2619b031e0cf0fea07e3dde3d8e1c7f40d97d34d7fb523c038b3b996fd5c120d95fc5bbcadb1f0c14f29ac9dfb6bbb58167fdaf2b100188c103bce46eaf3e589b0c885840782f8106c87ff83692d4da900169c0a39d88592f5216440a429b09e0981b6a2240abee1c19042c83a071321aae91b2408e6e929fb561c4c15f2d8005e3cf63fbfb846afce4999a21f2a5e3513a44f84cdb603dc6675018c6f6566511c9f50063c6a61d31f4083908ca7f42d508d210c1215da843a9d7a86cce513c11a45ff0a2a65eec31c402378ac6ee60ab56f35d40035cbb7785030e513caa7f1bb637998cf0abd877cf87fddcbaf48eeb1c3ad6ba39f36514923b42070cbd6bab53f015b48e37ca3068dd77ed012ddc838569041768f0ff604e35adf45c68ee44f0b6f20aa5151d16c79b542b8dca1f4747086768c6f9c808c516798c37d4a48bbbb19d7df3ad986b0defce5572e9aefb1d6a7d4f4382e146587ffd9f920d909cb9b398327130daf81be871235836d472fe4960a8746ed34a5ebef261791e30f7215c1f89d56d725facc5464dedb264e9b482d11144467bea8e7ebbaed0d1187eeb7a877baac45a305949e0fefb847e9a980d3060070c6c7d50b6c5a8c69b098827e5315b161957811d39a17e7b2e58866d78fbdb3b612b87d5268e943cafa557ac19127d899fc3f3168b73d87c440dfdf5c98ba0831817a314a5a3e44126b64f3c11cbaefcb7bacb3e429252db67e4ac7d0cfa499fb5e563decf51dded2bfaba14dbc11d454e331a69a72b69477ab1c4d8604b9a5b8da1b1e4aa1282af8ee50ed8d500df7924dcd8c1cc8e39a637b8559d2a7340d10103422180619aedb53de5b492e449deaa24ffc994aa7188b3dac6e93f7249feb521af248cb6632a6ac67389b5bc81a37422b2a2d174aa5bd0c9c0858666bd65a8bfeade4bc8b074a26481ee99267b70e82f34188669fe2942ba846c6b5b5e1a892d6665e6dc4fd28208b89a5b9f36c1dd0ab0c123a41ab57c883b545643f13a400be3f11b99bb6fe3cc1c79256194539192f4f2480efcbc6f4193479459ba2bb9d7cf04dd1f416245e484d79a7d9a1af37b3573b66e8a5ee4a96a1707887f26447bd04c23e1b13620c4c9a9868d83b425a280d24b222f4a038c35607b13157a8571bb9cbe1b733526f6793b28898418501edd4c9edb5b622c464c1e6e9bc5ae3bb4da4922c2bc23c75d4d22a7e653874b2337f2ad623a86901ac75fdc46915f22ca4f5839562f745afe7b1187ded9b9d09e8e84cacd4638feed7885205a524196d8fba97b91521ef81c4108fb09a7bf4495c1374c72543c090eaf8f6ba138aa624caf30bb7762506b26c107d1095d0c47de6b9ac6012416ba8898190d3b301b7f3b4cd6224e96361d59a1307fe0bb4105ff3f28b8102e538493c7b29d98e0513dd84b95eb8a9987d2dacb51ec55352a736988392dba6ef692fec56bc9b6a9dbb20717c63ee5943f50ddef3410b54bd1fef782d0cd52be6ced6b2199934372a7d0b4dc4f112d81cfec8c93c41917e6b4e7dc0bd0300dd7eced7ef3f11fde19fe0ac47b5bef9c4ad0eb6facfaced2a40680f33d09c6295f987020905564bdabba37eac50b9c1dd98bb353be00591dcfe2bc03aafb39cb9f6fd46f514c43e9cb8deee7dd98f80491b7062a54507bbf070d2f6f5703f3c9374c5984545d2046254a3aeccf1a094f6a6f065369dd7320e3bd9be08679eeefec8ec37aff9a1da05e55079bb4b0516845be98c4ad8b88b36d4e1d95ad7dac5cf26aa3e87fe94d06cdad1508b3964664c976d6dc5acd6c75f9375a555d4af989cbe5f201118a17cdb426236abe4e569de7480cd1cb0f6ac88c9c62e1ea90519bb703ab8bc6fbcdec1b3aa7a8d1a6592cec509976cd651c553b4a03989713ad7a05e93732fe18d0e6e15ebaead120fcb67404e1964de9d59be8585f410262dcaeea152561fb8f56b1603a214ee8e3d195b3c03aac63477ac5a19a6f9ae19d89db53d189b94c2c2c50f73e3192a2d68ea6e1368fbb437cecebec34f25c6b85512aba37d12523b8dc650977e4ece5d38f07da3fcf14b351bd60a2f8e1def945d1d7f746bdd88a0a34c124e7ebb848c721b00aef8f8ae525ca95714c9e1a0e7764a5200690f53cf8a150dc81eb71bde574f93ae0f627a417d7d8c1eea17614f13a25d627ab3d900601fdd900be73506759a55e47f5d7c2f0ecb6e2df8ccf8830d09b6e93b855910be2df020dd9c09792d0b3eed0f058e454bfb4de2ffebb418b9d1b6d4c28407df5e4ae94de8830e9cd59d5cf78b9ca33dad35f03318f11992834bfc62a9131291cb3de6db76341f7eb37764894957e64dfeb779041142249c3dd201c8593a88aff0ab24362835b36f67b7ff5b7634d0445d34a10054f835e650fd4483135bc0650f6b07d753d9cdd62de1faaf1b242f7697dd32e5eebcfb8b5b6917c634d1a91770e40ac691ecf5e7ea58f8eee3c18fb7b5ee0de0ada5d3fd0a2bfd1c5b54cbf3a92cb919bdb809bb5456c9a51020aff9b6fa15785d8b1ee0ed14b31d2f8e0471176bc10665a0d4a51f835799270805bd1398fb46639687b2b4f11a10b268fac74418f9898504259593ed8231f166511bc60a695c6aaa6e8a63a7c35c25c9f0973067538cff0e77d62f579361852cad21bc886f6cc95d8dca01656913dbfa080993e30dc3f5098db094b8a95329f3da9526a4cb6ef0ecf887a27f67bcd8d7bdb41047cdff03a029dd1433a28374466db43f997f5aaf63fc63ca2f1913b2999c4d8253911fa3596f87e60bdd39461c9023678b2dec2733c1a7c858f5d4317915aa04cbd4e613ece7d0a30c01564e931490180cfce48340176a2a91d286a658205e72ec0edb3c7917c8998ef832402dbcb0e3f2a97f2aa2b7199b13492df832e845a544ae07314d7650168f873ce6f67367d1cc23154ad344072aaec357699d4204335986c05a55d4f9749038d0afed9ca022240ea623bafc969a4c91514b63570a7ef1ba0825c4b3acbbd93a44c381e3b09bdb8c20211841b25a248a4a435b8ffcce137143fd8bfae829f25f652e079db39d7d9785f0f76f628e42fa672e23fbdef4dd47d06196ccfa79185a4304880403f5fee40b2817cc9d22235e65a9b6980452be3f560c54a6382f2c1f8521f4849092da76cb8fb6b314f975922d21df18d10c65827cedc3e7363dc9152f10348223f99295171cdb93d296c3f5aa3e06233efbe2e088e0b8ce0758ff44dad4b6605d674de242f0ca810ca08dd796e2a62d205b05b185bac97cd5290f5d8608a9df09b0c5d5f042208a476f90ff8716378cb0cff37748467290046c99721aba060d3d9a4ac64d9f7a10d17881f5310abd487d45db90557a58c29a27520ffd04496d946026a7972efdaa5ac76c30aada02c088e0ba8d873a3d92ca962fabef4d614befe5391e6a3c94b1ac559ca56ef41c0941a7d60b58c901eaf66198188d4858378be912d02fcbfdb80582f0b50c7c9ed8bbbd84d5405eeec28eae535f84611c77e7b2b7a81fdf6e48d9d4971e911715bac148412439452cae3d24b8ffaeab7064d4813180b22ba2fd645891d33dc4847766c49316de3346478342f8bd9d442fcf6d1f028c7ef893024f260002982566da1f84d49c0d8e6b62caeedf2189e1e7998130658069a21d6fc69e5ca5e5f40ecfb95db49d7102da09a86bca76dc2095d61f4811dc99f4269039b86dd87fb0d779de5e6c081a70085732ffa3c071063a254451de7862bb1b8002fcb812d822ff3da6536c493bbb0e064977556be59bb2378d2b48c542b7c49695a5106f4c00d7dea627b0a8dd8625dff0c3f1846baca447650fb5d053f472a8385d4adce21b595e6cf72ff1c9936d525c0bfd186d09e0242132bc9319abf106e40d12f86464ba76cad8136f1845704af7a0a179ac31fa21b94d5ee6f1e939c488cac1a78287bbb016c8f741f820a344d7aecc0ebcde91c097e56437840103b36b005972ec9a52fac6b0356025ab2ef679c56c53024dd389da64389efafcdc2651e59e270520fb6e8e2cb4dd7fc76c3621a4b3701e15967febfe98124aebfbf273a06dcfc68b6a0dcfbec4d437963bc87a6ab492a3aec7c2c97eb713ada76620c40b70cbcfe70c8f878d6e4ea8a12110631a6b0b1ffba60bfe80b06e5cdbe1fb376c659e8edea239ee77c3dc24c128213c3ffcacaace22d3657e9b19ec3b62007041a29b6948170446c146e009df0aa063dd325a076f21247f84391e636f5f987105245476d6a61f6a5143ec46a62a729740f17934e2e4e927f91f02ce9953476ca161dd0997a50ee08e7463c3b20fafd48571a1c2babf54719aed69093b5bb7163ba1e1d74b85da11e69de0d4bd30c2132e7aac0d11978324cfb7471098a7e7d4426e4b2fedc9b5d6e2213d040be7bb703a43343855569daac662b8d64f81045b95ec11be320bd56fa34831f9c60bbfb76485ab1021df6b0d5c0608e32d428453b990f943d97e1ab722ee79f9648b833f706629b97c566828c22ed67da3fb5a990bdf55e695cd5ac3ad8204b9b893302c0b0820ea72a836b75d7476a5f5d2d3e201a3c023cca48cc49f8abb7e58f60a7b9079e69f9070dd1384f5e6cc32ddaf289aa7db373371f5ecf57409bc08d1f70ca3af3c5cf1d4c34c8fa14083dd8b57f8e32e75ee85d923838c6a83b4394a7784b13fe506a26ed6dea6c910f7001bf32ca8f69af43a264ef4a2e5af64e4a1b5b1704ff45ffb785bf930fcf4700df65bc4dbfaecc574ea6ed425158cd9ed4036bdbbe340086d6ca41c88b50b0030e6895c539e1907a3aa3997e0cdd1339cdc4d30c689d1e793f5a541b04e53d7bb1122d2f0e4def85a78f280ec63c0b27b10ee0f9b87e166c518feec3ebb15eda478d3fd86b3fc5abec2578938260f3c0e28b388f360b17c4655f7b34a2cf11e19412c646331af3bf336d9c0d13005c580d167468b65709c1501c3be4c921e9913ef1fefc0d67bb5455b6aa8960519fca5812d7d9106a3ac7b989c8e4e5492476420a1d845b36f27e5e868ca932fa35be94c5109441a9a8669a753413e9e8528ec23116d7566baa522f17afc463de2f3678764477230a75adfe9b6fd740490d64749d1b8a916cb31ce08289fe08bc93bdd7b9ef430668ba1f3873cd8d45a708011d160f07d7fa69ddb29ee7bd57c66ed1691d3458791f66c1dadf5752383ab2a559f4b12b007254e43ed075db260f758489cff646e6597ae93d9b51529c1769becd9b5b577aa1088f7465b37b95b243c63669bbc48a6fd61b5d2a2edba4ac838b35bfd09b8f912ede4e79327eba57cc52fcc6bf9a1befab71b3843e271a9518bc6bdd9fea956bed7441e5802459b074f649aedc868790a6b43cf8db9aca16017aa62b6cd3e27c61b8c6951d98e956346d073461dbffaa7c4efb595b64026d8666e0d4391139605f50328fe21e3d9b53526f306cd0cebc427c1a0b3fc878a49be5a4781907a3b7f9718b23c70476be6336b945ce66a28178c8b683f78e8a5fbd21a312aa007fb322e4bff7a7c8c854dff9943b8ae603ac3aa0b2a490a800bee342fd656e499ccabef0b0c978817f2581f69d02527ed6cb7570becda0c36fd0bf02cfcc9e5c0d4fc701dd92c76c188527bb0ea60a03ea38b75dc00f8153c2db69c878a10f74a626abaa2ef1abcae3dc9e96c756c7bf52839848fa67f343daa38317bd214aafd24441c760ef0002c7f714daad965f535e1d1d2a59e6a2200d54035134db58030a9779bda0d46a901f41a440dd3b824b08b6b955ae6e9f4698fda797a935b424025e9198c1373c07bbdea03b5801d703747c5bcf14e7e25be222d01d94a2c0fd562f4fec5faa05df8afd0eb16098112b985e06f358f02d2ff45328680d23485046a103d33912ff09505cc50478edae20497725c15e5803ef2cce1ad02c2cda1bfffea8e688e0537bb0bce2a0d856a7507fbeb83708878ed5967bbc028f9d4e794c8f9a3fa56ae402c1b9e810f905cdd74e1d37f5d3f939d39210fa9e2ac589e3e4c0a6efbfa042ac09d0753ddfb21f13a2b1186911722264b62d7689141d61a23f990a190aecb2218a231f5432ed0d30c9275817e5183ad18e32d1aea64cc59bc91b0a1223901a0590966052a4b06989a25f89d0e220801b515cc7b868f58be415d1dddf8090a66178fb4ca90119ee56136070201d7370a0414a929e2e301d5176a9fed3c287f018cc34c1028cb06c8d614cbbdea28a8dc4a12afb87d681659fef6bb599bd962d7393c8504401006743e198467295e720d57e62f1600f508ac02fe0189538038ebc6fa15c067658aae149bbd62e00087d12685709cb36e650881152ef4c1724d8c12b287425be2cc05b003b8ba1fc51e5287b49b363dfc7615dde926a6a37a5172f1cf66fce3413fe472801e8870e65f9a6766c6e68020110f767d5fbf1249d3849760b3a4ad31607946702000b8f884d9409eb79423f7712e232992a09d09b0d059bd36d2ae378c48b375ee6a0bb075d1911406c45b0946a4000000);

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
  `imagen` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `heroes`
--

INSERT INTO `heroes` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(1, 'iPhone 16 Pro', 'Hello, Apple Intelligence.', 'https://www.apple.com/iphone-16-pro/', 'https://www.apple.com/shop/buy-iphone/iphone-16-pro', 0xffd8ffe000104a46494600010100000100010000ffdb008400040303030303040303040604030406070504040507080707070707080b0809090909080b0b0c0c0c0c0c0b0d0d0e0e0d0d12121212121414141414141414141401050505080808100b0b10140e0e0e1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc20011080514085803011100021101031101ffc4001d000101010003010101010000000000000000010203040506070809ffda0008010100000000ff003fc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028000001650025800000200000000000000000000000000000000000000000000000a00028005940000000200080010000000000000000000000000000000000000000000a000500280000000000000802000800000000000000000000000000000000000000014001402800059400000012a0000808002000000000000000000000000000000000000002800a014000a00a00000002004000804004000000000000000000000000000000000000500140a00140a00500000002002020010100200000000000000000000000000000000000a0028140050501400000000000101020040200400000000000000000000000000000000050050500282828002800b2800800400102040080802000000000000000000000000000000005005050050a0a005028001650200004040104b080202008000000000000000000000000000000500505014282802940280000000008010402021008040200000000000000000000000000000280285014505050282800a000000040010104040840204008000000000000000000000000000280285028a0a028a0a01405940000002580401010810210081004000000000000000000000000000a02850285140a28280a05000a00000800202020420408402040200000000000000000000000000a00a5014a140a28502850050001404a96000801020410410210102010000000000000000000000000280a2828a140a50a050a0501400b140020004020204102204084040808000000000000000000000001405140aa0a0aa0505140a0b2828000000012c020804204088104202040800000000000000000000000a028a0a50a0a50a0a282828594000a0000200020410084104408210104020000000000000000000000280a505285052850a282850a014002800129001004081022081102084082020000000000000000000000a05141542851450a5050a280a05005000080010100810408820841022041010000000000000000000002828a1451429428a2851428505942ca00002cb0001004101042044104208210208100000000000000000000140a28529414a14550514a050a140140000004b2c01008204108110811040882080800000000000000000002851429451450a52851450a2828140b2800000400201010810440884084208810408000000000000000000141450aa28528529429450a285051400500000800101020410822044204410841040400000000000000000050514550a51428aa294514514285014050000040040102040882088211021102408204000000000000000000a14a154514a14a514a514514294140a050000010080104b041042108411081108220820400000000000000000285285a14a50a528aa514a28a2850a140a00a45400960201020208411082208840884210820400000000000000000a14a2945294529455294528a29450a502805000400204101040441088221082104441104204000000000000000028528aa294a294a5294aa28aa29451450502ca00008008084082041108221088221044211042040000000000000000514a2a94550a55294aa529455294514514050000012c0082084104104221108442104222110420400000000000000014528aa52945528aa555154a5514a50a50a0280000012c04082108210822108442408842220904204000000000000000514a2a94aa2a94aa52a954aa5514a29450a0594014200020202084210422108442211084411109042040000000000000014514b455294aa2aa954aaa552a94a29428a15280b2804b000960408221042110844221108842211109042040000000000000028a52d2954552954aaaaaa5552a8a528a50a1400a000952c01010210444108844221110884212111090420800000000000000a294aaa552954a5a555552d52954a2a852852ca0500000080960408421088842211088888442111090884208000000000000014a52aa968aaa2d2aaaaaaaaaa94a5294a2965280a002c0012a00808420844421110908484442211109109082080000000000000514aaaa5555295555555556a969455154a28a140a01494944008020410842091108884444444221111111110841000000000000014529696a9554a55aaaaab5554b4a5294a528a140a05000040040410421084444844422222222111090910908410000000000000294a5a5aa5552aaaaad2dab54aaa52a94a52965142805000022c008084210422222222222211111111089091090841000000000000052955556969554b556aaadaa5a5551554a514a285942ca0160a800401021084210888911111111111110888909112108200000000000014552d55a5aa5555ab4b56d555552aa954a2a8a2850280280100100961042108444444848888888888888889112121084000000000000294ab556aaaaa96aad55ab6aaaaaa955545528a2940a00a0004a8010102108442211222444484888488884889122221104000000000000a2aaaada5aaaaaab696adab5555555554a5528a50559402ca00002580204088211088888912222442444888488891222421080000000000014aa5ab556aaaaad5aab56d5b5554aaaaaa552945145058a00a4b16000804082108844222244911122222444444448912224220800000000000295556ad5aab4ab56ad5ab6d55aaaaaaaaa55154528a050058a0081601004212c422111111222488911222224444488c92424421000000000000552ad5b56aad555ab556d5b6aaad5555aa52d294a28a14014000012c008084209088448889124488911222224444892224484410000000000014aab556adab5556ad5ab6adab6a96ad55552968aa28a28028000b00258010110842221222448912448889122244444912244488820000000000029556adab6ad55aab56d5b6adab5556aaad52a954551450280165004b00020208211088489122224922448891222444489124489088400000000000a5555ab6d5ab556ad5b56db56d55aaab556a9554a5514b28a028000004b004042588442224448912249222248911224448912449091108000000000014aab56d5b6aad55b56d5b6dab6aad555ab555554a552852828014250080080208421088891224489198922444911222448922449122208000000000029696ae96adab556d5ab6db6adab56aad5aaaaaaaaa515428a014000002012c041108442244892244912491244889122444892489224221000000000005555ab6adb6aad5ab6d5ad5b56adaaab6ad5aaaaa552a945280500a944a9600081010422111112248922489248924489122244492249122444200000000000aaab56db6ad5ab6adab6db56dab6ad5ab56ad555a555514a2850140000251012c0810844444489224892449249124249112244912491244888400000000002956ad5b6db56aadb56dab6db6adab6aad5b56ad5552ad154594a0500500100080404421111122449194912499489224891224489244924489084000000000052d5ab6adb6adab6adab6db6dab6adab56dab56aad2d52954a2828280152a00100204088442232892449249124924912489122244919492248911080000000000aaab56db6d5b56adb56db6db56db56adab6adb56aaad2d28aa50a0a140000100101042210889124892492449249249224891224891249124912221000000000029556d696db56d5b56db56eaadb6d5b56d5b6ad5b56ad52aa9545280a140000800404108422222449249249244924cc49124892248892491248ca4442000000000052adab6adb6dab6adb6adb6db6dab6d5b6adb56dab56ad2d52a94514142800022c01010220884489123323299492492664892448922449224924892244840000000000a5ab56db6adb6adb56db6b56db6adb56db56db6adab6ad55a5a52945051402ca960040201044211091244924924924933249249124891244912492449244888800000000014b56adb6db6adb56db56dbab6d5b6dab6db56db6adb6adaaab54aa51450a0a000802020088421112448924926649249331992491248922489248924924891110000000000296adad2db6dab6d696db6db6db6db56db6db6d5b6db6adab56aa9694528559415289600808041044222244924924924cc924cc92493292449224892249249232922220000000000555b56d69a5b6adb6db56dbab6dad34b6db74b6db6db6d5b6ad5555552a8551650a2540402020048496122249124cc9266499924cc926649224912449124924899492444200000000014ab6adb6db56db6adb6db6dd5ad2db6db756d5b6db756adb6dab56aaaa94a554aa280404040400422211224492499933249999926649332492489244892491249249224884000000000296ad5b6db6dab6db6db6dad5b6db6db6e9ab6db6db6dd5b6db6d5ab5556a8aa528b28a8104020400089088912492493324cccc999993324933331249224912489249249244888800000000052d5b5a5b6db6b4b6db6db6dbab6db6db6eadb6dbab6dbab6dd5ab6daab569554a51540044b0808200a4222224912499924cccccccc99999992664cc924892489224924924923291110000000000a5ab6dad5696db6db6adb6eadb6eab56dbab6dd5b6eadbabab6eadb6d5ab56aa96954528a10842084000a444488924924cc9993399999cc99cc9999926649329244912492465992249222200000000014b56db6db6adb6db6db6db6eadb6dbab6dd5bab6dd5bab7575abab756d5b556d52d52d59554a4b110896208012a8444889249992664ce66733333999cccccccc9339924912489248cc4924924924444000000000296b4b6db6db6b4ba5b6db756eab56db75756dd5bab7575ababad6aeaeadb6ad5aab4b55554a550424444410014a4223292653326732673999ce66739ccccce666499cc924924492449249249249232888000000000555b56db6db6db6db6db6db6eadb756dd5bab756eaeaeaeb5ad6b5ad6aeaeadb56d555555b568b55408651121084055502492492664ce6666739ccc4c4ce739ccce7333332673249244922492492492492449110000000000aab6ae96db6db6db6db6db6eae9ab756dd5d5d5babad5d6b5ad6b5bd6f5ad5d5696d68a2adad2da2daa584491224484402d5a089133266673339ce739ce739ce739c4ce739ce66666666649249244924924923324922448800000000055ab6dad2e9aad55d55d5b6dbab756eadd5babababad6aeb7ad6f5bdef5bd6b5ab6db6aaa52adb6db5556d04249248ca4482296adaa964664ccce739ce738ce738ce738ce738ce739ce66739933999924922492466249266332448910000000000ab56db5756db5ab6db6db6dd5bab6eadd5d5d6add6b577ad6b7bdef7c9bdf26b5addb6dd2820ababab6daab4a962493292659892016db756a88ccce739ce338c6719c6719c6719c6738ce739c66673333399265949244924924924994ca448800000000055ab6db6db6db6db6db6e975756eadd5d5bad5d5d6b577adeb7be4df272727272726f7ad5d6adb424652b575ad6adb5a2812499933266666644156eb5ad6add2926738ce318c638f18c638f3c78ce319c6719ce339c4ce66667399249249124924924924924922440000000002ad5b6db6db6db6db6ead6adbabab75757575abad5d6b7adeb937c9c9c9cbcbcdcbc9cbc9bd6f5abab449333324babbd6f7756eada0493333899ccce739ce72855d6b7bd6f7addd524ce718c71f1f1f171f1f171e38f8f1c78c6319c6338ce738ce7399999cc99924492492492492492492448800000000055ad2db6db6db6dd5b6db6dbad5bababab75abad6b5ad6f7ae4df272f3737373f37373f2f2726f7ad6aaa49339c671235adef937bd6f5ad5b50924ce338c6339c6318ce2645b75c9c9c9c9c9c9c9bdeb5526738e3e3e2e2e2e0e1e2e1e2e2e2e2e3c71e38f18c6338c6738ce73999ce7324cc49246532cb3199249249112000000000296dab6db6db6e9ab6db6dbab75ab75757575abad6b5bd6f7be4e5e5e5e7ec767b3d9ec73f639b937bd5d2a498ce71c7c78c49abc9c9cdcdcbbdf26b7ab6c492671c7c7c7c78e3e3e3c71f1f1e3121abbdf2f2f372f37372f2f2726b44ce78f8f8b878383afd7ebf0707070f0f17171f1f1e31c78ce318ce719ce73999ce649249244924924cc9249249112000000000296b4ba69ab6db6db6db6eadbababad5d5d5d5ddd6f5adef937cbcdcdcfd9ed773b9dcee76bb5cdcbc9ab48ccce33c7c7c5c5c5c78cb7be7ec767b3cdcbc9c9c9ab5126739cf1f0f070f170f0f170f1717171f1e62eb5c9cbcdcfcfcfd9ec7639f9b93937ab33c7c7c5c3d7ebf5babd4ea753add6ebf5f87878b8f8f8f8f18c71e338ce339ce739cccccc9244924924924999249248890000000001556dad355ab6db6db756db6eaeb5757575abad5d6b7adef937cbcbcdd8ecf6fbde87a3e8fa3dfee7639b7499ce66318e3e3e2e0e0ebf170e25e5ecf6fbfe876fb1cbcbbd592659ccc678b87afd6ebf5badd7ebf5f8383878f395df272f3f3f67b5dbee773b7daecf639b9776638b8783add6ea74fa5d1e8747a3d4ea75fafc1c3c3c7c5c78e3c71e318ce339c673339cc933244924924924933249248890000000001556d6adb6db6db74d5b6db7575ababababad5d6b5bd6f5c9c9c9cdcbcfdaedf7bd1f57d7f6fdcf5fbfd9e5b66739c6718e3e2e0ebf5fabd5eaf5badc3c6e5edf7fd6f6bd7ef76393566662673338c7170757a9d4e8f4ba5d3ea757abd7e2e38bc9cdcdd9ed76fbde8fa5e8fa3e8fa1ddec72ed9e3e1eb757a5d1f3fcff37cdf33cdf3bcfe9753abd7e0e1e1e2e3e3e2e3c6318c6339c6739ce6664924924924924924cc92489224000000000555b6db6db6db6dbab6db756eaeaeb57575abad6b5bd726f7c9cbcdcfd8ed777d1f57d9f7feb7ecfe93d2e7d5926739ce31c7c1d5e8f9fe679be7743a5d4e0e3e4ee7a5ef7d4fd5fb5dbe43333319cb331c3d5e8f9fe6799e5799e6f9dd0e9f53838e35c9cfdaedf7bd0f53d8f6fdcf6bd9f5fd5eff006791c7d6e979be7f9be5f91e3f8de4791e4793e679fd0e9f57adc1c1c3c5c5c7c7c78e3c6319ce31339ce66649249224933249249992465120000000002ad5b6db6db6dbab6db74d5babad5d5d5d6aeb5ad6b7bdf26f97979f9fb3dbef7a7ec7bdf51f7ffbb7dcef4011267a9e6fcffcafcdf81e1f8fe6f4b82f6bd6fa4fb7fd53ee754220463afe7f8bf31f37f3de0787e3797e774fadc596b9fb1ddeff00a7ec7d07d2fd37d57d67b9dfe44b0b8ea793f3bf3df3ff003df3de0f87e2f8fe579dd0e9f53add7e0e1e1e3e3e2e3c71e338ce319ce7399332492249329992492664919448000000000aab6db6db6db756db6dd5b6eb57575ababad5d6b5bdef7c9cbc9cdcdd8ed773bfea7b7f45f5dfa3fef7f5c000071fcffc17c37ca7cf795d2c767d5fa8fbcfd5fec80000b9f1be23f3ff0091f97f0bc9e875783337d8ee7a3ea7bbf4df5ff77f73ed500b03a1f2ff0021f2df31f33e0785e2f93e6743a5d4ebf5f83838b8b8b8f8f18c6319c6739c4cc93324492492499924932cc49120000000002ad5b6db6dba5d5b6dd5b6dd5d6aeb57575abad6b5bdef939397979b9fb1daee7a1eafb9f4df61fa47ee7f50000013e57f2cf85f99f23839bd4fa6fbbfd53eba000005f0ff0029fce3e3fc1f33a5c1c4e5ed77fd7f77eafef3f51fa7a2c2810be57c47c6fc8fca7cdf83e2791e6f9fd2ea75bafc1c3c5c5c5c78e3c6318ce339ce666492492492492664924cb312248000000000ab56db6db6db756dbab6dbababad5d6aeaeb575adeb937c9c9cbcdcdcfd9ed777d0f57ddfa7fb2fd17f70fa6000005f2bf23fce7e63a17d2fa2fb8fd4beba00000575ff25fc8fe3bc5e87578af2f7bd5f7bebbf49fd63d182825401c5f1bf07f17f21f33f3fe2791e6743a5d5ebf5f83878b8b8b8f8f18c6319ce7199992492492492499924932cc49120000000002ad5b6db6dbab6db756db756eb5abababad5d6b5adeb937c9c9cdcbcfcfd9edf77d0f5bdcfa8fb3fd0ff6efa50a00801e77e31f9df83c5ddf7fecff0052fae0500450387f17fc8fe5bcaea70bb3e8fbbf5dfa7feb9d985000104f90fcf7e1fe3be63e7fc3f23cde8f4fadd6ebf0f0f0f1f1f1f1e318c6719c664cc92492492492499924cb312248000000000ab56db6dbab6db756db74d5d5d6b5757575ad5d6f5bdf27272f27373f63b3daeefa3eb7b9f51f67fa1fedbf48563cce284baec76f9c03e7ff0010f89e8767dbfaefd4bec215e5f0e3321797b9ddd00e87f3f7e71e0f4786f73d7faafd2ff67ec8074bcee8f5e73777d2ef68213e2ff3bf84f8ef98f9ff000fcbf3ba3d4eb75fafc3c3c5c7c7c78c6318ce339cc933249198cc924cc92493312248000000000ab56db6dbab6dbab6db756dd6b575ababad5d6aef7bdf272727372f3f63b3dbeefa3eb7bbf4ff0067fa17edbf4929d6fc87c2ea71e25e5edfa9f49f5def680fcd7f22f0393d5fabfd47ec41f95fcbf9dc1c79c37cfdef77ecbebbb007c37e0df25e6f07277fe87efbf73f4c0cf83f25e1f9dd3e1cf2f73d2f77eafdfe4038ff003efcf3e13e3fe63c0f1bcbf3fa7d5eb707070717171f1f1e319c6718cccc99664893324924cc924924912400000000055ab6e9756db6dbab6eadb7575ad5d5d6aeb575ad6f7be4e4e5e6e6e6ec767b7ddf4bd7f77e97ed3f43fdabe903abf85fc979bd7e2c37d8eefadf45f6df7dd9079ff86fc6717a5f4dfa8fd883f18f85f27abc5c785e5ecfa1ed7d87ea1ea0383f02fcebc9e1e5f5bebff6bfb003a5f9e7c8789e774bafc537d8ef7adf41f5bf75e8c079ff009a7e7df0df23f33e0f93e6f47a7d6ebf070f0f17171f1e318c6719c499933244924cc92499924994912400000000055ad2e9a6adb6dd5b756dbabad6aeaeaeaeb575bd6f5c9c9c9cbcbcfcdd8ecf6fbde97afeefd37d9fe89fb4fd10757f05f89f23a7d7c4d7376fd0f67e9fefbf44e40bf967e5dd0eff00d1fe9df640fc4ff3ef13a5d7e2e39793b1dbf4be83eebf5aed40fccbf1cf0787b3f43fa67eb9a15e5fe53f1fe2f9bd2eb7071cd7376bbfebfd27d8fe89eb907cafe6bf9f7c4fc9fcef89e5743a5d5ebf5f83878b8f8b8f18c6338c6733324924924cc9249992492492248000000000ab5a5d356db6dbab6eadbab75ad5d5d6aeaeaeb7adef7c9c9cbcdcdcfd8ecf6fbde9fafeefd2fd9fe89fb47d129d5fc0fe0bc4e875b8e6b9bb7def53defb0fd3fea487cbfe2de2f73e83f4cfb44a9f8afe71f3fe7757838f3ae4ec76fd0f63eaff0057fb722fcc7e19f37c5e87d87ecdee14e97e47f11e1797d1e9f5b8b8d7979fb7e8fb5f51f75fa47a045eb7e6ff009dfc0fc6fcc781e479bd1ea75bafc1c3c3c7c58e3c71e718c6732664924924cc9249966492492248000000000ab5a5d2eadb6dd5b756dd5babad5d6aeaeb575ad6f5be4e4e4e5e5e7e6eff0077b1daeffa5eafb7f4ff0079fbcfdbf2d3adf817e7be0f9dd4e19be7ed77fd3f63ea3f43fd33903cdfc47e67b1effe97f680fc5bf34f9bf33a5c1c39bcbd9ee7a1eb7d2fe8bfacec97cdfc37e5b8fdafd13f51d04fccbf35f9bf23cde8f57afc5897939bb5ddf53defb0fd17f41e407c9fe6bf9dfc37c9fcef8be5f43a7d5ebf070f0f0f1f1f1e318c63199993324924924cc924cc9249248920000000002ad6974d5b6dbab6dd5b756eb5ababad5d5d5d6b5be4ed773bbddee7d371757cfea773bfeefa57839f97f7dfb8e0fdc3bb7a5fcfff009c789e7f578b3ae6ec773bfeb7d1fddfebbea2c9c5f887c2e7e8ff0058fb6127e2bf97fcd799d3ebf166ef9fb5def4fdefbdfda3d5b64eafe15f1d3ea3f61fa9b527cffe39f15e0797d0e9f07171e65d72f3f6bbfeafd1fdcfea7f53bace7cdfccff003af88f95f9ff0023cfe8753abd6eaf57a9d3eb71631c78ce318999332492492664926649249248920000000002ad69aad5b6dbab6eadb757575abad5d5d5d773e87d6f43bddded773bbe8f7be4bb9d6f96f83f63e9fd6e978dddfabeef9debfea9f7ff00ae7a5e4fe13f2fd6ea743cbf3a727373f3f7fdefb8fd8bea79533c7f927e3fe67d4fedbf7baa9d1fc5bf26f9fea70f1c8b77c9d8f57ee3f74fb0e5d4e3f1ff0005f819f6bfbafd4f3598e9fe69f94fc7791d4e0e3c485bad7272f6bd2fa4fd27f57f679a71f1f95f95fe77f2de4747adc3c3c7c78cc98e1e879de47ce7cfe318ce7324cc924924cc92499924924912400000000055b6b55ab6db756dd5bab6eb57575abad76beb25f27a979fd9f435d8f4bb5cbf51fa3783fcf7ebfef9f65f9f7cd4e5e1fdf7f4fdf738f87adfcbde2763efff0051eaf8de37ccfccf3f3f7bdcfb8fd33ea3b9bcce9fe77f95f8df43fb17dc7313cbfc83f2ef0fa7c59896ef93b5ee7e83faafd37675387e5ff20f8bd7d8feb7f59dbb9e0f0bf34fce7e6fceebf171e64175adef97b9ecfdcfe9df55dfde787c3fccbe13e73cce8f07171e319499ccce71e2fe5df358ce7324cb32492659924cc924924912400000000055b6ae9ab6dbab6eadb75757575ababad7ecde9fe73f5ff9bf9d39bb1d8f5fe9fdbe3f97bfa5fdff00e3de1fe80f63f1ff006f83e5beb7eb3933bef777e77c3f9bfd13f58f63ccecfe97f96fcbf3f7bdcfb5fb6fa1f4799c3e7fc57e7de3fb7fa97d7f67738bcafcb3f3ff0007c3e86f9b93498e2ecfd0fe87fb57a7cb73d2f92fce3e6393ebbf45fa7eeef8fa3f3df9efc5f83e7f071633942dbadf2763d4faefbefadf57b0eaf81f07f1fe0799d3e1e3c67324ce6673338e3fcfff0023e9e666493324924cc924cc92492491240000000005aad355ab6dbab6eadbab7575abababeb7e9bd1fa0fef3fe26fc6b83b7eefafdbfa2fd93f7efa8fe7bfe4cf8ef53d8edfeadd5fe74fed2fbafe1bf94e6f53dfef773eeff7bfd93e77f90ff3fedfd5fd7fe85fb93f23f8de6f6fe9be9fdef479f3d5f2fe57e3fabecfdd7d1f739aef83f19f8af23f3af338e16ef979bbbfa0ff00674f2b8783cdf96f8cf239bea7ec7deef727179bf3df19f2fe3747afc5c73321575bdf3fa5f4bf5ff51eb766f57c1f93f9bf17cdea7171e3324ce719ce739c638fcafc57f3dce649332492499924cc92492491240000000005aad355ab6db756eadd5b7575ababc9fa9febdf29f35bfe90fe6ff81e1bd8edfb5f77fab7e9dd6fc3bf1ef2fbdeff00a5f4bd3fccbf63fb2fe5ff001e6b9fbdf41fa6fedbf5ff0097fe0dd2f5feb3ea7f67fd59f2df9ff0fabedfbfec777933d2f27e7fc07aff004dedf6f9f3d7f3fe43e77ccf17cfeaf1666f93b1ddf4bdbfb1fb5e7b8eaf97f3be0747b5effd1faddde5e1f3bc1f9cf07cae875b87189205bbe4ec7a1ee7d27d07abd8757c8f9ff17caf3ba9c3c59ce6499ce318c6718c7171fc07e05e26666492493324926649249248920000000002ad69aad5b6dd5b756eadbad5d5d7d7ff0046fb7fa07ca7cf791d1e0c6b5d9ec6b7c9c9c9c5d6e4f6bd9d75fc3e8766f4b8f3ae4c70e2f273767b5def53d7fb1fd93b5f05f37d9f4fd5f63d2eceb8ba7e578bd0be8fb7eb7739a75fcdf13cce975f8f32eb5c9cdd9ee7a1e9fa1d8d7174fcdf1bcbe2ed7afecfa3dae4e2e8f93e2f93e6747abc38c664962eb5cbd8effafecfabe8f61d7e8791e5f9bd1eaf5f8b19ccccce739e3c6318e3c71f0f47f0bfc67864cc92499924933249249244900000000016ab4ba6adb6eadbabab6dd5d6bb3fd09fd3bcdc3e5f97d0e2ed7a9edfb5ea77b9ecce73c6ec73ef8f83a9d56af1ce4ec383a3e7f97e479dd7ecfa9e97b9fa173fcaf1f6bbfe8fa5dce5bc3d4f37cdeb6bbdea7a3dbe670f47cfe8f5b878e4b75be5e6ecf73b9d9e470f53a1e6f4e763d4f4bbbcfbc753cff33cce874badc1c78ce641abbe5ecf77d2f4fbfdae770f53a1d0e8f4babd7e2e3ce66739ce738c638f1c7c78e3e1e2f8efe5cf99cc92499924933249249248920000000002d56974d5b6dd5b756dd5d5d6afec7f61fb67dd7d2f2f43c6f1bc9e9f2f6bb5dde7c668986738e2e3c6339e3898cde4edfa3e97a3dbeef7f5c5ae5ecf6bb7dbec6e7175ba5d4e1e4ed777b9d8e4bc7d7eaf5b878f113575be5e5e7ec726a70f5fa9d4e0bd8ef777b1cbacf0757a5d2e9f5783878f19cc82eb7cbd8ed773bbd8e5e46387abd5ea75b83afc5c78c6738c631c78e3c71f1e329d3f9bf87fcf7f25f16492499924999249249244900000000016ab4ba6adb6eadd5b756eaeb57f66fccbd8faafa7fa4f7fd7eef63b0cf272f8fdff00424938d8cccc246b5c9a499c71c97977ad6b554b99106ad2c102c2a58650bad6a5526524820b575ad5b6161212033f3befbadc7ac757a7e7791f3ff35f3bf2bd6faefcc24924cc924cc92492492449000000000156b4ba5d5b6dd5bab756dd6adfdbbf29fddbfa178be67e53c3e3ee77bbfeafb3ed7e55f6df6fcfcbc9cbae4d6f5c9abbd6b5a6eb4d596966aad2aaaaf27272f26f7574d55b54556a6914a2962c584b9d400b21119c4e3c631c77871fcb1faf777e57e5fc0f1ba77d7fa6fa1f7bf38fe65f07ecbf29924999249992492492491240000000005ab6ae974d5b756dd5bab75ab7f6ff00c7fddfe81fed2fb4f88fc7ff0020fce3e63cdeaf15faaf1fcf8329232884b225889516dbadeb5c9be4df27272f2f2f3f373f3f3f2f639fb1cdd8ed72ef97937c9ae4e4e5e7e5e7e6ecf32f3ef3f11f0bc5a948699633c9f6df7f1c7999e289c3c79caf14df17038b8f3318e3cfe7bedf8bf33e4e7d4fbcfdabf70fd1e7f3b7f167c2f67ecff28924999249992492653291240000000005aad2e96dd5b756dd5b7575757f6ffc7fddfdbffb53f40f92fca3f20fcd3e47c9ea714facf17ccb226646611092c4401bfa3d16d69abad6aef78ebfafcdcbcdcdcbcdcdcbcdcd79b935ae5e4e6e7e4ec73ef93939df98fe59f65cdaaa82232ee7affa672e2f165c79638f138d8e262f16738ce78739f87f63c6f99f3393d8fd07f6ff00d9befbabfcbffc8df17d9fb3fca24cc924933249266466244900000000016ab4b6dd356dbab756dd5bad5fdbff001ff73f69fed0fd2fe5ff002bfc87f32f8ef1fa5c59fadf13ce6532cb164b32244b0413d2bd0b6b5ad6b7be4df26f97979bb19eff003f372f2f372f372f2f2f2eb95cb7b1cdcbcfbecf26f9b9397f9bfeaf0a04013e5ff63fb698cb8e638f3318cc716271e1c7871c9c5f13ec787f3be5f2fb9fa3feddfb27dc79bfcb1fca1f1dd9fb2fca266492499924932cc66244900000000016ab4b6db756dbab6eadbabad3f70fc7fdbfd93fb2ff0054f9cfcbff0024fcc3e2fc4e8f0e7eb7c4f3519924932222c432458fa1e3f16b57575adef7c9c9c9cbcbcdcbeff479797939f939b979797977cf75bdef9f9f7dad73de6e5e4fcffc7ebd5a22440edfe9fe9b19c626138f39c5e3e3c673389c731318f8af57c7f9df3797defd2bf70fd83ecfc7fe50fe59f91ecfd97e512492499924926632cc48920000000002ad696db6dbab6eadd5b6eb575fb27e57ec7eb9fd95faf787f99fe41f97fc5785d0ebcfadf13cc659b8493256b56093332ca47d1fb7d8ad5d5d6b5bd726f979393a3e65e5e4e5e4df372737372f3f26ab979b979793977d9df26f93ed7f62fc67cfe46a933339cc9c9f7bf79fcf7c0c658cb8f3898cb8e631c4c61c298cfc57abe2f81e772fd17e9dfb9feb3f5de0ff0024ff0031fca77bd7fcf6492499924932cc9198912400000000055ab6db6db756dd5b756dd6adfadd707b5fb2ff00457e8dd5fce3f28fcfbe5bc4e9f17d1791d091265944bae5ec7679f935acf0f075f8b8f38e3e3c2d6aeb5ad6b7be4e4ec767b7dbe6e4dd71e77c9cdbe5e6e7ecf6f995c9ab5b736b977cdecfde76b7bd6b386739e2cdc67c4f8de0a99bbcc6664ce787878339ce261867e7ef43a3c3eafde7ec3faf7d0fc97e1ffce1f15d7f77f3ec4924cc92499924924919448000000000ab56db6db6dd5bab6dd5b75ab7b5e9f26f5d9f6be83d4e55d727c9fb7ec726f9397979b9f9b9fb3d9ecf67b9dff4fd3f439f958e974ba5d6ebf0f1f1716319917777be4e4e4e5ec76fbde97a3d9e470753a1d2ebf067377d9eff00a1dded6e6787abd1e975f8b2df3f73bddce6e4d4e2e0eaf53adc1c3c5c7c79c45bcbc9c9cdcdd8ecf6fb3cda9c3d3f3bcdf33cde874ba9d5e0e3e1e3c63e13deee714e4eb793f3fe0f9fc3c5c3d4f2a4cb32492499664924922489000000000156adb6db6dbab6eadb6eaeadd5d5d6aeb7c9c9c9be4deb939f979b9f9fb1daed777bfe87a9eb7b3eff00d3fe85fb0faf4707e51f1fe675b878b8b132835bd6f7cbd8eefa3ea7d0fdc7ba0fcdbe37c8e9f0cd763bfed7dbfdd831f9dfc5789d1e0bdbf53e97f49f7949e77e7ff35e3f99e7f4fafc3c79975be6e7ecf73d2fa1fd43e9c2795f8dfe75f1ff0037e078fe579fd2ea75b838387af8e3e3e2e2e1e2e3cccccccc924924998cc924924924448000000000ab56db5ab6dbab6dd5b6eaeaeadd6aeb5abbbadeb7ae4e4e4e5e5e7e6ecf6bbbdff47d4f63defa9fd2bf7df703aff837e77e2f47abd7e2e2cc9328b77c9cddaf43d6f6febbf59fb107e15f99781e7f0635d8effbbf67fbafba8af91fc27e3bc5eae7b5ea7d27eaff00b0a89f9a7e59f29e2797d0eb70e30bae4e5e7ed77fddfd27fa0fb045fcb7f01fcffe6bc5f27cde8f53abd7e1e1e2e3e3e3c678f19c666732664924924cc924924994924448000000000ab56db5ab6db756dba6aeadd5bababad6b575ad6b7bdef939797979bb3d9eef77d1f4fd8f77ea3f4bfe83f7c3abfcedf9b785e774fadc3c59c664922eb939bb7e8fafeefd8fed9f7817f9dbf28f9de875b179bbbec7d47eb5fb6d0c7e03f92fccf9fc3cddff0073ef3fa33de074bf0cfcd3e63c6f3babc18ccbae4e6e7ee7aff6dfd31f5c0e8ff337e45f23e2795e6f47a9d5ebf0f0f171f1f1e319c631339cccc92492659664924924ca49222400000000055ab6dad5b6dbab6db6eadd5bababad5d5ddd6b5adef7c9c9cbcbcfcfd9ee777d0f4fd7f77ea3f4bfe88f7c3abfccff009af81e6f4fabc3c58c666642eb939fb7e87afeefdafef5f7e17f9aff0024f9cf3fadc7797b5e9fd07db7f467d483e4bf9a3e1bc5eadecfa7f51fb57ee429e0ff003f7e75f35e474bafc79977c9cfdbf57ec3fa4ff4b885fca3f9b7f3ff009ff27cee8f4fabd7e0e1e2e3e3c71e338c6719999993324924924924924cb2924889000000000156ad5d2dba6adba6adb756dd5d5d5d5d5d6b5ad6b5bdf272727372f3f67b5ddeff00a7ebfbbf51fa6ff457d00753f96ff34f03cde8f5f838b18cc922ddf273f6fd1f5bdffb6fe83fbf0d7f30fe47f37e7f5b8af2763d0f67e9ff005afe82a0fe7efc57e5fcee1e5eefb5f71fd2bf6229e17f3efe61f35e574f870bcbd8ef7b1f77fd23f7d1078ffcb3f927cbf8fe6f43a7d6eb70f0f0f1f1e38f18ce338ce666664924924924932cc6648ca4891000000000156adab6dba6adb6dd5b6eadbab7575ababad6aef5bdef939397979fb1daee77fd2f5bddfa9fd37fa37e843a9fca1f9a781e6747adc3c58ce6445def939fb7e87afeff00dbff0044fe801afe5dfc87e6bceeaf1ce4e7eefa9eefda7f497da03e77f96fe03c2e9cecfa3eff00ea1fd31de28e0fca3f11f8af1fabc3397b5ea7d5fec7fb3fa4218fe79fc0be33c4f33a1d2eb75f83878b8b8f8f18c6719c673999924ca66329266492492492448910000000001556d5b6db6dbab6db6dd5b756dd6aeaeaeb5abbd6b7c9be4e4e6e6e7ed76fbde8fadef7d4fe95fd23f481d4fe48fccfe7fcce8f5b8b8b19920d6b7c9cfdbf43d7f7fee7fa37f410dff2efe3df2fe675b8a6b9bb5e8fadf4bfad7f486835f857e0bf25e6706fb7e9fd2fed7fd01b28bc5f1bf0ff002fe44f4be9bedbed7b9042fe3bfcddf9ff0085e5f9fd2eb75b87878b8f8b8f18c6719ce3399999924924924924924924924891220000000002ad5ab6db6db6eadb6db756dbab75757575abadddeb937c9c9cbcdcfd9ed777d0f5bdefa8fd23fa5be9c3a9fc83f997cff99d1eb70e319c85bae4df3f6fbfebfbff0073fd29fa141c9fcbff008cfca799d5e29797b1ddf4bdbfb4fe9afbb81e57f28fe6de074f1cbddf53eb3f73fdcf4502db240835f96ff367e6ff003be679fd2ea707070f171f1f1e318c6739c6739999249249249249249249249224488000000000aab6adb6db6db6ead5d5b74d5bab75ababad5d6b5bdef939397979f9fb5dcf43d5f77e9bf49fe9cfa80ea7f1efe5df3fe6f47afc38c490ad6b7be7ed77fd6f77ef7fa67f428397f98bf12f92f33abc79bbe6ed77fd5fa3fd87fa5f41bfc6ff009bfe2fcbe073f6fd5fabfda3f7cedca1402087e4bfcf7f9bfcdf97e7f4babd7e0e1e3e2c71e318c6738ce739cc999249248ca4926648ca652448910000000001555a5b5aad5b6db6db756db6dd5d5bad5d5d6b5ad6f7c9c9c9cbcdcfd9edf7bd4f73e97f4dfea2fa80eaff001e7e4ff3be774bafc5c79902dd6f939bb3dff53dcfbffe9ffd120e5fe65fc23e47cdeb7146b979fb9e8fb3f77fd3dfa0643adfc9bf917cdf538f7cfdaf4be93f4dfe85fb2c0141037e57e27f8a7c0fcef95e7f4babd7e0e2e3e3e3e3c6319ce339ce2666649329249249249249249124651100000000015556db56db6eadb6db6dba6adb75757575abad6b5adf26f9397979f9fb5ddf4bd8fa4fd4bfaa7ea83adfc79f8efcef9fd4ebf16264956eb5be6ecf77d2f6beff00fa97f4a8397f987f01f92f3fafc726b7cbdaeefa7f4dfb37f4e7305fcb7f93be17cde29be6ec77fdafaefd8bf6afa4e300072747f37fc5ff0037f91f0fccf3fa7d5ebf0f171638f18c6319ce26339cc9332492492249249249249248911100000000015556db56db6db756b4d5b6db6eadd5d5d6aeaeb7adef7c9c9cbcbcdd8edf7bd5fa0fd37fa9bef6a4f2bf8f3f24f07a5d5e0e3ce622adbbd72f63b7e87adf6ffd35fb06a1c7fca5f887ccf4b87195d7273f6bbfecfdf7f48fe9d5263a1fc61f96f93c38bbe5e7ed7a3ec7d5fea3fad7da7aac4175aea7cf7e7df97fc0fc9f83e579fd2ea75b83878b8f8f18c6338ce719ce739cc933232924924493299492492244440000000005555ab6db6db6db6db6db6db756eadbad5d5d6b5adef7be4e4e4e5e7ec773d0f67ebff41fa9ede38fa7f39f01f1de5f57adc5c79902b575ae4e6ed773d1fa3fbdfacf4b973d4f03e1be27c8eb71606b7c9d8ed7a1f41f6ff59ddd63abe77cff00c5fca79dc59977be5e7ecf77d3f77ea3ebbecfe97d6edeb8fa1e37cc7cafcb7ccfcff8de6f47a7d5eb75f838b8f8f1c78ce338ce739ce26739924924924492492492491249122220000000002aaad5b6db6b56db6db6db6db6dd5babababad6b5adef7bdf2727373f67b9e87a9ea77f958ebf47cdf3ba9c1c3c78cc816aeb5be6e7ecf73d0f53bfdae5c75bcff0033cdea70e322eb7cbcfdaeefa3dfed6e7074fa1e7747afc722ddef93979bb3daeef7bbddbec6dc5d5e8f43cfe8f4babd6ebf075f87878f8f8f18c6719ce339ce739ce6499924912491949249249244912242000000000156ad5b56db6db6db6db6db6db756eadd6aeb575adeb7bdef939397b1d9ed76fb3cfa671c3d7e0e1e2e3e3ce602d6addf272f63b1d9ec73f2dcf170f5b83878f08b6eb7c9cdcfcfcdc9a98e1e0e0e1e3c492b5ad6b7be4e5e4e4e4d2678f8b878387838b878b8b8b8f8f8f18c6719ce7133899ce7399249949249124924924652491122420000000001569a5b56db6db6db6db6db5ab6dbab757575ad6b5ad6f7bdef97979f9f9f9f7ab338e3e3e3e3c62650a5b6dd6f93979f9b979376638f8f8b8f39855badef979393759c71f171e339156eadd6b5749339c71f1e38f8f8f1c7c78c6319ce33899ce739ce733399249248924912492492492248909080000000005555b56db6dad3556e974b6db6dbab75757575ad6b5ad6f7ae4e4e5e6e5e4deaa6719c6719901556dd6b5cbc9c9cbad56718c6664556aeb7bdeaa6718c673216ad5508ccc6719c6319c6319c6738ce66739ce73339cccc92492249124924899492449122220000000000aaab56db6adb6db6db6db56db6dd5bab757575ad6b5ad6b5c9be4e4e4def4b24ce733308a55b6dd6b5bdef7ab24ce7284b557575ad2cce739ce50ab4584466666719ce339c6739ce739ce7399999ccce665332448924922492492248922444400000000015556adab6db6db5a5b6db6ae9a6adbab75abababad6b5ad6f7c9bdeae89249988295574d5d6f5ad5a6648452aadb74493399242aa88449266673339ce739ce73339ce73339999999994924912489244ca492491242444400000000015556adab6dab6db6d6ad5b6dad5b6dd5d5bababad5d6b5bd6f5bbab492444b28ab6adbad5d5b488814aaab492492425502224924ce66667333999ce66733333993399249244924492249249224892242420000000000aaab556dab6db6dab6db6adb6db6db756eadd5d5d6aeb5ad6eeb55511002aad5b6dd5b55102852a82492440a5844466492666666666733333999999993324922491249124913292489112221000000000052d555b56db5a5b6add2db56db6db6dbab756eaeaeaeb5ad5d5b40805296d5b6d5aa1280a5012224428b1111224cc9992673333326666664cccc924912449124892492449124244420000000000a5a5ab6adab6db6adb6d5b6adb6db6db756dd5d5d5bad5d5b540502aaad5ab55405028022444058111224924cc933332664cc99933266492249122491248cc49222489088400000000014aab56ab4b6d5b6adb6d5b6adb56e9ab6dbab75756eadd2da0a0a52ad555a5140a00b04421001111224924cc92664cc9993324999248922489224922492248911221080000000002955696d5b6adb56db5a5b56adb56e96eadb756dd5b7556d0a28a52d55555140280021080408891224924932cc9992664924cc922489124892249224921222444100000000002aa96adab56d5b6adb6d5b56adab6db6db6eadbab6db5694a28a55555528a05940010404108488912492492499924924cb324912248922489244912448888884000000000052d2d55ab6adb56d5b6d5ab6ad5b6db6db6db6dd2db4b4aa294aaaa514a0a9650004080822224489124924924cc924924924491224491244922491121211080000000000a555a5b56adab6adab6d5ab6aadb56db6db6db6dab554aa5294aaa528140000080410891122449124924924924924922448922449124492224424441000000000014aaaaab56d5ab6ad5b6d5ab56ad5b6dad2db6db5556954552a94a50a001654058020444444891124892492489266248912248912249122488909088400000000002954b556aad5b56adad2d55ab56adab6db6d5b556aaaa94a5528a516500000040211111122244912492249249224488922448922489212212210800000000002a95696aad5ab56adb56ad5aab56adab6dab6aad2aa954aa52aca5050001165202044444448889224892449249122444891244892244488484210000000000052a96aad55aab56adb556d555aab5a5ab6ada5aaa552aa8aa14a0280010008208889109112244912489248891222448922248911209088200000000000a552d2ad5aab556adab56aad55aab56d5ab554b4aa55529451400a09600020842222222222449122492244888912244891224244242104000000000014aa5555a5aab556adab5556aaaadab56aaaaaaa954a5528a0a0b2c540160102108444424224449122491222444889122444909108842100000000000294a5a55aaaab556ad55ab555556ad55a55a55552a94a52828016585800404109084444444489122491112222244892122242221082000000000002954aaaaaaaab4b6aad55aaaaaab55696a954aaa2d14a50a002a58b00101042090888444488912488888911112444488908482104000000000005294b4ab4aaaab56aaaad555555555aaaa552a8aa528a1402822a002020421108844444489124444484488912122222110820800000000000a529554b4aaaaaab56aaaaaaaaaaaaaa955455154a2850165002004b02084210888424448911222222224444488488241082000000000000aa2969554aaa5aab555555554b5554aaa5514a5154142ca000080102084108844444448911111111111222212109041040000000000014a52a9554a555aaaaaaaaaa5a5552aa954a528a28a050000020101042108442242448888848448848888484241041000000000000294a2d2954aaa5555aa555552aaa9554a528aa2850500a12c000802082108442221244444222222222222210882082000000000000514a2d2954a552d55552d2a94b54a55294a514505028000100102041084221211222211109088890888422082040000000000005294552954a552d52aa9554aa5552a8a528a50a0280a45200080804108421108911108884824444222108410410000000000000a2a8aa29545552d51694aa5551554a514a28a1405000008004081084210888908444221111110884110410200000000000014a28aa51545552aa8b4a55295455514a28a28280280010010081082108844844421108884442208441020400000000000028a28aa51545529694aa52a8aa5294a29428a05000542c0008082042108444422108842211108841102081000000000000028a5154515451554aa52a8aa295452945141405000000201010810882242208441110884241044082020000000000000514515451542954aa5154a52945514a2828a05000000801010210822211044208884211084108104080000000000000a14a154a14a29545550aa514a528a28a140a0a000012a01008208211110421042211084410440410100000000000000a14a2a8a14a294a52a85528a29451450a140050000800808104210882108221044211040881020200000000000000a2942a8a14514aa294a2a8a14a28a50505002800040040208210442088110822082410220408080000000000000142942a8514a14aa14a514528550a145028002ca1292c0020104104421040882088211040880820100000000000000282942a850a514550a528a28a14a141428002804a8001010204410840441042088410220204040000000000000028528528a0a50a550529428a50a14a0141400000258b0402042108204208108412041080810100000000ffc400190101010101010100000000000000000000000102030405ffda00080102100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000a0000000000000000000000000000000000000000000000000000080000000000000000a00000000000000000000000000000000000000000000000080000000000000000000a00000000000000000000000000000000000000000000020000000000000000000000a0000000000000000000000000000000000000000000800000000022a54162c54a0000000028000000000000000000000000000000000000000020000000020000000000a00000005000000000000000000000000000000000000000200000001000000000000014000000a000000000000000000000000000000000000040000000800000000000000014000001400000000000000000000000000000000000800000040000000000000000000a00000a0000000000000000000000000000000000800000100000000000000000000014000028000000000000000000000000000000004000002000000004000000028000000500000a0000000000000000000000000000000400000400000004000000000002800001400002800000000000000000000000000000200000800000040000000000000014000028000140000000000000000000000000000100000200000100000000000000000140000a0000a000000000000000000000000000080000400000200000000000000000005000050000280000000000000000000000000040000400000200000012a0000001400000140001400014000000000000000000000000020000200000400000080000000000a00000280058500014000000000000000000000000080001000004000004000000000000a45000028001650000a000000000000000000000000400010000040000100000000000000054a0000a001628000500000000000000000000000200004000020000100000000000000000a00160a002ca8a0002800000000000000000000008000402c0020000080000000202cb2894000005000521400596500028000000000000000000000400008000100004580000042a00005814000000a00152800280001400000000000000000000100004a80008000254b00002001600000b2c02cb28000b280140002894001400000000000000000000400022c00040000200004b2c0000000002c140000140050001400014000000000000000000010000948004a950004b0000200000000000000a0000a0028000a0000a0000000000000000000400022a00114800200004b000000205000000050000b28014000a0000a000000000000000000100001000254004b00004000040000000b28000050001400a00050000a000000000000000000400004000200100010000200000000002ca00014000a00500050000a0000000000000000010000200010008001000080000000000000a0001400500280050000a000000000000000004000100004004001000100000000000000014000500280280028000a0000000000000000080002000200200100020000459600000014000028002800a00a0028000a0000000000000000200008001001001000400002000000000050001400140050050014000a000000000000000080004000801001000400008000000000000280050005005002801400140000000000000001000080040080080020004b000000000000000500140050050028014001400000000000000040004001002004004b00010000000128000000059400a0014028014014001400000000000000080010008010040020002000008b00000014000005001401402801401400140000000000000020008004008010020002000040000000000140001402802c501400a014002800000000000000800100100200401000960001000000000000014000500a00a016500a014002800000000000001000800401004004002000100000000000000028002805016501400a01400280000000000000400200200402004004000400000004a4a9528000000a000a028050050050140050000000000000080040080200802002000800000100000014000002800a014050050050140050000000000000200100400801010020004000040000000000140000a00140a0500a00502800a0000000000000400401002008080040080004b000000000000002800280140a0140b280502800a00000000000008008040100202004008000400000000000000014000a028050140500502801400000000000020020100401010020040004000000000000000002800280a05014028050500140000000000004004040080404008020004b00000004a40058b28000000a00280a028140500a05002800000000000100101002010100400800400000948b0000000161400002800a050280a0500a05005000000000000200404008040401002001000080000000000001650000a00a059428140280a0a0050000000000004008080201010080200200012c00000000000000028002805028280a050140a00a0000000000010020201004040400801000200000000000000000585001405028280a0a01414014000000000002004080201020080400800080000000454a0000000001400a05028280a0a05941401400000000000400810040408040200400200000965962c0000002c5000000500a05028140a0502828028000000000008020200808100802010010000258b000000000000a000028050502828140a02850050000000000020040802020404010080100001000000000000000280014050285028280a028500a00000000000401010080808080402004000200000004b28000000005000a0282850501414050a01400000000000802040201020202008040004b00000458000016594000000500502828502814140a0a0140000000000100408040408100402010004000022c00000000002ca00014028282850501414281402800000000002008100810102010080400400008000000000000028000a028282850502828142805000000000008020401040204040201004000400008b00014940000000b140142828285050282828280a000000000010040804080810101008020008000080000000000a00005014282828a0a05050285014000000000020082010101040404020100100002000200a00000005000140a142850a0a0a05050a0140000000000401020204041008101008040004000100000140000000280a0a142850a140a0a0a140280000000000804080408104020204040100100012c000202800002800005050514285142814140a1405000000000010081010202080808101010040010004000000500000002814145145051414141414280a00000000004010202040810102040408080040004002000500002c5010505051451450a2828142828501400000000008020408082040408202040402000401000102ca0014000000a1429451428a5028285028a0280000000001004101020410102040810204010002020000940500000000a28a28a514a0a50a05050a140500000000002010202040810408102041040400800408000005000a941000a28a514a514a14a0a0a0a0a280a000000000040204041010410104041082102002540108000001402800800514a5294a528a28a140a1414281400000000008040810204102040820422084100004b084004b00a0a14000840514a552a94a528a50a14142828501400000000010082020408208082042088884100000844080000528a0008825052aaaa9554aa51451428142850a0280000000002010404102041020410422244440800148442010005154a000888450a55ab5555554a514a1428285051405000000000080208102040840410410892249108000a044840800145552801122200a55b6adab55554a528a285050a0a280a00000000010081020408108102084224924cc91000294584922082ca0294b554161224921052aaeadb6d5b555554a2942850514145014000000000200820408104102082108924ce73333282829554124cc4401452aaaadaa012493324402adb756eadb6db555554a514a0a0a1428a02800000000040204081040820810822249338ce339cc91452ad55aa2673992480552adb56dad2a81266666732440abab7575abab756db56aaa94a28a14142851405000000000080408104081081042088924ce318c631992155556db56da6738ce64920a2aadb756db756d508cc99c671332442add5d6b5addd6b5756db6aaaa94a514142850a280a00000000010082020810210208421226739c73e7cf18ce50555ab6db6dd5a98e78cc92214a2adbabad5d6add28924ce718c673200175ad6b7bd6f5ad5d5d55ab554a52850a0a2850a0500000000008041010408208208221124ce71cf9f2c6732422955456aeb56cc73c6691002855d5deb5ad5b4499ce318c622ebb76eba679f1e388b75bdef7bdeb5abab6ad5552a9428505142851628000000000402081040810810421112499ce3972e58fa3ee100098e3e7f2e0d6f558e7ce7d0fa82025098e5e7f2e175bd6b55526738c73c66f7f7fb3d3b019f3f8fc1c32d6f7d37bdeb5ad5b6d5aaa5528a0a0a2850a05000000000080410208084104084222499ce79f3e5c73f5fe9509422867c5f37cebad5c73e4fabf64000a2cf27cff0024d6b5ab6c6738c73c3d5f57db4000f27ccf166eba74df4d6f5abab56ad2a94a282850a2850280000000004020810408208108222226739cf3e7c7967ec7d3000007cff9785b39f27d5fb25128028be4f95c2eb56d92639f3cf4faff004880001e3f8fc1ae9be9bdef5ab6dab5554a5141428a142814000000000201040820810410411112499ce31cb971cfd9fa6000051e7f8fc098e4fadf6280050158f91e45d5b2679e33e9fb9dd10140073f8fe297a74df4d6f5756ad5aa552850a14285140a000000000100820810208208211091266633cf9f2e39fb5f48a00001c7e379e31cdf57ec8a000a067e3f91ab64c739ebfb9d2100a0084f93f3f3adf4e9bdeb56db6aaaaa945050a1428a050000000000808104082041042084489339ce31cf971cfdafa454f3c035d7650797e37199c3eafd851e680abd3a501cbe2726acce27a3eef4204e1c38e1aebe8f469013e47833ae9d3a6f5ad5b6d55552a850a14285140a00000000010102041020840821109126739c639f1e59fb7f44ac7c4e6116f7f77b281f2be6e338bf57ebd2cf83c2528d75f6fbb60787e4ca99cf5fbbdc1278fc1c3305bdbddeed90b8f8be49be9d37bd6b56d5aaaa528a142850a2814000000000202041020810820422224666738e7cf9729f6be8958f87c810bbf5fd3e80e5f0bcf9cdfadf58a9f03cd2d521bf47d6ee0cfc3f3ae66bebfbc0e5f2fcb8801af47d5f401e7f8bc2f4e9d37bd5d55ab554a5142828a145028000000000804081081021041044448ccce33cf9f2e2fb7f40ac7c3e4a84874f67d5d03e47cdc675f5beaa93e0f9968246bd5f63a03e67cdca3dbf6a838fc8f3e56ac245eff57d407ccf9bcf7d3a74deb56db56a954a282851428a050000000001008204102082082108892499c631cf9727dbf7a99f87c544492f6fa7ee078fe2f19afadf5427c3f2ad54491bfa9f441e5f8bce3b7d9f5039fc7f365ab551249aeff5fb839fc5f34e9d7a6f7ab6daaaaaa50a1450a145028000000000804081081041041084489249999c639cfa9edd171f13814448d7b3ebe8397c1f34dfd6fa813e2795682492fb3ed50e5f0fcf37eefb1427cbf9f8bab6d093326fd7f5f40f9bf379efa75e9addb6d555552850a1450a280a0000000004020810408410408449226c56f53133ad37d58f91cca110edf53a867e3f9a6fe8fd009f278140923b7d5ea19f91c33d3e97b151c3e6716adaa12491d3e87aa89c7e671bbdef5ab6db6daaa55141428a1450280000000008040820810820826248846af554212e717ab1e5250117d1dc278b07a3d2598f265451093d3deace7e387abbd19f2f25280111af4f4a99c79f0aa514b6eba6d4a142851428a0500000000010082041041041136dd3779f39339ce3539cdf4552c22ce5ce148bdfae913cdca5efe8a31e5c5a00935e8e9a271f3e5af476d139f9f0a500212f5ebaacf3e3855500175dfa0a28514285140a000000000201040820810827274d6b4a933329cf1739bd3aadb4499971cdc9cf546baf4d54cf0e52f7ef463cfcda0046bd5a19e3c72d77ebab33cf8e16854b1608e9d3759c72c1545001d7d16850a1450a280a0000000004020810410410cf1d4cba926719edbf2eb4aceb5caef6918c4f671e3a5ce73bc2ddef7aace79726bb74d569e2c34a0827d670c4cf2e5974ebd36639f2ccaa05208bae9ad273e798a50a041af4760a1428a1450140000000008040820820823879fb598d75a9318c6b58dda4ac67aeea4c73cfa792a4c74616eb7ad19c630d74e9aacce3881416efb58ce39e237d77ab318e7905002175bd699c67322850040e9ead142851428a0500000000010082041021063cbcda5b4aa01281422122567779db75ad54ce719b77bdd6738cc20a5b75ab66719c2eb7bd599c633014010bad6adce733201410207a7ba828a285140500000000020104082082271f3a16dd6ada00a028a499ce612352db756a67398d6b5ad262650055b74499ce575addb339ce6214001756d3399100001106fd7b0a1450a280a0000000004020810410471c63284552850b2928100b02aaea933245d6ad3321014ab493322eb56d6666480000baaa92448000811177d3d145142851405000000000201040820823874ce66500842800050258a0a0401500000022ca0040000000000014bad6a6ba0a2850a28140000000004020810410470e9c73b99088b98aa05000000582c0040b152a5940000000000160044223685b52ee67add741450a14502800000000080408208208e1d33c27a3cf8d74d68bcf540000000010082082102020401ad290a01880162800146a2d4ce1e979fb749ae828a1428a05000000000100810410411c3a678e7d1e7e7ae9bd179eb50b0282290b00379004025cc8410202021bd6000032a00500050d4518c5f4e78f7dcd742850a28502800000000080408208204e1d33c71e8e1cf5d35ab5cf545940940000ce9150102090410204043b720000379800500051a8a4ce35e8cf1efb9ae850a1450a05000000000100810410211c3a678f3f4f0e7ae9ad5ae7ad2596500000073d684020231a4201010805428080580512800b28d452671af4f3e5dfa675d051428a140a000000000201020820823874cf1e7e8e5cb5bdead98d68000000018cc010286aa220a4458880bd7945b4448876d700aa41420146a29318dfa7963bef3bd9428514281400000000040104104104673718b8e76ef5571aa0002914100008014824916d5492a65016e86b42492259852db5245d124003504ce5d3a677bb3a8a1450a140a000000000200820820821211991059082220b5614cc90080505d5d0267392dd6b49159ce6255d6ac5ba898911015abaa90b6cce645aaa6e42aeb555741428a1450140000000004010410408208210844488905b7a7a283cfe7cc88888842b5ae9dbd3a070f3e241ae9e8ec09c78f3cc2f5f5ec19e3cf1989016dbadf4ed40e5cf1992ad5ab5554a2828a1428a0280000000008020820410410410421080b6f4ee071f366448820456b5bede9a0e5e6c4895bebeb033e7e79496fabb018e7cf308156dd74e940bcb9e248552a95450a2850a1450140000000004010410208104104104101ab7af503979f33311000ad6b7dbba518f362485bd3d5a031c71125e9ea40b9ce33102add6fa4828e58c490a5295450a142850a280a0000000001008204104082082040805bad75dc0bcfcf9cc910014badf4eddb981e7e7330d5d76ef905c73c245f4d02a673242add6f79c81ac73c672814a528a141450a285014000000000201020810810408102002eb5bebac54acf9f124901294b75d3af5e9c4b1bf3f3cc92dbae9e9c4a874e5ce492f4ed902eee73982dd6f5cf006af2e79cc802945285050a1450a028000000000402041020820410100816dd6ba75600f36249080a5ad6fa74ebbe00ebe7e78925bad6fb6f903778e728d76401be8cc86adcf200ebcb96331205145282828a14285014000000000201020810410204040055d6b7d3b6790579f9c91096296b577d3af6d7941dfcfcf3985d6b5d7d1e680f473e599177db90035bb4ce7000ef8e18cc92005145050a0a2850a02800000000040204104081040802016dbad6faf7c79c2efcdcf3120055b77be9d7b6bc40f579b966496dd6ba7a27981bf479f9c8b7a74e30000003d33872c491082829414141450a140500000000008040820408204100128b6eb5adf6f4f1f286ba79b966220156dbbdf4ebe8bf3c27bbcbcb3985bad74ede9f9f907aa70cc2debbf3c000005f5bcfc719911001450502850a28280a0000000001008084081020808002aeb5adf4efeaf378c35e8f272c440852dd5defa75f43e74a4fa3e4e39922dd6b7d7d38f050d7bbcdca45b77d39720000277f663cdc719cc44101428282828514280a0000000000802041020810202002add6b7beddfd3e4f086fd9e3e18441285bad6f7d3afa31f381f4fc9c33245b75bebdfd3f2f903d7d3cf892aeb5d2f0e20003b7b7a71e1c79e732222000a05050a1428281400000000010040820808204040055d6b7aebdbbfa3c9e42b5eaf170c4884295abadf4e9d7d38f0ca3dde4e389216eb7d7bfab97820b7d7e7e798b6dd6bade5c79400ebe9f4eb9f2e3cf9e739488880050505028a14280a00000000008020408208081010055b75ae9d3b76f45b6c9cf8793862484055bad6f7d7afa3b419c71f372ce622dd6ba77efd484e7cf8f3cc2d6aeb7bdeb19c977d3adc73e7cf9e319cc924442005028282851414050000000000401010810204080402adbad6f7d3a75deaa679f2e3cb1948229575ad6fa75ebd2a4c63973c664916dd6fa74e95126318ce5156add6b56eadb526318ce26666444844014050a0a0a28500a000000000080202082040404045855b6ddeb7adeb552671cf189241145b75ad74def56499ce71992416dd6b5aa44999240aaabab6d524cccc924922444200a0505050a281405000000000040201040810202008a2adbad6aeb56926738cc920852aeaeb5bd523326648816db7422244028ab6d5112492248888840280a0a0a14505940a00000000004020204102020200055ad5b756d126666490814b6b5756ac492242156ad08840142ad504489112222080a028141450a05028000000000080802081020402000aaab6db688933121014ab6db4222200aaa08805052a94844448888420140a05050a280a05000000000010100410209604040028aab6ad1124484014ab55442100a528880a28514a84222222102050140a0a2850140a000000000020100810204040400514aaaa11221000a555020805280405285140211111081058a05028285140a01400000000004020082040804040051452810880940a28a100014020528a280210884202050140a0a14280a028000000000080401020408080200505141040802850a100028008528a14041084101014050281428a05940a0000000000100802040408080200a014040400140a00000150028a140408408040280a05050a14028140000000000100802040808080200a000040000500001400000a029004080400a028141414500a028000000000020100408081008020594802a540000028000002c002815292c00802580500a0502850a059405000000000004020040808100400400000000000a00000000028001000800a050140a142a50280a00000000000802004081010080096000000258a00000b28000000000001001628140502828500a0280000000000100402581010200400200000200594000000058b2c00a000004000a050140a0a1650280500000000000100400810101004004b0000128802ca0000000000000a020000b280a0502828280500a0000000000020096008101010020096000008000a0000000000000000000a050140a0a15280a0280000000000040100101010100400200000800b0b2800000000000000000a01405028282802805000000000000801004b0101008040010000429000500000000000000000280502814050280a00a000000000001002009502010080200080000102c2800000002500000000140140a050142a50140140000000000020040020200804010008000002291400942289658a9400000000b280a0281405014050050000000000002004010020080401000100000000000004a2525000000028014140594140501400a000000000000400800802010020040010000000004a000951412800000280140502ca0501402802800000000000080080100200401004000400000000000000000000140050501650140500a0050000000000000800801002010012c01000200000000000000000001400281400a0501402800a000000000000100080100201002540080002000000000000000001400140a0050140500a00280000000000002001000802008004002000040000000000000002c500140280280a014028005000000000000020010008020040020008000258000000000000014000a00a00a028050050014000000000000040010008010040020004b00004a258000000000028000a4a0500500a0280140028000000000000040020004010010008000800001152a00000005940000140140500500a005000a0000000000000080020008008008004002594800000008005940000001401401401402801400140000000000000100020004004004002580022c00000000000000002800a00a00a0140050002800000000000001000400080040020008000458000000000000002800500a0050028014000a0000000000000020004000200200080020000800000000000005000a0050028014005000280000000000000020004000200100040004000080000000000a00005002800a00500140005000000000000000400040002000800100010000012c00000140000050028005002800500014000000000000000400080002000400040002000000000000000050028002800a000a0002800000000000000040008000100040001000080000000000000140028001400500028000a000000000000000080008000100020000400128800000000000b140014000a00140014000280000000000000000800080000800080001000020000000002c2ca0014000500050005000050000000000000000100008000080004004a10000254002c002c0585000054a00280014001400014000000007ffc4001a010101010101010100000000000000000000010203040506ffda00080103100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a0000000000000000008000000000000000000000000000000000000000000000a0000000000500040000000008000000000000000000000000000000000000000005000000014000000000004000000800000000000000000000000000000000000000050000001400000000000000400000200000000000000000000000000000000000000a000001400000000000000000400000800000000000000000000000000000000000140000050000002800000010000004000020000000000000000000000000000000000280000280000140000000000008000080000400000000000000000000000000000000140000500000a00058504a259652595165800080001000010000000000000000000000000000000140000a0000500014000000001162c000400040000800000000000000000000000000000140000a0001400595280000162c00000100010001000020000000000000000000000000000050000a0002800280002800000040001000400040001000000000000000000000000000050000a00050001400a000000000020b0020008001000080000000000000000000000000028000a000a000a016280000000000000800200200040002000000000000000000000000014000a000a000a014000054a00004a100004b001000800100010000000000000000000000000a00050005001400500054a000000001000080040020008000800000000000000000000000280028005000a0050028000000000000400200100080040004000000000000000000000014001400280140050028000152928012840000800400800400100020000000000000000000000a0005001400a01400b28001400000000400096001002002001000200000000000000000000028002801400500500b2800500000000000960004004010010008001000000000000000000000a001400a0028050050028000002a0b0000004001002004004008001000000000000000000002800a0050014028028058a000500000008000100040100200400400100000000000000000000a002801400a02802801400594000000001000040020040200200200080000000000000000002800a00a00500a0140280050000000000004000801004008010010008000000000000000000a00500500280501402800a0000a04a04b0b0000080010040100801001000800000000000000000280140280140500a014014001400000000200020010020100800801000800000000000000000a00500a00a0280a01402800500002cb1600000400080080100802010008004000000000000000028014028050140500a028014005000000008002001002008080100401000400000000000000005005014014050280a0140a0050000000000080040040080802010040080040000000000000001401405014028140a0140a0140014000000800040080100804020040400800800000000000000050050140280a0a050281402800a0000000004b0010020080202010080400800400000000000000140140501405050502828028050000b162cb2840000100400802010201008020080040000000000000028050140a0281428140a05002802ca00000004000200802010080808040200800800000000000000a0140a028140a140a2ca0500a00a0000000000080080201010080808040200800800000000000002805014140505050a0a02814014000a95140010000080100808040404040201008008000000000000050140a0505028502850501402801659400000001000100408020404040202020080080000000000000a02814140a0a0a14502814050050000000000012c00401020202020202020201001000000000000028050a0a05050a0a28280a0500500050000025800008010081010102020202020080100000000000005028145014142850a140a0501400140000000004001002040408081020201010100200000000000014050a050a0a0a28a14050501400a000000000000800801010404080810101020100400000000000028141414142850a2850505028050000140000080000401008102040408101020404b004000000000000a0282850a05285142828501402800a0000000002540010080404102040810102020200800000000000140a14141428a14a141428140500280000000000008008010102101020808102020200800000000000281428a0a1428a28a0a140a0500a00002800012cb00000401010102081020408082040401000000000000a050a285050a28a2850a0a0500a00050000000004b00020080404204101040808204080100000000000140a1450a0a50a514285050500a00a0000000000000400404b0402104081020808404080200000000000282851459451428a5142828281400a0000016522a58000001001008102084081040810408080400000000000a051450a1451451450a14280a02ca0016525000000042c00020080408208204104081041010040000000000140a14a2850a294a1450a0a0a0500050000000000004b0008020408108204102081041020080000000000282ca52851429451451428505028014000000000000004b0020102041041041040820820201000000000005051429450a28aa2850a14281402800016522800009500000400808204088208104082081040200000000001416529428a28a51452850a0a140280058a00000000001000100404104108204204084104040400000000002814514a28a28a514a1450a0a02800500000000000001000402081041042081041041080804000000000050514514514a294a285142828140140000058a4a8b2a5800000200101040841081082081042082008000000000140a28a5285145514a285141414014000a94000000009600002008102084108208208108210401000000000028145154514514a51451428a05028005000000000000040008040820821082082102104209602000000000050514528a294529451451428501401400005962a50965800000096002020420841082104082104208040000000000a0a28a514a28aa51451450a2814028000280000000095000040101042084210410410420840808000000000140a528a514a294a51451450a0a050005000002c0000000200080410420842104104108208808080000000002814a528a514a2a9451451450a0500a0002ca0000004b2a000025801040842084210420820841082010000000000a02a8a528a528aa28a5145142850140028000b2c58b000000040010082084108442082082104210202000000000140a294a528a5294a2945285142814014001400000258162c0004b0020420842104410841041084208040000000002814a528a514a5514a294528a14280a0028005000400000020008102108421088410410821084100800000000050528a514a5294a5294528a28a142802800a002ca200000100001020421084210884104208421042010000000000a05294a528a52a945294a294514282802801400000012c0000040408421044210884208410821084b02000000000142852a8a5294a5514a528a514a285050028028000008000004a4041042108844211082104108421096040000000002850aa51545294aa51545514a294a140500500a000010000012a540410822108844211084108210842080800000000050a28aa5294a2a94a5294a5294a5285059400a05000004000025010208422110888422210420842088408100000000014145294a52a8a55294a5294aa5294a281400a0a000a40200000004104222111088844222082108210881020000000002814a5294a52954a5514aa52a95554514140050a05000204000000044222111111108844420841084210840400000000050514a55294a52a94a5294aaa55aaaa285000514500160041000028010908909111111110884210421084210808000000000a0a5154a5294a555294a52a956ad5aaa50512a14154500002084000a28b0211224488891121110888410841088421010000000001428a5294aa2954aa52954aa55ab6db554a5010052a940a04042208014aaa01112449244891111221110882104211084258200000000028294a5294aa52a954a52a9556d5d5b74b4a2840805555140008888410296ad5504449249249244912222222110841084211084b0400000000050a294a55294a5529554aa555b6dbad5d5b6d001082155554a0a41089111002dad2daa04493324cc99924891222242222108210842210208000000000a1452954a5294aaa552955555ab75ad6b5ad6ad2c04444402db555400844492444055b756ead5044933333333333324892244444442108421088420410000000001428a55294a552a954a5552ad5babbd6f7bd6b56d1044891110babaa555201122492491114b6dd5d6adaa0899933999ccce7333249122448888842108211084410200000000028514aa52954a5552954aaaab6dd6b7bdf4d6f774a11112444885bbb55541011249992491055bad5d6ada5944493333339ce739cccc9248912222242104211084210410000000001428a552954a552a94aaa5aab6dbbd6fa6f7bbad5aa2224408921ae9642d5100224cc92491157575ad5d12481544926739ce339ce6492491224444422084211084210200000000028514aa55294aa5552a955556dd5def7d77b60b4a410b6ead49235bb9e58954a80ab6d24924905bad6b5a4ce39f3e3cb9c5e9d7b6f7ab499ce718ce739cc924491122221084210844210810000000001428a552a95455552954ab556dbad6b7d3aef58f95e28a001d3afa7d5dba6eb317a5e3f2fe580a02efaf7f576deac8cc45babbd5639797c3e4e1901aebeaf67a7aef499ce338c67399249244888910842108421108408000000000a28a52954a52aaa954aaaab56eaef7be9d3a5e7f13c000009af5fd2f676d24bd1c7e37c8a000097d1f43ddd76924175bd59c7c3f33c9281148f47d0f6f6dd9319c6338cc9992248911121084108842210410000000001428aa552954a5552aa95556db6eb7ae9d3aedcbe278400001eefafe9e837787c5f934000087a3eb7b7a59245bad6b1e5f8fe10800527a7ea7abad4c6718ce739924922448888842084421108208000000000a28552a954aa2aaa954aab56dbad6b7d3a74dde5f0fc20094009dfed7b7ad5d70f8bf268000406bebfd2ea922dd5c787e271a400141afa7eeedb99ce338ce7333248922244422104221088410400000000051452954aa552aa954a55aab6eaeb7bdf5e9b72f87e108002c076fb9eee8bae1f1be451000006becfd2dc85b79fcff8b80000143e8fd1efa9318c6739cccc492244488421084421108208000000000a28a52a954aa52aaa955556d5d5deb7d3a74dde3f0fc245ef40cf3c007abef7ab6bc7e2fc9a877d28498e70074fbdecd49571e1f87800ebdfae99e7c3940a3e97d0efa98ce319c4cc92489222442108421108842584000000000514529554aa52aaa94aaaab6b575adef7d3aedcbe0f8437f77b52a4e7e6f0f9601f5bec775e3f17e483edfaf5504c71f0f87207bbedf62b3e4f83c80beaf77a3a6aa671c3c3e3806beafbbb26318c6739924912244844210842211084b08000000000a28a52a9554a5552a95556adb6eb5bdf4e9d76e3f07c21bfd07aaa84c71f0fcbc03afe87dbb9c7e2fca07dff006ec40cf2f27c9e20bf7fdda279fe278c0e9f53d9d7768931cbc9f33881dbebfafa4ce39e338933224912244210842110844204000000000514529554aa52aaa954aab56dbabbd74df5e9d1e7f83e20dfe87d5a504cf0f07c880fb3f5face1f1be583effbb700272f17c6c03e9fd8ea72f9bf180edf63d7d28033cbc9f2b801effa7e8d6718e78ce64ca49122484421044221108108000000000a28a552a954aa5552aa96ad5b75ad6f7d3a75e93cff0007c41bfd07af6a04e7e6f93e107b3f41e9cf0f8df301f77dfb00270f91f3c1e9fbfdee7c9f0f8037f6fd9d2a4252b3cbc7f279037f5fdbd58e7cf18cc9249124488884108844211020800000000142954a555295554a555555b575ab6dd6b7abcbe47920d7e87d7bb442678fcff8f03afe8fd9387c6f980fb9efdda0139fcff8b03a7dff005de3f33e481f5be9f5d48902ab3c3e7fcb80f77d3f56b1cf9f3ce73249224891108421108844204200000000028a2954aa552aaa954aa5b6adbc22c998ad630cf26fee7a75421263cdf23906beefb1c7e57cf07d8f6ed40867cbf23906bedfa6f0f93e5077fafe8d12105533e6f9be682f5fa7ebdcc631999924cc48922211042210884408400000000051452a9554a5552aa96ec5159cf0b0551adbcf37ecde8a0263c7c12afbbbdcf93ca8baf776a80067c7e785e9efe8c7878c95af5fa3400009c7cbce2ba7afb510109263189110842110844220420000000002852954aaa52aaa954e59c45975ab75abdf3ada709992253557b76d104c7979646bd5e8d63cbe7837ecec000e5e6e30bdbd7d1cfc9c725ebe9eda8000131e7e598bd7d1d7420200cf9f9a210842211084408400000000051452a9554aa55552edc26242dd5d35db735bce3cf24cc8b6eb537de76a09cb873cc6b5dbd1ac79b841bf576a00b273f1646bb7a3a3979f960df4f475b60000638f3e71ae9dba6a90081471f3e508421108842104200000000028a2954aaa552aa975d7166f94b6efa3cb8f6dcb2b99b99e76dbbe93e7fa3d59674ce3aea679f3e798d6faf6b8e1cb324befe975002c9f0ef6d6b5dbb6e73e1cf12efaf6e9682002cc73e78cb5d3a74d50200513cbca10842210884408200000000051455295554a5a55efdf84ba71caef7d35ca749992937ae58935adf5d787bea2a7076d4ce318ccbadf4e8c72e798d5efbd694124cf2e1175bebbd4c72e79ceb7d3a6f54b0002679e31177d37aaa200514e5e5ca10844211108104000000000a28a552aa954aabbf56f30922400128812daaa45f3e7bd99ce33175adee6718c46b7bd5a02499ce72badef566318ccbae9bd6b452001338c662eb7ad5b40014aa9e7f3c210844222082100000000014528aa5552aaaaf6f4026738cc9016004122dbad6e8b895339cc8bad6b5263388bbd5b404924ccb75ad69338c4975adeb5694096126739916eeeada0501554bcfc79421108442210200000000028a2954aaa552d75deed2db1220410000a2410919924b6ead9333316e954089125b6eaa673992dd6b56da000933330ad5d55a0a0a2a931cf84882211088408400000000051452a9554aa5aedcb5ad5a02a800040814410002c005000000116505000080500000426662cc421108844208200000000028a2954aaa552d76e5def3bd02965a9041000962ca40000280000042a59600000002500ab6cab739ba8926b3874e326221084421082100000000014294aa55529557b72dfa73e4f6f6e7c739474ce400152ca00001428a294a28514006700001ba012a0008066a45d75789ebe1cb59c422108842208200000000028a2954aaa552af6e5bf43c9ebef8e39c23a620000000031a14050b2eca28514281ce6c0005b73600040020cd496efae3c77d7e6e766221084421102100000000014514aa5552a957b71e9e8be3f577cf2c621d310000000037801428a5a2942850a0e3da596280131ad40012c00219a85e9d39f8f7eaf372d4e642110844208200000000028a294aaaa52aaf6e3d3d1af1fa7d19e38cc8e98800000001d260050a2baf3a5141450b2925001420b00080010cd42efaf3f176f479b96a7321084421104100000000014514aa552a9557af2dfa37e3f4f7cf3e7991d31000000001d3540054a981540528a50cf97d3500551e7cfa8082c0004b19a85ebbe5e3eddbcfcf59c1084421108208000000000a28a52aaa94aaba4df4cebb263398de600850252282050142a0a55a21168b5422738402a8d7421115520ab003345df4cf0e7bc625c44108842210410000000001452caa5552a954b42dbaa567554aa5a267320d5d5a0000126330b75ab4899cc82ddea84ce6206aeaa8291124920bad6a92211cf549339921241088422108408000000000a28a52a9554aa552aaa96adb6db6ead19f2f8300f77ab56daaaaa524ce39f0f1f207afd5d35498e5e5f301ebf575d6931c3c1cd0baf5f6ebbd5d55233339e7c3c7cca5f5fa7aeac93324cc892448441108422108410400000000051451554aa55529554aaaaab6adb6da9e5f0601eff005eb56aa8a289263cff003f883dbebe9a5273f3fcfc83afbfbee931e1f101e8f5f5ddaa0899cf3f2f940e9ecedaa49244922244421084211084208200000000028a294a5552aa94a5552aaaaadb6aae7cde1c83ddeaddd5500252671c3c3c81ebf66f4a4cf2f1f9683d7eae96ace1f37207abbf4d5011339e3e4807a3d3d342248912242210842108842104100000000014514a52aa94aa552a954aaaaab6accf9bc701edf56eda58a82049cf8f8b013d5ebe96d24c79fc501af5f6ddb58f179682fa3b6ad04499e7e7c81af576d6844891112220884108842108208000000000a28552954aa55294aaa52a9556ac99f37940f6fa756a8042098c71f2409e8f574d5a499e3e5e34275f574b6d9cbc38a22f6ebad012639f19413d1e8dea8889111121084210842108810400000000050a2954aa52a954a55294a552aa4c79bce0becf4e95408209318e5e42c3b7aba6ad24ce387956077efbb6a79bcd00b7a6b56a4ce3190a4dfaba6ad1111111110821084220844082000000000285294552a954a52a94a5294a1338f3f9f417d7e9d1402108ce71c7cba06fd5d75692673cbcb007a7aead31e5e400aa240027a7beed084444442108410842110410400000000050a294aa552954a52a8a528a24931e6e1d01eaf4ec00210cccf3e3e5ea07afaead2499c79f86c137e8e96939f9600000031dfd3bd50421108842104210884210408000000000a145294aaa5294a55294a14249338f371ec0f47a776152c04466671e7f377063d9dada44ce39793a5063bf7d55939708000004e5dfd3d3568208422108410442108420810000000001428552954a55294a529450124ce79f979fa65973d7d7ba0010926738f3f9bd2a8e5edebaa119cf3f372ef61739f574d0671c31a000059cf97a3d1d75a5040422104208421084210408000000000a145294a552a94a514a50a2332671cbcd3d2197bba5000892498c79f87a8270f6f6d28899e7c7c7e8e80e5d7bee8933cb8dd509403971d77edd75a528082108420821088420820400000000050a294552a94a5294a5140266673cf9707509af6f4b40024926718e1c7b031eceba509338e5e5e7e8a0be8dda44ce79729bdd0131cb9ebb75e9bd6ad280084208410821108410408000000000a145154a52a94a2a8a5140924ce31cf8e31935d3d3e8eb682ca8489338e7cb86646ba77efbd55224c72e5c712ade9dbaeed1124c73e78948ce73ae9d3a6f7abaaa5281022082084210842089604000000000505154a2a94a5294a514508926739c67398bad74e9bd528024899c631885d6b7d3554126718ce4ad6b5ab68112666732485bad6b56db4a50a408820421042210420808000000000a0a294a52954a514a51401249993320b75bd5aaa02244ccc4c8b75756942332642adb4a104892442adb6aa8aa0021041042104420881010000000001414528aa52954528a52804331249056adb6d28109249329556d55044480aa28022244154aa2a8a0084104108110842102020000000002828a5154a5294a294514104912205ab6da2811224882954a04420a5000422005145528021040841042210420404000000000505145294a5294a29450a20488882ad5b4504122200a5004202800084102851545008208208410842108080800000000050a28a5294a528a514a00084841555542841110028510400a100408002855140208204208410842082010000000001414514a528aa29451450008440a5550a0810800a00408a0b0808080142a8500820820420842104104040000000001428528a5294a2945145000410529414100800058020140840800029428020420410820842084080800000000028594a294a514a5145145000205051400804014008002a0420200514140081081041042108208101000000000050514528aa14a5145142800005028008000000201420410002814002041041041042108104020000000000a0a285294a294a145142800014140004000000000101000014000808410408210441040804000000000140528a294a294a285140a00140140002000000000040041628000404104082084108208100800000000028285145154528a285140a05000a000080000000000400000000808410208108420810960100000000002828514a294528a2850a0a00a00280004000000000012a000000804104081082108104080400000000005050a28a514528a2850a0a02800b1400020000000000020000020104102082082104084b0080000000000a0a1428a514a50a142850500a000a004a4b2a5800000000010000100210408104208210202010000000000141414514514a50a14282850050014949410b2cb00580000000258000402041020820820820408020000000000281428514528a28a0a14282802800150585800000000000960004b010108082041082081010040000000000502828a28a28a50a0a14280a0140000000000000000080008020420408204104102020100000000000505050a28a28a28a0a14140a00a0000000000000000100040101081020410420408080200000000000a050a1428a28a28505050a028050000000000000004a40020040420408104104102010040000000000140a0a1428a28a28505050500a0028000000000000080010020408202081041040804008000000000028141414285285142828282805000a4a000000000008004b00201041010208104101008020000000000028140a1428a1450a1428140a00a0000a96280000012ca80010010080840810204104040200400000000000502814142851450a0a0a0a050028000002cb0b2c522c0000100080408202040820810100400800000000000a028142828514505050a0501400500000000000000800802020810204081020201001000000000001405028282850a28594282814050002800000000008000401020408081020810080400400000000000140502828285141414142816500a0000a0000001000012c010082040404082040200800800000000000280a050281450a140a0a0501401400000000000000801004082020204081008020020000000000005014050282850a0a05050500a0028000000000004001002041008101020402004004000000000000a01405014142828a050281400a000a00000000200010020104040408081008010010000000000000a0140501414285028140a05002ca0001614004b0000010020082010201020402004002000000000000140280a01414142828140a01400b2800000000000200200810100808101008010004000000000000280280a0140a14280a0501402800a00000000008002004080804040204020020010000000000000280500a0140a1414050280500a0002ca940004a8000020080402020201010080080020000000000000500a00a00a0a0a0a0280a014005000000000000800802020080808080200200080000000000000500a00a00a05050501402805000a00000000040008020100401020201000800100000000000000a00a00a00a050a0280500a0050000b28000258000100101002010100802001000400000000000001400a00a00a0a0500a014028016500001658000002001008010080202008004000800000000000001401400a005050280a005005000500000000100020080100202008040010002000000000000002801401400a0281402805002800149650000952c00008040080100802008002000400000007fffc4002c10000103040104020301010101000300000102031100040512130614151610200717703040605080c0e0ffda0008010100010201ff00f800b8fbc7da3fe28ff8a3fadc47de3e63e22a3ffc028888a88fb4547fc91f1151f58fe791f5888888888888a8a888a8888f88a88f88fa445447c47de3fd2222a223e23f9d47f845447cc47c4544545447c44444447c444544547d62a2a3fca222a222a222a3f9947cc44445444444454454445454444444444444444444444444445445444544445445444444454444444447c45447f3088f888a888888888a888f88888888888888888888888888888888888888a88a88888a8888888888888888888888a8fe571111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111fca622a222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222a2223f9344444446b1111111111111111111111111111ac6b1111111111111111111111111111111111111111111111111111111111111111fc822200000022235d635d75d75d75d75d7588888888888888d75d75d75d75d75d75888d75d6222222222222222222222222235d75d75d75d75d75d75d75d622222222223f8f401000006ba84ebaebaebaebaebaebaebaebaeb1111111111aebaebaebaebaebaebaebaebaebaebaebaeb1ac4444444444444444446baebaebaebaebae9aeba6bae9aea530444444447f1b88800000242424275d74d34d34d34d34d34d35d75d75d758888d635d75d75d74d74d34d34d34d34d74d35d75d75d75d6222222a2222222235d75d75d34d34d34d34d34d0a34d0a0a0a4a4a4a75222208fe3800000012121210101011c7a71f1f1e9a71e9a69a69a69aebaebaebaeba8484ebae9a69a69a71f1f1f1e9a69c7c7a69a6851a69aebaeba94c444444444446ba848484e811a71f1f1f1f1f1f1f1f1f1f1f196ca0a0a0a4a4a4a4820882088fe2e280000002425284a0361b0d06835c5c5c5c5c5c7c7c7c7c7c7c7c7c7a69a69aebaebaea1210101be30df1717171717171717171717171717171f196cb7a1469a949494eb1111111013a848484040406c361be2e2e2e2e1e2e1e1e2e22d168b45b2d96ca0a0a4a4a482083441a3fc4c7d050000094a529425b4b49692c8643018e1e0e1e1e1e2e2e2e2e2e2e2e2e3e32d96ca34d35d750908084b61a0c86433c018e1e0e1e1e1e1e1e1e1e1e1e12c964b45a2d96cb650505252531111111a848484840406c361a0d0643218e0e0e0edfb7e0e02c160b0a64b2a694d29a536a429252524104107f8b0a140000242528421b4368650c26dd36c2dbb6edbb6edbb7edfb7e0e0e0e0e0e12c964b25a2d168b65b28d35084a12da1a4329b716c2dbb6edbb6edbb7edfb7edfb7edfb7edfb7e036e6dcdba98532a68b45b2828282929d7588d75090909084a12da5a4b29612c26dc5b0b516bda769da76a6d4da9b636cab736ea614c299534a694da90a4a9241041041068fc9fe1e2850a000484a509421b6db69ab76ad11649b2165d9765d9f67d9f67d9f67d9f666ccda1b436a6d8dba98532592d16ca34d02529421b69a6116a9b3167d9767d9f69da769da769da769da769da7686d0daaad556cab7530a614d29b536a41494eb1aeba848484a5096d2da1a4328b745b22d51669b14d80b0161d8f63d89b1362ab25592acd76abb65dbad85b2e32b696da90a4a9252410410411468ff0f14285000242420369690c356b6d6f60d63538d18ef1de3fc778ef1de3bc6f8df1be37c69c6ab1aac72b1ebb15d9aed576ea654d29b28d425096d0c376ec31668b0161d8761d8761e3fc7f8ff1fe3fc7f8ff001fe3ce38e3958f5582ec9766bb572d9c616d2db52148524a758d4275094a128436869b61ab66ad1ab26ac1bc7b78d4625385184f07e0ce0d5845e1d78d5e3d762e593966e5ab96ce30e32e34e36b6d685214950208208347e4fc1fe123e050a14285242420361a4b28b66ec58e9fc68c678fec3b0ec3b0ec3b0ec3b0ec3b0f1fe3fc71c62b0ce74fbfd3cfe25ec7bd64edab8c2da536501284b48b7459b587b3161d9767d9f67d9f67d9765d9763d8f63d8f63d81c72b12e60dec0dc625ec7bd66f5abac38d2db5214929d75d42425284a10db6d356ecda3164c585b6298c33760947f814aecddc53f8c76c5eb37ad1eb576ddd65d69c69c6d68525495020820820d1a3468ff000a142850a1429349a406c34184da231e8c08ff008d6ddce1af70b7360fda3ac2db28d5096936c9b24e1c7fc8a4bf8bbdc1dcd85c5abec3adad0a41494eba84a528421b6da658b7b5b5b1b2c4dbe300ff00776ceeb18fd93f66fdabd6eeb2eb4e36e21695254920820d1a3468ff000c142850a1429212101b0c8b74da271e30bff3117d87bdc75cdabaca9bd1296936c2cc627fe8bcc6647137768fb2e36b41494eba84a508434d30c5b5ad8e3acb1007fc7716377617369716afdbbccbad38db885a5495254082083468fc1fe142850a142852426914d8645b55a8c7d61bfe8bcb1c8e36ead9d68a529685bd59d627fe9799cc61ef2d5e6968520a75d421086db618b5b5c662ad6cff00e671bbdc7dd5a5d5b5c30f32eb6e21c42d2a4a81041068d1a3468ff09142850a149a4d22914dd3356d569561586ffa6f2d3256172c2db096c31569588ffa9d6b3789bbb775b5a0a34084a1b6d866d6db138a618ffa08bfb0bbb5bab6b861e69d6dc43895a5414083468d1f83fc207c0a142850a4d269148a6a99ab6ab4ab1ac3fd94a391f2be5bcb796f2de5865137e97bfc729657f6af35aa033569588fbaafce53cb798f31e67cd799f329caa2f41ff0bcb5cad8dc32b6d48d0210db2d5adbe271ac31fe069776bca2b2c72de59396465517a15fe04642c6eedaeadee1979b750e2569585050503468d1a347f838a142850a1429349a45229ba66adead2ac6b0ff006b8aba7d7766f3bdef7beef85f22fdbc8dbe5edf28957df376174ca9080d0b5ac3fdef5d72ed5786f3bcef3bcef05ea6f5bbfb7cadae6da7befd41637ac3ada91a25b6dbb7631d656369f752ae329719472fd57c6f7bdef45f22f9bbf63236f9342feeb45fda5ddbdd3170d3edba8712b0a0a0aa3468d1a347f840a142850a149a4d22914d53356d569563588fb5cd5f29d714f178bfcfce1f4dc22e5aba62f2cb24cbdf6bd63216ee2121a16b587fbe494f2d4e974bdcdcdcdcc1f4beddc33756591b3bcfb3cde56d5f6d48d12db2d59db616c3ef73757b957af5cbb55d2ae4dc771dc0b84dca2e9abb62f2d3216f77f7bb62f2def18b965f6de43a9702c282a8d1a3468d1a3fc1c50a142850a4d269148a6a99ab7ab4ab1ac47dae6b214f296a52cb9c9c81c0e25c6dc65eb6b8c7de36bfb66ed9f400d8b6ac3fdf294f95a94a2b2bdf93902d2e25c6dd61fc7de5bbdf6ea1b6b96d48d10ddb3188b14a7ed79797b7ef5cadf5bca74ba5de5e5e50ea5e43ed5c5bdd5a5e5a5dfdf236d78c5db372dbe8792e256154aa3468d1a3468ff051f02850a14285269348a6e9aa66adead2ac6b11f6b9ac953e56a528af7dc2c292b429b5b0e5a3d8cb8fb6699ba443756f586fbe52ae29654a2a2adb7dc2d2a4a90a65768ee1ee7ed9b6aedb5a3465ab2b7c65b7dae6e3217afbee3ab714e29c2e15efbee169712e21d65fb6b9b3bab5b8fb3eddeb37acdd377087d0ea5c0b0a068d1a3468d1fe0a2850a142852690c8b74b6908536fb77ace52db3b65d4bd3f960efd2e2b275705c2a255b6c141495214da9a55ab98f750afadfa2f50a0dd5bd61bef95ab9a70aca893b6db052549520b46d958d710afadfa6f5b5a022ddac65a81f5272d7d72f3ae2d6b5a96565657befb0585a56871b7187ad2e2c2e90bfb6459bd6af1bb943e9792e058552a95468d1a3468d1fe02026dd38f4e213814f4e63fa11eb15171be34a5b6dab118f365c696bb2e85b97baf07e4066f03fcd737395bb7ef5774ab82f737307c5c26e53768be6b216f90b1c958ddf373737373b8ee49e73228cadb64b0971cdcdcdcdcdcf96b9babc72ed574ab9371cfcfce2e05d26f117ede4adf296196b1bfe7e6e5e6e77dfc85fb993464ecefb10ae6e5e5e5e5e6c9e42f6fdfc839905dfaaf4dd9b93705fe7e6e6e71702e53768bd6b216f93b3cbe332c2e79b9b9b9fb9bb7ef5fbc76e4be875872d1760ac72b1aac61c6ab1cab155aa9b347ff0078c5b3582460d38e4a53729bd4dfa2fd179dce3f32f747a3f1fe5d9e3614cbe1e74a92cb6c6395d2e3f1a5a7e34c7e3984e3ee3b8bd76f92ac19e97574caf04e58a80a0000006c3156158e752b99995ab328ba4253675855054cccdc2f2e6e8ae882235d75d758012194e3d18a5056d324de3b94a70363189c72d2a9992a75dcadc5e3afa95468888d758d635d600149a6d56aee32e2dae12bdb6249ba5e41574a78ae94082929d75d34d34e355baf1abc1bbd3b71873ffb562dd3d36bb672fd773b0a486b1e315da21086830962d14ce5b2bd117d658eac33b7390b9b66ed117aacd26f7a22ebbc43f4a50b9bd7de0a4b0de32ef18abc2abd79abbc4848484a12c26c53665b5854cecf2b262edb08b34e2e9066666e5595ab94ad253aebaebaebaea1096edd9c7b3674850324a957ee6403886d18f4d896d5332a55cbb905dd53a14929d75d75d75d74d75d75090114c1b05d9bcdb81724a9574bbeab90e2569524a7428d34e3e3e3e3e3e3e3e3e3e3bdc46430dffb3c5e4ba9156f8876cee166e7bc4e4865939366f98282ed3f6767846b38cfe48ea7c9dbd59f5065fa96c7f215c74f595b641c393c37e431f9a3f759fcd29fcc2dfe52575d9bcb95ab13864e33abeefab43e1cc46333b800d0690d30d59a2dcb641992a7577c6e51c568dd852153525572ac88b86dd6dcba39017a2e3977e4e7ef0e45bca5b65f1d98b7b20d7c12e2af557616db6d5937694da81925c55c2af6ae12e36a6cb65be3e3e3e3e3e3e3e3e3e3e3d021286936756aa656956c4acdcaaec3edb8dadb2d16b8b8b8b878b8b8b8b8b8b8b8b8b8b894ce53a5ae2dbff5f658fb0c3f552fa232cee43ab326edc8b945eb1964669391b3630d84c6605f6baa329935a859d5d1b5ac7b7d5d4cabf1d65fac6ef2b77dc26f9acbb79f4e71bbdc65961ba76d70f9abace651459ac7b885602c596ae19c8f4daac50c32cb08603549f834a2e9bba75b0cdb356a1b23e36ee5cbec9db2ed2f18ba64b5c5c5c5c5c5c5c41a0ca19e9db1014162945d55d17d2a69a6ad5b603743e154e97cdca5e6d6d29a2d16b8b8b8b8b8b8b8b8b8f8f8b8f8d2d34ddba6de99a4d024acdc55c25d6dc696d168b3c3c5c3c5c3c3c3c5c5c5c5c5c5c5c45ae2bdc665fa58ff00eb129c3f47db61ef31571678c29fc919cba55b76fc019436c26c6e719d476ff91ef3f2ae63adee6eb8d91c4cad8cee5f34ab0e94eacea2eb9bc06dfb6edd2ca1bb638cc8633ac0fe4fcefe45b9c8a5b671d6766c270aeb4149bd2fa50cb6d34db49401f06965d3714b6d2db2db01143e0d1a7aae50e30bb6730eae9f3d39eb5eb5eb5eb23a653d308e986fa619e9bc6e385c6f46965d2f8711c4db4c36d04527e154ed3c979b75a5b2a64b259e1e1e1e2e1e1e2e2e2e2e2e20ca596da65b612d527e0d2e9d0f21c6d6d29a2d16b8b8b8b8b8b8b8b8b8b8b8b8b8b88b5c5c45ae3cc74964713ffa9c274e62fa49bb66ed6e6dddb55da2b1c70de07d7874ca7a5874afaafaa8e971d37ebcae9e3d329e9663a4474b1e98574cbd80f088c5af127a7cf4efae7ae7ae1e9c3d3de03c20c50b04d9a6d5168ddab6c635768f3a6f5cd10da1b6d0da5343e0d2e9ca7125b4a1b4b41149f834aa7038dada53259e0e0e1e1e1e10c8652ca5a43684240f82574ed38168e3436d21b09a1f0aa58752ea1c6d6d29a2d16b8b8b8b8b8b8b8b8b8b8b8b88349690d36db696e9343e154e0712b42db5365a2df1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f196cb773679ce8671bffd2b0cf47fe3c671e71fd9b8cac2aa1086eddab16f168c38c2784f09e17c3f87f0c70be11388f19e38e38e31788383185f0de17c20c18c08e9f380561578b5d938cb94a5d21b6d845adb5ada1b8bc7283696d08425007c9a5d394b1a84a0361143e4d2c2d2a416cb7c7c7c7c7c7c61b0d8425094a40f8344aa974b052128436940007c1a50702d2b429b5365be3e3e3e3e3e3d38f4e3e3e3e30da5b43684212903e554a0b0b4a90a414141469a69a69a69a69a69a69a6851a141414699ae97ca613ff49851d3fd7167f906d7388a362e621dc13b825e1bc60b44a12b4dcf786e7b9ee3b8ee7bbeefbcef7bcef0de1bd37a6f7bdef7be37fdff0079dc6fa76a3189c2a3068c4a6c8308652935c61a0d0692da50903e4d28290a6f883496d29143e4d281496cb7c5c5c5c5c5c5c5c5c61b080903e0d1a505254df10692d210948a1f06954a4a9b534a60b06dcdb76ddb76ddb76ddb76ddb76ddb76ddb0b716e9612d25b0802208295214d2992c1b736e6dfb7edf83838387878b88b7a69a1469c7c5db768e26e3377dd716d9ccb587fe8faa1285b3716eeb168cda354ddd8caa736339ec3ece3aa53d52ff005dd9f587b2fb27b1fb0fb079ef39e6fcdf9af35e67ccf99f33e67cd79bf3dec3ec9ecdecdecbec87a8bd83cf79e1d43ecbecfed3ed7ed83abbdbfdbfdc3dc3dc3dc3dc3dbfdbbdb7db7db3db7dbbdbfdc3dc3dc7dc7dc7dc7dc3dc3dc3dbfdc3dbfdc3dbfdbfdbfdc3dc3dc3dc3dc3dc3dc3dc3dbfdbfdbbdb7db7db7dbbdbfdc7dcbdcfdcbdcfdcfdcfdcfdcfdc7dc3dbfdbbdbbdbbdb7db7db7db3db3db3db3dafdafdafdafdafdb7db7dbbdbbdbbdb7db7dafdafdafdabda7d9fd9bd97d93d93d8fd8bd8bd87d83cf9cff00b7b19c5664e6fccf9237cbbb53ce17187ec9e6dfb8b85da575cb7ffa3eb0ab77b03d4b67d20f7e1a7ff12dcf4baafc759a3f22a3f2823f2ab7f961afcb4d7e58c875174df5d8fca1fb3c7e4efd9ffb3c7e4efd9a3f26fecdfd99fb2ff65fecafd93fb247e48fd8ff00b1ff0063fec6fd8bfb17f627ec4fd89fb0ff00618fc85fb0bf617ec1fd85fb0bf60fec1fd83fb07f60fec0fd81fb03dffdff00dffdfbdfbdfbdf7df475d7bb7b97b77b67b4fb4fb47b3fb3fb37b20ea4f64f631d45ec5ec3ec3ec1ec07a83d83cff9ff003fe7867bcef9cf3de77ce9cef9df38739e73ce79cf39e70e6bce79b19af37e73cdf9bf37e6fcdf9cf39e6fcef9df3be7bcf79ef3fe7fcff9ff003fec1ec1ec1ec3ec3ec3ec5ec47a93d93d9fda15d51ed3ed47aa4f557b5ab37d3fd6371f916e3f293df96defcb2bfc9e7afd1d40de39afc70cfe1d4fe27cedc65f2f675d7bff00a4eafa4d5ad749dce21e2bc8a726c6458ba69d0aa2676b7378bdf937e4e4e4e4e4e5e5e52ef272f2f2f2f2f2f272f2f2f2f2f2f2f2f2f2f27272f272727272727272f272728743a1d0f0743c1e0f8b8ee45d26ec5e0bd17c9be4df8c98c8f91191191191f21dfa6f937fe47bf4df8bf17a8bdef3bef202f7bceec5ee53ad9cfc9a3f277ecefd9dfb3bf66fecdfd987f267eccfd9bfb347e4c3f92ff649fc928fc8d8eeaf4dcf2f2f3729779039cdcc5fe6e62ff3f3f71dd26ed3722e0dcf31bae72f97cdc73f3f382d2ee14f127565bb1630d6f8e45baae5ceb0bcca972acabafbff0049d5f49ab5ae9c5609537c3235904de0782e8d1f8b7abdff00e1dadb8c578cf19e33c678cf19e33c678bf17e2fc578a189f13e23c3bf8ab2bc1f02850a0450323e050a9f8494a926652a068505054f586771b8a4b753b6db6db6db6db4ccd4b192baea9b67cd1a93f257228d4126a66664d027e828fc9a14dd5c53bf02adeb1e9c4a6c0335787abd591a5d59575f7fe93abe9356b5d3a700aabe1911921774f51a3f36f57bff00c2b2b4bb4ff90f81f02850a14d2d9c70a15228114281140cd0a1535b248a4994d248a4d0a907a829d6ff00e2be67a4973448a34a346a64fc1a955452aa369a9ada9464d0a6cbc5d069156e31a3109b10cd5e9eaf56469cab2aebeffd2758526adeb027a7948abe1911921781e0e03f36f57dfe93ff002e0eeb28cff88a14287c0f8142921b7050a143e054c82285020d4d0a4fc6d408321553394e9f751f68ff00203c4e2eca8915311254451f8249f91f6249a3f229ba7a9df848b74e2d3881641babf3d5aabfa72acabafbff00499b71356e704ae9b5a2af139019217697a9ca347e2daafbec4ff946baebae9a69aeb1111f4b7c936af988d758d75d34e30d86833c2f15a80022852687c8a15ac023e01149f8149a14050a1f181bdcaf4adcfe2e1f8d3f59feb4fd69fad7f5b7eb5fd6bfadbf5b7eb5fd6dfadbf5b7eb64fe34c2fe2cea5b95ae4d0f8346a089a34687cc52a8fc4c1a2a347e76148a7c394aa02d2b188c4a6c824644f562ef8b958e6fad2e7ff478acb3f609ab6c8e0ff22e33f2b33d47736791c05fe02e30cf6317626d3b6605e35c1c1c1c1c1c1c1dbf6fdbf6ddbf6ddbf6c2d0598b118ef19e2fc59c61b03626ccda76a6d7b6edbb7edf83838383838383878787878788341a0ca594db8b516bda76bdb168a6a676e40ef28782d26851333c9cddc775dd8bc17bddf7c2f45e59671afc87fb1bf637ec5fd8bfb17f637ec61f923f64fec93f92bf667ecc3f933f669fc9d77d7eacb8ca0ca796f26325e4bc89c877fdef7bde777dd7746ebbcef0de9bcefbbeef8df0beef7bdef7bceec0ee16e14a6dd8c563ba5b17d27638737d7ff91739f96b29d4ab7030d5da95ff00a465f192eef9452299bf6ba953d65ee5edded7ed43aa9dbfc7e7bd9fd9bd907518ea019e19b19919619217e2ed2fa5490865168dd8a6c058763d8aac5562ab355b164b45b2929f89db7e4e5e5e5e5e5e4e40bda404a10c376a9b3165d9766ab5530a6940ab90bdcfcc1d4ad1484a5916fdaf67d9aad156eb6d44bbcdcfce1e4b89a4b42d85a767d9f686d4b0a6d40a8acb85d2f7373f373737307770a14004a594daa6c463bc778ef1cab05da2da595dc2ef9793566559d3d427a94f53fb57b67b6fb81bfb2ea43d5a7ab8759fbe2faeddeaf7f30e3a4974dd1c8b990ffd7050703dce2e3b9e64dc0bb1782f05e8bf1904e45392464d1944651bcab7956b2ace52db258fbcc78d35d75d5e4deddbb935654e5ce60e63ccf99f35e6bccf9af33e67cd79a19b19b19bf363349cca32e8cab793b7beb15ebac446b7f78f65579939af37e6c66d39a6f32ce5b1d918888885377eebf91732eacd79b19a4669acc5b6531cfeb111aeb76ddcdcbb915e557985664e6ce70e73ce79cf39e7067066c66c66d39a4e65bcb5b643169d75d75d75bf72ff0029779a7f34f665dcc39965e51593564559037e6f8de9bc373dd1ba373dc178ac9a8ffde82082082929525485214da9a532bb65e2d78bfb5c564dc7de5bca7cdc1b8ee3b8ee3b9ee7b9ee7b9ee7b9eebbaee85d0b94dcb772ddcb37168fe197f6cc3b7170e5caae4dcf722e5374ddd3177637b8bbbfb672d6f69e756f17c5c26e5abab5bcc26427ea465ed6e8bce38f2de53e5e2ff3f3f3f387f9c3e1f4bedbcc3986b7619fb751e4321797372ebee3ab716b5294a2a249249267f828a142850a14929a4941416cb45936c716713f6b9acaaee16e38b714e174ba5de5e5e5e5e5e5e5e5e5e5e50e8752ea1d6de65db373007ed9b55cb8e38a70b9c81d0ea1d65eb6b8c0e481faad19db1ba4b854bdd2e21d61fc75de22efed776d95b2b943d4e1528a8ab6df6db70a0a0a4166b1f6b82c5fdaf2e3337d7970f3ae38e2d6a529454493468d1fe122850a1408a494949416cb45936c714711f6baacb2ee16e2d6b52cacb857befbf26fbf26fbefb8585a5685b4b61764ae9dfb0aceaae96e294b2bdf70b42db7187ac6eb057df6ea0b1c830fa574485256d396971d3b949fb64f1d93b0b969d4ae9449999990452034dd85974ee027ea2baa32991bbb879c716b5a94a512492493f068ff0009142850a0525252505b2d164da9c51c3fdaeeb2cab85ad4b5a965657bedb6fb6db6db6db0505052548534a615607a6fec2b3caba538a528ab6d8292a42d972d9fc06492bfb752632e9b742ab60a42d9771f79d3f93fbe4b1598c2dcdbbadad2a1f40129434cdbe330d84e9b9fb64ef73391bab875c716b5294a24924924ff000b142850a14292525250505b2c9b538b3853f5bbacbaae14e296a528a8ab6db6db6db6db69db60a4a92a429a5306c0f4d7d9359eaba2e2944ab6d8292a42db5b0ed8dcf4e643ed9cb1c8db3e85d1ad92a6dcb77f0b94b2bbfbbece5ba3321827ac976c6df83805ba6d5ab1b3c2e23a26cb1f3f65b9d499bbebb79d716b5a94a52892492689347f860a142850a4949496cb65936a716ac19fade565d570a714b52945455b6db6db6d333320820a4a14d29838f3d33f64d67eaecba54499990a4a90b69cb67b0391439f507aab1578d3a15521485b6edadcf4f671a77ef2eb577d2773f8fdee8157440e886ba0edbf1fda7475bda4ff008752e7b257efbcb716b5294a24924924ff000f142850a140a4a4a0b65936c718ac07daf2b306e14e15a94a249999999999999041494168b071cae98fb26ba82af0ba54499990a4a90b6d6cbb6173d3391fb652cb2b697085d13b05a56d3d6779d3dd42db9fe333b6db4ff9750f50653257170e38b5ad6a52944924924ff10142850a14929282d964db2b167a7fed79599ab8538a5a94492666666666666641494168b0ac69e98fb22ba86af4ba544999904292a42db72d9ee9fc834efd41eaec4df32f05190a4ad2e34fd9df607a96d6effe65ab3dd4792c9dcdcb8e2d6a5a945449249fe282850a05252505b532ab65624f4f7daeeb375725c528a8924cccccccccccc820a4a14da9956315d2d47ea8aea3abe2ea944999990a4a92b6d6cbb8dbae99c89fb5ddb66ec2ed0ba2760b0b4b8d3f6f7b88ea1c5f5211ff001017992ccf51dfe4ae2e5d756b5294a528924927f8a0a14281052505b534bb65e215d3a7eb7559e374a714a2a24933333333333320829282da995e317d26a3f5457522ef96e294a2666664292a42db72d1fc0e42ddff00a83d638bc8b6f528edb0585a5c43ccddd9e570dd63639ed7fd826e2f727d5590ce5de45fb971d5b8a5a9454544924ff141f22810414a90a6d76ee62ee3a6325de777ddf79dedfe57377372b5a9449266666a6666666641494a90a6578e7ba4723dff0079de779de9ca750de5e3ab515133333208525685b0ee3af3a6737df77bdef7bdf1c8de64f394f95199d8282c38975170cdedae6317d6165d64ce502748fa46ba397371d457fd597b9fbaca3d7ae5c2dd5b8a5a9454492493fc645020a4a5485b2ed9ddda665bea0f60f603d40e7505d66ef2f5e714a249266666a7e2666664105250a6d76d7169946b3c9cef9c39c5e7ae33979907dd5289999999904292b4396f7369956f3a33be70e7159c73377197babc75c2a999db60b0b0e25e45c377ace52df3d6bd556fd6ed75c23ad07587b71eb05f593dd6571d5571d42fe65ec9bb7ae5cade53aa714b528a8924926a7f8c8208295254871b7d1762fbbfef8df2af5776b794b52892666667e667e66410414a92b43a8b94dd8bdef8df2af5776b7d6b2a266666666428292b43a8b94de0bdef8deaaf1776bb95bca5933333b6db05058703a97d3729bb4dfa3249ca0cb797f2c72aac9af22bbe5ddaae14f29d2e159515124924ff001d0410410a4ad2e0743bcbcbca5d2e15951513333333333353535320821414958703bcbcdca5d2e1595154ccccccccc85050587039cbcbca5d2e1595154ccccccccedb056fc81c0ef373f3f71dc771ce5e2e974b85657b151513324cff001e041042828282f7df7df7d8a8aa66666a67eb3f4990410a0a0adf7df7d8a8a89999999999999d8282c2f7df7d8a8a8aa666666666769db6db7df7e4e4e4e4e4e4df72bdb6da6649999a9fe3b32082085056db6db6db4ccccccffb4c83215b6db6db6db4ccccccccccccccedb6db6db6db4ccccccccccccccccedb6db6db6db6db6d333333333fc8666410419da76da6666666a7fca7e26a666676da769999999999999999999db6db6db699999999999999999999999999999999999a9fe493333333333333ff002ccccccccccccd4ccfc4cccccccccccccccccccccccccccccccccccccccccccccfc4ff002699999999999999f89ff79a999999999999a99f999999999999999999999999999999999999999999a99a9a9fe533333333333ff3cd4cccccccd4fd66a7e26a6666666666a66a6a6a7e93333335333f3353fcae666a6666a7fe999999a9f89fbcd4fc4fc4cccccd4d4fd26666a6666a66666a7f9acffdd3533f33f59a999ff099ff0049ff0019feb333fe33fe7353ff003cff00659a9ff49fff007adbffc4006010000102030207080b0b0709070305010001000203041121510506123141619122525354718193a110132023303242555692b114244043466272a2c1d1d2334560708294a3154465667483a4b2f0072534b3c2e1f1506373358095d0e0f2ffda0008010100033f01ff00f90a6d5d8d4b5775a96af876aec6affd0f52d4b576352d4b52d4b576352d5d9d5faacaaae85a96a5a96a5a96a5a96a5a96a5a96a5a96a5a91b96a47c357b1a96a5a96a5a96a5abb1a96a5a96a5a96a5a96a5abb1abe0fabb1a96a5a96a5a96a5a96a5a96a5a96a5a96a5a96a5abf55955555a588dcb52d4b52d48dcb52372372372372372372372372372372372d48ddd8a782aaae85a96a5a96a5a96a5a96a46e5a91b96a5a91b91b96a46e46e5a96a5abe0b5d1d8d4b52d489d09e733144dea76a5ac2d613b528972883c8288f256a5a96a5a96afd56568a5a3437ba336b4a51498ccc52bbc52bbd52dbd52dbd52dbd52dbd52dbd52bbd52bbc52bbc52bbc52bbc52bbc529bc5267c9528ecd50a19f11c39d45199b5e44f6d6ad446854d0a9a3c0e650a2be91054514a8f214bef54bef54bef54bef54bef54bef54bef54bef54b6f54b6f54b6f54b6f54b6f54b6f54b6f54a9f254b1cd50a19f15db544d032b913db9db444685a96a54f0f5d1d8ae855d09efccdaaa78f40a5d9a2bca98df15a07816bb38054bbfc9a72269f10ed4e6e76ad4b52d5d8d5faa8b5665482fe6f8243882911a1c35a8116d87b93714f859dbcea9a15342a7759966547737c15ae1470a8d6a5a36619253d80b80ca6de116d6c54d0a9e16ba156962ad2c4f8999b6283086eb745068a34506af80418ba324a736da545e16a59ec5abf55199665de9dcdf060e192e1517264505d045bbd4584d42a5553b9ccb32dd737c2204d0240c889d49f0490e6a22aa95b3c2574273c801a99080746cfbd41a28d14177c121c6156d8e45848216afd546659977a7737c221cd3735226829d09c4114a2a56c54ee732dd737c261cc332220a84e824902ac399cb249543e0ab4b13e33800d50a55b468abf4bbe0ec8adc97859368156deb3d8b3d8a9faa5ccb32ef4ee6f84b26e1d0f8e3c528c3738119950954ee332dd737c29919861c415694603cd9b9398aa136781ad2c4e8ce1659a4a872ec10e18b349bfe121c325d682a9ba6dad59ff0054d995a177a7737741ad2e39829719eaa575a94d6a52f2a52f2a52f2a52f2a50e92a55de5a84ff0015e0f8213108c468ddb73eb0b24954ee332dd7377705b61aa9617a95d6a535a94d6a535a93d6a4f5a94d6a50e92a55f9a20e74d778a6bc9e0593704c3778de49d68c27b9a4528a87bbaa7467b400a1cbc310e18e537f8102d36280cf2abc8983c51b51d1409f7a7ef93b5269f18280fd344d75ad35f021c324e62b26a478a732cfd8cffaa3ccb32ef479bbaef1139116b8a37a37a37a37a37a37a37a37a75ea237ca50e258fb0de135c2ad351e0035c5cd1b975a150956f6732dd7377792f28a37a37a37a37a37a37a37a37a70d29ed3639655044dd0bd438c2b0cd757801119dbda3539509ee6d55462380013652086f967c63e01ad194e340a1c3b21ed29cfcee46f5ad6b5ad6b5ad6b5ad381b0a0eb1f6eb4c882ac35f00d88d2c7662b2490b3aa57f54799665de8f3775ef789f44add1f01afb1ad1bd39873a6476e5373e91dd8989773748b42c971543d9ccb75cdddeedde108d29cc2087264cb7e7f7623427433e50590f70215bdcd48b1084cedee16f93e021cb36aef1b4353a2136f32274a37ad7dceb46f5ad6b5ad16d2853238a1b1de00468677c167b16759ff54599665de8f75ef789f44add956f842d22d422343869eef2223a82cce150ab7b3bae6eefbe3967f0944e63810508f0c3c67d3ddd22178cceb5509ee2abb6c468d1a506b435b98583bb64ab3ff73404e88e24944f842b5aa52d42280d71dd5fe02dca198aceb3fea8732ccb32ef47baef113e895bb72b7c25a15770731eef2e135fcca8e2adeceeb9bbbef8ef0d995b90731eef2e5c3aeb15a7b36aa9084183954dd3bd9ddb65e1979cfa027447124fc0694b508ccf9c3bbed90cb74e859d67fd4cd6c19ee515d998ed8a30cecc9e554cef60e5704c19e233d65047c68eb52c3e37eabbee528dcf17eabbee520d36c5faae582d9e347a7ec9580c532a71adfa550b06ce417995996450da54b74286ef15e0f3f73de227d12b76ef0b68542165303afeeb2e55faad547156f6775cdddeedde1ad0a8e0b29a1d78eeb2e5620bad5ba3d9a9596f6841a0019877400a9cc176c79a1b066f80e659ad59245a83da1c34f77693a0dab3acff00a902730aa98778b09e791a54f3b34bc4f54ac26ecd2afeafbd6163fcd8facdfbd6173f1039dc1630cfd0b21c28504fc7447ee7a960ac0d1e6307cf3d91b0bc17e48edc4b6016ef994cff00b4a648ef792d668104369d4a60f8f96796aadb426a0e3414e74c778f33021f2927d814969c230bd47a966f8b3d05fcce1f62637ca6bfe8a073309e40a2bbc584e0390a92c192937eef9a812b52dfcb45633da5626cbbb20e1a9789137905ddb0fd5521eea978320c8d18c77886c1985ba696a314d32394850dc2a0d898a1082fb74282d73aa54b9f2941bd42bd43bd32f4cbd43bd42bd42bd41bcec500693b14bde76297bcec52f5169d8a1c4822898989898a1a86e86f6de0a850de72aa3994ab4da4ec5275ceed8a55d989d8a1b8d41b289898989898a1a841eeb540a9b7a941bcec506fea50af50ef50ef4cbd32f50ef50af2a00d276297bcec52a3ca3b14a0a6e8ec52751ba3b1408d01b924d9a9434c4c4c50d43305e352956bdc093b149573bb6292ae776c528f2284ec50b23b60e64c4d4d4d4c4c50a142c8adaecea154d5ca05e76297bcec502f3b141bcec50af2a1de997a65e9b7a6de9b7a65e997a877a877a8434a8379d8a00a6e8a9714dd1d8a5e277ba9508de989898a1a85ad417c3d350a05b6a826b6a8674a074844e621443a5bb5463a5bb54c7cddaa6ae6ed537bd1b54e707d614ef04768fbd4e0f89729919e0bfd52a2373b1c3941fd3e98983de61976bd0a65d6c4706ea02aa037f28e71e70160e879c43fda77fdd60e8799d006c522df8f8639d48f186291e30deb521c618a44ff003987b54ae43b263c3268680382c65c16eed104f6d940770220cb00735aa7f1b62ba721ca438d19f6b8419a6820fd1899242c2f811f971f06e136c3d39109b1dbf50954dcc28d1e51ff00fbd2d1211ea0b09836618691712e1ed0a71bf959f63f91e3ed0a5be366b63dbf7292237332fafd21f85443f909a70e5fff00c2c315dc4f507faf9ab0b13bb9d7bbe8f6d3fe50b09c6167bb227d181307dab09c71bb83374f9d0b27fcee53b840b8b2466e6327c6c97406fb5cb0948bc3e062dc78b10698932dff00a4158f52793ee5c050a572733c643de39e23bec58e8da448d83dd31186633332cc807543651aa6c4941fe50652769dfc368456ba96a2bbc3dde2b40a971d01419b71ed5392fcf100f6a9b89f92892efe48ecfbd61b3e24bb5e3e6c461fb561e6ff00317f3105619678d211bd5aa9e87f94958cde563916f8c0b79411ed40e6b7bbb42a30055ee68107172a12ad568592d551dcd1855ae569f0a51a845b0c0eeb2611a2abdc55aad5bb0b26181dd64859555527e07428b5c16501dd518567f0f0dde3341e50a51f9e0b3651493b334b7e89fbd0f898c46a7053f02a7b5f6c6decb7a950d0d86efd358f3310429786e8b14e6630171ea53b02240185bde10e632bb517d0b9d939c015cfcaa5e5df4852a496e674c1ca3ea8b14f532444c868ccd600d0a65fe34579fda29c739af61c6c02bc8a7a2fe4e03c8e458447f3777529987f9484e6f284515a9381dc835d4a7e0906ae60bde683eb2870e076bc293ee63236e217b9dce31328e6a1141d6b0ccec36c691c28664b855b0660b9a6db8da3a94ee0f9b8b233f09d066e03b262c27e70510e19b9c04e6b46e59ea37ee538c61c97867d16b47d8b1af08b5d1255d1bb4005d96e706368056cbf99407cb439a3391f09c578abc322963219de96b7755e551a5ac800c1fa25d5da4a9e70a3e66291717bbef597e3bedf9c5644a4c1867396d53f7ca244346924a8ba62b47ed851582a5d517b5d54edf1510c94c035c9ed6eaa85528e80a7ebde045fd9ca584a0bc0999c6b618f19915f9469c8dab9330d428d1f05ce930a13fb5f7c0454e9e6584e45c1b1dcf687788e06ad3c8547758e2d78b9ed07daa4e3fe5a4e0b8ef9adc83d4a1063a2c9870c805ce8477560cf43dd6654a77562ad55a550add0546f75b82aa4ab7c2d55a164b42b3b9dc955255bd8a382b0775b955aab7e0742ad0ac1dd6e4ab4fc125a75a72db931344419d4d489ca232e0e878fd348d8b2f8509b01af8733061453e4beae6d4daa3e33ca4386c83310032ddd41739b5bc3db50b0d49380133deb4b223a83ad3fdcf96190e244f991187a961463c8183c16df43f6153c3c6c1c7983d4c0cf839ff5fee530dcd211072177dca6b8845f59ff00729b39a41fce627dca7dd6094239a2153eeb5d2f4e561fb5ca6ae683fdd8f6958488dc456b3f6e18f60586a60e4ff29e48b98f8aeff205065a308d3f3f1e23868640884ed894580655d0ddee2893116110e6be6a23218a8f9acca2a165f6c3108767ed5210403cf1a3d4faad5171870abb09ba00825cc6b0372b2890dd2e71ce544826bdab2b908465450c8c576b0e6a989b94c99480f93731c2239f16843b27c9b14c4e4174b4e48c4744734b3b6c990ed14ae415371669f352f35165def350e8b022c23ec586601c89ac230633746545a1faeb0d41ff0084850e3f3c377b28b19d9e3e0963b918efb1cb1af00362b25b02c32d8b4cacb8714e6e758d63c7c5f827f622858c9e8ec2d917ee58ce7c4c5e82395b14ac717f8b8125dbfdd452b1e22e6919787c92effb5cb1ce6e13a1462c6c378a39a203459cee5869e37390de847b6ab189de2e1087047ff2b07f902c27367dfd875c61e90df7445fb28b0560b8791efd9eae70c8420b4f3c42132460892939696c192c09717c52e9989539f710e8daf294dc27099250cc58e03b2df35301accda21c3658d1d6aaac460c3edb199589146e9a7434e8513054c1890da4c8443586fde7cd77d9dc5aa94f015552ad5ba0a802b3b9dc15527b005ae3417952acf2ebc96a96ae6772a943e511ca14a1f8d0a5b856ed52fc2b76a96e15bb54a0cf19aa4c7975e40a5c78ac73ba940d309dd4a441dd35e39960b796b44421c6f6951f21af0dab5c2a1456e769ee2c550554956ab55a15077562b4fc169459bbab1549f82870c970ab4e705323d62c8ee22f0673151e56218530c2c78bff004c26a7e2644bb32af7680a4a468f7d26266f3e28422cd40737376960d81612c1f3ecf71cdc58209b5ad71a6ccc9d1706f6d98830262264fc6c163abd4a0be61edfe4b9065a7750e5dac3b5aaa77309b0fe8650fb5441a4ed29cdceccae573bef52ccfca60d8717e9458c3d8e583fcc900f2c799fc6a422583044bb3fbc8e7daf583a3b865c842e405ff7ac5d885bdb7034b44fa794ef6958b6c6830f0248b1daa0b7ed5252d0eb2f292f0c8dec267dcb08b9af636316337b0c06fb1447c42623dce3ac93d8394bbe340d0db53b282dc8255303345f13ec29f0e3073096b81b08b0ac2b121884f9c8af843e2e21cb6ec7553a14b1265a5233a96f6e9686ff00684d7c679f71cb4335f8985daffcaa20f1773c84a8edf289fda28b7c7802272c4883d854af9582613bfbf98fc6a49df99a08fefe67f1a948c7ff00a7c2672448df6b960a8ee1dbb07c37ea2f89f8962c3c34bb01ca39d7b9ae77b4ac070580c1c1528ce482d42460bbdc70e140fa10995f629f998ceedd32f78bab41d489369aab577e005c6a8a331104d461de987bdb4f94ebf995054e750e330c388d0e6bac20a80d717cb77bf9a3327c23477669ddd8aaaa7b16aa0ee1cdb5b62882e3ccb245b09ae5122c473991dd0ea6b934054c8cf1f2b958a0085efba16fdba94be5fbdb2b23e7773abba29d333f02153c670592034661627d37068ed6a20777cb49d3dc56aaa7b16aa5159ddd4fc168b37759d67f83cae1087dae6a1e55cef2829b90ac696eff002dab38e556d34fe9639e4358329c7300a3cc06cc611ef3033887e5150a3417ca498ed105a3c70348bef585258902188ad1a611fb0a8919a3dd109c1c07940a6e0b9a6c730dcf6b4f8ad23ed58bce91f72c48735062529ba8751b4152f3d1dd1259f569bc50a8b728bbd2a2ef0a89bd29fa42a1b6c0a5a111db2331bceb02cad3b74ec26edfb9628cb8a44c243f621bddf62c502c221c7988a7e64077da560d9e2ef73cbc735cc5c1ad5ee8248879235940aa78b62cac97bae5060db93550e00a76a1d69984e53dc82106b72839dcc8076543279148e2f9c99e968ee6efa0e49ea2b17f0bcb96caba3b221f262c2a7b0a745885d0c55aa2ef0a8bbd2a2ef0a89bd29e342c93ba34523048edb30c672958b12a07ba309c26df638fb02c4984da7f2939e6e8705e56009d69649fba2257ff006b247594269e5d0e0bedbd4dc4f16110a69de39a2ed07289a9a52c5570b158d87a42dcdbd8001594ef07556f81b157b01d639b51710a4df9e081f46c5267365b79d4be888f1cc143d118faa9bc37d54387faa870ff00553387faaa1698cef54296d315fb0291d2621d8b060cec7bb95ca5707c511e521e445199c6d53073c429e73b895a7b8af62dec53bbaaaffead2584ab160525e6ef1e2953d82a2985370cb6e7f927f4ab09e1c89494844411e3c6758d1ceb07e0487db29dbe6f4c570b39828f3b1b27c585e53940948021c20b2c929e89cedaf3263b3c26ec501df121403f13ed52e7e27aca9539e0bbd62a474c289eb95837828beb958338389eb9582f8389eb958247c544f58ac163e25feb158346682edaa40fc5bfd65839d9d913d72b06f0713d72b067950e2fae560ba7e4e2599b76560be09feb158269f9289eb95835a68d85107ed15263331feb295659dadc796d583e20dd4bac167e29e3f68ac15c1c4f58ac17c1c4f5cac15a6144f5cac11c0c5f5cac15a2044f5dca434403eb1526334b6daa9619a59bb1436e680d1fb2a99a181cc9d72776020d4213c1423305151ab2890aa7ff0045a7e85409b8460ccc311211d07ec5160e54c60aef90c5a609ce13e13cc38ad2c88dced3fa4d1a662b204bb0c58f10e4b21b6d24a66106ff00296157e54a437986d850cd911ecf1adb866ae95065e13604bc36c282cf161b05004d70b42ed628d145114419d5e143d214039d4b1b94abae528eb9499b94a6a527a949dc149dc14a5c14a6a529a94a6a5297052a33514b8b940bc2806e5014b3b3d14a6a52ba94a6a5277052770527cea534295bc2941e5b5498f29aa49be50524dd2d524dd214a8cd450bc9554e3a1443a13910458bb536db102281659fd3290c370ce534429bf223b6cb75a9cc165c62b72a0362182e883c978f25d71f6fe92c1c07831b3ef6fbfa79a4b1fa590ab4007d2cea670230ca884d99902e2f1049c92d2ecf92562e4c81ee811a4dfa72d994ddad580a6e9ee6c2301fa8bb24f5a85146e1cc883e6b814d7f925076844e60a20cc0a9819aaa75a6caac20dcd5584dba4ac2add256160b0b51616bd614df2c27bf584b7eb088f2d610dfac21bf58437eb086fd610dfa9fdfa9fdfa9fdfa9edfa9ee114f708a7f8453fc229fe10ac25a22396127677b96103e5396103a5cb081df2c20ff24a9e779254d1ced4f1e35026373b8282dd2a1e8085c88cc13d128a37237275c9d727228a372727275c9d7275c9d7275c9d7275c9c8a28a727237275c9d7275c9d7275c9d7275c9d7275c9d7275c8dc9d7275c8a75c9c9c9d7275c9d7275c9d7275c9d727228a28a29c8dc9d7275c9d7275c9d7275c9d7275c9d7275c9d7275c9d7275c9d7275c9d7275c9d7275c9d727237229c9c9c8a7237275c9d7275c9d7275c8dc9d7237237228a28a28a28a37237275c9d727ef5463e4151b4b69caa0c1b63c7870c7ce780b014b572e71af70f26155fec52f0816c84b12fd1163d83d516a8114c7813ad11e14e93ee969f2b2b4f2dc9d83308c7912728433deddbe63855a767e9276897c1f0d9e2b65207fcb09e4ee413c89cc3ba2472a8517c678e74f7db063867d1711ec5879bff0f8422b7e8c677deb1dd9f92c23307fbc07dabfda2b3c59b8cee56b4aff00690df29cff00a505a57fb46d305a7965dabfda1f15827965c2c7f6e7c1f00ff70b1ef4e0d81d02c78d382e0740563b69c1703a02b1aa145742749ca31ccb1cd74135aed58db36c73db83e5a235a726b0e0158dbe6c83d0158d9e6c83d0958dbe6c83d0958d9e6d83d0958d9e6c83d0958d9e6d85d0958d9e6d85d0958d7e6d85d0958d7e6e85d0958d7e6e85d0958d5e6d85d0958d3e6d85d0958d1e6d85d0958d1e6c85d0958cfe6c85d0958cfe6b83d0958cde6b83d0958cfe6b83d0958d03f35c1e80ac6a1f9ae074056360fcd703a02b1b7cdb07a02b1bbcdf0ba12b1bf8843e88ac6ee210fa272c6ce20ce8dcb1a8ff00306746e58d3e6f6746e58d3e6f6746e58d6334833a372c6d1fcc59d1b9637f116746e58dfc461f46e58e1c461f44e58e3c461f44e58e3c461f44e58e7c4a1f46e58e9c499d1b963a7126746e58e9c4d9d1b963a7136746e58e9c4d9d1bd63a7136746f58e7c499d1bd639f126746e58e5c499d1bd638f116746e58e3c4a1f46e58e3c461f46e58e5c499d1b9639f136746e58e7c4d9d1b963a7136746e58ebc4d9d1b963af146746e58ebc4d9d1b963af136746e58e9c4d9d1b9639f136746e58e7c4d9d1b963a71387d1b9639f126746e58e7c4d9d1b9639f1287d1b9639f1387d1b9639f126746e58e7c4d9d1b9639f126746e58e7c4d9d1b963a7136746e58e7c4d9d1b963a7136746e58e9c519d1b963a7136746e58e7c4d9d1bbef58e7c4d9d1b96397136746f58e5c499d1bd638f126746e58e3c461f46e58e3c461f46e58e3c461f46e58e5c4a1f44e58e7c4a1f46e58e9c4e1f46e58ebc4d9d1b963af136746e58ebc4d9d1b963af136746e58ebc4e1f44e58e9c4e1f44e58e9c4a1f44e58e7c461744e58e5c461744e58e3c461744e58e3c461744e58e1c421744e58dfc421744e58dfc421744e58dfc421744e58dfc421744e58dfe6f85d139637f1085d13963771085d139637f1085d139637f1085d139637f1085d139637f1085d13963871085d13963871085d13963879be1744e58e1e6f87d1b9638f1087d13963971187d1b9639f116746e58e7c499d1b963a7126746e58e7c4d9d1b9639f126746e58e7c459d1b96397116746e58e5c419d139638f1087d13963879bd9d139637f9be1f44e58dfe6f87d13963779be1f44e58dde6e87d139636f9ba1f44e58dbe6e87d13963679ba1f44e58d9e6d87d1b9635f9b61f46e58d7a30643e8dcb19f8b4af467ef58d7310591e1e0e82f63b4886ea5961d2b1bc7e6b87d1b9637f9b61744e58e67f3742e88ac763fcc208fee963c6894843fb90b1ef44068e482d58fc6f6f2436858f0ef1e6623793247d8b1a5df969f8bd253d8b08fc7cdb8fd288e3f6a6c3f1e2b49da9b98393ce604a263379506613927e9892300bb94547e9277992fecb03fe584e82f0f6d842c12fc98187307c1998398bf268eda17fb38c3d043a561be5a2b85770ff00bd48bf7521849cdb8396304bd5d2b3f942ea958e183491ee97103350ac7092a8319f62c6a819e293ae8b18d961783cab0db7c6c93ccb09f94c695303c784362df426a81665436a853d3f353a1b64c4431073a95c0f291e5a23455f17b6736480b079ced6f52c1ba43560bb9bd4b055cdea5827e6ac11a82c11f35606f9ab037cdea5812f6ac097b7a9603bdbd4b015ecea580af6752c03be6f52c01be6f52c01be62c5fdf37a962f6f99d4b1777ecea58bbbf6752c5ddfb3a962ef08cea58b9c233a962defd9d4b16b846752c5ae119d4b16b846752c5ae119d4b167856752c59e119d4b163856752c58e121f52c58e161f52c57e161f52c57e161f52c58e161f52c57e161f52c57e161f52c58e161f52c57e159d4b15f846752c57e119d4b15f846752c58e119d4b1638466c0b1638466c0b1677ecd8162cefd9b02c5a3f190fa962e1f8c87d4b17cf970fa9601df43ea580ef87d4b025f0fa9606f99d4b02fccea581ae6752c0f4f23a9607b99d4b045ccea5822e6752c11bd6ec0b04ef5bb160a399add8b056f5bb160adeb762c17bd6ec0b056f5bb02c17bd6d2fa05828792dd8160bde3762c159b259b02c17bd6ec0b05ef1bb02c167c86ec0b059f21bb02c1ba58dd8160dde376058337ad3ccb05ef1bb02c19bd6ec0b066f5bb160cde376058373e43762c182c2c1b160cde3762c199b20579160c1e40a69b160cde8f5560bdeb6dd4160dde3762c199f246c58337adaf20583778dd8b066f5bb160bdeb762c194ae4b760582ee6ec0b066f5bb02c19737605830e86ec582f7add8160cb9bd4b065cdd8160bb9bb160cb9b4e65832e6f52c17f37a960bf9ab0667dcac19f37a960cf9bd4b05fcdea5833e6f52c1ba727a960da792560df9bd4b06fcdea583be6f52c1df3560ed4b0768a2c1da960dd4b0767b160dd4b069b960e172c1f4ccb07d73752c1f705202cc9b5490b7b5d8a097bce48b5ceff315064f04b2139a372f88473b94b43af7b6ed0a5e1d7bd854fc9c0aeba2c207f2705a39561d7d72725bccb192378b1ac3a4058d73868d8e6d58e13df1b10e5732c6b9c01f1264b5a73d5ca7625b393e00e525629c8b0c4c273b162919c36c5887805a6160dc1cd9898199f15d969f3f1090c6c287e4b182817be1bcabfde183bfb041f69fd24ef325fd9607fcb0ad5baa27c288d15dce7a2cb86d713623939adbd0783550eddca8553b90982b40835055451011ed10fe8a22367d013af29f7a76929d794fbd3869b13ef4fdf27de9fbe29fbe4fdf27de53ef29fbe29fbe29f7a7ef8a7ef8a899f28a7de9fbe4fbca7de53e99d3ef29f794fdf14fbca7de544df14fdf14fdf27de53ef4fbca7ef93ef29fbe4fbca7de9f794fbd3ef29f7a7de544bca7e7aa8979512f512f5173e515177c5461e5951f7e76a8f4a76c3b5471e5951f8472991f1854c594795334fca3aaa669f943551f4c43451ecdd9d6a3d6c8a7ef531c21d6a61d6179b6e51cd9944df6a8d5f1ec0a3676b8f3a8b989518db947d8a293e31b35ed5177dc9785173971b33a7d284a76626b5ce9c6fbb3a75fcca25280f38f62899bfd5a9e295b5aa269398e6d4a250d0575ac1d831cf825c662685861c13954d44e653753da24052f7c427d81612b7fddf08fedbd612e210bd77ac215aff2742a9cfbb7ac23e6f855bf2deb08f1085666ddbd610f37c3e91eb08d7fe021d2ecb7ac207f37c3d747bd610ad7dc0ce91eb0871087d23d4ff9ba1eaef8f53d4a7f2743e91ea78fe6e87d23d4f66fe4f87abbe3d6102282421faef58409a7b821d3e9bd3a708647957c326dca63b2fa8a0f68a1343a33271d274d6a9d939cd7d89d5143ca138d72cd2fbf527738ce9c6a41a9cc9c296f2a7597e708de9da7993db98e909e6b436a7573e4837ea4fa100d3da9f5ce9f79a1d2145c9cf55140a83f7a7d0924d53869517338917a781945db9d09e2d24d544cf5235a8b9f28da9f6509e42a2e9269a13eb9ede55145374544ce1cee5251f6fb5112adb77357fb51a5b6d55c55bad57990ae6cfb131c6a5bab9543000c909a000072a2001a3384ec834b116c2706bca2e8849ce55abdf0de55fef1c1dfd820fb4fe9277992fecb03fe58ec5a177c6e9d4ab0596dcb7360ccab5a5aab559cb766942dbb4d157366ec6aec6c5de21fd15dff00996cec5fd8d1e076771b7c1ffe7ba9bc20f77b9b2214b42348b371dd9109bcff00605811b647c63dde9f73c9457b799ce22ab177d218ff00b83ff12c5df48a63ff00c7bff12c5ef4863fee0ffc4b17bd218ffb83ff0012c5ef4863fee0ff00c4b17fd218ff00b83ff12c03e90c7fdc1ff89601f4863fee0efc4b017a431ff707fe2580fd228ffb8bff0012c07e90c7fdc5ff0089604f48a3fee2ff00c4b02fa451ff00717fe2581fd228ff00b93ff12c11e9146fdc9ff89609f48a37ee4ffc4b059f171922fed4944a7f996139682e99c1b3b2f862043195161c2ca6466b6f309f6ec50e760f6c8561163d9bd2acec57b1a168545cc75ab6dcc559668cc15694360cf45a0e63988473aa66ceaa285cb353c5cd5b952c39cab852ba0a35af572214d3ff00754b0ec5bad15d2ad15b4e8bd52b5b153727a91d55362aeeb5ec551b93b9d2a34b436e0a937e4c68adca9878b0b5ba1b5bca8516189c9e7ba1ca39c5b05909a1f1a3b9be3086d751a1adf2a23acd02ab07b05216068245f353519efe7ed418dd8a57ccd21d24d7e3529e6490e926bf1a94f324874937f8d4a799243a49bfc6a53cc983fa49afc6a53cc983fa49bfc6a53cc983fa49afc6a53cc983fa49bfc6a53cc983fa49bfc6a53cc983fa49bfc6a53cc983fa49bfc6a53ccb21d24d7e352be6590e966bf1a95f32c874935f8d4af99a43a49afc6a00cd822487d18d343fea2849bbb6365fdcff00fc8ff744b9fa4ec96c587f4b7406945ae0f850cc27c33931a5df4241d22a2c37b48cf9d429a97853304d61c568730ea4736819f5204dbcc56add1cd6ab2dff00b2b2ebd67ae6d215b4362a9cf5a69a2b2ba0abd54d8856ba15d68cc68ada68ce4a35b730d28d69cfb10b4d6d39973a07fd675ce3558acbb4551e5280049bd59a2a8e7ea5a3cad59d0cca9f6237f32b17bd997653b372a16d762a56e5ae855ba866409d4aa6ec95e2fb10a0d3caa8177b35b178e16e8ab57be1bcabfde383bfb041f69fd24ef325fd9607fcb1d8dd05df1b72ef4dba9990c9a68a2b0d965eab50a95ada85965745157ad5a40ec66ec7bde17d10bbf7321dcd9cbe06e5ff0085766f80c49d8ae810bc7c87382ed0ff007003de65496347cef29dca7e06e84f111868f6e6213993531390f7305ed111c395d43f676296f60f3aff00b2eb54a8dab6dfd8cc0dbc8853951d0acd77ab755c6e5b15b5da85299fad5f995e8d0576a341e52cfa4dc88cdab950e746fe756902c09de2e76e9e51a50cb6a7c6c273f18f8ddb0b5a6ea6e426c38ce86c14641a4bc2173216e40f69e53f03c93032736ee0fecb28f6ecca23911381843713dea33e183a8ee973557aa4f5aa8a239ab4d340add77a36ab4f26755a50d81732a52e5935bf404790dc85b4bd555b7aaec54cd66bd6aa5116575a14a7fab167a0e55a7394326f59468ade5d886954cf69d0abb9a722daacff0057af7a8e577b55d6235bb45a8d94b166b2cce550d0d972afb1665658aa352ef6578eaaf2ad5ef86f2aff0078e0efec107da7f493bcc8ff006581ff002c76374152205582cbac429526a8aa65215768fb967b3956dce8f71de217d15dfb987757a3d8bfb1a7b8cff0364ae1263a21a438a0c271bb2b314e64dc5887339dbad4ed35f80ffdbb0490069b4a0d918ba7b796c387f4196d79cfd8befecd153b16f60d2aaeb4affc2aa353721435b554dea81655b4ccada016d11ff57ab0ef938da338e6288a119c79480390e3ca6f5d765568b3935ad24dbfeb32701af35752d0db5c3495166e72376b07b5ce8cb63b59b0ec2a6439feea86614dc32193908e7645a5bccff19a74d7e045c435a0b9c6c0d1692a6a6da26830fb8a065b1b1bc97c5753b6649d218006d6faa383707cbcabc523bf2a622ded313303fb2b468d35d2178da55b4cf7ab73d0236582dbb4a007d88568335bff00844508cd5ff415bad024e8af52cc6d408b89d0abb90294b156b4d9d8a5d9b62d760f1bb1a912b4b8e62a9a45aaadcf4ae844a01515fa7b16ab3fd5ebdeedb74b8f5ab4a06b5cc9bccab656c376656a21c2b9866fb95036e54a2b059cab70e37ab5d6aab8ab577f6f2aff0078e0efec107da7f493ddf813064eb2d1ee76427ea742dc1f6762d08088d5de99ad6e682ab3a36ab49d3ad5a4dcad3672054e4ee3def0be8aefdccb62d1dd0ec6df03547b07b9d9e019b964eb1d1401922330d2252e35b1dcfb562c3855f11edd4e82ff00fa090b153863d0c658a9c31e8632c55e1bf831962af0dfc18cb157863d0c658adc37f0632c56e1bf831962b70dfc18cb15f86fe0c658b1c37f0a32c58e1bf851962c70dfc28cb16b86fe14658b7c37f0a32c5be1ff00851962ef0ffc28cb178668dfc28cb06019305b1228cf93922130f2e929d11d94ed0281a2c005c3b3ff009ec6cec7fab966433670bff2b4aad853b3e944e84ed16e8a955ccb6e908e7a946a33d89da6c4349b11b6a1528572d9a11a0e54daea445466e5b9595d198281293004e33b64ad6a696967ce6fdab01635408738c3498633220e119420440dde3ab50e6fcd7853f0de7b44e4b46668edb0224377f09f4ea585b8492d933f7ac2dc2497f89fbd616e124b64cfdeb0aefe4bfc4fdeb0aefe4bfc4fdeb0aefa4bfc4fdeb0aefa4bfc4fdeb0aefe4bfc4fdeb0aefa4bfc4fdeb0aefe4bfc4fdeb0b6fa4bfc4fdeb0b6fa4bfc4fdeb0b6fe4b64cfdeb0b6fe4b64cfdeb0befe4b64cfdeb0ab8d0c4921af2664ff00d4a4fb6076179a74c42f2a56599da21bb53df5744235650580706cab24a0c18662c168641958600870da33540d02e4e88f73de6ae79a97aa5a09b51b413459abe2e634472b3f2de552dad1690773a6ba5582ed0166b568b16739b245b5b169cfa685549ae9d2abba1c96ab2a742eb5436f25158a99f99594a56e2acceb4d56db90160565dd814ae9b8e6402ea47ee567fabd7bd872bbdaa87dab5f22b697e85a0e856d50dc9a56a158d59852c44534843b59d08653c6d557156a7449a635a2a494d98c386134d449c1852b51be636a7dbfa48d96851307ce82fc1d18e5599e1bf3650fb4230cf6d82e11a54f8b161da39eee7592a2cb105a7328b834b5b15994c58bf3000987982e39c958b98487789f8553a0ba8a5e65b581198ffa2e0545352deab547194287628ed0772a30aee48518792a2dca2ef5520431f353df16ad1a144dea8b758a2ef545dea8bbd5173539d45dea8bbd5177aa2ef4a8bbd51b7aa2ef4a8dbd2a2ef4a8bbd5177a5453e4151b78547de151f78547de1518790546de95177a545de951778545de95177a545dea8bbd2a2ef4a89bd5177a545b945de9512e512e512e2a25c544dea89bd512e5137aa25c544b944b93f7aa25ca25c5443e4a8bbd2a2ef4a8d715177a5451a0a8b715137a53f7a53b7a9e8dcbe6f32172d4adcc81ceb95170b911f7271d145aad4152dfb134684c15a0e450f9f4a85a6cb9305a33eb5069936d14026aa0e836fb142bd41d1ce1449189db2562be13ef692ddb7ac28d147c46c4fa4c054fd3c5855fa0a7abe2c3f514f686c3f514eef61f4614e6f61d7e829cde43f514ed7c585ea29badad87ea29adec3d5b8535bd85ea299ba17a8a6f7b0bd4537742f514d6f61d7e80537743f5029cf25b0fd40a7e74184f9a73219ce216e075297778ce254a8e552a0d7429634b48df297f249b742961654ea2a0d4106dbd4b8cca0d6bb54be8cea5cdf4505ca0eb50e96d6ba35287aca875a9ad4e7b942d0a16b50a9d4a1d6b550b356954cb456c5073e950541bf9941cd6a835b542b143d999424ce7cfd80d676ba6626bed4d773e94cdeba9a1656669aa9b8b6b21baba961279a886e682a69b9195651325da3b6c40394ac0f22dac79c84ca5ee0b15e41a5beec111fa032d5291439921089f9c54de117973acaa73f3a8919d930da5ce3a0297c04c311a5b1b0afc5b45ad8477ced62e4e7b9cf792e7b89739c73926d27f496340765417961d342a21fcac3644d74c93d5f7296778d09cdfa26aa4cf96e6f2852e7347039511f93991eb2c2b07f233ae1c911633c1f127df4fa6b1a86798cae558c27c76b1fcad0b0b9f1e5213bf6429ed383201fd951f4e07807993eb6e03973cc518b16244f7376acb71776a6e66d7405ee384e85fc950a6eaecaed912b5151997f404bfd65fd5f97fac8fa3f2fb1c8fa3d2fb1c8fa3d2fb1c8fa3d2fb1c9c7e4ecbec7271f93b2fb1c9fe8ecbec7279f93b2fb1c9e7e4e4bec7279f9392fb1ca21f9392fb1ca21f93b2fb1ca21f93b2fb1ca21f93d2fb1c9e7f3040d8e47cc50073147cc903ad1f3241eb5fd0907ad7f4241eb5fd0907ad7f41403b511f982075a70f93d036393bd1d81b1c9de8dcbec727fa372fb1c9fe8d4bec727fa332fb1c9fe8c4bec7a7fa2f2db1e9fe8bcb6c7a89e8b4b6c7a7fa2d2db1ea20f92d2db1e9fe8acb6c7a89e8b4b6c7a7fa2b2db1e9fe8acb6c7a7fa2b2db1e9fe8b4b6c7a7fa2d2db1e9de8b4b6c7a77a2d2db1e9de8bcb6c7a77a312db1c89f9352db1c89f9392db1cbfabf2e399c81fcc32fb0a6f98a5f614df31c0d850f31c0d857f40cbec2a9f9825f614e1f2765cf3393c7c9b97d8e4ff4665f639441f2665f63944f4625f63944f4625b63944f4625f63944f4665f639443f26a5f6393fd1c97d8e4e3f27e00e6289fcc3036155fcc7036143cc703614df31c0d850f31cbec28798e5f6154fcc32e798a70f93f2e799c9e3e4dcb9e672883e4d4bec7289e8ccbec7289e8ccbec7289e8ccbec7289e8d4bec7279f9372fb1c9e7e4ecbec7227e4fcbf5a3e6197eb5fd0503ad0f31c0eb43cc703ad7f41c0eb5fd0703ad7f414bf5a23f3040fac88f93d03eb277a3903eb277a3703eb277a3503eb23e8d40fac9de8d40fac9de8cc0fac8fa3303eb277a3303eb277a3303eb23e8cc0d8e47d1981f591f46607d65fd5a81f597f56e07d65fd5b81f597f57206c72feaec0facabf27a07d655f93f03ad34fe6281d699e6381d6a1f99206c2a1799606c2a1f99606c2a1f99206c2983f3240d8535bf98a01e629adf93f2e799c80f93b2fb1cb27e4dcbec72a7c9a97d8e54f9332fb1ca9f2665f6390f4665f63937d1996d8e4df4665b63937d1a96d8e4cf46a5b63943f46e5beb2863e4dcb7d64e24bbb464e5127246615b6899292fda5d8120cd3b289edf12b946a533462f4b0e629de4e02961fb254f32d8582a5d9fb0b181bf9297850f91816363b345c8e40163645cf3cf6f23a8b0f47fcb4fbcff0079ff00751df6c69aaf2bd401e34cb76a9319e313c80a936e60f7f57b5307e4e00e579af5053711a599790c39d8cdc8eafd2d1d875e76a89bf3b545e11db546e11db547e15db54c70aedaa31b4c475795476f8b11c39d4cf0cfdaa6b867ed535c3bf6a9be1dfeb29ce3113d653bc6227ac54f71989eb153dc6627ac54ff001989eb153fc6a27ac54ff1a89eb153fc6627ac54f71989eb153bc6227aca6f877ed53273c576d515e4653894d7c2a900a66f46c4cde84cde84cde84cde84c109e724581446134710a383f9476d51f8476d531c2bb6a98e15db54c70aedaa638576d531c2bb6a98e15db54c70aedaa638576d531c2bb6a98e15db54c70aedaa638576d531c2bb6a98e15db547e15db547e15db547e15db547e15db547e11db546e10ed5177e5443e594e7672844ce2a9b704db826dc136e09b704db827437b80345147965461f1876a8fc2bb6a8fc2bb6a8fc2bb6a8fc2bb6a8dc21daa370876a8873bca0f700fb426dc136e4db936e4db826dc135cd22814580e2da914515be59daa38f8c76d531c2bb6a98e15db54c70aedaa3f0aedaa2f0876a71cee4c8eda10094db826dc136e09b704db826dc16e329a289ec26d514796546e10ed51f8576d531c2bb6a99e19db54d70cfdaa6b867ed535c33f6a9ae1dfb54d70cfdaa6b867ed535c33f6a9ae19fb54cf0cedaa678676d533c33b6a98e15db5473f18edaa2bcf8e53a20cb7da05e9bbd09b704db826dc136e099bd0a1c0815a0a9cc9cdae4ba8a3db48aedaa6f877ed53bc6227aca7b8cc4f58a9fe3313d653dc6627ac54f71989eb153bc6627ac54ef1889eb1539c6227ac54e70f13d6537c3bfd6535c3bf6a8fc2bb6a99e19f4e5533c33f6a98e15fb547e15db4a8bc23b694fdf1da8dfd81fa8bb42b42ef3dd77889f44aa39cad4515ad146f47b056bec9bfb07b256b46fec6b5afb19ad59479bbba457a35ce8de8a37a37a28a3d82d70354266052bba6fb3bbcb85dbdba2c722d25108a37a37a37a37a3516ac988da9408a8cc7ba0e05a7314e86e34cc88251451451451451451bd15ad145144a7cc456b40aa10213618d19fbb01e61b4d8db1124da89d3faa1ccb7417783dd7bde2fd12b76e56fc22d0aaee6eefbf3f955bdd9ec5a2d5daa2b6a6cd2838070cc6d1dd36231d0dfe2b850a74bc67b485427bad6b25c0d50999502bba67b3bb6cd422c3e3684e84f7021107c3d4a745780021230045883bf3859a87762565df14e7ccde545ef75aaa4fea8f7417783cddd7bd637d12b76e569f845a15bcdddf7e7f2ab4f81a2c97035426a5fb513ba6e6e4eec4d4af6e68ddc3cfc8b21c550f734542176a8ad04ee7314080e198da3bb6cec325a3be8eb4f82e70229444785253e2b800136598d99996eeb3b187dbe000ef0c3b9659ceb289b556bfaa2ccb7417bdcf3775ef48df40addb95bf07ccad0bd9ddf7f7f29569f06604661aa6c4636237c570a8ee83816bad69b08465a3bc01b936b4ea542553b9a1458e06a9b37004071ddb7c5f010308b0f931b43afe551e51e5af65116d6c4423e00a2ed0a34d446b58c249d0141c1ed6c59901d1b43740f00d919673abdf1c372bb63dd6aa93faa3b42dd05ef7773775ef38ff40aef8e56fc237417b3bbeff1394ab4f83c97035426207b9dc7742d6f7627a48902b1615a3934a2c710a9dd513a5e2b1c1d4a2873d0046678de58d7e020cd43ed530c0f61bd089951244e50de1cea6a59c5b121907584f6e709c8dc8a28a37271d0a3c6700d6135515d93126fbd335e7d8a5307b32259943a5e739f00c830dd1621a31a8c788eb6cd02e0b289b557f547685685ef7773775ef298fa0577c72b4fc22d0bd9ddf7f89ca55a7c1d08460466107314d8f09b199e2b8777da23188c1dea26e9aa84aa775924274b446d4ee4d84287310846846ac77818330dc88f0db11bf382c133552d06138dd6855b60456bb51b16106f8b0c3b908584c7f3776c584f8bbb62c24ecf0a9cb40a2fc73d8ceb58325e862b8c4370b14a4a0a4b416b35d2dda89f00002e71a3467281060c23486dcdaf5a2f71b557f54bba0bdeeee6eebde531f40aef8e56fc237417b0f756aeff001394ab4f84c970b508f0bdcee3adbcbdd8c2124f854ef8ddd31186f702150954ee688b08b5180e0c79ac3778cd50e3c311a09ca61f0651451f06002e71a346729ad618100d18339bd188e36aa93faa6dd05ef67f20eebde331f40aef8f56fc2374d5ec3dd5abbf3f94ab4f84a146145610536620b23b7cacfcbdd50a0d7fbaa18ef716d3cba56492a9dd5116116a892ce00baac3e334e652f3f0fb6cbbadf299a47c1e1c1618b19d92c0aa0c28272618d1f7a3109b5171cffaa6b56e9abdecfe41dd7bca63e815df1ead3f08dd05fe53dd5abbebf9d5a7c25164b85a845676879b1d9b9550f74c9e95892cfd237275a7408af611420aa13ddd1169cea34abdae6bc8a294c20d0d8e4438bbed0569168bfe064a959169a9cb89bd4f8c4eeecd0117936a27f54f6add055967f20eebde731f40aef8f569f846e82a9fd92adee6d5df5fca56e8f85a108c37b6d426e5991867ccee5eea884487eed863c6b1fcab25c55bddd111a53e1104394697a31ceca87bd76658367c0ddf6a88743b36d56545a2f1e1c9529282b15f576f42b0b209c86dc13e257748bab6aae9fd545a80214ab203db1a206d69452273460a4b860a4b860a4b860a47860b07324e3b44705ee610020e88f2aa4fc228e0a5e0c4efefc96e49b560f75a238523c30523c30523c30523c3058361025d303ad362457906ca9a2ab8f85a2c822d509bdea3ba90dd9ca9039a38523c30523c30521c38521c38583867981d6b02c696892f1a65b90f14adb62608d1030d5b534234ab7c0d34a2dd2a243228e5352d40221a5da14b47004c3056f6d8b06cc7891834dceb1070ab1c1c3514eb91ee4a75c8e73629483f948a3905aa4e07e4c54de54470203e82e1627bebba4e76945da5574feaa68564694e874dd276f91dfa3be4edfa76fd3de0ee976cadaaa7e119253a1d2853f7c9dbf477c9dbe4edfa7bbca46256d55f0d929d0c0a393f7c9dbe4edf276f93b7c9fbf4f7794bb656a557c191a511a53dbe528acf2d46874a44239d4cb73c52796d4e3e3e49e6504f8cc6a953e4376a95de376a81a18d5bdc91cca31cd129c8a2bf3bc9e7511de5a73bca4e76944e944e955fd55d111a53af4ebd3af4ebd1bd13a557e13444237a37a37a37a75e89d289f0f4446946f46f46f46f46f46f44e955f0e42234a70d29c34a7ef93b7c9dbe4edf276f93af4e3a513a513a51bfff00b0228a28a28fff00a90cffc4002d10000300010205020505010101000000000001112110312041516171309181a1b1d1f04050c1e1f1607080ffda0008010100013f10ff00e7f8421084210842108421084210842108421084210842108421084ffd4e108421084213f7684d27ff00654fd92714d27ed53ff549a4d67eae13f513ff003e9c5349a427ed53584213f4f3ff007884ff00d76138670421382109a4d610842714d67ad3ff00399fa39a42704d27ed309a4ffcfe7e9213f7c9eb4ffca27e86109fa79acf561382109a4213484fd74fd14ffcce70ce19fad9e84f56693ff279fa084fd2cfdce693d384ff00c8e7ad349ea4fd82693827a13f629ff95cfd967eaa704fd34f4a7ff65cfd44d2714ffd227ed9084fd44e29c13f4509ff00a1cf52693f699fa59e84ff00c5e7ecf349faa84fd44e29ea4ffcfa7ea2693484e09e84ff00d527ad3d79a426909fa79ac27a33ff00569fa49a4f4a7a13f453f719ff008ecfd2ce09ebcd269348427e867edd3ff0c9ea4d67a738a6b3d09c109a4d21359e8ce09ebcff00cda7a3359e94f42693826b349a4d669359a4d669084d66b3d29fa89ff92427e82109a4d26b348421084270c2704213d19a4e09c508426909ace29a4f5e70cf4613ff00159e94e384d66b358427a1359acd269359a4d26909a4d2693821084d271cd269084e39e9cffca270cd2109c3349a42109ace09a4d6109a4d270c26909a4d66909c73484210842109a4212e909a4e39acf4213ff169c7349acd671c2704d27a9349a4e19a4d613826b349acd21386138a70c21084213d184d67fe59359c33484d613d29ac2693d384270cd270c2109c1348426908426b349a4d6693d09ace39c13d284ffc1d138a714e1842714e284d670c26909a42690842109a4213484e19c709c108426b08426b38269359c338670cfd5cff00c0213d49e84d66909c1382138670ce29ac27a109a4e19c309a42109a4e09a4d27a109c13484fd14ffc42704d269349c1382714d6109a4d26b09a4e19a4e19c109c5084d21349c338613484d61349a426909acd26b084d269349acf4e7eaa7fc6afd92693867a9084e19acd66b349a42704d21084e19ace29acf46714d669349a4269084d2693826b3826909c33f453f50ffe827a7386704f46693d284d613826909c1349cf49c309a431a427a135842109a421358421349e8cd6109ac268c9c33826b349ace09eacff00b884e19c1359e94270c26b3584269349c3348421382704e39a4f6d669349c138e1382714d269084d66b3d29ff87cd16896909a4e384d21344b59c138270c2109c109a42693484bac5acd2109a4d66b349ac2109a4e18421349ac26909c709a4193484e18421348427e927ea1ff00c94f42702f4269084d66909ac26909acd27a5348421349c109a42138668884d6109a4d6109a426b09a4d211eb38670421084269084d613484d269084e1842693f4107c53fece1355a22704e09acd270426909c109c5349c738a1084d269386109c1084e184e09a4d21084d21084e09a78d2109acd21359a42109c1349a4d670cd27a13feea1359a4270c270ce084d26908421349ac271421084d670cd21349a426909a421348426b349acd66b34842109a4d2693584268f59acd269358426b3484e29ac2107ff4ebf573d4842109ace38421084213827042693484213821349c5349acd213484e19c109ac26b09a4269356b86109c138268f8613484d270ce29ff006cb8969349a4e187e4d2704d610842693484d61084d269348426b08421084e09a4213861e484d66909a426b3484213484e09a4213484d26b349ac2690842109acd26b09acd213867fd4afd5ce144f46109ace284d66909a426b3484e184e19a421084d21359c1359ace184d269084e184d26909a4213584d66934faf14f421359fb23ff9a9c138271ce19a4e19a4d26b359ace08426934842108426b38a108421ca109ac2704d613584210842109acd21349c3359a4d2693484e184d26908420c9acd6704d27fd54fd34d613826b38670c21349ac26b38a1359acd2714d2108427a108426909a42714d2704d66b084d26b084d6109ac2109a4d61347a4e0835c338a6b3fe8971afd14e09e94d2712e09a42704d26b0842096909acd26889ac21084d269344b48421349a421349ac26909a4d26908421084d270426909c1359acd2109a4d613d064e09c509eabff885e82d57e8e69345e8cd570fd759acd21084e084e0842109a4d66909ac2693584210842108421084210842109ac213584213484210842108426909c109c13584d2693584e09ace09c53867ea9ffce4e29a4f4e109c1359acd213826938269359a421084d66934842109a4e28421084271c270426909a42109a42109c3349c535842109c109a41f0c27a93f48ff00e766ab55c33d484e18426909c3358421349ac2108421349ac21348426908421359a42109a42690842108421084275d2690842109a421348421084213584210842693821084e0831a27a4f818ff00e556abf42b8168bd59c709a7e4f426909a4d26909ac2109ac213242704d21084213584269348421349acd66b34842109c109a4d269359a426909ac1909a4d269084268f464d26aff00617ff3cb45c7349c13584d2109c109a421349a4d21084213484d12269084d210842693584210842108421084210842108421084213484269348792109a42135842690842109a4d2704d21084d671b5c6ff0050ff00e117ea17ea92d1227a3084213584d613484d2109a421084d26909a42108421084213584d2108c84d26b084d2108421084d21084d2693821084d2138213484e36863d5ae29c4ff52ff7d5eaafd24f4e68884d61dc9c1084213487d4842109a4d61084d2109a42108426908426909cc842109a421084210842108421382108421084d210842693826b0835a4d21084d6107a42693899349e9bfd13fded7eb56ab8a1345a2e14216a96909a2d27142109a426b348421084210842108421084d61084269084210842108420913484d2108421084d2108421084d269349c8842690842108426908421348426b3820f4f231e909c0ff00e5d7e9970a12d113d05c1355a4d6704e0842109a42108421084d2690842108421084d61084213242108426b08422d2109a4e08422d27421084210842109a42109a42109a4d6109a344210841a269348344e17abd61389f0b27a0fd063d5eaff745ea2f5d702268b544ceab49a4d110489aad522138122108732109a421084210842108421084c108421210842109a42108421084209109ee42108421349a421084213a891084c90842108421304210842108421083442109a421359a7d09a41e90631e8d138dfa0ff42ffe010b442f45712e05a2d567d047226b3484e18420908842108421084d2108421084210842108421084210842108421084210842134842742108421084210842134842108421084269084213484213dc84d210841e90841a26ad6b82108418f818f49a3e07e93f5dfeecbf4eb810b45aad57cb49a73e09ac16891349a4d26908421082424421084210842108421082442108421084210842108427f84210842108421084210842108421084213b1084210842108421084222691108421084269084213568641a1a26af463d193f5ec7fbaae05c4b55a2f55702e35c304b442169084110842689105a412210841221084122108421084210842108421084210842108421084211908421084210842108421084d21084210842108c8421399084210842108421084268d134841a1ad20c9c3359ab26af47c0fd27e83ff00825a2f5d702d168b8d1044d20b59a426908421084122091084210842108421084210845a210842109a21084213442722108423213991f2d210842109a210842108421098210842109a1a210842108427b908421084210842106883434418d10686318f463e09a31ffce216ab8d0bd25a2e19c0b45ac1095d6108221082442108421048948244210842108421084210842109a908421084d1084d111344d108421084210842108421399084213034421084210842130421084210842108421083441a2109a418d0c68689abe06b49c2fd67c2f57eabfdc16ab55fa242d50b55aaf4122089a42104b4824412210842108244122108426e421084210842108421084210842108427084d488842109a22d1084272210842108423210842104b4426883108421344210688344210841a21068841a20d0c9a41ad58f8268c9a31fa4fd47abff009542e047d745a226a84b9e88824c8420969344882441220913dc4bb10824c4842091084e00bd1004109a1684d191f56884d1352134427cc84d49a909a210842109a210842108421084e013446884d106ba10842108421083434344210686868835a34418d0f85eaf876f4d8fd47fbbad56ab55c2b8570ad5216ab45c105c09704122091048488242442108242442109a21084122109a2684212935213443e4d11689a904bd001087819689a934421084ba2689a20d10842108244e013804e013441a21068841a2106884213483435a3441e8c688318f818fd07abe07c2f85f03d1eaff00745aae242e05c0b55c0842168b45c2b484f6113484d11084210488244121048484b51720b42685a8e4d49a3b89c02689a3bbf540020009a917008f8424d49c606e27083f7687a8689d8a268620d0d10686868686868686868834343431a1a1a18d68f46318c63e27c3f5e37c2f8dfee6b8d68b55c4b816ab45c085c48421216a968b6110421220908484848484b22424242d048484109e900268f0d109a8820b2f4800bd000f67113670857009a93841f61346ed0b43210f0e301e8776a7c83d0830d731a1a2108343441a1a1a1a1a1a1a1a1a1a1a18c63268c6343e27ea3d1fa0f463fdc96abd35e8ae25aa10b442d16a96885a242109091048484882424242420820984105c40208eee01f87e9800bd609a3dfc0ed9e3e83cddc2181eee10f93d2007471933d3058f4bb8ec1861871a18620d1068834343434343434418d0d0d10635c86bd86418c8420f47e9bd7eba3d5e8f47abe27c0ff006b5c4b55eb2f41702d1104436d109689109a25a24242424244121210412104104176082388b496b13f2d6c743e1021f41e3a10f945e83fae3ffd3fa3ff00203bb843f0bd106fa38abf84741bf4bd27a2f41ad0c31b86b0343441a20d0d72e4343434318d0c6318c74687ab18f564d27a4f57abd5eafd07fb7ad56abd242f517cb5421085a220909090909090910824242424242425812104104505a282c787d717fe267a7c34f76a74e8c857aeb5eb8975e87ff7ebb19eb3e19647668fc3e20780b88ff1e1fdfaef4de9b2fdbaec32c30c30c30c343434343434343434343441a18d0d0c6318c6318c63e07c4f57abe07c2f57abe07fb72e25c6b810b55a2d568b54210b58210b482121084848484848485cc20b800344514504169750bd9a10f0366c7668fc3d1e3c7fe7fc694515a68f468a3a347868ea3e42b53e7e1c63c47aff009c676e9a1eb5fa201c85a68ad621e07867431e231e030c30c30c32cb2c32c30c30c30d0d0d0d0d0d0d0d0d68d0d0c631a1ad58c7fa27e83d1fef0b8968b8d68b55a2e15a2d1084210844121084b44848484842424248485a05c05505a041760b47ac45768bb4e9d5f93853c0f1d7bd28a28228a082d05890787197e1abe063a1f60c381e83e0b65f6e8f907e8002d0451450417208f5e9cf970f32cbec1ab197d034e831d81e95965861c0c30d0d0d31a1af61a1a1a1a1a18c6343431e8f46343f45fa4f85e8f57fbd2d56ab45aad171210842d10b44212d50842421084848484848484105ece114e44d55145760bb0413efa1768bb05d07468e83c34b2cb2f49e5a7e5d28a6175a1041761d3a7e510f13c0f028ec2b4762d1d1a7b8d832fb7c8ef94432fb745741f421f4e96597d8313b6a78708a28aa104576fc4457f43d822bfd1e393c4f11f58fb4763edc0dde0cbd41d9e0418ec8dfe230fa0c83434343434343486343431a1a1a1e8c63d18c7abd18f89f031907c6c7e8bfda97a8b45fa0421085aa16442d5084220909604848484b989097083f68da1fa8f67c9d9174213f41760984dd05cb0f1c9b0e98789e3a7c06dd07d832fb46597a8410ec141768bb441760bb05da22bb44dd0f03c0f03c4f13c47d83a2fa1e2371f68ce687d83ec1b8cb2f987d9a0cb2cbe1020bde228a0a747b27645d8764453741761e0781e2788fb47d83ec1bf41b2e43ecd0ec9cdd26f4d519c0a3d40c34343431a1a1a1ee318d0d0c7a318c63e27eb3e17c6f81fed4bd15e92e35c08421085a2d12108421084242121212121213801ede976c61cd336c37a64674399067413cc21768bb05d87817cd1e26d90f11f68fb47d83ec1b741f68fb46dd07d839ccd282c841769d93da3b27320bb4ec8bb322ec1372427e8789e3a7c46fd0ae68f12f7836e836e8361bf41f6ea0cf6061f69d9d0ec0f7607ed1f17e8d05c350ecd3a8764ec89ba09ba605d8574f2781de8f0287da3ed1bd06f419763b26fa9a4fe8768dfe2c513b682083434343434318d0d0d0d0c63d18c7a318fd57a31eac7c0fd17fb82e15c2b442e342d50b45aa16890842108421084841212121342da7f30cb0e70ec60da1bd066d07be43aec331813f4137417697d0ae9e0be85f41f68fb06dd06dd07d83ec1f68fb4ec0ce9a2df9eaa287647742fe4d9c16e433a646f4c8de826e833a09fa1e05ef3274c2fa0fb4f12fa1e05f41bf41bf41bd0ec0fe991b9c0de864ca370ec1d8e041e23d7fce27e822833479b34baeb5bed0fe833a0de87604dd04fd0b7c8ae85741bf41bae437a1836a339a1bd323ba1d919d0674373037d06941068686868686863591a18c68686318c631e8f47a3e27c4f818f47a3d5feecb45aad16ab45c2b442d10b5484210908421688421090909751090909b09c05ecb33ce6763052631d4bcc16ccdc6be581f8c6066f06ff013741056db8ae837e836e836e85f41b86e1bf41b741bae437a146f0760ed8ee87590de9a0cdcf0c8b9791da3925b915e45790cc6077347644fd0be484dd0ddb17d0f12ba60b15d061e036e838d90dfa0cda1d643b38c9d83b2356c87f427c89f2c8bf8693fa683d0edd390b80bb98de8655885391d829cb71af90de687b0c0d6c26da7c84e8530dfc86a0d0f5703c37907ae437921cae8f7f04b90ee2d3fb5c00208343420c68635d463435ee318f46318fd17c4f47abe07a3d1f1bfdc16ab810bd15aae0424210b442168842108424212121210413829da360cc8a722d3062606407381e1a136e285f2161b86e1b86c1b06df00c0d09078e987ae435721bd077437b076c88e0433976a0be9e0b4c0d8507be4318ea84c138ad1370dfa0dc370de8a0dc370d8370c0fe86e06ab8c8fce07ae439721f9c134760ec99c78c3d62d46f7cb419d0bcc15982e2d303587b0da1ce06628720cff003a561b86070686072c06ad09cab847746fe290e44ae0e82d89d277d12f00684106868686318d0c6318f463d1fa2f858f57c4f57a3fdb9712d170a171ae05c285a2e04210b710842424210909090820bd0b696c1785e15982f0a160c1c6e39630f040afca33fc8d53f889bfc97ccfe1457f91ff00947fe51ff847fe51ff00947fe51ff9cff1cff1cff34503d05bc072b8195827707688f223afc88cc8acc0b9c0d541ad7da37fc89ffc946ffc0dff00c8d8d692dbfc8c2d8b6ff27e5432b3fc9fe4e92f41ea8720f57042e08378229e08dc1db370f74ec0f70cad02ecd3ed179836706da859ac0c0acc0c7031c0f73f8913f89bf8fc21ede7cc473493cb1373f746dfdbfd1c85fc44f657e1a373f60a49c7c0623311a1ea87aa1cae2337704d3c60ec91e449bc1d9378e468efe9c9ce9a0820d0d0835a18c6863dc686318c63d18fd07c6f81f03d5f13fdb56ab8170a1085c4b4421084210b810848421084842168484104128ba96ce8e45ccb345dac0a6c0a91f3b37dce46fc5893b7cc7e167e367e36777ee7e367e367e167e067e067e467e267e267e06734af0cb1f40cbefc249f415b73f5cc7a8d4fa345cfe236bd832846e08f218b245ec754ca6445e096f0142359cdb28d83e623fdcfcacfcacfc8cfc8cfcccfc6cfc6cfcacfc2cfc2cfcecfcecfcecfc6ce645e19b9bd865197c13e82c9b5a72abf21bb4fec6a16afca3550c5466607a6f04ae093db546947c01f60bc36705660740b3581901f05824e6ec84aa6fd9dd88d6faf83e4279e0122f15298af389310bb67cc276d4fb60cb6dc97598f71cad1be1e9310b81ca89dc608f2372a372223a73e17a66820820820d0c6868686318c631e8c7e83d5f0be17a3d5fee6b89702d10b89702d508421084210842d1084217c8484b420820a2882e86646d99d18026e1fa4e29e244046fdc45efb8e9e14f64553f88d774b1d86b3c11e476c52cca665d4cc123df43fd1d209f4928a5e6fa657b1f1f1afb8faa46d7c4319e08b78277066db4e1c87968ec15d0b4c16982e41a060663ee1bc25f1119ac792c2171456c927aee351aaba3163dcf35b7b081a7c48395a240e56095c13b827719277046e0df50df323d7f36c26e20827b0834318c686318d0c6318c7abe07e9bd5e8f85f13fda96ab8571ad571ad168842e142ea210842108421212104104c0bd05ec6c696d1b4644645d0c833859e3fd31f907eecaa3a958dff00862a5a9aa9a686be03eb049bc1bb63392867e8d22fccfd3f66269339a597944f84d9f26baa631c073039366e6bacaead3cc3dc293035c6d0f641881b722823abbd2ff2c54513b2617e8fe832213b9727f61b0d346e895c126f045bc6c4ae0ddc111ab91999b876782a41041a1068686343ff0046318c631e8f47c0c7c0f8deaf81feeabd45a2d17a484210b45a210b5421210842d4414514da145d8da3321163a19ba84c859e2fd419ea43cbd9961edca0c740c67826c81950b946e1f583fd43eaecd9f34faa665099a961f67d18fc0d87b31b19d9bd83b6308e6d87be43dc50a3581ac8300ac36dec975627a50c8be9d3f4ed142e4f9af03ee8364440220c66a6095c13b8c93a6e101dc2d48276104137d0d0c686318c631e8c63f49f0bf4dfedeb8171ae15aa17a485a2f90842d16885a21084210b42695144136105d85d85caee265761321723e4bf5269524afe97d86654d9a6a0dc428906532a172a9bc37cc1fea51f178d74ee884d51cf0d0d503d37832b3b43193639235cc0c6d6323d8138a172ed92ea4192791babfd4bea16134c42b45767d3b323b085c0e5704ee095c12a47437cdceba4a20820c418d0d0d0c6318c631fcb47c4fd17abe263e17fb82d168b55c6b89085a2108484210b55a2d10842108f985c014513968e4ee2ec2652132bb1b91b8287cb7136132b83f9f217dc69ddfb57dcee7b57dcff00317dcff317dcff00317dcff117dce497c3fb3668f299f5ae44e9e8df02b0e87d86e194331709b16346e83eb07c4cda6978fb9ba7d1f71aff00cfdc87f9fb9f9e7dcfcf3ee7e19f73f2cfb89bfe7ee727be1f666c31be580b2a17ab5f450f2c1b7f2fec56999a6bba1ccc41c9b5341b74d2b3db055ac0d658f8185bf37309736c9b44bc8dd5fa2c8a245cde0df69d3ee3069f2df63f8417dcecbf042ff2239a6de522147e0e1be33bebb7c85302754fd1794dc0d32942e46fe0e9a116f041e1827704ef21ea9bdcb43e16a0a26e209a8c6318c68631f518c7c2fd07c4f8de8f8dfedcb55c0b817a0b4421085aa10b542108421084b881f38beda394e4172bb0b942650b95d84c85c8f97e23c777902622de42ec3333775ee2f1cbc2733f716866a4f3a3757cc9a95f81810966f35e86fa6bb1d51b3886c86524d1bc7d40f87931f0bd9b146f27524752191f5c77da6ea027b38d147119b13eccda3f807ee4fdeae65f0f437567b3d79323e106cec8fb4a722e982c4a14b8db492427094d3fe0f418904eed8a1c1b5f92432747f118b7e61c1e1b84e1c1943934109b53ea989561746e44c4f9af416c5e6747d46be5b1d31461b10b8217049b378cec953231051451351a18c68634318c63d1fe89e8f47abd1fee6b45aae342d50b55aa108421085a212108421084210b02e21cfc3429fe05d84caea26509b0b90b90b3c7c6e3576db1a9bc8e4de46f519d46dd44dd46f5181d564626828d730a9317ba7b3f22cb30f81c700d57c75c8919cca98329b06e1f55c5c98c53eafea3d3791dd7237a8cea37ea7997d7d84fd47751b771ab98f107784d74625d692acaebdd71eccec5e1f263a78d369af0c8b60dd379986b6b0314e615fa22bebcdfa0d8d4e3fd0a44a5b26c860c31439d0cea3fa8dba95bd1a1088393a1b861b5064d1628317c97e83012a9c7744c22f024f037c564caf193775241456288289a18d0c6318c631e8c7a31f13d18f47abe063d1e8f8dfedcb55c0b55a2d170210b54210b44210842d1688421085c63a68e517637213285cad25c8fa3e2fca741a79592622de4ee6836ea57536323b7a3aee3719189ac8c4d646fa1b3dee5d1f1a5ac8f61e4bb82233212347d7713d998795fd4938333c9ba37a8dea37ea790b42cbb8eea35343996482869a8762a2f47c6b48c3efd99b6093a6ed8bb5828581ac16eadd17311945a4765c6f594d9783bb2b6dbcb6d963239f318ee46f53bc33a8dbafc4aea2ee1c9ee31731ca6459ac8c4d06332f98ed70757a084c9e7afb1d212d8469bf822de0ccf4d44dc5177144e00d21a18c6318c63f59eac7c0f47c2ff006f5c4b55e82d568842168842d10b8d084210842d0b4756a65ac9b0826c26509b0991bc6f1f47c5f8ce861e4641895c995e930b419c77536724da22d647ac8469bc9f8f2e35215955fea87e00e721326e47d5713d98beebfa8f1b339bc4cee8f969e42cb7206ce4ce4c8b59189e4321bc9fb71a67e5db3ecd7f44f119454f628981a8414de302f0e3772b97acca9f6d8c6de4dec9d4666cb3734bba32bbc58913b86de47a7b8c4d64726b23d8109378bdd71a1f2a8af911781d013b827483783708dd0de14517714f904d0d0c6318c6318c631f0bd1eac7e93d18f47fb7ae25aad170a16a85aae0421084210b44210bb084210ba8b47cda3934299373a197f2372df1afa939b93aba4be6c6ee2e89ff00228f9247f4225eec4ffc106af90385b1d408149d77be43a5b4dafd91c23bec87ba27dd8e54cf64cf95921be56dc1f80e87cc3323d0dfd27dda3253da3bc6c33609b5921906b698ae94cf9e28595aa5f81f18901b91b91f55c5c85f7d8f9666c9b865d363f0c436b264dcef69c61306bb7a1d8e1f1765093e0c96133167b13303a06ed6459510925e38989f115bec87210c4bd10c6de4a379378ddc9bc778ef683eed0bbcee1df3ba7708cc8f4f222c1ecac8d86d3d9f1a528b903a222f037f06f906cded05104174a09a134318c6318c7a7d07a3f45e8c63f418f47c6ff685c4b850b896885a2d108421688421084210b55b0843f8c6ec9bfa137b2d3fc1b9ebd51f584ef793f51b3a3ca072b3f1ecc6ef4246b0e891b7ec6c94b2bead83bda32864d7362c7676fe66e5577baf98956c7ae34eb1037d492f764c685f5cf670b2c37d9cbdf066bb43faf61bb125d6dfd52313e542a4faf1fd81bd72ab0d2bc94ce49dee7be98b5f3260685263cab245d0cd0715e43cf242a3cdb6c0d3bb7ec27db56e963b0fa7259e43871bd87ec7be18d59f2b1edbe51ff8d9f9d312fea73cdec755f662dbf786f44a511669e218e37f1dc7f33c6d51df7ec771fb1dc7ec775fb1dc7ec666616dd858d8838fb1fee7e75fa8e17b9fec33bd0dbaea775fb1dd7ec775fb1dc7ec35f37ec3526db69255e0b5b6ef91b822f6479e183173f62dddec37737b0faef612deef613e6f615dfd837c02f29182bf8bc8dabf1f93a6d9f9c8ee7366604ce6fd8ee3f63bcfd8ee3f61a39bf62df797e5d8463b4dd4126fcbee309f97dc5057f9ea5a73c294b3913f9bf62fd7d8f2fb1e5f63bcfd8efbf626aeb945c9722d19ec2edd25cc8e6c4780e6dec0dbc37b31be6f61ae6f61ff00899de7b339f5e631751eccea5ecce71bd98abdfecc9d97b08b23bfa01d2017734aaab99b03f609fd7d8ee3f63befd86aebec346efd858fb0e4c561bfb0fa3e52a45f8d18b8ef7fb0cfea5fd8d93dc7d8d8bdd7d8776bfcf61ab19f0fd8e45fe14e5d1f8fbc27cef02dd3e124fe8cdbefe1c91f1e88bea8c1e86318c6318d68c7a3e27ea31eaff715c4b442d168b45aa1085aad1084216884210842e82d88a57cd544f2de08892f761fdf0be665d8f744e713aa5fd46fc2ba3fb4c7a5ba24fe109ff137f63f2efe063ef3fb1b27c491319bee137313b8fd6e3a00ecaf03cc937aa72f6c51f0b05497691c34a0fd83f0f8ec04c89cd80592caf98bec48694afb252fe03381dd6ff82b0aa725fa089d555ba0f7448bb41b77e07205d221a25576adad0c6c1897edf5836547be77453a7dcb0c8431754c7bc99681ece00ed84da49d06afed977ab6c2a46ed8fb69bb87e1e3caedf7a8667901fd346f0dfc2c314e0a5bcfe2655c0eff00648631c74fa411b8649d9de03dc6445546259a3910216374b30fc8b68e29bd3650f0b15dcf8d42475d1f2e97460ee607bf3318ca9eb2cbd4208231d3a141d3e508ba168be8139acce5c8450376ccd1ad0dc76c0b57b42893169b30425ad3d87b3379199031b792dbc8ba0cbe295682d220f07a6b231191a773832275c12d1b062a7504254cae98daf231b62b74aefc1830cbecd46cc69d0a31fb0fea52df734adf285dafd5abf90d56c3954bdd4fa0a709cb7ecefb856c5346ec9a6be0c6318c6318f47a3e17abd1e8f81eaf47abe07fb72e15a216a85a216885aa1085a210ba8b4dc4fa63e08cc2f36a45534909ae1322b846519ddc0a0ac61230bb248b1f18fb83dd1e4dbfa943d4d3744bf4145eaaa4be70c83f9afa31fcfb25f94d3e8c696c35aca3f80b9db25df90b0a4feecc90e32c29571538f9817002eb630ab4f283a1714c9ae7b34ea6b743ba8d1f31f542f6eb9b6f7eec2a226d80c4e4297cf7130d924db1883ab456e2b4c5cf11fe13fe806497dccd7b063d7bee1fd46525a4ca3d86fddcf8a78497bb128c97474f90e8a2f743e86723ee0c65dd169c90673bdded91e6fe1c4456835ce497b19ee52aeab323d884c113942b0ed8784dac95063b29df90e7416be6d7d0e2a3ff0078992932131bcdb985d74b60eb198cc8cd4461ad2c94d2f9cc1332d2d885bc8c6e9cc67c4394731e42e254d9a3b065df07416b632e93e51f6e9f1d74e2ed1cf90e6f618cb04d9322c031a1d0d1f249adf6dca2f33233cfdccd50c88731e06a57612d2fa8b4998a331263d9294d86d63078cb7196fd383d74d28a2bb341e2646a06af8032569749d2867a3145f37c066d255b1f58dc8de9a6c37a0dc6fd0f03a215f03c06187d83ec1d8dfa108a18311f7ea3332ed9dc778318c7a3e363f55f0bfdd571ad10b55a216a84210b45aa11bc4b3d12e62d520b9059bddecc78936e9f7910a05836ae30878983d1aacacafc17e6280bdab265f2cbee2fa6103e438cec2837d8be416eabb93fa882750df3fa8508a9da9ff202b1dbdb9bdc638e63784f81b96256ee9dc41ef55b67327d48b19daa37d1a5791a723eea52c8bee58a9a3a2e490833892432c33fb266b8723728c2ad58537046278de21a934ec9b7bb6d17b323b2fc03f81b3ec9157f1b19049d58fac6242af60c687e3c2f8892b2f3339f8edb21b456f6fed236017d54f60741d5dedbaae6313663e6c45cfc0985f34a7dc89a6784829ad9ba43bfd386d83a2db9408a432196ab52eaf9d6d8bf7119366cd4c95ea3ddadc7e864572cf6a73735a0ee83aac1898d09ca41f16727784c34257f931b8f6148fe450c0da303d30c7763120bfa89d57e6384295ee2b2398e6c686adb8216a2b76443a69dd72561484f5ce10af3e6bfc1b2fc7a84cdb4d696e67f401b63e6fd8c66ef7d5cfa84da97c3613bbde0fe8c730c492fe0084ba3d355a795814459f8136b751f4636fc1d426c90dcad1d5670b2398ea4f014942a2f99f0f462c104f3e0bb7c4b6556ea28d8dbb1d91bd07da363c4ae85f4e015d05d826e827e835721981e9a11b07a590c88ba161a2d8f26469873b8c0faf037381d7619d07da3ed1f68fa11e2789e23ed1f68fb47d83ec3c07d83ec19115221535dd089f59dbde3b0e6a92244fc318c7c0c7c0fd67a3d1eaf81fedcb45c2b816ab810842108421688427d39b85756c6b0adf7bedd7f371f5274a6c9a535f2116a22aaa6f66edfc8273229ba09cd382a54ba84f60a4d074647b50cafe1f91f6d7a27f411adf3fe1b399e5ab1f130539f34c7ce1c1339b1e7c9aa1bddafbc8572f475e7ef43cecd1ad2760872ea4873e143e427bb8f98ab8442fa1d4544746db62ec07350b9722d9c490b0922a61036d1e1a1541a2451f043e5e867cef7a08a3ec1a13d9921b959f62ffc93b03a3fba3b52fa7d2913c3f5bd5fd04749aeeefa95259dd47d52180f9aa0ac86653f3ce4e1d7dfa638db25baf4bcb8a6bd7368f1086a6ef26d90822d58c7e98c17d2bc6e4308fa3ea24ee15c88b810ea7d9a65fdacbcdf0a376d39a1e9c849ac184420984e18282ff46ddfc11cf591b48587d4733055a6456acee46c181263bfe042668db9c36ed79d3f81ed6bd6e9a153262220af21fbc3e8afe190991de35876669b03a98efda7f237a0dfa1e278e97889fa09fa0de83ba142c0b35349f8b91683852784a0e4aba89885d36cb24f61bf622a114f78302e772af6cf230b050c89a7d06512e43e33cb728ce5ea41124c7b9995e3737f1f1326c760ec0fb0f03b91e0781e0781e07888aec1768bb4ec195368b96056bb398f843e33a0c8603242af02ede0cef027383b67607d087da3ec3c4f03c07d835e83ed1af41f68fb47d83ec1f608e830faa2c8bc781fdc9d1a1d6d31f608d3326930d3dd318f5bc0f898f57c0f57a3e37fb72d5702e25c4b45a2108438ab112ad8dcdb2724f7428e2c5957225b63a9b4909577d86285008d26bb5424731b40daa15107785e0ac8bb69b3b5b8e3aafe286b7f6849dfd81524e57b8e4b75dc691dc40abfc15ab54b96fa31998afc281935e124be6842455d2f9115b28a31b0a2b4bea553c8d0964d915b7460995975a2223d2e7428d00136dbd8a5db2cab8cdac89d4acfd604c4f44dd4de55887f873a98c6e87d87b88925f2045fce83855d7914a6845d5c1cab96efec21aea5484da8189db90dbe72a437dcacb667cc244992c7f819631f36992dc2f9548736920b6648cc97463d63604976ec31abddca989bf6d30a1dca3d894c129836d1342f29f117c8dbdf72962e44339c88e9087476f67bf7109ac6c41236a84fc7a0be7ccc112bc8c9fc256ca37817341fba4d3f83326f1f367f40ef0f02bfaa1cf9e306dfa94fb9d27fc793f27f61733f0f89cd37c3fb1fc15f70e6a7840847f1c4fe068bf11e8846149d0dd278713c13559ce45f442fa9665e61b1e799d8f630ba6622eda63c9832ac181c89a5f01768b6d8eed8e4649cf8951d330433376ec5ae0ccf0760ec0fb07d83ec3c4f03c0f13c4f13b50bb45da760ec19d609358210a5883e3e827f1192c7c06a9974f055b2f706fe0dfc19f63b23ed1f68fb07da3ed3c06bd07da3ed1f68fb47d83ed1f243b03ec1f615e439b8dea7d20a15dd25c7f46b90a06278d368ea98f89f0bf4df1bfdc970ad168b45c0b442168847211828e1a99a7e5814595493c51aeb7d5fb21316db274ec22a6165f36c8a61885959623e48cdef795370f869afa1d37e0d3f939e6f82ff0093e6452ff9199ed862acbebac92f0fbc1cc224d8f8cc20dd797d8ad8d7665a331f7137f0e86f52bda22aaac2839b8aea5cb0681e923ab709bb42ee11613a38804639a51fba2a6e3a20682cbb8815c224eec3a761dfef0be5b5d1b7f92ec1f137f22fa92ccf93120bf94157f02324f84736b07584f754749a506bdedc8756e9b0a731c918de90ec929824490bb1c854b23e1c33c99dee5b72cf633e324d91911b1266426261bd98b9bb0e69ae85ae04e707604f41f61e0789e225e82ed13d0ed90e42b182462424926619c1707f731bb9952cd8ce9459656fb906b043918457b7436e7dd9544d6e648c4d89625d2bc8af23b276cec8fb07d83ec1f61e0781e061c85d82ec1760bb04743b02935825303d791278e65af86e363b8dfb1ced144cbdc1bf8d3ed9da3b23ed1f68fb47da3ec1f68fb47d83ec1f60fb303ed1f60fb47d83ec1f60fb04f43b3813171a9e55eae4207dd5b15dbf2781df022b1af71f0be2631e8f4631eaf47c6ff6e5e8ae15a21085a2d1093b34b5b9243f6fd2e288b9df97336c090ed1424b1b2ddf766f206cec37442adee8db550c299c81a6c24f5fc058afd04eaaba604b52ae5b1cfe4fc0a69b5d960f02a5f03acf06c35f5fa1db46fc0dab193e9069b53e2824bbf03072557c057647c10e695be0771547d61493b94ff29b8bf34f61e57935d4dcadedfc8db9f06c378a9573833b95e908b29ecda4206fe6a1ab4ede51dd1e753376f84cadbbf01deebe0839b13f80ba541e633226c1b968ee6c4ea81f5dc86a39a7b1823c8db229604f8f61499dd0e7c58f7fa1b17dcca951ae5f2fa8bbb64ed9b1f313fc3a44fdbab1e578c8b4bf9329515d0ec0d3a12f744f427a097a097a08e823a1db102f07c2ec4f3c09a5b658d7f326f34c7dd0f4b5c0977065e9042ccf084617430ec5b9195c76461fdc75b96bec56e21db33f514f91d83b43ed1a741f611d069d08e878e8f123a11d05d82ec3b47634250d984218a13da6c36432c54adc60cd21bc76c4f43b232d4ec43ec1f60c30d3a0f01a8cbeca3ed1f68d4ec8c7604091b27561ad9a12b37890fa1575ea867c450dfe56bc89ec9943e3631f1b1f03d1eaf81fedcb442d168b442168b45c285aadfb7a39b7486c9b3e90b02a8ccae9a95798c52384ca57be850cf9ecafb124a6d9b3fa7312595ed44ce7ca546df81520f087b8fb4cc427666faf98d83e61b343e272d6fdcd94fa8d6eebb1d57f998f77ccefbe62e799dcee90faea7747763dbb43ebfbee7573a89d4e7c467353c31d6d5f88d763fcc6ae6f99fd159de1da8f3197e58f77eeb1ecf2f7657b37c59ce65f23dce5ea675cbcb217bc67f7f4e566fb214c39972650a485e108d8ae0dac9d169dd78ea821cc25c9f62730fb1de9bec3ef15e5f119e4fd87398679877dcc4315ec29cc2dcc2a733675109f4b2cede4bf2631ba707b933ad1d507d40fac3bc12b985d61de1dc0ba817587503ad0a7309730bb59b03743111ece104a8357219e61df743aa0a73094c8e8188af6632e61e1dc66b87d4adc0f721d0f0603da33a80c4c4fae1f5c77c77da6efb4ddf0bae103aa690a05825c988c4c746d908a0f90be245b31fe435c98cec180f6edc1108c4d01f5c333e88fa63e88fa43e89d10fa43572183a80f90dec3673fb0dfb33f81c833a618d4ab97ae1f5153406ffc9323b7710df959b7e33895dd31b7c60f6a92bb9b3d89cdc86aa4edbc93df33dc6318f563e07c4f57a3e37fb42e25c2b45a2d170ae042d39336e08525b6e3f99830793161315ca910152f9c7f2466ce5fc8912dec53f80d86d9ee5f621125f967945a6905cbf86126a1f3728865a3e4fc98eec0ae4bf721969756ff00c33614fe7cc69cabb7df1a86b1d3b82d506a5272b4da7be46fdeab7c3fc97c3a75fef1fd47fdc6ecef7e7b8d9fd9fd47d2ff003ea393e4fe5b93dd9d97de2d876e5fee5be77fb0f9d4e9fde5e7337bf7876fcbf720f2f9f8ee62f7ff00d46bcd17e3cce7fe1f912b6ecffb8b65f8bdc5b6afe3ccc4897dbef1d14f8fb8456cf8fbe5b92af2fbe3c09e4ec63dc63f1fe66159f6fbe5f0ff001fb895f25afbe34c34b9ff0078a64a9f9f3129549cfe7927b7c4fbe24fe4fcc5cbf37f690e51e3ee90c7e5f92530dfcf717457f9f33aff009bdc4f78e87e2c4cfc0f9946d66ebfd85f98bf0e659e7f17b8f9ff0099dca7776ff53b737b7fb917ec7fa9157f37c8a912ff001ea24f21fb3f3278c9d70fd4582f53f1660be25fda437e47e34792f23f1a7f1ffee34b7cbdff00dce4fe7f9369e27f9ee55e3abf9b3127e7ff0073063b9fee7f3dfee4efe3fc4c77e1ff0079cefc7f261c75ff003643df9fde79d9b7f79cd5f8fdcb2b2fc7a9f90ff26efc015ba1bfe2c759ef7dc307e27b9dfe6ffea60e675fef3e11f9ee476f07f79078dabf8b122c87e7cc8de57e7b9e07b7de332f2fe6ce861fcf7375f87fdce7d3f1ea725b9bfc7729fcff0070beff0085dcbe1dbf2e65fa733fec5edc7f96e5bf1be66eefafcb71cf7fa7fb182ddef8fbe783ebfdc6ecc1f96e60f7ff00d8abc4ff002e62e67e77725bce7e793696779c7de15ff2bdc94defcb98b178bf26245592e27dd12ecaa7f9e48edf07ee8b96a98bfde3c8d63fcf733fe7fb983f0fdcbabf0bfbcf8a727f7cea763fdc6fdbf3fb94e8fe3ccb7cceafb8faea7f8ee3e764557fa89cb0efc7a9933f93dca2b4fc7a9b569f8f33a9f83398e4f367f1c9b593e1ff00267fcbf725791309fdf1d5ac8aa326903ce336c1e487d7bf298f7397fc8ee4185b799f799cbd9f9dd8ef34e95f9b1b7054b793f8d83663e722b2e1eff60315f5510fdbe66786f774593ad6d82ab45d6383dbde3ea2c1bf5d721ede93f41eaf47fbc2d17a0b85688423931075d6b6934d163549495d703119108b026d6d0574ff000573e44b343c44ce6b8e73abe22046e4e6b1dc74a62e6dc8f674bf3a183487955e449746cce5f11d279fcda095267cd45f01ac3e56c90b64958d2c284be86f80934b77d621c4a162c612dbdd76445977791f31553a3e904a558765818cb52df084ff000e8964c34ebe0a2137b16f8a16f60e78427c793984e8d7b0149d92dfa057fa42913f64378afc370bfce13fa37a0a74b9e04378780ef1abca195c5a98c65d44d598bec1453ab7d8573efa1d6eee02e6fb213fab04d2785f60d1cd776814f3ed887279d8163bf0909e723b3020e2f1419da7e2980d6b393940a1b9d301e4c1f00b760f9e0263aabcf03959fc0bf3e761b4be3c19f7e6e9216586b07c8a8607307e084ee90424bc102db37f809689af6e52f9c3d4e1c316f4df2989730d78f1813ac58f41e003d92cd61cc09657c45919d2974c06b1f2b9068cae883437b2b7c30566f25bc4d84d715fc3909cf17f02b94ac62f50e7e3b1fb856e701b3da598e861be17049d5bdc15dc7b596902cad339740564c1bf706932654c9837e29b3a6e4dc76ea55db13929d44738c23ba8137b4d6ea4d98d5ca7506b552f0836485bdb1f34c5b8f961ccc9d4a29e4341b6948a9314a6dd378189477225904d67a9b4d9c3e58fc4844d4db2c99ec359dcdb01adc687cea606a8b7b1b7e90e8930954d4d6f416690df018dbe74983e02992537b28f90f26c2e60b1eded52dc49bb6d8164e56f81cda376c04f5536e22557a09930ff000dc4331573716073c16f64fe8266c9d7369740d1baf6ecea8e43f860bc4adf2c06b6d2265adb906ba9b4b094acd95cdcd282385db56e9d0ac4932b16393b8e366ee8b98d0f297a28b25715bd12e946bc39e5b210c25d5b2abb8d69eca9c973e6346d6f76a2d9190a73f25830332da2437ab68ae13496e27c4dd9b68861a70cc585965e457caa2442d3027c967028084da58e6c331d81cca6bc5ee5553295e67c48cd871c57e839de3bc280da5bd9f509e88de2c95ea2c583a83c4f22e2571b28a31f2ed09b859ea3fc86e36f8113993187cc5b27afa5f762d7264196376b08a71ad2752f08cdafa3ebe8787a318c631f1bd1eaf81fed6b55c2b81688421085c2843db4bbf58650ce5dc755f24c98db02f32928dee872b6555587070a299a9ace72ce45b7669741aa6d45892752490d3dedb8eb0b09ba9e53dccd7e3da9d46393bf51a1d4dbc7b196b95b3323798fe4664996e2e5cf90d5bb3a2b9ea6e6777dc4bdd7d3964e6e6f381ec5e711d7ec3b9d3f23bade5af61ad4a4adb799b29be33bd1eebb7974c39659dba74368d9a334966ee570fc4d9179a672dbd8cf543cb16edc9d5ee7f48f245abd0dd9f5866d24b7ceed8f66b6ea4f2d4bc98ddf1566d9bfbb2abe931331896f966fadcee3dced38dc666c66eecb733e23ed9d2b1577679e45bd6f8b85777be4c0f14c6e2ebaf965b36e5bb16db6f7704b57e70ba87d72c5b593cb82eb5a5dd8b02f12a5aa3fb88cf1374d87b4fe6732e3b9567cd946ead7c4adb6ef3d44a7fa0c47cc8f2c4a24ebbdac6949aecdb08b233ae4ec14251eaabe7d3226db4c4f3bb7c8c6e0e4dbaa3e48ad176accdf6213c4cacbb8e7f11044b65bb9ef04df20debb9fb0a793b26bbadd5ec3b102c5af7727f036ad8f3838fdc70d0c4dcb3f0dc553398a4ca4c0b0952adbbf6824df58ace36f79d0cb6636b9da972fe0dc5cf2f9b25d15e9d84a15392756e4fab1469376f395f231d58c45e4fae39c2632def162b7f59b8d3ae1927272bd8c9cb7225126efe435475227bafc730c2c16f3d05cc28e1d55b7d524bfc099766c55ab6dc6f0a2785c1573e5adc6190bc34e5c92bb89265883adb697c658c42e293345b6c0836b9b5d5df93593912ce25976a3aa4dc6ff006229ac8c42b094d8cd5cb39a273a97ebe739723da675a7f3bb0f961f24f377dc5756f64a492926048d9dd137f67b9b2b0a530e2e8a08e7d663755774a72222c6b1bada7b8db1151e0929102096f993bd842446184e7eec72946c9257d509b5f11eac315774fa29ca15cbb49a997d31bec367224f9be4efbb436d8752c9cb931289d023a91dd89761e7635453ca613635d835e5899e7fc8f96929b1f34df21a213778161559ccb052addc95cde72f715759ddeaf3e7492bab634d74e918d8662bc34dc4f9996a41c6ceb5d83c00393386d9f91466e1a594dc5764d7b1be9cead913c63047276ab9daf659bd0c5d4b96ea2e8aec2d90b23e8f9f91038f23bbb6d88ec4ca56e2599b8e8e4d9875de9464d96ca9c496fe0cfcd2c378c6d36f244f070df37b16a30e5b3c27cb1e065d6adb4af65645d877d7c2c6cde7034224f0d57b79dc7b60f7a13aaedcb106156eb6d9fb8afb43272ef1c7c30d6de1bdf235acc9c6b29577967b99a9ec53b25b56442eac4cbf80fabc61b6e27f5263ca1625584d3ae30354af398e0b709a4b0c516c7d26e9cc3622d6a597cb916b89b5ebd469adb1e5bafcd373a9f2afaea618f81f0b18f81f0bd5fee4b85085a2e15c684727a7ddf4f9a57ab1c9f5434bfb781e9384f773bf01b6c27475e981db24e57b751726524f77fc8ae4957fc9dc6b2759bc9d18a68b85aee1c113c35bf7dba60556ac369f7305379cd721e161a7ba6ccf937d58f876536b3ddec47bace32ce7b1f585af7cbdfa22cade703c4f19636977c611dab73f29ba6ea5372bd94776467c3ee74e4c6db9db7f236d6ebdc76e6f9ee63dbc0eecb7ea8ea9aecfecb8c2cbd86da5f5636b79574ea72493dfa7d06e6767b9cb7aba0aae43773b5e42ca5d4cccbc72676f70aef8e86ef1b2e68fa0dae5bf637f0f6429d972f835b364db7d86cc826984b2f017c0e8cf72f94e8169d9a5e877cb4787b2d95ce5fe543992c7d46bbb0556287365872ba1561c09ee55692e6a859928cbd3797a7e3454b605d9fba4325cf044cb429d2eaec5eb3d5ee8fe1f51ac6d5e1fcce77b6fbc7b0f09a7bbc72db7192ea9ac3bcae0669a64abf7cadd0c5dfbc6a4eeaee326aaf255c7833ee995a592f3109123688b7936c559b549b93dfc893e86354e9b27dbb8fd15d01173dbb8cd935365d92f9ec66ad132ef34fa7f636b32522e4a752db46e9751b9fb0ea43768b6efb3dc93790a9c7d9d7b8e6469be47546aef6140a24d95aa3921e4cb953abb5598213454c4c5db18de1ba7b0982df1b4e4c4db24c56daad63ee8748a2ebadee4973733b96a6e190b7b1f5e84751eeb1df8369cc4dbc2b54f693974c8e50babb77853cadf2433173e32323238ccbc0c292a367d78247d82699b7a3a70c195aa5689d1bb5204bdcb35d11cdb2895e0cbe788fe0ff804b41535537b2451e85c82172a324649b68969ec48d215388d2d66398b70ccbcb91175739cdf4330af18638d3ef1ccf21b27705467c8b7a9e36d87a899b5c92c22fa9623aba89c492db1fc1534cc93569bbcaf0e4db021b3a9a4d65a49acf2e43b5b4e6a335b7332648a51e56393cef4cd7265be9b725c871364ac72ccbe4bb190c6b25ae378cf432a992ab136e890e3056c85cd2e8fb1cc1d1c78db7ba5395306134f259c2dc36b623754cfc3ea45b1226aabcf9d43b2a8d5a93caea58d9d189b6f7eb5931b4f88a9b5f11b72f21346a368ad2697be77398952d6d67bf93796f22799848dc46f1bb6f1e72d0d635dc92c116cf1d46b2479b85e3026d94af12baed1099aca58db6766cdaf2feac6c0eb467246b157b99d76f244ddbbfc4be4a6e989e4712d88c2722c8ed6c4dc95745f51add91e662d7c84256702daa6f7e7b781e9b469e3a20f6168e45ccfa089292b8a9b5b2d89b2112e43a31e23b3963b8f57869b75f3bd096dd4f957a661f03e07a3d5feeab55a2d170210b442d50842393d3ec529a36efd09bdbc9ae51f92dcd83e415425649eeb3818f78967dc499abe9b8ec0729abf0151b624da4e1ae6dc16baa50e72eb116b10d6df027cb7f31bb5f22a9b7c4fc8771e76cdf99836b9ec9232fe89139ba9b2ddb6e9c8e7bd5be3ea3696185434ef2c671b1e7ccec35634be1cc776bf3179a8bcdc9dfb8b9a5bbc5ea5da952bf20d3916dcc5c35e0a744bc9979e5d896cc15f2f91cfea670d6c91704d95f8f31b89f2bc9722b9d2ec5b9b3ee377073bb9793d86f963c9cbe42e94f28daa517cc5bda7c80b4dcee6ecbf1684d2539d37bf2179f0d167d4fe8cb77be0e79d85d3e82e9cb91b3a7516fb8d9bc96e9ec2cc497f435efd7a8fd76ea3fc56df113293ca785d864e72bd1f813b246325fa936f719dc6c98dccb339e5798b746dd1d9f56c0e4f384b67ccb6d24f675bbedb9102717678f610f6e84bb8c12e9c977f9926cabeaebdc82aca4925c2cf312469b3b31044e13752f860a4f2ae675f77912358696c6faf6846f2a9233e6bb09895b2b6d766d7ea2da9c8b8e9c9e73865a93bd52ec9ae690d721d1b2af79d893791e52c3970ba08aeea45170b7bb5ee742c6c9c4eb9dbcbb0d495c2b55dcc788f98d09274aa6df17b3ecc54992676e8b712e2ab38dcf71fb0511d6ac6524f1b72bcc679659244885e4a92f83c0e1e5a6f563210842108421084270fd1e1a2bb0797742bf0a7e0b90ad0c91369167a312255a4eb1bcadbf9c0dacb49b61de4b917f6298ef9a6f6f677a7f22a268acebb13dbbe09e65d69bf6781c6ed6764dbca577424d45c8cdb46941bb0185db3c8495569166349de6256e5ac26bcaf631b37b9d36cc763ee34cd6c8557939e4e60d6c75db1f2299f3de5ddadeb2b04e9aca6e4ea5bad92d8ef3b1edf230b57a15e698e99daa5e79a1214c944cdf5f80df08d666f9ad9f7652780acc5e79b4cb534e8a4f74f6dd946c35ca732957b781a5e1a69f8ca5942864f2d39ee42aaf96bbb38b976f258de4722dd3cee6f2777524f9e06bbb71cf9ce6bee75b7afea2517b39a95bcc524db25ca6af37ca2f22cc946f811eec677819612ec97f25b848e9b25bf5194a2a6c9633b7726932e324f9379cf3313a8ef5e9b2171956a64845d893c34872a61a4daa6f9392d4b9fcc6c975a7f047f264f9570597a3d1e8f89f0bd5feeab55c0b55a210b442d168847262778dde3e45d472752aef6f71146595251c7bec2baec09bc6efaf52079c46fb0b4e67c95c2f619626dd67333d1f0632a3a75e553cadf065726f4c614dd8955bb6ee398b2ae7cb236aa8f1cfaa1c91e16f8fa1d34c31f16278d937d7236a55977e346da694c3d9a7ccf31b796d0967acda9beee3e5dcce3e042a7955ed11b5bb7f236f6ae8d0f6f1bdfa09be47fe899efbafc8724df3d872555a2ac13ec9f23e7fca156a12d5b2e749d5609b27cb7f04e5d361ac6f3967a922e7593af8f035bff0083bb725c8a67aedb8e3c227b0a6cbc09dabe057cb65f210f1afb8996539645675f6f267c3a2bca1378e9b336785b72156fa7939e1fc459782f2de7d04e0b7fe04ebc72e48e4ea32db629ff002c68ddc721236f7dc598967a8936d9bee1328524ae06d3ab6dec90ceb4d0d6ec6d0fa97c048f3bac9f9277b8ea32716ce56faf6116c4db8d35651350a6d85e49ddd6ba739e458312e33cf0266aa5bb98c2eb0c21c8e3ecc6557332ece775cc6dd469b584dbaac792475abcdac25f9d8698da58351d71725d3ee37b056c9ef1ef1ad84c99b39b5bfc7ba30e6f12b49d6a6cd35f41fa85b938eafe06bbcd23776ec859ab2a55579aedcc4898d61849ed9c5824cc4b6a3a726d72f73095ec336e5e5318ee66ada8e932d96793160926db487d94e4d8e7bab650e42eaf7426b7f5bd6ade6916d0a364ee6c91df7ee2a6abb8458b7cf516ee32ba752fdd58f45e46d36992fa5d21653e084268842138dfdce2b61ec925bb14b328557d80c4cac3c044dfc4c85bb1844fe2359def25b10eac6465b166ed77cf28866fa978258f65ba1d2c4a56ae6f28bb914c99d54965717662691c995b9f8a35a26ba869d53e81db0936c51f39508b3de9c9851ed6f21a916186957874db0324d8a962663ead371e7a09604dc35bdf3dc6ba81ce504222398958c6f2926cf934ae777209b5e469b0b6c2781b71bea9b39cc4c471569a6e3923e9f230d34fc95ce3e5049dba8b78b179a2a6932921a7bedbe5e718a670ea15dddf3e04e8d2dab45cb92c08a3a9a8e25cb9677c8824c35b3ce7a5e457d179b97e062e334fa32937b6c576556ec9612efd6d1b74d34db55adb6c65236bcbfa8c9149a912e8c24a2ae663b9df3c85dd5a61be6bec4673e8658919669c8db6ebd8e730d54f2ab9fd08a85bae4ba61b5b913155b9bdfd87e6788a6dfc7421337bcb4df03dbb8559e7d960e664d271f6f2361f53726f4f977d4650e84318c7abf45f1bfdd56ab55c0b45a2d1085aad79ef696639bef83f0c48f61c9cb7e4282a5952f4a29c1d6896393db30d85a2991530bd52e4c41aab5d516edff035ba9ee530686a51a695b4b7692ede3909b0c9656c353298cd6ccfb615c6e4e534f771ec25db6f226f6e6b6398de3eac46d7a35fe4f0fa31f41b5b07146b19d9e3dc6dbdf2f76d8faecff3620f13cb2ccdd8a89ade8b18ee63355d857d6a95fe31c533cbf91ce7b7333b6de3fb32f1b312e4f1c85c9db72b0a721f43b127950b965fcc9928da614ea3ed9d87cef1d50fb3c267ce2d5c1b9f73a92cf3333f936f027f01f3a934f191b48c49c855127152da9315017ba26bf23715d598328a031d6ec6c6baa5df64546f00aae1e74629bcd7b8e671c76e3741e4f29e151bab86b325de69b84fdb9c26edfe148aa14e9a85024595bf37cdc1bde7cc02eb4df8a2f22341416a4fb2392fc6576dbf1966aab16eee10992a9b6be8172c5cd6d72293af0dcb7861cddde7d290d62b6ebcbfe42cb6563f9751725e14df67d8b7b34dd958b05932df2f2eb124216eb6890911959dd2c61f3ee6422bcb9f3709b4f7390d84e9525165cddefbf518b3718d3f229860553e7fc88d8a9ae1edbbdb2446d2e0ab588abdb97dc9619584972bd52c8ccf29a59cb99db13a0f3b893c6dbf35ec6c24aa12ec69753996eb6892ca5b61f446f1d4caf47b6196b2ab516ec93c604f9983a2e58ce2aa2eab2844d6df61cfe0335501d7314a5ceae90cd81cbe364cf6a6840bfa1d0909abf8c3fc90ff00283fc307fd007f960ffa907fd183fea81efa6e835e2a814a35f241f0810e86d379b0e7cd10f998df6a8936d5d0ee6c1d8bbb7979f97c869282236ddb7222d1e66e6cf0f61534d549b7a16df0371b8c2e9e86390cdb33725bbafaf78334d49b12134ed689946a5b17cfae7b90768b9c7cd77e59232cd2edcee771654d41939b1e72324932bd989be8f0cdccb05197bf7125a32f76c539f914ae61edb656dec2b1b4bb15e4fb0b3993afb8e3ebdf99b33ca5b72dafe3169ba6b669175cae44e4872b0b1be7e192455b30ddeef65fc0913cb5d89f2779a7d476e24b9abaff00226e49ab9523eb3c907779127db1b41e61bca594baadefc0dc1ec7378d913c9a5cf6566fdc69a8938bdd56fe7c1813786936dcf1be4daeb5df70e921d764b214d4d269ecadeea243b562349447ca771a60c6edcd3e97b92692e226d6ebb58847b695785be52c56b91c9833692dfad1c9786e2584d7d49a66c2c774296b85bcff00243d86b67b3f889311a5537d7d84b69e3e6265d872e42925d5b1269ed916c1f0e385fa0f85e8f57fb7ae05a2d570a170a10b442d1688cdc045b361f34d639c5645af637cb99bb642526b0d6c3912add6e2c7a25cf4f22ef64579958d644835f893c479fb0320cbcaa6c860c6578659eff014383b87f2dfa8f51b97afd10e9b6d764b3164532deedb0d5b3637507b051a44d74cb135e782e663ddec356cfd581daa66bb96ddbd8e932f80f1d712c6e73d362f21f21bbe04bd9e7862ae11cb630d6cd6cb0e9deedf53cb78a276eace1b42edde07767e994637b50c553b4c8dab917616e2c8b68c50fe065e36e5e04598748c59ed3f02b979b0b027f68eecf0394c0fb09afe2781ab9f3d8687323ec3b63d86456197c05649d3ac3bd9cd41a3ec09f8bf616eda7be50b1f3b9c15795dd0978a9c9c33ee579c673efd98b9acd4da3165f8ce3c0a597be086374fc18ea92f0cc054be1c8ec2eb1e455867cb2992e2cf94e8373e7262d972ee9f516ee27ba8f7ea6ca4f9446e5f9a310dfc90aafa19893c096f0c9cde314d249e36c09572f9fb0a5d709773f8a32738f97dc5b526f6b6898ad1295220a472d5173f253369a4b6bb198937873597f15b08ac7b954c5093c19692143dd1bb9baee6778cf279c10ea129b3c9fb8a194fae50974c8ed66e7c909972b25b36d097cc8f10aec87cd8b9a23979af71c566d1cd737b8dea36edaba37d3b093be9eedb2735ee37ba4994d3c78a3d1d65735279ab999062b74782c4774212b2c57deea512f2e66a59f314567cd48f9ce729cf81ee2875c9f1c8e117c367920f31f0f88ec90e9382a65cb27eb4dda94de6d36ee3cd8ba39ebb11d4e78c35f8f31a2276d9b9c77dc7551ff0cd84b69b74b327d323854f7bc569f13312ad6cd7bd28aa55124ec75cde7b8b9aa2ebaf2de6bafabdc449aae55cb5cf287c675b2d3eeee3a0d86a26cd9bfa98944b07b53cf363474cd87b5dfe041aadb69b2d5c46fe852f37794e9b2ac6f71372e67386afcc4cc33c32da9bfd86c4c9228a2b3293f88d86eb4d726b9b12224926c967751e44e6b6d88f64ea39dd8526c9f925988726c424d34eeeadd90694d997c9fc077572a7b041f65cbcdc9bf92768c8c9e5d69afb8de988936c273b5379f2eda79c498581c5bad3715bd0c06d9e2342074970da6b3dbb0d94cf19ab72691b716ea609bab91a671bdcca9ab39e7da762f5b9934ce3690b24d6ceb5f1747495253953787cc78d34f627d1f01d75792e9b3635ab6d53b5ee3a4dab91fb083922db4d2f0d413adc6373eb48b1a4ab42e44d415a6f0be6464c9ee0da7d4bafea4d8b3ce7330be6b131cd6cbe42a3c5843638524d3c9e73161f2179ee3aab8f5bd0fab6e8c7e93f4dfef0b45c2b45c0b55a2d5145fee72aba35b3f898375cf33f1c42ce77d845ef0e47cc5fd0667b61a19f517d540e1393b62fe45093a9b275fc9bcbf099cdc7563f81fccffda17b937fa8beadb8823d81e45e54c6079dec0c67532630b672c09de1bf9594266a7c909db08c736036eee0b30949d883cca373a4cfbe5cb4f2fa786d6a0d2e7cc736205eec06fa906d21312fa43fa084ff00d22d73d780c6a37af01df6079f7f03415c177be28f30505bc852bbcff1d8445693778397bde437558317401cf39b3f82390c01c95f81d8a6fbd7f0429c74e6ff00a0544fe07f41916c74252e77e1c85b5e2ff03f86027efe4fea133399f3fe81ce50aedaa29126aee09e77040a81e8015f41069b1e085b7905edbcb4600e065f0a2b90be639f8ec64fe3fc0fc6ff00816da5fe3d07dfb6bfa47167f8f433272fc3a09119de163cd78c2ea08dc234ec4a0b04bb24669c318788368f3ff48d7bfe2f63aff9bd85fce7f48d63cdfe27c9ae47c8b55582bca1f370b91fc834dfd9099cbf80c1f3606abec852fb65eb677c0f34fe03982d760a6cdf804a6eaec7f84c3b1f92606be5fda343fe12eafe997fd5996fede9f535e73f63cc57ac29df5fc16be5fc0b5e4dec1cc4bf2fe03a0fe012db3f03be2fb42ead87e027f20316d770692104e095b382e336002b94808ac9e4d3d31abf27f21340aca3154ec0a7416901a3701a26d2ec1e4edf29072dc08f21c3b2b108cb46d2f9649cc44b08e608772d7964fa8ca9b9348fea89a21e494fe049149da7f0504a5a91181b2f3dd374bd83f68b7376fe4df2f8a66e83df1bb376493e6361ef931f41f51c874a2298ba3dcfe2deafd063f49eaff6f5c0b850b45e8210b55c0b442108445d04ba04da91b5f110d95f1096c9f8bee27b23e3fb893b7bf10fbb17f632ca1d4d8b195de32b0e47dc9fd8a27b7bb13dbdf0a3fe46b00222721a7165f465d8f46b15f703b2b7e3182ad77712153aba3236632d267f883fc847f908ff00011fe42105436b4e216de318e13dc09dfac14fb812fb83fb406bfb81ff007c1ff64391f307fb03fd01fec0ff00602dcf9817f603e80c8fec83fb205fda0fed01ae9790d4a27b7f7c70ab3e230557e58e7061cd53fc647f848ff291fe523fca45fed21e8e1bc2c0d5a4b9df42cb3fe40ffb06b803fb7861e621c2a3cb1d52661d8c4f49a83ca711dafb23b4f63b4f63fca47f9489666d61a5b3186619ac31b34973b864e7bc10fb81d7f9e7f6a0c6fee071aadf218a4c7e58f301a9b48ff091fe523fca47f948ff00091fe32149d68de21389d4ee5988f88b5c3f108d4be030bedefc5feecfee53fb147cff007a3fed273fe745b3f3a7f6a9fdaa737efcb7f96731eec7265f8c8b7de088ab7ab365ebbb274fd847f8c8ff00191fe323fc645bec21f9d789a2b16e3cb376c22e27861e6e7c071bb3de0dd01ebf5e3769cedd7ba087f701afbc1afba1f4d36a7bab3fb2c6a492426c939fda231f7a3fc1bea33bb3f2ea37bbfcb7dc63767e5b1a4f7c90e4863d18f8deaf47a3d5f03fdcd702f4968842d16ab442d10842d1085a262109e8989898989f41313d4183ce79dd189f61c370386e18dc0ec0edcf231e71ebf845294a51a3c1c95ea39364ab73aa1c165b8c8fac37ebe07d42bc8aea575c1985f53954aea26ea2a6e303c1f564687e036ac8c6c31f7987c2b98f52f37f51461903a8289a225ccc0c952c8c4d64e488d0bed4be251b273b0f931d474a3a654d37e4b9849851841ae610a0dde2aaaedcc481d509a7d9f1201a88d0d54bb93ea8463136f264644b9fb9d60d733a81f318e996770ee1b0c85d4183ac302b1a7b8c96464a66d248deed32eaf9f0528b73008e7cf3f9e899830e6de47d791f9c8d63fa8de3b4061b1b1b1b1b18c63d1fe85f0bd1fa4ff6d5aaf450842170ad10b810842d1084213109884c42630c30dee30fa0dc8f8c6c74e66c1b06446c99c7be8f7c0b82e8d1df8421e46651bb9c19371bd47753dc19d46d771b751bf5f897d46dd4beb82ba97d4bbb97d44fd7036ee3fa8fbb99f71d8c999647bc83f375178573f0c7acbcdf51c986579837a9dd2eee3075dceb86a6b239770377c5c4ea9ee349ab4cea9f1210ad23c9b091b8faae4c7483d379188bbb8d4f0393dc72683f971a32e4a9f8edc174a208529dbfa0f02a37472c149b1b47e47fc0f823ccaea5ddcf313532db93be3c6b684681db1b6c9d9c23dd9fcb2e9781b5445f11b0f1755b1ac52cde476723331953bda3c8ba4e30c30c6c6c6c63636318c631fe818f85e8f57abe07fbbae042e042168b810842d13114427a210989898989f2186f90c3693f015b46ca367a9b26747dd47be214a529468ce9f48f7c6581bd4ddc9dd39770770ee8dfa8fbcf31b75c17d4bebb8daee79e0f313f5f22eed177536f26d0ca9d195742f263daeffa0d94ba539bc3279f9beba0657f5395741e586219cee8f4d64732c8e5d0d4106a5dbf72f8694a529468a152777d7f0188b52518c5068c8bd17ddf72a592929b9530f67b948d5a62e6994a5294a23b256df4f9185d99a750c5e3618a948e812630cf78bbf02c867c076dff00286b63858187db6d7233be2493d997d06cca5294a2563369cdb35cf99ff030663654b5c9bc6e9dee27a186c6186c6c6fa8d8c636318c7a3d5fa0f8df0bd5f1bfdb56ab55a2d568bd342d10842d1084210988426213131313186186e282360d933aea64ea3c0e07be114a529468ff00c21efecccc9bf9f8191e752e65c8fb87de33e432f5f27988736ea79cf78660a3c8f77435f7fd06f25294a6f7e19f96733ee06f1d4d17a1dd33ac8e5cc8cc926b222185555e4303ab33ce94a5291450b639a7867bc428db0fc41acc6c9819f73be4ccec25db1a105daabb7bae6878d695944da28494f631d81b6b74730d754f98d11b0f1e04b96068d31d23126318d79838d606ca30e8ca9245a2eab49eeb7bf563665294a5d1fd44e24e697363986f96c7394bb79dcee69eff001bd036363636363631b1b1b1b1fa0f47c4f57c0f85eaf57c0ff695c0b55aae35a2d56885c0b44f442168b44c42109a1098989886f6186186f618ea6a5b06746746d5d03e525bc0294a528f9ff187b8b338ddd57dbd17d6c65fbf51f7e4f2d45d6f42193e843ee6d696d64cab3a6b5f7fd06f25294a6e7e18ff0081ccfe507673ae3e0020d13842463d56c32348cbf343c385294a5223939eef91fc8f12d9b2e7816363462864c9b435d64642664d35c86b8b1493cbabc3294a5294ac6ce49132bba7ba14a1757892f87b31267ee989fcc6cea256af90af70fa4c57dab19e43bdc33493bf80cce36124cc30c6da5afe3ee11d38c99fc6fb0d994a5294a4b35adf5ec873a95a94f08d90d7b7153c95b92d4e59b86ef040da0c30d8d8d8d8d8d8c6318c6c631ebdb8dfe9dfedab896ab8970ad10b442d5084216884c42108a213131098c30c38fc251b4ccab543b3bb0a5294a37e1f23de5e91b9d4dc321fd5a0c30f88345147dd13affb4750ca8f7643e7e3fa0de74a529b9f87f43f01d5e8116ccfa6ce229331d7e66d11686e46c4e2b43591f3549f87cd174a528a4f394f0d08c76386caeebe0c7e20f666166fa24cee9269d1f33905c560dbc35d044f52f74f9a7e34ba5294a265b168c7243f63f24f0479f98e7684f6a3ff002876e077c36ddf143afed87094fdff00518934d67356be44127ba12df9b11207135ee647bc2b294ba5298008d661248cbad24eaea18b952e79a59b2cde4f7ccdb97e1e061b1b1b1b18d8c6c6319463631f0bf51eaf85eaf8dfed4bd45aafd0a10845108ba262109884213131861871ccc66eda5b66646d89ab497be3e23fe7f230fdd998fd8cacdce035965f07f7e9450416976f5f5e0ca8a0b7e5d87bbe1def0fe861f819d03733afbd347bda8439926b235f5b1a378b6bd86df11a8dae2844d6dbcea595f1433e269b46d8169ae6404337836f392e4aedb0f25061c3931efdd7462f5a76add767df5a5294a52944b6677d9df6537653294a52f0c4016acc248d9deb98ff006192edb6c7394736f26ee75061cbd0c1a836363637d46c6c6c63636318f47a3d597f48fd37fb8ad568b55c6b8171ad1084c4210842d1098989898861861c73d8d2dac99d1b6644545f883f0fd069e66498c9c23af1197c5a7cc22b2115aff6cd9e86445c1f2bf2c0f77c3b9e1fd059f999d0b2b477f459ad31d29bdcdb24d6498ee48258d4c9b0ca60b9732e29cce7064365caf8ee37072a953320e5916447a7b8f64e8da509185704c6485d41c563c9f9cc7538f4a5294a5294a5294a5294a5d524378df3ec84e5c511e5f70fbcef71c187b6d97a77b80bc9a0c36363636363631b18c6c6c6c7c0c7e9bd1fa2fd57fb52e35aad16ab45c6b45aa16ab4a510b442108421084c4c4c4c61863bda9ede4ccb26546117f32d014a5294cff3f024f231e8b21be65c1ef9f2461fa20041709d250cc8e77d06aff0d86cb294a537fc3fa18797ea22591eaaf5eb49dd1dd4ea32c5063fd484db52b27b727b8adc8a5294a24a56cee4bb31dad9269ad9a18a18b7a780c27cc7a991acb22d48f88c2636231d74ce8777e8362726e526535a5294a5294a5d694a52947b844c34f23c27dd97cc1521c4bc233e5b7dc7adb7463b93be5f8d141b1b1b1b1b1b18d8d8c6c6363d1e8c7abfd4bfdd96abd542d10bd145d5085aa62d10842626262630c370539699564daa636722db7ba151f13f8be821799cd0b73277f8156197c402082e41776a794f74d8649ac8a59fc98eb7ec1b9c3bfe1fd0524fe14a64333d459bd28aef330fea357325330a6a6cbf2b347c69cc5747df898d50a78fb15b2ac3f8a2266cd90992d1610ee13e63fa8f65918a81f494e8c4eab9d9be0e9f012c979ab27dbee2da3d3f29953235bfadb7ac0c88ab9a9bf8f24392e6cd72fcb1c3bdfca8cdb21aec35b6e990be9db9f049c81b1b1b1b1b1bf71b1b1b18d8c6c6318f85eafd17eb3fdc9702d56ab850842f4171a109e88a262289884f4426262626309898dc21db24a134c999c713573dccdf616634bc3fb1fe03fb1fe43fb1fe23fb0d3bfb4fec49a52dd6dac2d8561d4db86ea323e071f00363e1020820b50ed1df22d6443b440697a2bab58d8590a9f67f63fca7f63fca7f63fca7f61a77f69fd85e4c4f97d820d36f9811905dee5b458cb4f988f774a06de4a964b3ea12a4538ce4d6cc59f03ecfec7f8cfec7f9cfec7f90fec35efecbfb1b31f87d824d996659393db9319715236489eebc8ba32bc8f4d41cda6c92e63d3dc7e48324c391aa773920b5ddf63c16806eeaf67814a6f1f89ec77124a7f41a37621c991eb93b0276cc49552756e099bad732be42a694ae6cf923e1a6f7c8734fee3575f3dc70cbe835dc9b993bc574afc0036363636363636363636363631b1eaf57a31fa0fd07c4f57fbb2d57a2b45c4b856ab442d10842d13d1098989898ba09898989898dc06ed12e648c9526b609113a5e49126fee5d61bdc7d5fb99197b90b8dee241be7b8e6674ca992fccdfc9fe3a0fa07a8ba29753d9a105fd8c9a7ddf868c5a253bb0b695f114495fb8d6edee63dfee25fdc95c6f712356d79332abdcadba6f9cb1f0d1770b4b3e6773e04e647b26998809dc59257ee32b7fb9dcfb9d4fdcebfee349e5ee266afdc73351f514cdddcb0cbd34146837a8f5323173226c1da6989ad3258e63d51976a52385d197d054920e8cbea162c1ee9fc0b557e2a1067e1318eaf7828b0fcb6c5ab3e2afab2853e02fa163e28cca994f25eadee5ca6fff0022a06d6705ae4a733b8579e977743fa341b186c6c6c6c6c6c6c6c6c6c6c6c6c7c4f57c6f81f03d5eaff7a5aa16ab8d7a8b8d6885a210988a2131313109898989f007027093dc64e451b8502dcb1ffb7446f9bdcea41f592f725745a30c3d45297513294417083243b98919170bad1a10e516858c8d76f3d6587c29451869f747c3b84400acfe5a7610df368cc8a943398a6fa2c3d7a0828d561cc72e6313dc811939a1233f7216625cdee23cdee2eabdc6feef23eb77b8f5fe7a0696803d435f329ccb17e7a7dc2bc083636363636363636363636363636363637a5d1f03e07e9bf4dffc0ad50b8970a1145c084213d2eab44c4c4c4c4c4c4c4c4c4f842e64190e63ba8dea27e4c6ef98dba8c1cf98e7cf8016587e8005d1745105c43b25cc62e626ea5751bf5f719d47752dbbd2a0cbd08d11a8822cd19f33bc7744eb989fae46fd467519d4775d51965f16e8a616953f313223cc6f513f51750ef6c7228e5bfc47d41f398d7cc7f51ef9e877470fbc6ea2cbd030d8d8d8d8d8d8d8d8d8d946c6318c63fd91fef6b45aaf4d7a0b45c0842621144c4213131313ea262627c40d4799dc13f5d76c30f5a32cb0f42ea5294a5d144ca2620b52f734fba2eb168bee1eb4a8cb0f43e4d0b508208a1c81830432dc7dc3c77d53b832cbf47fcb4930bbc5dc2ee3cc4c796861f70f01bcdc63b83ef1f70c32cbd030c31461b1b1b1b1b1b18d8d8c6c6c7a36363e07c0fd47ab1ffc0af4570ae142e25c34421144f45a21313131313131313131313105a87bba8a616b1861965e23a187a14a5294a52944ca5289882d02d2208aeed0dfa8c361b8c30f8c079684104577082616abb36186e32cb2f8e1a0b8aed9a2cbd2d86c32c30cbef1965f70c30c30d8d8d8d8d8d8d8d8d8d8d8d8d8d8c6c631b18c7e931f0bd5fa2ffe0d68b55aae25e9ad1085a26265114a26262626262626262082e02a8aee170cd97ee187a0de8a5294a5294a5d14ba13104114515c04dfa8cb2cfbbd300174695a2b430d0c3ee1f78cb3e6371f012e334f83fe7d3632cb2cb2cb2f946186186c61b1b1b1b1b1b1b1b1b1b1b28d8c6ca3631f037c2ff40f47ff0000b81712d1712d56abd04f5ba210b5a21313131313131313131313105fe0410456afe4e146ca52f4294a5294a5294a52944ca2620820bbc51e870bc029742e102d15c2f7a6fb861fe800001f1887a0f41861b1b18a3636363636363636363636363636518d8c7e8bd5fa0fd37e83fdc5702f490b85712d56a9f02d6e89898842131313289944ca262626262620820822b840f8029745294a5294a5c94a5294ba2882f4c005d4a5291e80042cf2e1c6187fa2000018ae106fdf431461b186c6c6c6c6c6c6c6c6c6c6c6c6c6f46f46c6c651bd5fa2f57c2f81f13ff885a2f517a7745a52884ca21328989898989898989898820b880ead14a5294a5294a5294a5294a5294a510a2f4002e8a5294ba2e8a55a2f0865c40befa9745d1745294bc6051ea1b1b1b186f4528d946ca3651b1b294a31b1b29746c6365e17abfd03f59fee4bd15fb0d13d294a213d28989944c4c4c4c4c4c41685e10ba294a5294a5294bd34a52ff4513294a5294a5e205d14ba294a5294ba2e8a5d14bc605d0d8c5294bc217842f102e86c6c6c6c6ca51b1b1b1b1b1b1b1b1b1b1b1b18d8d8d946c6f57a5fd23d5fe85fedabd55c4bd4be8ad114a510988a26265131313131313131328994a5d14a5294a5294a52979ad294a5294a5294a5131329745d4a52e8a5294ba2f00a5294a52975294a5294a5294a5d17d8a5294a5297451b1b2946ca3651b2946ca36528d8d946c6c6c63d28f57abfd8dffc1ad57a978d6ab5ba265d289944c4c4ca51328989944ca5294a5294a5294a5294a5294a5294a5294a5294a513d4a5294a5294ba294a5294a5294ba2e8a51b294a5294a5294a5294a5294a5d14a5294a528d946c6c6ca363651b294a52f036519747add1e9785f0bff00975fa55c08a5d2e884ca52e89898989898988a26528994a5294a5294a5294a5a5294a513294a5294a528994a8a5294a5294a529745d14a5294a5294a52e8a5294a5294a5294a5294a5294a5294a52946ca528d946fdc6ca5d294a36363d1b1b2e8cbc4f85ffc82fd3ad5688be95e2ba52885a52944c4c4ca2652944ca5294a5294a5294a5294a5294a5294a5294a5294a513294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294bc8a5294a5294a5294a528d946fa1465294ba31b194a51eb7f417fe417ec17d1a5294a51313294a52944ca5294a5294a5294a5294a5294a5294a5294a5294a52f528994a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a52946ca52946ca5294a5294a5294a3652e974ba5fd23ff00975eb2fd0de1ba513294a528994a513294a5294a5294a5294a5294a52974a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a52946ca5294a5294a5294a5294a365d2975a5d1e94be8bfd2dff00955e92e3be82d2eb4a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294ba5294a5294a5294a52974a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a528d94a5294a51bd1b294bad294ba3d6f15f49fe8dfef8bf40bf4974a5d5694a5294a5294a5294a5294a52974a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a52974a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5d2e94a51946f82f0de0bff0054b82f15f46945a52e94bad28994a5294a52e94a5294a5294a5294a5d294a5294a5294a52e94a5294a5294a5294a529594a5294a5294a5294a5294a5294a5294a5294a5294a5294a529514a5294a52e94a52974a5294652fab7fea17a974bc17d1ba5294a5294a52974a5d2974a5294a52974a5294a5294a5294a52e94a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a52c3994a51b294a5294a5294a5294a5e16f5bfb0bff00a05e9de0bc178294a52974a5294a5294a5294a52e94ba52e94a5294a52974a5294a5294a5294a52f3294a5294a5d294a5294a5294a5294a5294a5294a5294a5294a52f3294a52e94a5294ba52eb782f152f1dffb6beb5e0ba52e94a5294a528994a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294ba5294a5294a5294a5294a5294a5294a5294a5294a52974a5294a32975ba5294a5e27c7781ff00dc52fab74a52f052eb4a5294a5294a5294a5294a5294a5294a5d294a52e94a5294a5294a5294a5294a52975a5294a5294a5294a5294a5294a5194a52eb78694a5d2f05d6fad75bff006d7869786eb4a5294a5294a5d294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294ba5294a5294a5294a5294a5294a5297a14a5294a5294a5d294a5294a5294bad2e94a52974badf4af05ff00ac4ff4f4a5d6975a5d2975a52eb782974a52974ba5294a5294a5294a5294a5294a52974a52e94a5294a5294a52e94a52974ba52e94bad2974ba52e974ba5e0bc14a52f15ff00ad5fa0bc174bc34bade0be8d294ba52e974a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a5294a52e94a5294a5294a5294a5294a52974a5d294a52974a5d2974ba5294bc7786fa57f5affe96f0de1bc34bad294a5294a5294a52e94a52974a5294a52e94a5294a5294a5294a5294a52974a5294a5294a52e94a5294a5294a5294a5d294a51bd694ba52975a5e1badffc2afa1786f0d294be852e94bad294a5294ba5d294a5294a52974a5294a5294a52e974a5294ba5294a5d294ba5d294a5294a5d294a5d2eb4a5d2eb4a5d2974bc57fefefa578e9786978294bad2e9782e94bc14a52974ba5294a52974a5294a52974ba5d2974a5294a5294bad294a5294a52e94a52eb4a52e94ba5294bc374a5d294bade2badffbebfa0be85e3a5e0be852978e94a52f05d294ba5d294ba5294a52974a5294ba52975badf42e94bc174a5d2f052978294bab2f0df4ef15ff00babc578ae975ba52975a5e2bc774a5294a5d294a5294a5294a52974a52978294bc54a5294a5294a5294a5d6975ba5d2f0dd2975a52974ba52f05d2ff00e297d4ba5f42f0d2e94bc54a52974be952e94a52e94ba52974a52fa94a5294a5f46fa178294be9df56feb9ff00d0d2f15f5ae9786fa14a52e974ba5e1a5294bad2eb4ba5d6eb4a5d2975ba5d294a52e978e94ba52eb74a5e2ba5d2e94bea5e36ff00f12a5f42f15294a5e2a52974ba52fa175ba52e9786f05f5294a5d2f1dd297d5a52f15d6eb4bff875fd35294be852fa34a52e94ba52e94bc378ef052e974a5294a5294bc54bc174ba5f4294bc37ff0024be852f15294a5f42e974a5d2f1de2a52eb74bad294bc178294ba52e975bc574ba5e0ba5e2be85ffc82fa37d3ba5e3ba5e1a5e0bc57d3ba5e1ba5d2fa774be8dffcd2fa174a52f1dd694be85e3ba5d6f05d294a5d6fad74a52fa174a5d6ff00e59f5fd8eeb7f5d74ba5297d3be9dfd0dffcca94ba5f46fa374ba5294a5d69786e97f4174be9dffc5afe86fec778697f4d78af0dd6f0df5ee97ff33cff00c0e7873fa47fbb78fd9bffc400271100020300010403010101010101010000011100021203041013201430407005605015d0e0ffda0008010201010200ff00f8a847ecdfa3f57fa1b8dc6dbecff9836db6db6db71fe16e37d9b71c7fb1b6db6db6db6db71ff296db6db6db6db6db6e37ddc6db6db6db6db6db6e38ff00236db6db6db6db6db6ff0093b6db6db6db6db6db6db6db8db6db6db6db6db6db6db8dfdedb6db6db6db6db6db6dbfe48c925bd6b5ad69b6db6db6db6db6db25b6de9e9e9b6db6db6db6fee6db6db6db7a6db6db6db6dff002230924924936d6b5ad6b5ad69b6db6db6db6c92496deb5ad6b5ad6b5ad6b5a6db6db6fea71b6db25bd6b5ad6b5ad6b4db60b0582ff90924924926c6dad6b5ad6b5ad6b5ad6b4db6db6d924924b6db6db6db7ad6b5ad69b6db6fe86db24924d8d8db5ad6b5ad6b5ad6b5ad02082c105ff2030924924924925b6db6db6db6f5a6db6dc24925b6db6db6db6db6db6082db6fddb649249b1b1b36dfbb6f5a16160410410411fc78c3092492498b39ce739ca49249776db0416cc309262ce739ce739ca492492eec104105fd0c924924d897db238ebd357a01fe77ff0037ff009a7fcdb7f9f6e90f19aa8c1041041041041fe386186186124be8b87e1fc3f87f0fe1fc3f87f0be17c2f85f0be17c2f85f08f416ff3afd11e35182082e186122747c5f0fe1fc3f87f0fe1fc2f85f0be17c2f85f0be17c2f85f04ff9f6ff0036fd05b854101041fa09249249260af1f071ff009b4e86bc7f45ab7e8f93fcde4e98d54041041041044107f1b30c30cb43dbfcefc96a72f41cbd3110405c30c304ff003ff29af2745cbd19ac10405fa9849249305787a5e2e82b5fbf97a3e6e8cd50808208208220fe3461861865a1edfe77e6239fa2b71aee65a1827f9ffa39ba5e5e04208fd4c24926538fa7e800fc7cfd1f2f09101041041104107f1830c30c32d0f6ff003bf47374fc9c447630c304ff003ff4df8f9fa723d8c2493170f4fc1d3fe6e4e3ea3a535820208208820fe2e61861861968609fe77e9e6e1e4e323b18609fe7feab57a8e0f63093174fd3f1f17e8b57a9e94d60808220820fe2e61861861968609fe7fb58fcbf97f2fe5fcbf97f2fe58ea6bc9f4f53c37a9ec61827f9fee7aaf97f2fe5fcbf97f2fe5fcb1d50e707e8e5e3e4a7a9262e0e1e3e3fa09b7536eb4f5a7acf983adaf5d5eaab6fa0d7a9e9c8808208820fe3061861865a1827f9fedc92f1b6db6c5e9d471f562defd570d8430c13a0f63394eb5ad6b5ad685e9cfc7d5d2fefd5f111dc93db8e9c1c3ee4f2f577e6366db6c5a9cbc5d656fef7a73f091010441041fc58c30c30c32d0c13fcff006e49c9f4b62dc3cfc7c9edcd4e4a9ec609d07b19cd0fd4c5b8f9b879bdaf5e5a7664ca8e9387df9397979cd9f7497716e3e6e1e7f7ea38b92840208820820fe2a61861861968609d07b724e4fadd6dc3cb5b7b757c76ef59d0fb19cd0f74925e80f0f271dfdbaca1ece01d3f101edcbcbc9ca4b8924924a034bf073fbf55c56ac041104107f1530c30c30cb432b3a0f6e49c9f60943d3727b7574b83dab3a1f7e687eda9e9793dbaaadc47295e9b8fdb92fcbca4f75dd28bb834bf0f2fb72d396840820820820fe28b38f19e13d39e98f483a5e8c3f4bce4fb6b386d53ebcc3941ed59d17bf3c3f689c1607d7947283daa3a7e303d49ea796c7b0fbaa78792b6f6ea78ee2082082083f85b7ad6b428bb8829e3343d8cac5aa72ef77bdebe3f178bc7e3f1f8fc7e2f178bc438e838b937bdef76bf2d0f0782bc3d20def7bdef941e3f178bc5e2f178bc5e2f178bc3e1f0f1d78b977bdef76bf254f0f86bc7d30deb5ad6f9b96f53c5e1f178bc7e3f1f8fc7e3c78fc7e3f178bc3e2ad78397c9bdef7e4e6b5f8cf10e21415101d6b5ad69ff00df13e4dcce318c632456e793c9bdeb5adf93c9e5f29b1a8a82ed0f1e17d9c65fa1371df8a0f5b4b7e0e38e3ed727d38c82fb326e7f254d6c0b6c9b4b7def5e41ca2fff006cc54505524387e3db8bb9846046493a072a28da8df735bf191d9fa89580bee4dfd38e0f5b4b7de0560f426e4f712b01ee4d8dbf289520b70cb13f92b7adff00eccca5fcdbde98b69e8936f20e53cc6e0b20d695c8e7f20312ce5466de4f31e536b592b107d04107a93787b09480fa5a5bd12f549206bc79ee4d89ee2560f42493f94410407b19687f357941ff00afb58da92d0f2d480b394613be3bdee6c0f61deb0c16b7254ac9a65184d792b393907a98011dd0820f4665a1ec0560ee0f90f258283ec00032c2184da1ec2082083b9861fca20820ee6187f3d6d4e5ff00adbf30b0bb30d6b05b5ad1b1262acb4c0aa5128d1ad4eb4d924982a2f602bd9f6ad48312420f530c3dc0107a98625f4a59a8f26bb186187b0020820ec61861117e31041dcc30f65f9a9cb5b7fd4def7bc5ddb6dfa36db6db6fd9249249289195368a2820f530c314104107730c212492492490020f430c3d921041dcc30c212fc2801041dcc30c4a2fca0d39bfe9efcbe8db8224b39ce739ce739ce739ce739ce739ce72918613e8803d9243d8c3e820820ee61ec925125125f4187ba107a9861fcc3d4c3dd7e9a7256dff0049726985124bb37ad6b5ad6b5ad6b5ad6b5ad6b5ad6b5ad37f85c7ec238dbfc2db7ec20ecdb261ff00d8c8e302a7fe8c7620c6db6fd1c6db6db6db6db6dbd6b5ad6b5ad36f5ad6b5bdef7bdef7bd6b5ad6f7bdef7bdef7bdef7bdef7bdef7bdef7bdef7bdef7e4f2793c9e4f2793c9bdef7bdef7bdef7bdef7bdef7bdef7e4f26f7bdef7bdef7ad6b4db6db6db6db104b4e3ff00a4ac22d516008731e3f178bc5e3c235c652f46deb5ad6b5ad6f5adeb7bd6b5bd6b5bdeb7bdef7bdef7bdef7bf2793c9e4f2797cbe4f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2797cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe5f2f97cbe4f26f7b4e67c7e3f1e130724895169c7ff483b197148edd81107a983ef5d928924a2492497751775e8928924924925128a2492f65d853c7e3f1f8fc7e3f1f8fc7e3c6318f1e3047fe01f62491286e6560969c7ff483b19694ed6ec2083d4c1ff8646b5ad6b5ad6b5ad6b5ad6b60dabfb295b59b6db6db6db6e115a2fdc7d8f61292f04af6b4e3ff00a41d8cb4af6b761041ea60ff00c2b5bf25adfb2b07e3a9b7ef3ec7b0949c904ac12d38ff00e907632d0412fd84107a983ff0b92b4b7e33fb4588f55145f4127f79f63d84ace49595ed69c7ff0048a19682097ec2083d4caffe19afe2407dabbafa90a98db6fbb6dbd69f1579ebf42f64bee3ec7b5656724a81dad283fe8ed570d4f183689820b6d980b6db6db6db6db8db6e36db6db6db6df67f52492f5492ce484922124924901ad6f62cdbd6b5bdef7bd9ba4924b394924965249249249287bb66da004d6455415ffa6ca49671e3f1f8fc7e3f1a34f1e318c6739ca4bd12492eedb6feb6db7dc41ee61f56c411f6492208f61041124808de8d9b7f7ace729763dd2ce738c63c7e3469e3f178bc5e2f18a6525903fed52492ce739ce719c6456b515ce739ce792a42492496739492492400825456b9ce739cdeb60924908271cce739ce737a1a9ae73940565067394b2686a6a6b9ce739c6318c6739c8a8ad68299ce739ce6d5353534c6319ce7394924bf85251240540f7e4042492492492492492000a8a8f6e4042492484a41ef616a9ae739480e23ef6a9a9ae739ce739ce739ce722a2a2bee61841117f1c40547b09c8084bba5e892492480000a803dae08492490159c67ded5354924a9f49a9a9ae7292492490a8a8a9f702d0c30ff001e0101507d84b83e8bd52892492400005411ed716042512480a4b0f612d5354924250fb88b26a6b9492490a8a8a8ad8fb806187f8f80001516f612e08f65d944bb249200002a2def7160410924901594847b106a42494ac23dc11326a6b949259151556b7bd4196261fe3c00000151c9ec25c587e04900000054720f6b8b0208492480129392bedc66d521249094247d15b89935ce739c8aa3727dc056261fe3c90000151ca3d44bcb43f812400000151ca3dac2c0c212512004aca8b57daa6d52124908211f48b8e5deb5b3c87909fa6b4b124c3fc7c0000a8a8e71eb5971607f10000005450738f6b0b03dd28a082565273d3db8ed6ad81097612a4823eb4beca71d8d89fe40008001514af543d6b2e2c08fbd080000015941d48f6b0b03f488256017afb715af5212ee254916afe6ad69c5636249fe3e20820005450759ed4971607f10000005450755ef617061fa0412b287a9e3f6a5c8b548f510176e2fc9c7c02b6b58927f90082080545450759edc72e2e08fc2208000050755ef617061f710412b2b00e5e3f6e9ef7ad825ea0836a5b87f071f071f4e6d6b589261fe402082545454567554f0f83c1f1fe3d386f2f0c3f84410412a283a8a7c7f07c7f8ff001fc1697861fa0412b2b287a9e2f8fe0f0783c1e0af119607e810104d6dd2dba723e812bc15e8a9c26c6c6c6c4987f900820820953535b401286137b5e187f08820825650beec936b5ac4c3f408203535b0b36de8d8dad624fab6db04585c5f4687a7f8bf13e27c41d28e000d8dcdcdcd8d8924ff002210410104585c5f7bdecdcdec6d0c3f8441040411617d6b5b37363624fd420208b0bef7bdecdcd8d896fb36db6d8b0b0b6b5bdef7bdecdcdcd8d8925ff2410404104585b5ad6b449261fc420808208b6b5ad68d89249fa84041075ad6b5ad36dfb36db6db7ad6b5ad6b4db6ff009308db60b6db64987f1880820b6db6db7f636db6db6dbfadb6db6db6db7fcadb6db6db7f95b6db6db6fef6db6dbfcae38ff9836db6dbfccdb6db6dfe87fd29b6e37fa9b6fb3fec8db6dfed6ffb53ff00f0c73fffc4002e110002010204040701000300030000000000010211510320216130314052101222415060706232427123d0e0ffda0008010201033f00ff00e4af1f8318c631f54c6318c6318fe0d8c9be48c47ec6213d896c4cc45ec4d734c687f98c675f3187630ec61d8c2b185630ac6158c2b185630ac6158c2b185630ac6158c2dc85d8fd99891f61ae2c672a330ac6158c2b185630ac6158c2b185630ac6158c2b185630ac6158c2b185630b720fdd966622f624b9f4f2972449f3d0c38f3d48c7925c18be68c297b507feac9c39a29f9768fa48cb9a22ff00c4941eab87ebe953e6425cb425129d0d494de8463fe5a892a2e830e5cb4250ff00853f2cd1f4c9aa313d6235c1f5f511972d19283d78ee4c4b59092a2e9232d63a31c5d1afcaf47d429adc71747c0f5f52a4a8c707c573744470d6fd3c66a8c707b7e55a3ea54d6e38bcfebea949518e2f86e6c50545d4a6a8cf2eab97e53a3cd4552040810204081030dfb917c9f0bccaab994cdebcf14408102040810204083f713e0a9aa0d3e0b9ba0a0a8b8291045912277277245d10627cb829aa33caf6fca3479bd2cd782c947dc4f989f2e051d737ab3ebc26343f714b9702baf02ac508efc0496a25c894b9f05a2e292d380a4a8c717f93e8f37a59af11c45259fcd128f2fab3ebc5698a6b7cf55428f354a2f33e02821c9f15c58a5cf9f03cd1dca7e4da3cde966bc5a32aab9e8f2fab3ebc6699e655cfad737999459d416e36f8f43cda3e051d7f26d1e6f4b35e37b67aaae5d73ebc7f6cf58e5a9e58d73a8aa8dbe8687996f9fcd128ff001d63192244cc43117b1e54ea2cbe966bc6a32ab3562cd726b9f5e3d19559ab166b92aca67abe8e8caaae7d7f144210843a5722f057447b911ee4242f163457d842150ab18c6318c6318c6318d0bca21084213436c91224795ea2108421156318c632448912244891224342711084210a8559224312d4421084234a21b244890c6318c6318c63192244868a68c42108421490d922431f8a1084210befe90864891224318c6224b44c97ba3617691b11b10b11b10b11b0ac3b13b2311fb92243f074244ac3e935e169d3e9f30c63f04feef61111649be499896649734f22f0a94c8c65398bc69e0c63f07913f62835f6f684fee951c48b2242e46e2b9b9fd0ae2ee21721730c8fb21bf618c7e0cd752c539a20cc330ee42e46e46e46e42e42e42e61a2025ca23352abe2d21d2a3fa253989fdc12e637b2f0a0e8379d8caf348a2d2837cf3ebe0e2f41b7e2b2b191a7243e4b269d4b4336e82ae8507ec3aebf446b909f3fb725c875ab132c363a14e6210842f1634363e031d475f0421085e2ea2486d8fc17c651d512b8fe8ed0a5cbed4a239666318c7d321657c0afdca85fed1ecb8685e084210842108421084210842178a1084210bef4e227f65aba1518f82c6318c6318c6318c6318c6318c6318c63fbeb243f728557d935ca889122448912244888444891224489122448912244891224489122210842108891224442108421084210842108421084215c57108421084210842108421084210842108421084237373710842108421084210842108421084210842108421084210842108421084448912244891166d3ec9af83f6f06c76111222178b1f8318c648912244ac4ac4ac4ac4ac3b0ec3b0ec3b0ec3b0ec3b0ec3b0ec3b0ec3b0ec3b1b1b1b1b1b1b1b1b1b1fc9b1fc9fc9fc9fc9fc9b1fc9fc9fc9fc9fc9fc9fc8bb45da2ed1768bb45da2ed1768bb45da2ed1768bb45da2ed1768bb45da2ed1768bb45da2ed1768bb45da2ed1768bb45da2ed17691ed1768bb45da2ed23da47b48f691ed1768bb45da2ed1585da47b45623da2ed1585da2b0bb45da2ed1768ac2b0ac2b0ac2ed1585615856158d8d8d8d8d8d8d8761d8761d876f0631f821088886f9225612e6c6fc74fb26b974e16bf566fc10842f05e0bc10859114f8cd7269f64d72e9c2d4d3e0d25a9b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b117cf428fadf73dba2afc869f64d726a69c2d7e0e86b5e9392fb069f64d726a69c2d4d3e0ab12aba4acbfe75b4e929f1fa7d9292cba70b5f84b133136310c4d8c4d8c4d8c4d8c4d8c4d8c4d8c431363136313627b13d89ec4f625eefae4cd34d4a7b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b157aa215dfe3f4fb2572b427c1d7eacd12244b624486318c6318c96c4891224fdfe2521fb21be653c6bf6c4210846e6e6fe15f7373737373715c5715c5715c5715c5715c5737c8c631e4dcdcdcdc5715c5715c5715c5715c5715c5715c5715c5715cdcdcdf2318c7937373737373737c8c6318f8cc631e5dcdcdcdc5715c5715c573737373737ccc631e5dcdc5715c5715c573737373737f0afb9b9b8ae222445997ded0842108421084210a9c84210842b0b82bc5719084210842e12108421085612167426b908421084217468421084210842108421084210842fc5f4f81d3a2aacf5f8cd3f25d3e074e8bdbf5ed7abf4f47a573d74f8ad3f2cd7abf4f494d33d55783a57814e350b702bf96ebd5fa7a4d2b9f5a70a9c24f828437c0ae8517e4fcb36bd5fa3a4aa28e99fccb829aa0d3a709a10842108637c2a2fca3966d5757e8e974ae7a3e12921a747d579757cff0029e59bd4babffc7d2d51e59533f9a3ff00384a4b51c7a77274428ffdfcab966f52eafd1d35556d9fcaea578552dd2ca5abd10a2a8bf2be59bd4babf467d38f5479254cf554e2297324b96bd0ce5b2230ddfe5b295284ec4ec6258c4b189626a49b469d5394688c4b1896312c6258c4b13b1a741e78e9cd1896312c4ec4ec6258c4b189175a1a71632e62f664d7b546b9f0b125c90ffd9908725f97a1085e2baf5d2a10ba4a907ec6190bb237237237661986bd84b97feac87fffc400271100020202010403010101010101000000011100021213030410142030407060500515d0e0ffda0008010301010200ff00f0edebfc35fae25d97c0beeaf45d928bf315dd7a2eca25f2a897b28bb24928beca512492512517e5ea24924924a28a2eebdd24924924924924928bb2fa4924924924924925f9424924924924924924bb25e8a2492492492492492492897cc924924924924924924a2fc8d2492492492492492492492492492492492492492492492f994492492492492492492517e44900000924962924924924924924924924924924924924924925f1a4924924924924924924924a2fc7c0000012c71c71c71c714924924924924924924924924924924924924a2f7492492492492492492491092497e3a208000000000924924924924924924924924924924924924924924925ecbb24924024924924924924422084411f8f08000000000000924924924924924924920004924a24928924924924925f024920000004be549248820820c23f1b1041040000041016db6db6db71f74924928200a36db6db6db6dbf55145145ea804000025d9e5965965965964dbee9244104108fe342082080000230db3d9b366cd9b366cd9b366cd9b33cf2c9f64925041d8cb5b66cd9b36edd9b366cd9b366cd9b36679e4df65d945e8900000028cd8dcf21e6b7547ae3d7ffe87fe80ff00a03afaf56398728be4df64410410418611f8b8820820000804b4eb39fcaf2bcaf2bcaf2bcbf2fcbf2fcbf2fcbf2bcaf2c75d5ffa14ebabcc2e2c0c4921076bceb797caf2bcaf2bcaf2bcaf2bcaf2bcaf2fcaf2bcbf2fcc1d757fe853aea75039059faa8bb800000466d6e4e4ea793afb7566ff0000b57a9a75dc7d4d7905dbec4184104110c3f8b8820820820ed69d7fd4adb8fade2eaabc82ddd0821979d7fd5069d5717595e416eebd8000084db939baae4eb09f9f8fa9e2eaabc82e0f630c20820c23f171041041041daf3aefac0f0759c7cd5b3ec20865e75ff638ba9e1ea2b6eebd041076b5b979b9fac27e9f1753c5cf5b8b386186186187f161041041041076bcebbec70f3f0f3d6c3b8ed79d7fd9a5fa6ea6b6f710476b751d4f2f37d6a5f83a8adc5bb1861861861fc5841041041076bcebbecf0f2f0f2d48ec3b5e75ff006ab6e9ba8adbe0b5ba9ea6f7fb00f07514b830c30c30c30c30fe282082082083b5e75dec078be2789e2789e2789e29e9cd3e1e9b9b8af53def3aff0071d3f8be2789e2789e2789e21e94f091f071f2707283ed6b751cf7bfc35e0af483a3f13c43d1dba4b74e47c00f4fcf4b030c30c30c30fe2820820820820ed79d77b71ce3a8a61af0c35eb3c678b93a6e4e948f7e8f9e961def3aff007e1a8a6bc30c30c30d678afd3f2f476a7bf47cb4b0f5279b979b97dc0e3e969d38e21c786186078edc57e0e4e96d5f7adb8796b606184186187f1410410410410432f3adf6e39c500492491a9a5b8f9ba7e4e3f6e1bf0dea61979d7fbf04a849251246b6a72f0f2f17b56dd3dc1ee4f25faae6f7e3e2e1e9ebc62b8af448d6dc7cbc1cbc3efc3c9c77a986186186187f13104104104104339275bedc738a0f851ade9cfc36afb747c9430cbcebbdfa795f8c8b579b8b929edd17250f632d6ea7989f6e1e1e2e1ad005f0916af271f370fbf4fcb4b030820c30c3f8988208208208219c93adf6e39c307c761c95ea78fdba3bf11865e75defd3cafc845ebd5f1fb74b6e323b58f2dfa8e4f6e3a7070d6abe422d5e5e3e5e3f6e3b715a86186186187f1379ed1ce3a91d58eb475de75faaea8af4e39c32bf19971cd5b0f5e0b70910cbcebbdfa795f96e39ea47af09e123b5edd4727bf4bc34a81f3117af3f1d87b74f7e3b54c30c30c3d8fe149252dcd97a36fbdbb2bf0e38d2bc571cfe4791e4791e4791e4791e4791bedcbc879ab8e38e38d470f28ea4f536e6eb0e38e38e38f05abcbbb7eff23c8f23c8f23c8f23c8de79b90f2f1e38e38e35af15c731e6bf275271c52c71e0e3e3b8e6dfbf7efdfbb76eddbb76edfbf7efb72dcf3f1e38e38e38714e3bd79b71e53c86c49892497f7c0618bcf66cd9b33cc5afc638b4ead786386ad5a7469141637b05595e4d99e4dfc169c817a01c47b19cd145daa2907cc4f2c4bbd053bd8f2022288578c0fa665c5aa425daa2907ccb1d6788d3fb630f21e4366de62e2d1b11ed210ae38906f976212ec97717e3e50525eb697842ee071c1d8ce487d6a2907cd6368476405057bda5e10bb2a8a01f52d2c08492a8ac1f4ed4b53fb3079287a73c678f0494588aead35e9c711000b677b8b9e9b49aa3d9b98e029abc71c15a56adb7dc9b430fa2029076b1bc3e8aa2907ca45a96e4cbb81415ec65a5a1f402a2b07d432d0821412b2b07d5b7111fd7d6a05e560e1b025e590220069c94e3a5284763ded2a6f5a71d83cb3c8112b5e4e2b4e2e38fb926c2c2cd924987d44ac05d8da1eeb58e2a5b21f2dac489530402b0464d8da1ee20825608fe9186187b882080fd5b56fc5fd6f1f05aa688406f0d31c711502b1dc54666f936dc4ea6d31c714009536b5b8e9327d9996b0223649261f4104ac059261f512a41072cb2cb2cb3cf3cf61e4bdb5e3d84104059249861ec2082020b6fe66c930c3dc410405b7f52fc56aff534a528c97d92497b249289766db6db7965936db72e2904649249f510411b30c30f710405b6db6db6d9249f410410164926187b08208082db6db6e38db6db24c30fa080820b6df671fcc45f87fa7e3e38dc4918612f2cb2cf3cb2cb3cf3cf3cf3cf2cb2cb2cb2cf3c98220007a33008d930fa082083b986187b88202db6db6db6d9f51041dd987d4410105b6dbeefb36e36cc30fa883bb6dbfa97e3b57fa4a81717ca36dc4b1c30c30c30c30c30c30c30c30c30c30c30c30c31c546fe3488492f52124805f2a492497a9862490020faa7ba497db66e794923fa33d98802c525e892c71c52492492492c71c71c30c30c31c71c70c30c35ebd7af5ebd7ab5ebd7af5ebd7af5ead5ab56ad5ab56ad5ab56ad5ab56ad5ab56ad5ab56ad5ab56bd7ab56ad5a74e9d3a74ead5ab56ad5af5ebd7af5ebd7af5ebd7af5ead5ab56ad5ab56ad5ab5ebd7af5e18618e38e38e38e292492c5186565ffa4301a9343616c667b36edd9b321017d9638e38e1861af5ebd7af5ead7ab5ead5ab56ad5ab56ad5ab56ad5ab56ad5ab56ad5ab56ad5ab4e9d3a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a3468d1a34e8d1a3468d1a3468f1f478fe3f8fe3f8fe3f8fe3f8fe3f8fe3e8d1a74e9d531032cf66ccde26662116b525ffa43dab2939401c7158107d44b7b3f56db6db6db6db6db6db6e36db6dc6db6db6db6db6dfabf90df66cd9b366cd9b366ccf3d9b3667982be05f587aa000b4e41c604bc3292ff00d21ed5949c9db8fb5a187d44b7f860e38e38e38e38e38e38e38e38e38aadbee5ed5a249249249249406d77f787a895ed6979c40cbc32b2ff00d21ed5949c9db8fb1861f512dfe152bf52b4fb9687e9d857ef8f6af6bcbce2865a19597fe90f6acacbc338fb1861f512dfe1715af5ff0043107e921f7c7b57b5e5e714b4b432b2ff00d35650da5a71464987d44b7f875bbfa3913f70cceb6ecdfc9cdc9d39fbe3d44af6bcb4e2963626565cff004609008b8e535a8051a9a9aa4842124924924924924924924924924924a2eebddf67eee36db6db6db6db666ad3a74e9d5ab56ad5a74e9d3a74e91c4db6db6db6db6db6db6db6db83b242a298dad69ac5ad7689fe99f7796c1cdbb6eddbb7217dbb366ccf3cb2c9beed9b1be79e79e790b3fa297a126d9679e7964083ee6139679e79e62e2cfb2ee4e59e79eccf3c98fa2de59ecd9b366ccf21e8de59679ecd9b58e4dbb8f36edc794df271b27fb86db6dbc9b708e4172db6c1e382b8e38e38e38e38e38e38e38e386181a1a1a1a5ebc85b6dbe395a8a61861860696a72d5b6dbcb8cd40a8ae38e0697a7246db6eb6aca8151515492492488208b0bcbd9b6db0692b017965964db6dfe16db05b6d93c86fec27141f0b6db6db6db24cbce5f7e29580c6fb1865eb71edc56a5816db961cf4f7e3bd6c2cdbcb2cb2cb2cb2cb23636b5b92fefc62a046db6dfe2ce32790dfd84e283d5c6db6db6db6d924dcf2fbf11a96db6d9969cb5f7e2bd6c0b6d99c82e3d81a5c585b2cb2c9e596596596591b5ef6b7bd0083f2064f21b7b09c70766db6db6db6db6db249b9e43edc66a416e38cc32e2c3dab6ad859b6dda72d7dc1adc5b26db6db6d9b5af6b7bd054083f1d6db27909f6138e0ecdb6db6db6db6db6493736f7e33520b8db70cb4e41efc77ad816db32e2f5f706b716166db6dbc8dad727e0a5401f8fb6ec790fbf1c1ddb71b6db6db6db24926e4fbf19a90416dc6cc32e3e0a5816db667257e1161717cb2cb2cb2373736f8682a07e3edb64dc8f7e383d5b71b6db8dc6c9249b97edc66a446db6e1865a72007daa6b605b6e587257e3cb2cf3cb2f8c4a547e40db249e4343edc6417eafb3f77192493720fb719a91d9b6dc30cb4b8a9f62296a905f672c2d5fb4e95a81f90b6493c8788fa99c4417f41b66124f21a1f6e33423d1fa1865a5e54fbd2c0beeccb56d507eb124d2b503f232492790f0fb19c46a41fa8613c938fdf8cd20f88cb4b8e3b7b5852d5b02fd0c22d4cbea5b944a56a041f901ee4924f21e0f6b4e2353f509249e49c7efc72907c46197979c76f6b0a5817ec45aa6a2ff0042dca6f5a56a0083f23309309bce33b36eddbb4df8e548fa86184de50eddbb76edd941583e230cb4b8e3b6ddbb366dd86d49583e0445a86bb072bf84f29ea09af18a0a8000fc90c30c22c0d4d71c7014ad682b07d430c32c0d71c30c05052b5107c461845aa6986186180a0a56a07c09106a78cf11e2596cdbb76ec36c0718e314150005f929861041ae3861860282a0083ea1861041ae38e380a8a803e43083535c70c30c7115000f8924b1c71c30c30c30c31150004bf263d924924921041f54c2124b1492f9524924925f324924924924bf2b4924925d87d64924925f4124925f5124925fa92897ff001ca7ffc4002d1100020101060505010101000300000000000102110320215152611030314041125060627022719132d0e0ffda0008010301033f00ff00e4af5085c1084210842ed9704210af2f604457921991108890cc83f2262fcc6506a85a665a665a665a665a665a665a665a665a665a665a665a665a665a665a665a1333441f913e6ca31aa2d332d332d332d332d332d332d332d332d332d332d332d332d332d332d332d332d0999a20c4c5db463d58bc168f624fabe4b5d1968bc99a232e8ff2fc576928f464975232e9cbfe7b56ba138f5c48c84fb1a11892974c06faf6138ee297e5b8aed9ac50d61213e4ff003dc4a1fe0a4b9ea2378446faf6928f5e8292c3f2bc5770e0f6149723f9ee5c5d50a45798a2894de3d3b771754297e558aee5c1ec26afff003dd38baa3d4b96a2873757dcb4ea8af5ebf94e2af55d0993264c993264c9af049755caf4ba782b7bf9bf264c993264c993264c9af035c970954aae4a8a1c9d5f2a6c7e44448e42322686baf269895fca3157bfa461c9445f81ae835d79155477bf9bf55ca4266438f5e451d0adfa21ce5c86fa0df512e4a66435d790e2ea8aafc9f157bfa461cc4c7177fd322aaeff0037f0e6a68707b5fa3a9557a855d1721cde025cd4c71ff391e97f93e2af7f48c39a9a1c5d2fd63770bf873aa8f4ba5fc297a88adf737b092e7d4f4e2b9155f9362af7f48c39de6fd254bb85fc39fe6fd257687aa57dc9d04976353d2eff00a5fe3b1cc8e6408105990dcb3dcb2dcb37e4f53c0777fa461cfa3a5ea4d185cc2fe1cfaa28ef5268c2e517228bb3aa28e97f0fc671a15f3c58c63c8790c77133d3e4631fa9092224372043721b90224089122448899fd0c6318c6989220408b2ab018c6318c491122448902040810224489122ca8d486318c634d144448898dba0c63e0c66356451122448912244891224489122448912226794318c6318d3282224442b8c631fe00d8c5990cc866473224489110c8bc5a20fa33725a89ea44f344f344f344f32798f50bcc8b3f2cb2459a2cc55c042a9144731085cbc6fe1cac7b1adec6ee3ee885c1af9bd064b31dc598b317163283456e2c848af41f1a8842170571af27a84c5f2e4c6be69414c9ae8c9e45a644f22590f225a496927a4b4c8b4c8b525e6425d59142653822ab02bd515ff00c5968bc96a5ae45a79893c992c992c993d2c9e92d322d596998df5911ff4a212957bbc7b0646b417c1321af9837d051dd95657062af912be8435d1b3d4f16c51e97f0e0a4b14469e7fef163e0f82153074255eac4f178dcc7b9a88dcc3a0b9d48b6545e45e3e089f51af97378bc054a21a3312154af418c631f1426242e4aa0922a318c63e08541b624b8bf6a631c951f42390be0e9ffa38f5f95390a3fede421085d8318f8b18c7c50857e9f324fa997ca2b8be4318c6318c6318c6318c6318c6318c6318c6318c6318ef54a7ccd4bfd1af92d11410afa108421084210842108421084210842108421085f3a4445e04ca3f92617592244891224489121922448912244891224489122448912244891224486318c912244890c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318c6318f86dc363636e0c6318c6318c6318c6318c6318f90c6318c6318c6318c6318c648912244891218eee3f24c3827d47e04bad48bf23cc9224863e288888f92244891cc8e647323991cc8e6c8e6473239b239b166c59b166c59b16a62cd8b5316a62d4c5a98b533eccfb33eccfb33eccfb1f667d8fb1f63ec7d8fb1f63ec3d47d87a87a87a87a87a98f50f531ea1ea1ea1ea1ea1ea1ea1ea1ea25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a896a25a87a87a87a87a87a87a87a87a87a8fb1f63ec7d8fb1b8b316a16ae09885c18c648625d590cc6fa2ff00a25d78e3f24c2e6063cac0c7e2a970790c63c8d8790c7c18c7c1f1afb5622a985cc7e4985cc0c795818fb1b93c3a0f3373737373737373737373737373737373726b73d4bbdf079eca857daf0b98fc930b9818f2b031f62ab28a9da757f20c7e4985cc0c795818fb128c8f4bed290ddf7b5ed2bed38dec7e495573031e56063ec7e1e259ee596e596e596e596e596e596e596e596e596e59ee59ee59ee59ee59ee59ee59ee59ee4574457bd7e06a58e027e4dcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdca2c193a6ded38dec7e494b99916345783bd8735fc253ea408ee47723b91dc8ee47723b91dc8ee47723b91dc8ee47723b91dc82f1ecf4e126638b147a15e34f95b19224319b1b1b1529e0d8d8d8d8d8790f21e43c8790f21e43c8db8a1084210842e4ec3c8d8790f218f831f310b9db9b9bdddcdf86f7f7373737e531f3f7e4318f21e43c8791b1b1b1b1b70a2e86c6c3c86489121dd7f832e0ea318c631d4a88421705c50842108421084210ae34318c63195e284215c6318c6318caf0421085c5a6318c6318ee21084210842108421085c18c6318c63a8ff24c6f63ed9528efd1fea38fc0ea8a3bf4ecebf96e3ec38f67477e8fb1a7635fcbb1f61c7d8ea51f229cfafe5f8fb0e3da51dfa7e9f8fb0ff5dad6fd1f6ac771f32aff0028c7d87faed68e9d8d1f775fca717ec3fd76d557e8f954ee12ea397e558bbd8777fd76d474bf55cca75ed52e836f1fcaf177b0eeff00aeda87a95fa3af31ae867d8c51297e5a9752247323991cc8e626bbb4a552247323991cc8e647b1f4bd88e64732244891135ce6ba0d7522579515e4c912975fcc5fc3e4bc93244b225912c89937e46fff005643ffd9);
INSERT INTO `heroes` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
INSERT INTO `heroes` (`Identificador`, `titulo`, `texto`, `enlace`, `comprar`, `imagen`) VALUES
(3, 'heroe3', 'heroe3', 'heroe3', 'heroe3', 0xffd8ffe000104a46494600010100000100010000ffdb008400010101010101010202010202020202030302020303040303030303040704050404050407060706060607060b080808080b0c0a0a0a0c0f0e0e0f13121319192101010101010101010202010202020202030302020303040303030303040704050404050407060706060607060b080808080b0c0a0a0a0c0f0e0e0f131213191921ffc2001108048809dc03012200021101031101ffc4001e0001000203010101010100000000000000000304050607020801090affda0008010100000000ff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007ebf00000000000000000000000000000000000000000000000000000000000000000000000000000ccecf91ce33793cc495ee6a3ce341ae00000000000000000000000000000000000000000000000000000000000000000000000000673acedd8f8f1f80cde33f307633190da23fd9392e9b46a80000000000000000000000000000000000000000000000000000000000000000000000004bf46f71d2f97e331d8bc7d3b95ee47e33f60da3397329ce38be3c000000000000000000000000000000000000000000000000000000000000000000000001bafd7f7f47d5f48d3a9d8c05fc7e46c62b60cb636863f2fd72e3298ce7fcb29000000000000000000000000000000000000000000000000000000000000000000000001d8bec5c3e97a7e8fac6bb42cd7fc97218a6c1058c753e91b057a79cdc31f9ce39c9f1e000000000000000000000000000000000000000000000000000000000000000000000059fa93e8ed6f43d231da661b5c922afe7374295ffdc853927df23a193d9311bdb1f84e2386ac000000000000000000000000000000000000000000000000000000000000000000000331f58773a7a1ea7a9e8726af8bb38f924829a7af62e63f6ccfebf9da797ce5c8f60d7f39a9f1ac2800000000000000000000000000000000000000000000000000000000000000000000337f60f5369f5f9fe9f5752c7d8af5e2c663acd79a87afccbec172a7e6536df798d834fb994b1ae727d1c0000000000000000000000000000000000000000000000000000000000000000000064fecddaee41a949cbf0f83f186b38f9e0a75f0d7307fbeff006c651258cfec9b0ec787c7e43c53c76c1cc3987e000000000000000000000000000000000000000000000000000000000000000000005dfb0f6bc1e639fe4399d7c7d7a1e3f3dd39abe06eeb75eefe56fdbbf89373f39bdc3de73218bc1ed33e038a694000000000000000000000000000000000000000000000000000000000000000000025fabfa9e9f7347d76f734def9ddba1671d06cf888abe229f8f5e2b787bfdb195fcddf13bf6d1b473fdb31f266358e09ad00000000000000000000000000000000000000000000000000000000000000000001ddfe98e7f83c1eb1734abb83c9d38eee122d931d1d0a68eb5003dd98b3bbbf486e126411d3e7ff0036c40000000000000000000000000000000000000000000000000000000000000000001b77d7b8fd5f5fe7ff00b26b7ef172e4fc56c7feec71c7ae49671957f2000c86ff00b1ecbb86cb3eb9b3f78ee7fcc0f9700000000000000000000000000000000000000000000000000000000000000000004ff52ee7a3d7e67a7ec94717152d87152cf81cfe4d8dc35850a492301ef6dd837cb7ba61f6cef9de7b7e67f88bf2e8000000000000000000000000000000000000000000000000000000000000000001d53bfe979ce37adf857c7f8f59dc3476707b1dcf1888762d771e93c4603ddadbf69f589ec5d73b875cec9bc78fe05700000000000000000000000000000000000000000000000000000000000000000000c8fd257307aa6911474eb78ad99a9f94ff0025cba85db989af5f214d1c6780b77e6afd8fbc754fa33a26e9b8ed7c83fcf26a4000000000000000000000000000000000000000000000000000000000000000003a975dd5e3e694313fbee3a9258f1350fcb9b054c76411d397dd78e3468d1c901673fd5fba7d3bd6fac67360d8321fcd2fe3e8000000000000000000000000000000000000000000000000000000000000000019afa16bd3e691ea94adfed793f3cdbacb19c931f2643f69476238e38e38e38e38d1fec7633fd43ea8ef1d73a66f1d224a982ff3b1c2c00000000000000000000000000000000000000000000000000000000000000001d7b75934fe794f1727b87da4fc9249321948fd65d631f2fe52fdad1d78ebc75e38e347776beb1de3b6761e9fd13ae6d18fd5ff009c5fc650000000000000000000000000000000000000000000000000000000000000000097e8eaf5f9fe0f5f8e5fcf1249ed667c966ad492641790c35a9c55e2a55ebd7af5e38e3b1b6743eebde3b074ceb9d23689357e61fe6ef5300000000000000000000000000000000000000000000000000000000000000001d27af62f5fd2f0fae7e24923b8b191bd9ec97ada762c6ecf978b51b916b588af89ad4abd3af4ebc3e6e67378eb9dff00b2f5ceb9d1368cc61f9bff00113e2f00000000000000000000000000000000000000000000000000000000000000001de32f90d034ac7e1d2c8f725dc8e6b27b76c1d1b62dc3b66f90e1f01a078d37936838cc1e2f1f569d4a55e392e6e1dd3b276ceabd7faa6d1623d7ff00965fc9d0000000000000000000000000000000000000000000000000000000000000000335f42dcd1f5bd7f5c8e4f71ac6473595d8f6fec9d53e83efbbad3c5616aa8eb7ae60390f16e2faf6b94a952a75229329bdf5de99d73aa754ec9d22bd8c1fc71fc1300000000000000000000000000000000000000000000000000000000000000003aa753afccf01af41278c9e3a4bb9acd6e3d57bdfd71dd26c3729e59cee8ea78f9760ea1d0b6bd23837cf9ccf59c255a74ea7bde3a66e9be748df7adf64ea194d823e07fe67ea00000000000000000000000000000000000000000000000000000000000000003bfef3cfb5fd031cb766bae67339baf63fb2feaedc753e1bf35727d0b45c563e84594ceef5d8be80eb9ccbe61f9f35cc2d3ad2edfba6c9b06d1be6e9d23a6778dd3688f93ff9cae3a00000000000000000000000000000000000000000000000000000000000000019ff00a231fafea7aa63fd436ebddcb6c3bd77dfb47e94de7e63f9b785f25d235ba54ebc5196b3fbff00d49f4ae7be44f9df54c5ecfb06732b3d8da360db368e8ff68ebf98db354fe197c680000000000000000000000000000000000000000000000000000000000000001d7f7cca73bd5f0787a99186ce433db7f75fb8bed9d5be68f96389f2cd630356b578e38fd799249b69fa27eb6ed3f1e7ccf95d9f20b7e2be5339771dd03646b7cffe88f99be010000000000000000000000000000000000000000000000000000000000000000fa2761d7317a7e035e924b16f39b576afb53ecfc5f09f8ef8c72dc050c357bb771f85241264fe89fb53a77cb7cd729223a75d73114bbe7d69a3fc67f2ff0074b9f140000000000000000000000000000000000000000000000000000000000000000b3f5963f4bc1ea784a524995b1b3f40fa67fa1fd2b807c57c1398eb54b0f0740ea78b6bfc72a7a8c924b5f4dff43b27f32e9f5e462f1e831dda3b86dfc93e7be1fd8350f92c0000000000000000000000000000000000000000000000000000000000000006f3f476b7a3eb7afe0df991b996d8fe81fbf7e88d0fe2ff009b794ea98fc7e2f6def7c8f608f31abf21f307b8e44996fb8bfa2dcb7e63d7a5931f43ddccee7b6da9f3a68bb87d41f05f080000000000000000000000000000000000000000000000000000000000000001daba8e1f4bd2f1186652be672bd4be82fe84f48f91fe47e27cf70be30f07d39a547268fdc2bf20d2f1de0f72653a7ff53fe86f89f93ae4692c5ba18bdd3fa39fc88d4befcfe396b20000000000000000000000000000000000000000000000000000000000000003ea5c96a7a5eb783c5ec38e9333b7efff00d13ed33fc7bf2d721d6a9d3c5ef1de389f54e77277bfde6fc8f443df8b193d83ef4fe987c7fc0f0794b990ca64321d03f9f7b0e57e71ef3fd43fe00d20000000000000000000000000000000000000000000000000000000000000002cfd2d26b1a76af5e85baf90d8b3ddefee3eebc5fe44f9eb9ce221c5d3fa03f63daf9de6365dbf0fcff8863c9e4c86c1f48ff58b40f91f57c866339b4740afc0f91fd39fceefae719fd13fe2171d00000000000000000000000000000000000000000000000000000000000000037aebb3e9bab6a95a35cb996e91f467d19f46fceff1f703d463c7e2fc7d1fcf7b753d1f9ef5fdcee697c434a96bcf72c6dbd3ff00ac3bff00f3ff005fb19cda378fa23e88e37f05f64f9cf78e67de35cfe498000000000000000000000000000000000000000000000000000000000000001d9373c1e3f53d5e0fc93f7279fe91d6bedbdebe73f92f8761aa62a9fefd27cc7ea2e59c1f61fa0f42e81ad730d130dfbeee6c1b66e9fd28fa33e0fe7790d8364db3ae7d71abf24f8abaa71bc07bfb43f947f340000000000000000000000000000000000000000000000000000000000000003e8760f1fa9e0e0b7e3ddccd6f7f4f7d8b7fe5af98b8d61e9e3ebc1f41eb3ddf907f5a3efae09fcd3e65a3e97a3eaf257b1b06d1ba7f427ebff87f8db64d836cdd3e80ea9caf85ecfc5343d0fa27d5bfc02f000000000000000000000000000000000000000000000000000000000000000339deebe8f5f4f8fc45fbef219fea5f417d2b6be74f95f9c60e9d3afe3a6ecfd5f3ff00eac7b27c77fcaffe79e8f83d4ebe8f906c9b26d9fd00fa83e3be471e633fb2ed9d63ec5e256321c7f8ff0023affd00fe2d7cb2000000000000000000000000000000000000000000000000000000000000003a9741d7f578f5baf8b916321b1743efbf4de7b82fc85cbf0f4ebd7f19fef19db7fe9723fe50fd85fc14cfeb74ec6b7ad5dcc6c9ba7f483bcfc6dc5e3c867360d877bfb6370e4f9cc1f13e0fa7f74d6bf89a000000000000000000000000000000000000000000000000000000000000003e8ccdeafcfe5d6a9e3e4f76afec5bbf47fa6ba6f1cf9578ee0e9d7afe1f4665f21f457f56bf8cff00de5ff2d5bc63f60b8d3f117f70dc3fa83bc7c33a04b6efe6764dd3e9cfae383e524e67f3ff001bd93ebaff0035ff00800000000000000000000000000000000000000000000000000000000000000b3f6773ec073b61f1f07b924cae67a374fe87df311f19718d620a55fc36efa374eb59efb47fd1e7c59fe53b29d1329729e3d9cef1fd24d2be24c5a4b190ce6c163fa89cbe3de399fce7c1e7fe937f9f2f9f000000000000000000000000000000000000000000000000000000000000001b87d57cbf5ad420c1538d258cae5b68e93d6fb0ed1f1ff13e7f52b53f076aeabafec987feb8ff00a27ff2b3fc99de374ca2392e7dc3f5df07f97f0f216321b2748fac1aff005cd0fe23f9cee7f4539bff000a000000000000000000000000000000000000000000000000000000000000001d77ab6af83d0dadd78d258b19bdcb35dc3a4f4fe0bf37f39c2d2af013773e9cd6f4bff4abfd8fff00103f3ef40d92c49fbb87f473adfc5fc9f0f70af6339d03b8744c5ee1cdfe1be4f8bfb03fa69fe5b35300000000000000000000000000000000000000000000000000000000000000fa1374e6d5f53a7adc1f892c58caec7b5edfdcba1e3fe54e6ba762a9c7e0b3d4ba657d2f7dfef1ff0016f8dec99092c49f60fd9787f8df9fac491e3d94dc374ee926d1f2bfc8fdd7a354fbe3f8ff00fcf40000000000000000000000000000000000000000000000000000000000000167eadc26bf8bd4f1783af21258c8ec593dcfacef5d43e78e35a2ead8a8d03dec1b46e1262ec744b3ee349da3ee9eb7f35fcefafb20c7e3e3b99fda7b86c194fe7670afa13a46b7d3390ff36800000000000000000000000000000000000000000000000000000000000006f7f4c68fade0f17afe022f139632591cfedf98eb5d3eb704e6faf6894638fc7bd8370dc364827ca58923741fb57ea3e77f1f73b8e4b95e9d3c7dcc86e1d1378ce7f3f3e73c6e27ac75bd13e4b00000000000000000000000000000000000000000000000000000000000001dbbaee9f83d7f0fafebfe627b92c4997cae7b68dbfa3f51d23896a381d37011c6ce6f1b26c0c8dfb8741fb37e97c57cc1c2b17fbee5ad5f1f8b92c6c1bc740de36cfe62fc8f93ea7b57cd38c00000000000000000000000000000000000000000000000000000000000001f5ad6c1ebd8fc5eb982afe09e4932595cce576bdc7a3ed7a4f30d4b0d8ed2f08cc6d1b267f2394b990c876dfa97b5dfe27f2fea7191c74e9e2d63299cea1d73ac53f813e1ad4f0de4000000000000000000000000000000000000000000000000000000000000059fb5f42c7eaf8fc1e0f091783dc962c647279fc9ec1b3f5bcb6b5cd35cc356a984c0e7f63cce4331b4f5cfa17a9f50dc3e7bf98b4fa68ff6957af4e9e3e4c8643b075bdf7a462ff935f16800000000000000000000000000000000000000000000000000000000000003a37d43cbf1f8bafa9e0f0680f72496321672b93c8ec1b7744daf56c162359ade26e994f37bc6cbd3f74eb1b5e7383f0be774ebc9e2b53af4e9d78ec643df41dd37cea9b2704fe26c200000000000000000000000000000000000000000000000000000000000001f44f53e655f5f8f53c1e1fc04eb12dcbb93cae472f91e9bbdf8c678d3e5cbef392c86ff00d0777db3668b8b717d4e9c113cd1c7d3a75e493399cc5e1ee758eb97746fe5973100000000000000000000000000000000000000000000000000000000000000fa633f87d3d8cd4b078ff013a492c5dbd91c8d9c9d9ddba2663c64f19b0ed1b9ecf776cc845073ee778fa71415ebd7af8baf1c762e6d198f9638beefb049633df275300000000000000000000000000000000000000000000000000000000000000fa9d83c1b5bd3e9d48c1ee4b0b176f5cbd90669b0745d9f3394db764bfb063e3d7f47c85745e31f4ebd38ea4f4e3b190db339c635acef70e81fcc5e6b870000000000000000000000000000000000000000000000000000000000000093eb3c5e0f5fb1abe9f5e9f804e496679acdcc85a9321908329b46c1b16432b97c861ec64162457a787af5fc7b923aec86d9d52a716ca750ce7cdbfcf6000000000000000000000000000000000000000000000000000000000000006c1f4bebf1e876354d7eb4118271258b3eecd9bfef29164ff7f76cd8323b3e531f9c5cbb6a556a18fa71ac5cfca8c8744e99b6f2ee3fabed9cb7e2e00000000000000000000000000000000000000000000000000000000000000752ecbafdce5f268f8b8e3f00272c2c5af566ccb77ce4ac6c7b0e63685c6524b162457af8ea892e59f5e2c67378de370c7f23e3dcc3e6bc2000000000000000000000000000000000000000000000000000000000000003e95cdc5ade871e9f8f40009c4967dc962d49359c9e7364d833190b8b91d8f7fafd8a9d75cb922c58da364dc36cd829f23fe6b739000000000000000000000000000000000000000000000000000000000000003ec7d7e9eb9a757d3ebc7e04b149ee03dc849eecc924b3dcca67364d832990b91a358482bc9eecfedfb990d8360db364d8374d3ff870000000000000000000000000000000000000000000000000000000000000005dfb1b409f4bc1ea7429c69e0b30fec7efc7b93c3f242492c2c643299bdab3790c85c8228e38cb1712495e4bb6f2998b99cd8377cef44b9fc0fa000000000000000000000000000000000000000000000000000000000000000ddfe80d3ec737b1a5e3e18bdbf7c7e2783df89e09e09e391248b17f2b9cda339949678ebd2fdaf1d7932172c48fcbb732791ca65360cfee3be6ff00fc4ce5000000000000000000000000000000000000000000000000000000000000000eedb2b53d5ebeb18b8dede0f7e024fcf07b9092e6433194da360b8b15e3a74ebd78e392c5cc85cb1632194b1772f90d8764cff4cfe697cca00000000000000000000000000000000000000000000000000000000000000fa43dd7d0e3d5f174ff005f9fb192c47bfd96b09e0f6b36f2b7f31b4672e491c74ebd3af5e9d749632190c85cbf764c86432194cc6737cf897e6200000000000000000000000000000000000000000000000000000000000000b5f50eaf83d6f17535ef0122587c1eff00518f7e278ee5cc865329b666320af5ebc14a38f17422b393b9258b972c4994c85c932198e89f05f3000000000000000000000000000000000000000000000000000000000000000dbbb8ebfabd7d7f0f88f7e05945185ca9f83df84f73297321b06c194c858af5e9d7a74f1f8cad6321257b36e324c867360a6b196f8cff00000000000000000000000000000000000000000000000000000000000000003a674bc1ebf87c3eb70491fedbade00f72d7027932190ca5cce6c973296238a853a78fa78f8f1faae1ff00162edf93df9c96fb7f1780d1b0800000000000000000000000000000000000000000000000000000000000001277ccbeaf4f4fc7e03dc0f72d77bf01722800f790ca643297331b26432127ed6af1e3eb418bd539fc6002ec75800000000000000000000000000000000000000000000000000000000000000bdf44ebed635ec5e13df8fdb10f80191a3e00b193cce4ee58cc6d194b857471b17adf19a4000000000000000000000000000000000000000000000000000000000000000000ca7d0dae53d5f0783afe2c22f09fdc5112495c27827933998cc5cb194d8339211a3b35b07c7746000000000000000000000000000000000000000000000000000000000000000000369edda856d630d8c8bcdba7fb2579a5a63294a009e0f790ce6d19092c66364cc5c8e9d7a763218ed0386c4000000000000000000000000000000000000000000000000000000000000000000751ddf05afe3f1787a9eff6be4ff6052125ca5e005dd8b74ce24cce7f29723a78bc7e52ee1be7ad54000000000000000000000000000000000000000000000000000000000000000000777b14f01a960fc7b54c858a52d2f04b7e9d70033fd1767f798cee56fb1f8bc7e42ef34f9e80000000000000000000000000000000000000000000000000000000000000000005cfa2f5fafabeb98296de22cdb8ee61e3199f78bae0024def7cda767ca6424c7e2c8fe66d340000000000000000000000000000000000000000000000000000000000000000006c9d9f5bafa9ebff00b3d1af727478f8c9337fbaf80027c86d5d3b7cd96dd3a7258d33e44fc0000000000000000000000000000000000000000000000000000000000000000001d63a1e8f1e978c53ad2dff00d8abd41b07e52ab5c0027325d7baa6d960afc1781000000000000000000000000000000000000000000000000000000000000000000077c8a3d7352c7c707ecdfb6ec6bfe0ccdef5828a00f7e02704bd07b96e99df763e29e74000000000000000000000000000000000000000000000000000000000000000000327dc30f739f6021aaf1ee4db35fc4163a252d7b1100013805def3deefdbfe7be140000000000000000000000000000000000000000000000000000000000000000006f5d375b73fa756aa49364b1a5f83a864f54d32e528c009c024ddbea6a7f13bc0000000000000000000000000000000000000000000000000000000000000000001d6f312ea5abe32b1fb9cd8f4ac6daabb0f6ed5397f8adf90009d0278e4016766d32480000000000000000000000000000000000000000000000000000000000000000000ee982ca6a787c5c71ace7301466cae3bbd57e50c6d6a7f893f3c09d1c82390b15c64b1d253000000000000000000000000000000000000000000000000000000000000000000bbdeb4f930782a1fb14b7e8578f2b47b366b92616de2a9c693dc7223f0f72023b08c24cae22b0000000000000000000000000000000000000000000000000000000000000000006c3d1eb47cfece3ae53c8c986af92afd5f2fa5689b56bd4e987b90807b902c5724489edebc000000000000000000000000000000000000000000000000000000000000000001b6efde353d7a5a7909ee6b70c993ec93f1ac76f1a37ee1809c8e4809e391ebcd8af248b1258ca6a94c000000000000000000000000000000000000000000000000000000000000000006e9b1c9a1bc652fe534cc3e4333d9eff0009d577ed5a9e3c7bb973dc14e311e518ef125802c24b15f0800000000000000000000000000000000000000000000000000000000000000000371d9b17a666e0d8766d6f45caed3d26ff0008d5b62f788c70b7b66c9249257af4f43af26c97f5cc7a39241212497359fc0000000000000000000000000000000000000000000000000000000000000000059ddb21add0b790ebb86e40de3a1d3e3386cfc18088fdd9b7cca46ae920b7caf0f633963174c969fe58491c86430b4800000000000000000000000000000000000000000000000000000000000000001637bcc6a742ff0041def87e3767d9e5e358cdcf1182f059deb748eba7784726bfcfec5cb14aa4924962be3679c4790835f00000000000000000000000000000000000000000000000000000000000000000643a05bd23f331da354d2fde724e614f7ed675b3ded3bbdcb91a3c841f95e2f187e7f90915e358b12fb6bbf96e4923b173f74b00000000000000000000000000000000000000000000000000000000000000000ccf43c76b11741daf4f5cc46911effa66bc643a3ec9247247211c6a787a7a65bb0fd8a49244924781a593b91c798c86a78400000000000000000000000000000000000000000000000000000000000000001b26e6d32c6f916c9a863b548f68d6f0f1b70e8794af257b95e38d1415ebe3e0d3acdf49fbf9209246ab4b2996a1732983f1af80000000000000000000000000000000000000000000000000000000000000002d6d3b262f1193ca6f98bc5f38c15db98cad2740e875ec471d723475ebd78f1f4f57b962c49eff00648d248b1534ef17f315f295e4d52b800000000000000000000000000000000000000000000000000000000000000059dfb31add7b1b2750c3f1fd462bf4239b7de811c72475d5d1c68e9d78ebe3f5f92dddb124649611d8f187d5fddcce491aa6be0000000000000000000000000000000000000000000000000000000000000001b36db90c5e2dd1360c67cff4edc1f8db3a2491c91c7fb48ae8d8f8d4f178df3632170b11c9258af22be030db0e2b39629dcd37f00000000000000000000000000000000000000000000000000000000000000006f1bdc9a9e3321d0f29c8343922f0c9f40cc46471d78e3b1e3f29c7056af4e9c692e642490b7e2c2bc66a19b93f678ebe2b1a00000000000000000000000000000000000000000000000000000000000000049d437bd7352c7f4c8f39c1b11247e24dff00388c8ebc95e3f11474e3a71d7ae9124972dd991611c91d7494ff003f562bc15307f8000000000000000000000000000000000000000000000000000000000000000cff00699f5bd52a752d5ff796455def61dde4fd8a3af1bc568e38e9c75e9c67efb2c58b172c492495ebc15ac2e23822ca62e9f8c18000000000000000000000000000000000000000000000000000000000000003a5759b1c9ee78d9f1fcb717ea8333bf489238eb78af5e3af1d7af4e38c2c1258b172c5c475e9d3af62e58b0af1c9670d261a8800000000000000000000000000000000000000000000000000000000000000758d9f31a1eb9d035fb7c7f62c043274cbf17ea4a75ebd78eb788ebe3d1fec4249163d4d66e4f629d3a78f5cb962e495ebc962be1e4c0000000000000000000000000000000000000000000000000000000000000000f7d276793075339739bea7bbe88daf6fa172e471e3f1f1a358a787a5fb18588d24925858b8af4f171c972e58b1625a51c798d7ebd1a40000000000000000000000000000000000000000000000000000000000000049bc6f7afe52491c833187c5d9e8d1ae48c7e3e9d893c4f87c34000924589125857c5d7924b962c4962e471d39329abc18b00000000000000000000000000000000000000000000000000000000000000331d0e4f16fa069788d0321a936bda2bd857a75a092c472eb58f000588ee491c8af4cb162c4925cb1257a71e731d88c657000000000000000000000000000000000000000000000000000000000000009333d2b5fd8767db34be67ae30f77a12392bd38ebc9729d3c3d70001249723578ebac5c2c58b162c471d3afb66a72eae0000000000000000000000000000000000000000000000000000000000000126e36f37b06d183a982d2759f1b5ed91d38e9d34b354c5d38c0000b194c3c64772c125892c58b11d7a77329adfeeb6000000000000000000000000000000000000000000000000000000000000024df327b049ba6a71c1c7b1befa5c7631f8faf1c92d2c3d7911c8000162c538d04f62491624b1258f7fb1d7a79cd6f68d16b000000000000000000000000000000000000000000000000000000000000017374cde532987b1670dccb12d8366bb8aa15ee4787c5c800000248e09e4b8162c5897dfbf1263db4fd07f326860000000000000000000000000000000000000000000000000000000000000fdd833d946d1a3ee994e59a9d37bb9b6c74a7f1add790000002c5783ddcb0472492493cdee4474f31f6871ff9ab0a00000000000000000000000000000000000000000000000000000000000013e7b2d4fa263f1fb663f9a6bf1a78e5ce4f5f07027827000002c572c0b04961258b11c95e9eebd638c738f20000000000000000000000000000000000000000000000000000000000002c5bcf5edb357d9329ccf098b0497f18270000011cbf892412484925849623fca190af94c66ae00000000000000000000000000000000000000000000000000000000000032194c8e7a3c7f49d5b53d56b02780270000011c858b15ec57b02458492491fe79cbe3f21a457000000000000000000000000000000000000000000000000000000000000331ef31b062ecf43e5d4359883df804e00000813963d79160244922c24af98c7a5d2c00000000000000000000000000000000000000000000000000000000000172c65f64a7afef126a7adf9a7f84f00270000104e809ff25902c0124892c4892c62f29a951000000000000000000000000000000000000000000000000000000000001ef239893f31f99cfe0e3d7f19180f64800000804ff9fb600b0af60924924b124790c5d7bba78000000000000000000000000000000000000000000000000000000000005db76dfb9fc7d7ce6b7ae009e446000004027fcfdb000b05824b0b08e9dcc063c00000000000000000000000000000000000000000000000000000000000589f30a99382b6f1ae623041eee11c600000203dc8b15d2483d79492249bdfb5c5cc1d7c86a8000000000000000000000000000000000000000000000000000000000002fc994c3c97106d706a5407bc82357000000809e5882c23905824916125cb983c7dcc763400000000000000000000000000000000000000000000000000000000003dd997f224b6ebd7dd31faa465bb8af5c0000104e40279234720b11c82490b0b0c8491ebf1e435c000000000000000000000000000000000000000000000000000000000007bb91d759bf8f93391e329c4b962bd7f5e40000409c804ff00afc00b0581248b162e4bad53ca616b00000000000000000000000000000000000000000000000000000000000496a0827b12d79ecc75ea456278e300000204e80278e6f202c57b0588e44924926524c3e2ff0067c200000000000000000000000000000000000000000000000000000000000bd7b1504924e8d35dc440b7e7c8000010272009e397f204e162bac0b0496190c854d6e2cc6bb1000000000000000000000000000000000000000000000000000000000019bb1848bc496eb78f13dec53dc8000002013c02781eecd309c1604892449633126a71d8fdc1800000000000000000000000000000000000000000000000000000000025bf7f5ff1ee58bc3daed7af67c80000040027125409c16024916126432183c5b31aa000000000000000000000000000000000000000000000000000000000024da7de9ef7247e12248bc7b90101380020004e24a804e16058124963398bd7ec643118f0000000000000000000000000000000000000000000000000000000000b9b0c3ac003df89c8009c0010004e12540138b02c4727a79b1986b6bad7c0000000000000000000000000000000000000000000000000000000004ffb3c98c097dd709d0009c0010004e413cb4c04e160b005ccc60f0f98bba98000000000000000000000000000000000000000000000000000000000b3e723163fc1ef35820001380040013825a604e160588e4093314f5fbf91c0d6000000000000000000000000000000000000000000000000000000000167ddba753dfbd9b098e00004e0040013c13c09ff00210139ebd4824923485cb18358831e000000000000000000000000000000000000000000000000000000000fdb15a7cb617c3688f5cfc00002700400139027f75404e2c0588e40653174d5fc0000000000000000000000000000000000000000000000000000000000643dc4d9b1782f000013c013820004e80f72d70138b049247223488f215aa57400000000000000000000000000000000000000000000000000000000002ff8cc59f788c5c400004f0027200013c07b96b84e0b0124802c7e6323fcf1e00000000000000000000000000000000000000000000000000000000006d9b2e9d8ba60000013c09d000004f2d313849202c004b3e2ebfe78f00000000000000000000000000000000000000000000000000000000002c23f7000000004f000004f2d34e0b00580049253a7f9fb00000000000000000000000000000001ffc4001c0101000203010101000000000000000000000203040506070108ffda0008010210000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000015fc4e51480000000000000000000000000000000000002bc7b2e9084fe2dac00000000000000000000000000000000000635174b2022a7edb72b00000000000000000000000000000000000c285d259290aeb9c3ee4cea000000000000000000000000000000000030617cfe0b2c0ae3095f7d3f00000000000000000000000000000000006242c9fd8aea6cb008624ae8db30000000000000000000000000000000005787759294652c7ba409575518fa3c7edac000000000000000000000000000000000c195d64919252588c631bb1b1f96d5e1ed3bffa00000000000000000000000000000000538b93789592b2567d551ac8e9b92d3b1fb6ea800000000000000000000000000000000c196548ba56e665df6db5558f8b8f44798e67029a65ebbf400000000000000000000000000000002bc2ca9d92ba797b4dff0051d4db0d3f31a8c0d7e06368388d7575e2fa96e00000000000000000000000000000000312acab9913d9f53e95d967c72369d1d1e47e6ba2d5eaf8ae12a8515f71d7000000000000000000000000000000006becca95d66d3bdf55c5e2f94d4d7774deb3ee3c4781f2be7bc4eab0eaa9beefc0000000000000000000000000000000538193917646c3bbf60e67ccb9ec0c2b5f737bff00d73cdfe48e0b41a9c39cef8f7c000000000000000000000000000000030aac8ceb32fa5f6f8f8ef2f85cc73d3ec73be4fbbfdaff0093fc5f55a6d56a69c8d87a180000000000000000000000000000000d7cb2323236de9febbe4de63a7c1e2e8d862f6bf6e97b77acfe3fd269f9c95f566f6c00000000000000000000000000000007cd7db919191d1fb9f63e05c060f39acd6ed35bb8ea655fcfdc9f8ff8dd2e927b1e5367e8c0000000000000000000000000000000518d665db9bd6fe81ddfe71e1f0f9dd765ecb9aa3b0cec4e7bf79fe6cf34c0d0eaa9c1c7f58dc8000000000000000000000000000000313e5976467f71fa3f3ff2f71387aee4f7fd0739c9edf7b0d1fee3f0df32d568f478df2dde7a100000000000000000000000000000003597d99191b0ee3dbfd47f2f792e153ca57d06d787d464e5e67edffcc3cbebf4ba4d7472e7eab300000000000000000000000000000010c2c8b2cc8cdec7d93ddbc47f3b686ac0e431bbb8f15ac7b47bd7e77d3e1f3babd762e67dee3a600000000000000000000000000000018f8f916599195d4fa47e85c9fcc1e41891d7f2d7d9cce2edbf5ff29e455ebb43a7c6ab227b5f440000000000000000000000000000001ae94f22cc8b779df7abfbc798787f8fe063f27a8c2c7cdfd21dcf83e9e9d66a35383f7bd8637680000000000000000000000000000003593c8b2cbacdb74fddfaf7ad798f9d797703c36931babf64ecbc878e6b75da8d761d995e91b400000000000000000000000000000014e05b916cecb32b79d376de99eafcf717cd715caecf370fcbb91fb89add7eab5d4675dd576400000000000000000000000000000031a864641912cfdff45d2f4be81d0eb38de5b49c3701a2a2bc2d7616b70bb8ba1d06cc00000000000000000000000000000062d17db6974aed9ecf75b8db5f7f17a0d0e9f55878b87858789898fb3c9dbf740000000000000000000000000000001af645b3190c8cada676c3270797d360d3aed763e1d7858914a3e95b80000000000000000000000000000000d5d993784ae4b332732787ccea638b8b8b871af1b1a2f92f5f0000000000000000000000000000000af0722cb812b8bada75bce60cad9d78f8d8b89f2a56f55cb0000000000000000000000000000001462e4d96009592626a39ec3cacdbae9d387814514d58deaf9a000000000000000000000000000000313e5b7802c951acd568eac8ccbb61664a35d5a9c6c8ed400000000000000000000000000000035f65d7002ea70b57aed1cb22cc8cbe9af000000000000000000000000000000001f30aeba400957a8d4e16a6eb253e9b7a0000000000000000000000000000000015516db2003e6b795c6c1c8b322eede60000000000000000000000000000000018df6cb0002ea794e59933e9fa100000000000000000000000000000000060dd74815d812b8d5705acb7d2b38000000000000000000000000000000003e625990556aa5a2570478de3bd73e800000000000000000000000000000000535d972b94a35dc4a5290154e9000000000000000000000000000000000a3e5d24271c5c99a570f9f40a620000000000000000000000000000000031e57463655464fd92c4a47cfa08d20000000000000000000000000000000031ee9626563d19df7e98b4acd945602357c0000000000000000000000000000000030f2e88fd86525f31a9465f33ec5c8c8571880000000000000000000000000000000429bf1650cc8ce187f231b3e5f973acc8a652952880000000000000000000000000000000428942bceb6ba3182565994ac12b255d6000000000000000000000000000000018b1bf172af8c71e27db2cfb6592a624a365918fc800000000000000000000000000000001f35597f639851f12b25295818e492b231b31c0000000000000000000000000000000a75f9d5db7aa81659900298c972b4a1f220000000000000000000000000000000ab16df994f949658ba4046bb245364633a800000000000000000000000000000018cc6c8c895315962e9008c808ca8fb10000000000000000000000000000000c6af1efccfb44ae5960011905722b880000000000000000000000000000008e2d539664a1f257480000ae37538992000000000000000000000000000000575e3b26fb2caec0000052b31d2000000000000000000000000000000534fda73a695c00000575acac0000000000000000000000000000011a20f99a640000008cabae4880000000000000000000000000000063fd8fcbe765800000063acac0000000000000000000000000000043e21f673b2c0000002baec8c40000000000000000000000000000084e314a590000000234caca40000000000000000000000000000118d95ca519de00000018ec8a62000000000000000000000000000010f960596000004640574e446b000000000000000000000000000008fc98596000014a374808c6ca62000000000000000000000000000022947e4d90000031d2b8031f22bac00000000000000000000000000002285a6400000c759600572963800000000000000000000000000008d7398c8000014dc007c8594c4000000000000000000000000000002cb00056b000002bac000000000000003fffc4001c0101000300030101000000000000000000000203040105060708ffda0008010310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000039bee8c79e54710e0000000000000000000000000000000000001a7b1a72c45d572aa11000000000000000000000000000000000003b1db562af83934d3c57c57c00000000000000000000000000000000001cf737d79b357c7046d9716a8e61500000000000000000000000000000000003b9d14d15571e388d494a7a650a788540000000000000000000000000000000003b3d99f346b71cf35c60733b362ad18730000000000000000000000000000000003476d8f2f1cc798d91e2ae02cdba34fa6d5f34a0000000000000000000000000000000003b7e30b88f318f30871ca62ed9ec3bfdfd4fc9e2000000000000000000000000000000006add933c228d31aebad3b6739d92effd877966bf9ef86000000000000000000000000000000003b5862a95c29cb8b151195fa356ad365feb7d2f6d7dd3f854400000000000000000000000000000002eed71e5aa39f1f59d0f8ff09e2fb3ef7da7b0edf6efdbbbd17b6ed2cd1b3e3fe7c00000000000000000000000000000003b2bb0511cb83a2f98fe5df8cebf67dc68ea3d67e89fa3f69d876bef7d86bb346cf9ef8100000000000000000000000000000001cf7b9baeaeaebbcefc03f13fa1fd33f6af57b67d47ca7f3c7d6beffe87defb8dfb2e95fe77e5800000000000000000000000000000003476d93067a3cffc3bf067d53f5cfd3bb6edb88a1e5ff21fb7fd63ebbb3ecf7ce953f2f00000000000000000000000000000001d96acb832f5de0ff07f59fb67ea1dcfb2f570f13d54abe8bf1a7ec4fa56aecbb7edbb3ebba2f9980000000000000000000000000000000ee983266e93f3efe2cfd69fa33d3f69f44e54785a788fcf7e69faab4f69e876e4e3a9f9e000000000000000000000000000000013ed638b263f31f963e25fb5bea5dcfadf42ebf5755e517eff00c79faf7bbedbb78f57ea3abf9480000000000000000000000000000001ab7d583361f29f943c8fec9f77d8fa8f47d075dde6df258757a4fc69fa6bd7f61dd7657f3b3e43e740000000000000000000000000000001da238b360f1ff97babfd75eaf6f69ef7c879ef47e9337417779f8b7f467b2ec3d1f79a69a7a2f9400000000000000000000000000000003bacd4538f2f98f8afca7f58fb5db77b7d1e4f07bdb6aa68fc37faf7bded3bfeefb2cbd7be2b48000000000000000000000000000000b7b3cb4e7ab3f41f32f877dfbeb1b6fd9efe5e0f67a8def89fc03f54767dc7a3edfb487573f9ef8b0000000000000000000000000000001af6e7c75d74f51e53e2ba7efde9ae9f6beb69c7dfe9eaff0010fd2fecbbbb4f49deebb31e5e9fe4a0000000000000000000000000000003b6538a10ab0747e27e59f4cfa2fa1bbb1f4fb76eac5f943e6dfaafb9dbdef75deea8f88e68f9e0000000000000000000000000000000eea19f256a2aeafa2f11e27dff00a9efbd07b7d7a7c5fe78f98fe94f796f71df767d96be33fcc3cf0000000000000000000000000000000bfb2865cd0575e4ebba9f29e1b5f7bd9fa1bfc7f8aa7ef3ed6cecbbcedb6f63384fc7fcf80000000000000000000000000000006cd9c64cf59447162ebbacf25e4e1dc717fb1fa07792dbdbf75bb76cf3dd8edf9af9c0000000000000000000000000000001bb4514e611a6bcf97263a2befaddbbf668d1bfb7ed6ed1b294fe240000000000000000000000000000001dab353484698e7a7355dbf6d64acd1b766ed9bb45da11f99f9d0000000000000000000000000000000ee69c95401c53c57559dcf6b294edd7b2ed575d65d74fe1bc0000000000000000000000000000000b7b2a73e600854ec7bddd7714465a745b3d53d1b347c6b00000000000000000000000000000000d7a72d550013eff00b4d37b2e3a6abf5e8b6cd3b7b4f8f75c0000000000000000000000000000003b2e72d30003b0f4daaeb79cb830539e175f76aed73f820000000000000000000000000000000ede9cf98009fa3efe6d0a29ebfca6704a20000000000000000000000000000001cf6b969a65100d3ec3b18d9715795f3800000000000000000000000000000000176acf5c78b23073c0b3d07aaaeeb99e8f9e56000000000000000000000000000000001bb9a235f33a5671006af55dd6ab1e3fc98000000000000000000000000000000003b4a2a842d857cdf9c057dbfbaef65f26eb00000000000000000000000000000000027d8e6a6a6acdc6a85510672ef6bec7e3b1000000000000000000000000000000000d5a72e6688d576bc35857cc63c25a1c70000000000000000000000000000000003b1962a6ee2166ac8a8aece215dd0e6bba6e0000000000000000000000000000000007650cabb2e8d7839ab84b8826aa524a5c40000000000000000000000000000000007678a5a716cbbaee6ae2dd6d157537db92c8c92b730000000000000000000000000000000012ed305d25d814cf56b29bbaf2bb388f32469000000000000000000000000000000004f7e5d2b3133dbd8c8579e99128dd442c9d15800000000000000000000000000000006bd18b7dbd3cead1ba5591a639ec925618d6f34c400000000000000000000000000000007696e1ec7acccb2ed15c48c6357372e9231cf2942a000000000000000000000000000000025df64aaeeae3cdf2888c285776a9592ad18ca55d1c000000000000000000000000000000034f6f82dcd92374aea4a6ba459a2cb25565be528ce9a80000000000000000000000000000001ab6d3660e236a5133d3112b3538a29d56595a59b80000000000000000000000000000000dfceccb8e9bf911cb580db2aab597251957480000000000000000000000000000007656dd9faee2d1565704a225a299592b09455400000000000000000000000000000009f67741d446d9f195c564a5188b2c256489713c9c0000000000000000000000000000002edf731612caca62058aef858688c928f31a0000000000000000000000000000001a7b0aafeaa9046901749c46695d5d82caea80000000000000000000000000000009ecd3075b0085401a232af9985d2128500000000000000000000000000000025b277578e811a402cb2328f3c859609c2bac00000000000000000000000000000b2e8dd0ae814c6510344528d53b04ae125748000000000000000000000000000016f1ce9a21594c5a234928dd28c88c8aec5d216e6870000000000000000000000000000013bf2dd1e10531b2528d21a01c720596176654000000000000000000000000000017cf2d95b98d165822a6c8cac04642b949a232b2be7300000000000000000000000000000688d2e78571b811aecaec908a411aec91658af8800000000000000000000000000001ccf9aaee2a0008c8005718b42577154ea000000000000000000000000000039e66bf18000021311a4d05d2aeb00000000000000000000000000000b6ce33800001c728d711a0d1c42b0000000000000000000000000000073c00000019c2cb0d08d20000000000000007ffc4005f1000010203050307060907080903020407020304000512010613223211425207142123316272103341618292081520244351a2b2c2305363707180d21634408191a1e2f009172535445073b1f283c1d118542645e1f15560646574b3c0ffda0008010100013f00ff00fe322d96fd502245d9641018768ecfdcd18c866b31d982c163ef539619f2753d716e6004fbb5668b393e6cd96c3733f4d35bb3040088aa81e4c658a1a54de1c9f4c568e980b9f741d346d63572e543ac849d115292a5c29f7a1b72652d67b567930052d4e9a59886ef7a9d451fc8fb92b2ca19b7a4133cc9d45555c25c30e5cb00f9b3766cdba4a6414e9a55eee98411bb18cab651822f9d8d2054e64c47c50da43735134ffd90d84ebcca5245f66a89d492e4cca5b4fc56db58d2b203988b787ab89bf241216b25b1c7c7bcd14ae91c5deab4e5d50770165d35399cdd174aa69d6e13b04830fda2870d966ca5069d25fb964a2efce67eb983462a2d68ea21d23fb6d892f24076e013f799cb4b54b57bd1fc9fbab77c3f9823c38c59b370f8a1678f1e1a7829f37478433198fdd1f142d32a16e6cdd532c95385aad21e2809db34432b704d01f38a0e5254bf144e1e3f78d9986261d8eab2a785218b2780c11e6e8a60382888090fd155c3de2de809daf5a609d6463c3a8477a0e76ed9b4a124ea53352b5b9a9ab7bbc5073558c1446c5339054e1c16a1186f3559b628a1d5e4d5bc557143378e510700b4c294891d8a23bbed404d664d9197aa9a60ddbade648bef530c2f3b0f99b8599e360d443bea910e6221abef4237a916d86aac9e1e36716e39846ade21fa45386a8792d96ced693b30bb788aacb544244358a5bc4b29aaaee8c29c8bc9e6e0e5619a03114ea114eccda7ef44cf93a98365944db2f62ea261612a8ef855c5e887f269acb8ed155a1d9f55b6661836ce444edb502a44e922a77bf72604cd6500443691760d9170790fe7800f6798c837a2a16a39542f116ec184a24f2ac16ccc19b5442ae112ef1717b50e67cb73351506e63638fa42caaafef691ef43c33793250d77150a619511f34978a1e3f1c1a015a6a3ca3c443bc5dd183780d5b2816287496674b6f473f45ce1d2dfe72b656e3ba821c5e2283794625281912350929dd12cbec8c199a2957887b2bd43bc7075b06cdc6d5295160a96a787861159e19a7b2b254bcc8fdd8a11a144ad715189e6d8356290eaa8b84601fa2db130acc4b54d2568e6aaad43f7462b373ce07132239962abec8c228f3967cf1e383451a28453de5691d23dd8673b720f1bf369582cb88152996911a7f0c0395982ca3ce706a123508a9f9d5cb7a24f791cc9cd424b32eb191aca16aae25d7c1d3bebcdc00db5d39b48c4bef5cc80936cc19a2ddb26b1128b18f9d2e2ef4572aa14372dcf2e72112c212ef15300d96bdad540e6eda56c93a0854242a5d72e2a62f272688cb1e26033001b28ac84e9c52ab488a630fa5ae582ea26a254959d3ecfee4773ee44eaf9cc0526c8d203e79c5ba022e87265766e3b66ea921cf1fa8150a9c3c5e111e28995e5465a1b4dcf3a50433110f54970e5fba30f1672e7e75324ccaa3f9acbff003aaee910fe18991bf372f0dc380e76a6652af34cc477aae289acd705b29602602823a477888b78bbc506b22d9b27d666d4a777bb0b3ce728a63a407ad24f88b4c362451078b0b8ee26a53ef5306761999e274691f0f7a10000c352dcc09e54532e282596596e9cd691e9e2eec57428a50bd4a17428b0f170a70a0a8ddb00028044a1d06205ba39a9835a8c4b77cb2896e88f76249271512c75dc022d933a888b7a9dda6272ed125d2252b44003e668ef0097d290f116e8c49d9850a2ce5734d0a0a94c75153bb0fa6ae5f1d8456608a39446cd080f7478a32e0eddb876179ce22895307333593b06b1ab2a698fdea6254c2845bd2a8097e788f4a556e8f0f7b7a1fd60a268b66f9abdb887bdc245f8616bd4e40db3460a75ca0758e8b3177a986cda5b2a454372a012cb1e5595222548bba30eee984fc1255766636a8140a956025ec888e6f144c793051a9d09393250b4d4397ecc3f62e65ce144940a487a3f71fd9b6de8b22e3f24d38bc8f5025d2345af6abc54f0c4ba5d2bbb32e04116fcd504cf351f4bc31329a82d8960e52534d3bf4f177460839b1a6ed7f3aa7f371d5ed66de2e289c4e16c150c54a942ca99535610d59452e28780f1b1a80b79e13ab0cb30a45c4a7129f760d9b99c1d4957829990b71fceaba88a1ce099d787889a39469d245141afab55644a143801716b04acca6a749f0809717de878691aea5815e0a7944b8bff002859c9982418602435433456583681e6a294fba3bc50d1b6d581a827510854e94e14b5108c2c759b8b52ca3d854f070c35a2ba8cfa3fce68456ac6b5b427fcdd1dd0ef53f761336d5dab9f5822642837d5885c445f8a0c16788b8554ed1cc45bbdd11866c39e66b3d9ab4f8a0d1c65a8c4a8133cc5c4512d0e60b61037aad201c4fd2f88b8600d6720a5a4e29b4b32ca534d23ddfc31389f336cd9404943fd32c679bc2312ac193f37336cb28e9c056d59ea2ffaaac33366c16e7ae1c038755d45bc29787761b3c5936ca39566888d21508b954a9a8b7a9de867245a701ce94bc8e706ba53c01c048b8a91aaa2185ae9369c365526d2b6c9808524f0fcd523aa92e28bc1c9fca10357e2fb5fb8da1509589755ec96f0c3c973d605b166e49dbd9496afdc71bb670f1604d20a8cbb06c8e4db9230e67cf1ee5b7d2a6aa7ba9f7bd708f3360ce949c022cdbe5cd4e6e2f143c7ee5e22dd6528aa8f9bb53cbd50fd297760e70d81b3858d432493321c4a73395f7447ba30fdcbc9db952d353aa10eb0aae1fa2189dcc9192334d634c39e1646a9d3952ef78a39b3c58136b909cbaeb5e296e61490d59bbc5a8a1e2cb4c8d36c1d480a342298f08fe22d450f1e58618209d54e54cbf1479b68e2c1fa3f3ca71777da28591f9b6dc4a9ca9996ee843647263179b1ca3098d8ed654ac4f0d31cc5e1e1f6a1c4c5e3404e90a710f6523a4a8ddffda0d75dbb05004e92767d616f153f86a803126f68db9530d45bc450c1a579ed4ccedff874c737bddd1859c630284a2988156ccb94942eef74619b63068e165d404c3d25e1fa318441e4dcf0c2bc01cd4ff142930c34ac413529b47a0883ee8f7bbd12a479e1a7b1be1a63d150eaf67f8a19a2e5e73845bd0275d2b28455088f1116f44c9fb466db052a14b07e90751171144aab59fa6e166fce15a3e6ade9ca3fa4211e1dd18466ac2ed3f52d3f9e3a50f30966a4b84b8bbd068b6608a8b3c539d3c50ea22aa91111dd4b77da8f9e4c966e4b37045b0e64d11d4af0d445bb06fccdaec3cad9146a21fce8eee6dd4fef42d386cf013379428823a5bd548f772c73f9f5ed5f05251e22d8aa24dba43aff00847bc517b253772ee4b5441c3f4856b429c00eb552e22aa1f4994010511416c350faba80860d030b6deeead9bbfb8cca24cfe74f81bb642b50bfbbf6c727dc99316218aa5b907a56705eefbb0e566c88269b76d82cdbe512d5ed66de283ebb0d6590a911fe6edcb4916ed50f31a66ba886207ce0ea7043bc23ba3dd8bdaf16045bb46ccc1150baa4447e8901d4a8f78a1cac12de6f61a950d74b5469f3a41a8bc23f7a2859fbf51752b5811cd4ea10ab48978a1bb9e6df1801281463092d56a5d53d2955c3c506f011e78b73832358c8713852e21ef14316c6aa2e5d159d039111d552a5a619a20e914ec24fa96e74908ea5d580e76fdcdad934ea5565b344d8c145f040ea45a8515d9bf4c586b31b68b13ce46348eed7def0c3978028059aed00204fbbc4a7b45015f36a8fb4b20d5ba3dd83c1eb2dc42c34fa13ef17143658cd172389abbdf6a31c3182d3dde8b04787860dd39992a9a66a529279853dd18773ab01828c9b6d146ba8d42d450ddb1569ed4e9ab48ff1422b1f36491454c112fe70ebb9dd837212d96a6209e0a1a934fe955cba8b8601772b39c8dfae500b0eaca2925c50e66f6dd9401060a013c5f2a8b583989221d39b48c22ba12b66a2d85ce666b79b5b752dda531e2ef401a888335cd3374bb803e6acf7691de2fd18fda8608833b5355e286e94719914c46ac55fc3f9b180728a2cd478e9e008ac6586dc4aaaf0b2e2117e6c777fba1b4b5b3c7588f53585110ad16e595554cb4d43ba3f6a169aced984bdbb2c1472544b542548fe2289533953372a2a8cbf9d3a2a89478e888aa2ee88e689c4e8160b18ad2b07cf68ad16ed4492492a87496a879217e78964c5e326f821526c43f3a5a7169cd136962f2e5cf6db559c54d3fb8bc964cfe7cfd26c806d32dedd11f49145cde4ed195b04934133ad6f3cb10e62def661d4c99b606ed1bf994f5381ca3dea625ab22f39c190644ffe1f77c3fc517ae7cb1d08856a1a87993d3995d23ed7dd8939b396b64d63b01470b025987f342548a49ffd4287ee5673785e2ead808e185248896a21d2225c23ff00cdb0fcdb1828fd771885a114fbbba223de87cb2f2d9324cd2a0a66f16a9400fa322d203ff4c60110f9ba365640ceac421de5cb29955dd89a21629d45a5b54231b111e1fac8bc230b242cc25e9b652a32c88f0e2efa9132b2d95b16e18bb9d4a360e6cdbc50d1bb9954a5475a5675d535de2c3de28968022b371b13c42accaa2d350f17747514395414373689f712db988b8a011c43aadecde84d3e7249868b13e9554e11850ed727b013eac7a13187182d41510acad3e8da5c3ffef023bd6fb306b9514d996cdeef1422075e5eddd800440e9152a2fa453f08c2d901334edea3788b795eec02c6f1ab83c3a534e9aaae22fe28595ad33451ae81a7196b7e94bd9dd1e1837a00f29c5325e814b18be8931cb4c336c88758fabc3a3e6e986a2a47288f77bd0924b4a113736a7ce266eaac74f48a4953e6c69fbb0c165801fb972ecc51af09e382ca2397f9b27f74a9845659fbf66bacdd14d24f326990890a423a6a1fce708eec4c9ab66d88e5f385897719b0475d3ba397ed463228b950556e09aca656ed46ac21ef10ea2866d95e66f0d27875e37cf1f1d23bb9847bd12d04113a9b632623916584a95c877a92859e3396a359a88b36d5910a225988bdacc450776e553559c2ca4adcf36a2a259554b32a5ba298e628bc17596696a8ba0c164db51559697ee2b2a953e9b3c145046b50bd11c9c7276d244cf1493350f291116a54b847bb138bd4b1bf51a34533900f3a703a4477844bbd0cd98061d29d5611f9c2d397508c4d5ffc5b88d9b279d4cca116ed454ea8968233b7ea37c4c34933c525b55423acaaef6918bc338acd45ec491452d29a634d282090e5a4b88a117e6b73200eb16707553a691de2f0d231f1933994e145ad6e1cddad40d474d4bd3aa1823cc1e28e39c621e945c1ef12bbdff72f0c256b446d798195352849a896be2c42f1174c2218cfe60e494a521a8448b784757bd17730dcb976f14714d20a8b712d223c45ef4366473e9aa7612874ebc6e14877a26af0e64e54a13a904720a7ba22395311836c0c25cd92d94397c0244a70a45bbe22851a249bb49b82e3d56b2e150b50fb3644d0db208d289d403944b88b8a1b3735ce8b2de82e950a1e2c8b6453b13ca504759edb615aabd9185459b6df762b38455e6945b6a755a5e8859c286837b0cf315569263ba3a639c56824055e10d454e9845f00ed58f48f4228f17f8462d990b63a01004d458f6aab1e721ab8a25588fdcb87562550f9a45432e1e1ef42d6364516604f0f9c95424f04b3eacd48fd9837f5ad2f6c8a609a2cc286f5e649023d4a66d4a1714490db3372dd314cde3f52a16ac48b3095355455651f1143e9e9cb814ac0de4d660b50a58398812d580d877736a2de83953695acf167b82999054a082a557fd04fc3bc50d19b99ac9d478b7cde5c89d2d51fced39a9f0c03c9dcc8d306098373a3ae2d4afb3c230d9293dde766bb94be329929fcd44b324953c225abc50eff0096778e64ba48cc01a837cca16914bba45c5dd85b93561ccd4b549e2ce8cbce38548872f744a27b72929685829b8474544a11d445ecc10d16ecfdc498b27332748228a7528a7408c7275705bc8a576a8ba99e8ad62fc3135bc86d514db3652a72e3aa4e9d5496a866d81b3cc0070648b7cee961fa5578bf08c1de1393b6cb462e9c1b774c8a9111ef45f09f1c918612d99db83ca5c350ee917bb17780d848b05353e70b0093e23d2909534fbd179e6acd658db738c46cd4fae21e21cc54f10f1448513b1828f157069daa0112c43ba855947c4a144f832619a99910c57423decd4fb508b0074c1982c064e5e661d9ba80e622f6a9a461dbbb005c50a912eb7cddbecd4604598a27d8182c1a256e610102ee88ea289aacd9260cd115004140ad411d4290e5012e222d508aae58307968d09e20088d4551166ca3dde28608b9c250cf308ad4263c4a96a22f08c4e9512170e79c1d2990a6dbbca539887ba3643163cd1856af6b80a8b8b08757b45a61ff005ce4294cc474a63f7a173465adb0f7cb3a85dedd1f660ed3706656f91b566ad9b3ce169eef7a1cd55d3ba9e5803b43b3b600f04b6d96f4c3541157b4f3ee8eefbd01602d69da6a509fde8c5eb313083ea01dd868038a9da5662773bdde866f01b22a1a866a2c41e6c3288a7de2dd12846760d0ad5564f194c1a5346cd23e2e186cf2646cdb80753691fce96a869487761b4d7f9312a70933678932982d40a859975523e2ab4ff9db12a7e8c87e3032539c3d701493e3d54ef0a7579b1fb4512f65219549f9e4d9e55638ebc5ae5323a0a911577b36e8c2d2a9c4cb9bacbb3345458e862d55d2d92ef08d398b5170c5e17ada5a7cd19a80b2c548a98556112fde2eec4b4306649b95661e6c080542fa5577b0b8a9860cf05b26b28a026cd33ca45c5c5def142cb1822a3974e3a8203b516a86625447788a3e247efc0d5692b66c5996650972cd845c45179a40b3259c384530b5aedca6356f78bf71100358c06c0aad2e81b2393ee4f86ee346eedc854ed60a851a77627735e6c1866a0523988bbdc306667d7d14ba7014b712ca29245fc50d9bb69549142271886b391050b491abbd48f08c04c917f3e9a3af382cd6f9ba645e7550e2285e6cbde3992ae49a0aee6d3c0648d395572a6a2fc23c2317ee7ace50d99ca19cd2aa42a993e1d2bae598d4ef08e91872c01fbc97a1627820a65c32d4290e6a88b8b78a1dbc059cb748dc6234451155c088d23d50e1a422307d682aa1695162554a4b3530d9cbf05953b1c056e00694774469cb578460d135a65593804ed4d112ff00a423a7da816c5cc31ed0eb26150371e14132cc5ed43ac059e2658679a8c3f0e912858c2c7ca579b0756c2ca4a1691f08c21275565993345c54a165123d224a88a8a285dd1187e8a3367b6da95a4a33669110d83c225bdde53544cd673cd934ad52a54b3ac59b2f77c2225000d9b1d649e44fcdf7a9ff00144c5c7393ac9c622aa1d45ddaa160a124b76cdef6a1ae1815669d5c01c45006b19da36299d43cc50a987659a47a07f8a028afa7b3c9b6dfae2ccddbd915955b7b3f6474227e72ab77a19aa6b367165aa0583a8d63ddf0f114313037414246565635155bb0e670cd9b0536a5491558288fde22894be71ce6db52431dd122565aa2a595b0f77d986472c96b051cbc50dd3920a59a3569ef0871145d560fe77324de28df11744fe6e3a1b332e2fd2144d6f3bc35a609319a01188183e992bd6f8931893b6e788cc1f3f983c2428f9ab7abaf799b5170a7f7a25576319e38984d1447ab4469448a9490437472fddde89ab9e7ebb3b574ea4933f99b32cb553f48a0f77863999ce16f9cf56c9331321d04b977bf470fe8997fc3d54e91d23477627d276af11b00db9955a87747da289b4a7e2cb5c5485349d3666fff004fdc43931ba768084d5740152b3f9ab7b7ff00f6144b5e03045c3a72678e34966cd4d7a7daeec3a786fd6782aa5860205885bb4f7bbd1cf1cf36c72af31f5757045e8bc2e430d114c3194ea84472e17b30fcfa995b645c54e4aa1a7e88474e29177a184c9390a562ccd4c6505126ac5c5ba79caa34acb88f088e5185d14569ab24cbac1d6b0f74748ff143378066f1e289f5aa5439b288a4055153f7631d77a0e0130c315d6ad6534e41d23ec8c0035366f0f9cd29118a498f7475117b308b90372f1f2c9d405a44a134b9db65310e959f39a48877047310d30f1e1bf352d14f0d220e6ed7f44825e70a145b228a8a751a9910fd1a63947de862d9251d269626446c22514ef7a639cd88b078b6254b3aa526f565a522d645e28648aecc3399f3613127023f4a5552230e4dfb974a29b30ec2ca23c34f0fb5f6a1c39b3e2a6e9d9aaba942ee8e91186ed81260a2c4a0575d298c384ab04cb9c555546236ff0079178a122b110c6b53d84565280fe2833c1472a7d25a8bc85db6fca1cf09b9a414b06ca6ad4518c6670d9e034470d1a2d3535153545dc953919828ab9aca90ac86acc41de2d23017a9139238104f9ba0dc085c2c254a59be8d3e25388a2ec484e7cb56b60b3602155279524855d24a8f7b7437a16612a51ce2215b76cce9c47caea1e22a475285a402117e0e814c4979e12274b76e59bad2d38bc4a6f170c30bb68e37395fae323cdc3e11ee8c39b51993c50053470533eb292cb4f0c1acb9b9ea7ab4872d3bc50d993f7eb380e6f488e52e2cd17f2e34d5b0758dcc512d2a61153ed196f42c92882c607da36ecb7f70eba977179fcc29a3aa4f32c5f862ec306ccd1667b89eafd296efb231389cf3933316f8615973322de577942f0c2078c8b349552a493333745bca944ca76b022e1cf37ca27d5a3ba3565018f8c8dcbc70ed54c2bcf94b795de2f661a0b84913aceb7930a2922fa04f57dd859f8588b85ec5005b310c16350d424aef10c3c54ed6c9db6a949b8cc3ff004aaa47de879d70268d8a5566b58b847860de1ac1d198d4fb230b2c0e5368d914ce923111e23e22f7a270e4db3fb10b282c3f39de284564402b14f10e8a13ab895def7a1cdb6aca60a6a536080a23e11d451327619012ca03f777625a883934d23d3589294f0f0c4d4167fb4c28145b808a74f11165836c2ecf041432b11f3845f9cff08c2c78cced24e814c830848b50a09ea2f68a322c69d839531ecfc450e5ca45cdc6d429011eac77a9ff00141b65ac154cdbf568d38f4971694e1673ce5c9aa69f46e86e8f08c2866b1d56f69662fc9b44fd24a53616f4307c0f01b54f16418373f39a61b2ee26cab31b5b822837cad1031eaeadd514b378b8423e35a1e376e0e30d144eb222ce58fbcb9712c5bbc30f18608375e60a1b506e15b5623985b0abf4a5f9c58b7625a60d9151eacdc11010a514750a090ea1ef116f43b9cb3360e1cb96f93488916f1692a475422f3059381459992a3994ab4a557872c48999b9c3ef6918ba576c39cb313674d9c223bd1fc8996de192380732bc6448295113de1318f84372057879289bf3ae6e6b4a1c9d2d9e53a4bf36a6cdef5fee1add159d2e9a60151995223de28bab77db48583742ca08d4cce14fbd4fdd87efd66c0cd1b28a94ddfcd25bc5073272fdfe2a2dcf65743344731777f88a26ae425a6e10153ccf9c22ca24bf0e6dd18994d6bda04e0cac4757092bbb961b1293298a49d96540214d3dd8c137ef3f9fd26b65c62dd4075285132788acf9ba167f31641b534ff8bbc50a2ce1770d9733a6d56ac2ab4a698e5872b6300582a9d2a1ec4c4b874d4500666b260196a3d83e2d31273e66abc75ffdb86137ef1ff9cd06b1e0aa56e5c63aaa2d44308ad8292e64a55486411de22d3eec4b50059ced24ea4d10ad61e2a777f0c395ad70e142b75174978a1882c0d9e50ad36964abbba8a2547ce6629586786d5a8565471539756f45609cbb0c54eb9f75ab29bc921c3ed44c5c82cdd9b24103b2daea50cb7b747d91185141b455b02da43b3d91860d9cb956914f11653a43bbde87eb2d6e1a1b7ab4cf6d3c4a16a2870b59b002c0a69d5e5a047a6df77f23d276faa25b8ee566604a19589f99447761ccef982d82cd4c473452a3add404b50a7fc5176d167765b73d72f29b442a4f2d4a1171525bdc312970f26532c6729ac435aa68a245a48b566fce7116efed80360cfae59c79ba70c77488b4888c3c9aa33e7aa3843068442814c4b28d7aa922dee23fec890c9cd6465c80b80212cc298f9a1a7788751145d596b0932c04699f0e36f0f78a25bccdc9a691b80ac7553c42594a25bccdca39330651189bdd9bb97a656fe5f30680e592e040ab757309551f08ef839ce7911bc26a220ab891b93f99bcb7527fa257bdfb86727f779472f5bb934fa2df33fc5089a32d454736f594d355348eaca22313859e18736150d478f16a965077521ddf0c33366c0f1cb28228e5a776aca45e2289dcd7e3272090a995458886a2ca230f1666db0ec44ce81a844b8b8cbf08c365825a8a8ad9462ad50f84639fa52d6ca6c4ea5160dedd4b747f1402268e1a769d26e008dc116a118c6c4e9b54a44b253c298c3a7362ca9db87d1408a03c230d9103729582ae7eef1411529376f580a09d76129a48b8fdea7644d5e22fdd27849520202223e1871d4e180f68eaf145ae41b30a06ceb16cca1708ee8c06b0d9db0e48d9a29a49e61d05de2de1833748b04d1b14a85472444a0ea2569cdeec3c78690384ba92b4406af086efbd0d8d4a1dadf48b641f6b51451ee27a478a2c5024ad94115079cac1d7e5f35569118ace8555d3ba3187eb8c3f5c5183e28d9e9b7d9fc8817ae01e2c985a0074d5aadb22540c65780b394f13ff00b767c45c4516b97cf1e28e9d518d5d439a94d0ee8f117af760af52d2dc31152aa829cd9728e6f760260f274e93255c1a69a994447ce2a25aa9ab4f8a2ec49f1812b322649d38688f9a10fc4512934519aa4093305088e8121d41bd0b060bc97a27996529a511cca95556a2e2890b3720b632c74ac404556e245bd0c11300b2952a023abfc3127a0c13eaea2d3490c5f5b9577aff005d6792b99b0074d1e06c3b3f18f786397ee43277c885f272c54adc4b9632296bfa760aa9f0977877bf70a974bd69a3f6e827ad42d9645de608b6593412cd83a8bc3f8a27735c3e66201860dd62221ddc52de896ac6c1b28ef0ea59d7555164d598a9ee88c5e79c19a29a2395323a8447788b7bd91854db316c98f36eb9401a6aef6986c32e359535adc89a348f78b8bde878f0f1ab3ddababf1418026b2066188459c8774b861cac6e4ccb7943a8a116f6ac06597844788a153eb0f67b30cc1262092ea2756f08fddfef851db8787b2d53a4ba046cd223aa1b214394beb1cdfc31b4d671b4b35a47d36c1d6a434ea4ed52ddcd3e289501e35676d36d1d5916e916f43930059531d03911ef5306274d83f9c3aaafbb0edcd5d5a01b134f20711117697b508b6e6289a8747cdce94c75622c5f8460c0e8a6daeb2cc450e473ec1cb60eec51dd806d4b6c53535654c460403b4adf660ccfda8a3bb187eb8c3f5c61fafe5363044c0cb7776107a24e7114aeadda7ec88c2d3825cea2ddcc23bb5422b1bb729d7699111e6a75145db675b9ca9e32a9e5cde687769abf86255779e1acdd114e9b543ac8478446aa62ec5de0994cd3412530c04ea150331d454d59a24f76e5c89b3a5bad8c9d44b2da8aade21ab7a025a73034c1267864b1d629911116171170c4b40d1c3015312ad550d30d9b01e2182950e5a47c5ab4c335913cb861b68a6ae1f7a397ae45e4bcb3dc19a4b17a05c8e762ea9cc82e3d85fc517c6e9ceae2de59c4aa60d6d45e325892587f67a6cf55bfb84dd1953964c1c3b10d8a2d911e3a7887c512e79cd826080274b94d1a4487f3b4fde878801cca5e81a94a69856b29f7becc3f9f1acb385853a514c081aa65ba955f8a16037ee6ab0ea11ca245bc5bd0e1e02f3172b1d256221488f1169b298727482603e22f146302ab20259934f577a167394edc4eb14ca56f08c2ce7aad816d21ba3165621b7fabde86edd45cc2cf776c4c96033a01432487cded8683481ab6d9d03947bc4519d247a54cea662fc3036d36f9114543c34813a88b761c87cd9b8057b2b1125388b847ba30f0c163ae8a531ca9a630588b1edb619d08e6d442197c50e42df9b857508066ee916a833dec3cdabd9dd8a3bb08a20679bb07314393c65aac2a477478628a3a630fd71477628eec61fae30fd714777c987ebf928e17454a521bdb3544a9919a8146532f363bd121a2b40ad714a499e6a7f3a5ab2c5dec1738659c934ceb2112a7148b8a98b808b066c14145be720eb94fd2eaa47ba3127335325adcd4a4c8713310eaddd23ef44a99a66db041c228e26674a0e654869d3961b0238d860998d4603a4a9a0774446003180c6cc6da9e5ca397297e18144c310893aade123d308ac8fa54cc3c3bbed698f87b721613b94277ba5ccbe78c404668223e71b6eabb3bbfb8449256b4ee64d1b06f9d951708ef433e668bfd88a988a8852dc4b48e5a46163a1e1e0d1522141285bca965abde858d16cd9e23627886b65250bbb988a1e3e1135310e9b042b24c78b480c367e32fbbea5274acb1eaa7315231681a592db3bded1698a8ebb7eb284a84731a75708c060e256a59d1ba03bd0e36d7b2d8582d46c4c7674d3b4a0037075141d355bb228b6c04c0f2d3d3b3c5c5066666a5a5bd187eb80440d4f5436f9b33796d995552911ee8c62819f9ba84430911fc50759e5f40e986cdc29508bb043ed6ec506d916c3ed53012f306c9996b58e94c7ba3a8a090b6d3db6c607ae01ae452df40fde8c2fec8347d3183eafee8c0f5c60fabfba28eec18faa28eec61fae28eef930fd7036d16f655e46c1597abd30db9c19a1849191eaa475f0c5db96982c98aca5479ea4ecd2245c51246cda5b2d511b1bd4a383570f2f5b48d39bbb1779cf36594da9812cb234b84c730a43ecf76248b1a28a49e21a9d755f6691fb51275914258a2363846b233c65048a9ef09178a19b66efcdbd299ac15e5201d445c2223a6184b40dba699a614a34f529692f1177a0d99b05940c3cbaf78b48e9800c95671b37786989dcb584ca5ae10513a9b2c143844f7aad597c31f085e4bcf926e5427f2d00f9999e3cbedfd02b9847d9d3fb83f278c6d60d1eccb6d2a11e0b52b7bda8a1cacd9b038eae9350e950875651d2319d366042e7cd81169cc44594447bd13658e5ab615aa546415ad516f53a619b3e7f6b85963cb9ca9e22d548c3b7f6384dba76274a69d5f6a0cbd1642216da7d1666dd18333f762ab6bdbfd703e83b7b6b80ce79b7b5412b6d7b472c0051fb63714e228a327640a30d999ba2a4619a2899bc1d41465abc5aa39ae73b35539473658e6dd405b47748bbd1cd812454b072e1e6ce3988b761a3359caeccf6e623d4259b2ef42d6506fedd36e84c4b3108d500daca9affe7f66126666dd6b7d02798aacbeec58db3f46e8543b06afbd1cdba9db46f6a851b8d6a5993a3874c1b6fed83460d183460d1830f54107aa28eec61fae28eef930fd70da8134f6e5b0751449d10596aac3a6c23d3bd478a242e401cb3583360d2756ef76254fceb4e852a352ac62fbc231754cf99009d1ce0aaa87488a425bd0c2640d98330150ca9c512ddf3b96a28922e40cdba4e328a791344784472ff14491f8039506c4c043072d645a74955ba3e18952c00e686eccc407e908b4d3de803459f5793374a620550d45aaa87ecd645ca6069d225a444bcd7bdc513266606e02c50cb79312fbd1f0f6e4c7f94bc9fb69eb769b5cc916dab159ab99afabdd2fdc19144d659301d445b2c8940249334ec3f36cc0413469d6ad30f11451e70a2bd60d044a109662de2fb50fce640d93037069e0b6c7789e9eb55d23eec4d6b5d152dc4a8cb3285dd835be6ee28ca9a60397bda7ed457e70a33d7eb844cc0f2294da5d10a6e5831d81ebb7c816db5edb20327676f1451dd8c3eec00426d00f658079b2e5e222e1834419826986ad2a110e92deaa136648b75d1b133c453a69a73523fe186edab51a2e498618741757972fde8465ae4cdf0737a941e9d25565d5e118e6b6e3ca844e94d50d8279846ad25d3e2e180b16f8b14ddc33a0748e5a7377b3530a49dc8cc2628d1827cd6b14c8493cb4d843d19b77eb8424e64e2ef005bfce34a9a74a968ee545fdd543e60694b2cd89e5175b08a9dea6d2f142f2f3b1cccedd7636486a3b2a507d03da306c0c7e2da829c4ce25946a1aa9edf662d432af6fa48f67f918c11ac06d53a0436eaf6a091cbb7d25de836c361d3c3aa92836d92af441a3068c1a3061ea831f5418461fafc88863618fda84439b1e196532cb5708944901136d862a521bcb45db788e0a678955b5d28a65ba4431778fe72e1205008f1845453742a1a7544b56c67345b4757a69d27543044d1454adc55878a3885dede1f6462ef360004ec1ae95808aa2f3a426425abc3129fe669aa4a1a989a511ca439b7a00d9f5a9a2f0071028a46a221f170e687f8c189d66361d352639aa2f6a264e565914ccd33a8b491534d117aa48cef249e70c1d27524f1b124e1321ab2aa24317c6eeb9b9f7b2f0cad64ed15583c5112b2dee1747ee0bc9c340b668a3b34312c6a1d58dba714b28fbbaa1672c1aa29aa69d29a78ab8d39b157a728c5b404924f5b802e7878ae13a74955947d9189c395de2e9a07d8f96a9450bf34944c9da2fdfbc4c13a69aad222e10ca230bb60045ba76295559d411eeed8536567f57a20ab0e880f4c6e7ae14b42b4ecb3b0628eec22608e26ced2021f7a007d5008fae1bb335d401d356f1426d8084ecc836a7ef17772c37441be038da7b7e90ac1a447ba3dea619cb2d5b9c09a665611d490d55545ab288d55110c60756d5e12769262b61ad50910f10d45fb377d50375d503bccca83159ba5ce122b5311224d3cd9aa3c82405b7d312e9235526972b636eaa72df9b74a69d22a8fcdca90c51cdb765b51da3072b732dbacd1e5a062aca67980b15955435671cf5e5cc9dba2cf5ed89e5d755b5bcaeb614cbe65cd9e2634aa3d492d666ce04a69537ed1867771509dcac116f4ab36b9e4e0452cbd57352ab2b7b77893cdb7faec8bb1771d13ae42ed04f34c1d2e9a7686a234dc77308b7b8bfb21c491556eaa6ada8d44e6f393512ca4445469ecaf7bebfef8bcf2ee6d32e5594540cb9abd4d0223ac8aac6e23b533ddf48ff00643893836bc4aa640360cbe462b2bb0911cc4dead4361d9696d3f4e6feb842466e10b9cd7659b5d912e6351d38755351088543d016f48d50e5b54c260eb61fce5d61a2351545bd6fa292f4439604ddea895aa8fcd4369e6ded454d560fa7760d13c2dbe950fa34eec124161f108fb3541a393696f6983468b3d7068c1a30610610434c515c22768776c18675acb6d3ec895b9596ea524f5520988c491e60e626f5189d39b8b7698ba4f16c66e469e18a819888751449de228b6db6a875139a8b2fdd286132c659c02a19540eb0834e62d23ecc4b416583a5b86c2cc23f9a14aaa6ae2896bcc66698937a454312a8f29125977b76a1286ccd120a053a50c12b5112a720f887543236c0d9bda2a02d6098889186f6f77a1f801e20abf4998484b2f7728e989ab03c14c7129213decd1f0e3bb36c9396555e0a54a735628ad5712897565f77f705b88c51632151cad452278a5566acb488d30b3645cb64dcaa9d20a2d48a7c445179705b396689a8099228e62dd87932ebdc39b328228d0df8a25006b03c53d247aa1faca02ca7110668d9aec800254a002cb6bb7762bb028b30f38d55141853d1e91d51476d30015c5815c26d40093b0d4cb46d22b335308b22b6d510502950748e622ffa6223c50201420b879c4a91586a11ee8d2239b4ea89648c0e612e15ada1a4c87aa5eda534c7353ad4d2227954285259307b2c9aba4503179205479c2365795a91502550d22222a65e22ae2517046797b824ed50124ef7cbb1e45408952f4738b61a2c56d1eb06d0a2cce5d156c8ba7778424fc91de974d0818b0bc1fc9abc7969c0c4f34454d83b96959c597a6d89ef221796ef727ff088961267f1b7253795acc4872e696392e6e6b88d6566a103cb544fb90f1bc73df85c4a9b27fef6e4f65f7e6ee6612c44868786225b7374285676c5cbe4718df9be37030d909a5ca37c1e1e3b680298e699c95bd25488d9ab6a167a23926e4b86f2ceff00d1def144b3deab937a254aedcc22e58f38a473651d71c88f25cde70dbfd198a9b4e8985fbbc6c5cf7b9b3812decbbb123e465299dd0f835b5c0aad9e7c21a68c541b6acc9b62486d1a7b3762fc724d6ceaee72ab6b64293bc1cbfa17798d960888d29e29152234f1d9e88e56f93f519abf0d59b370331975ea965d7946632251759c524225b4ad2e84beb28bf9c997f232f8f2e9b6cf9af27775da3233ddf8c57006f48f48e6accade8d9fb206e2b96538b992f72805964b2ef7c79330b4874ac3ce06ab3143361d366e9c7c4d367d2793db42a4f2f33f2b522a565089040a9b4ba36e20d7eaab2c3c167ce278e4141e6ac4050696110155f46394ac12507d356ca861cca176a6d1b5b917504545aba870c486a1abbb4e6abd7069d75ab8794720d5f76091da1d16edb4a1447d166eef41a30486d830f54187aa28eec064d7dbbb0d9c99ac9dbed111698952dd727d6672cadc77888b78a2ec36364188b50548549d59a98bbcfd659fb45751651121ddff00c6242f33ecc4c40c6cc25bdab4c3078ccdccb2d350d1589612ab5661a86af6a242fccde26629ea1d239b3169aaae18943f3780e07101aa42b75854d5e6bbfa77a1b7396c93ca93445250fab4c88a922dda46145a804c3238a96eaff1551878cda814fa456a878b2153132af054b2d4f0ecd3dd18ff00482dd3c6ba372e6c001f34786829c542e3559fde3fb8248e5c53499a09615a566f5964036e672a4d124f257987f0c030adccac1671904c8d6fbc54fb313273f1acca68ec940d85e6c77521f6b56589e060acdda61d462024e3c45bb0e4c1b2340650af353a60ecb563321cd486d22811d827b37ba0628b5b5157697dd86b5f59d5e41ce5ecc06bb08bc51ae007d50014d96f7a1b3314401424f180b2f4d423553f861066216d892a7d4db51a6b5b508f0e27144ae40fe60e39926810cc12e9410b04b114dec31b06cdb89bde1893cb53465c8ce51636b968810b79f33cd4826ae5b0a94f4a27d160ed2cc7177392f39dceff0091a99815b7892e7f72a6274262e5711ea922536d81d60ed48f35299fae2ebdd96f2792dc3e525ec909d4b594f3f92fcab305048946c4e47079c96de91c64bd3b6ac50b7a6c873f05ebd175eeef2f776194c0dd5e8e485cb3befc9f3c13b4866b761d158a2f81e82aaca15e8f4ed857925b9bca2df6e50a472a96a41763e11fc9a7f292e48808d2cef7ca079d1b60a749562434f7a39335a41ca2dfef82cde4990532fe5c793a99f2777ed32aa91bc72b479ba44af7aa4c6391659b48a79fe8f099ccd3a54495bcfc915f5aaacd456936153d928f83fced1b88f3e00e83ca04ee6f2af7c793e99d63a5b4c86db5212abc51c8b3f6576dafc045b1a802e2e7fc202f4ddd5788507c36908f16f472053796cb6cff0047d05a61b64ff081bded6deed5b486af7a391f9bcb1fcebe002ded504aae5c6fd4c56f0b652d2ab8a39072935e7ffe8b01731209bf2ef7cef43c122fa19505b4917bb1c9e3061ca0dd8f82db370a8dbfeb1b97a9f5ec9b15bbf2d9095b6d845dde8846ea59cb5dc7ba0d366c7bcbdf2e6edebb3ab37f2724665fdd1ca75db2e51643cb1cde4a8ed9a72bbca6a1732e580d458521921580a90f73208ff5472ad72e41239a72fb3a95cb81592dca16171ae81008d4ee7568e0a8b8d3a886933febb3a62f27244e6ea5e33bb4ba9f37b952709bdf55b31269cc141b0b00a9de1da28766dedaa1794cdc99cb4ec6a7f1ade73234104c730b422e04e9b4710b776536874d90ea5ec39c3eb4292632c110256ccc2ba85e2a14a54b7d596166c7401db9945b488e62a7bc3da3dd8247665b377516a18246bb786c83460d1f5c1a76c61fae2c6c6b055a8b7a9d50c18377209d6b98d27a625524a16c523c30de507553dd8608e46fbc02148896a8920619a6a62e52d443bbecc4b5ce74c317292d50f84624ef153352c3a069f37ffa5bbe1893bd0334c748a798a9dea472fda2893f36eb28ed10124448b2c18051512786b1075624454eee9f662648bc44dbd8aa862227e6fbbc50d9658f0c03416a4e9dc2e12878cfa95294e91d3c5f7a3e187742dbc7c88df00c82ab3017a9f7f9b16efb3fb8272721ccd478e6db00b2748970c03637f2d6e6799650c9553379a4878a26ae5fa2d99a26e00547c634953e6901ca5ef407f3ca35229d4797f3497f14397e8e23f58bac5143dbed777c30e5c99a2016ab567a8a05652c4541f429abd98646006645bbfe72c2e7ce1c287a6c2ec1eec3bc141b2098575a99d62ddee8c64f4400faa124f6420861e70a4a9ca425c45dd841a8219ecad46c594ff3823ff6122dd8632864db9a26f94c364faa26932b008844872d5b3654629dbd16d966f448b93d9fde09a05df49114ef4cb6a293809010cc531cf809da16d2a29b76da9ebaf445c9bb729b650a728e5768a63769b3d19572ad76921a579773bc9cf442cf369a96f4816cb2853259177be0bb317ef1df24a77b513bcb6b71be3f07abf816d28cd93b07189809f1294e51b342d65bb2246e793d7136955fa9bca79b727bcb6b52b95cb7c96d1a4eecdf54f20bf20dc125ecc5b21bde0bf5c82b0b9f389aa1f18debf834cf8aed5fc43515e0e4f27991077c4429817a62f2bd4391890728377e4d31e78f391bbd4c794de491de6a5f5ce9a9586eda26456691153c31cad5f6933361f08e935dd74926d129dca395ee4b95a8070c542b0de341cdab6168d597b2395ee5bc2f323f0932950800bfbc777394eba63881d4b9c9ced31cdab366edd31cabf2dd5ceb96b993050002dbfd76afccaac0503ab5171ebe9a6dfd274ec89d72c6bcb2f55ec34143c29772df2cbcad86daa91e795897a87d117739607d279ef26a2197e28e5826b344c776a7698f0ed2dd8b83cb3bf92ccb9045ac3aadbbef2f93f01b4b2e23edb9a3939e5bde5ca91f24aa586755d9e4fef5aadf768773c5954aa1aa9f47d5174b972b6e3b1b96a0ecb2cb89c8ecc1a31b2a1ff7ade32b7690f4eaebff006c48397167c97ac83c4141b7fd54723a325925825db796f18f5ca0f786d56df5e58bab7fa4bc8eab2a7ea90384390be4cc51972766c3e777def666221d5993253ecc48c2e97261672712a9fd80ea55c8c5da5afc5fdab35933be73aa49a322ab5105a7641f24930bd72cba372e6f32c09edf950f942e59e705ff00e5b2142a5dbb222dd2d85ef5b17beeb4eaf6310bd4daeb1db3de53df149b92bbae23513190a05836bba2ddb48d166186cf59c5e9e4f59495ccfda593417520b96b61ce668199bbf9c29949040b7aab6ca07a6ca802aed878ca69b5b2eb3556d99cd807e2c6222a1126d887210d5d3d9e6766dcb0e58260ba8822b898a199d3b1ab0ead3dbb2aa7f6d9db04005d3d83bbc45069fa4becc1a306116874dbd30d92305eadbd3c23bd12a951fcccd54fabe1eef8a19b007279a84d213ca3bb0c1b22d9cd2598877a248741e653ab1ab2f76248f0d63a0682b04ea4cb4eb8959e0ac9a85da9ad4addeff3544b9f801ec2032b16f7693d3174b4a64400586b2598b488439786e79b984c00add2558e5a7872c0363668a69837c60231250474e6ab366cd00cd1e66992adc0b4d59b846aca50b36036d4f37c3b083cdef4729727f8e6edde8696a7573a96b94a92fd2a64230bb751a3a5d23b361a6640567783a3f703914adb34944a10d2aaa89a8b1777517bb13259b036c3d2054c4ee646f2653131b312d5be6e99708d235144e0f04260009d2454055dc824f238d967990abed53061e72d281033c31e28ad058ecab2a603946cd450cd147a54532811d34c2c759a9c55c00faa00219225485a974a83d3b32fb34d9bd0cd3e9b0d0aeba2930de21f49784b862532e729365262d5a8ba6c959fed463a8934cb29153ba39a903e2890dde92c89824e5f22e1fdc19e3a145799a0224bca1f5242245aa9591db6d227e74369d9645c5f83b4ca7b35925c099df146537cac44669c875fd4d720954f901ce32d15f744ede94b79153685a3d31761f22d1d4ef957ff00571873592095dbf851f248486193a97afd49ce5b361a7296bb76693ec8ff0056ed5a4ae47c93cbeff8a822b7f2cbe0a1ca4e26550eac639128b0ef168a38ba2c89ff00295706f23abc7399ccbbe2eb89cb4a5f1072c32321c3fe47f282d322734a335a9092b6555d3f5d9644d7970bc3771ddd97f7a5bd8e66b74d938e4ef95f432d53abb0e7a18cc480adcd83c54ec1d836974db0f794c797382e63774ef9e3be4e1e39922ae6caaa99dce9ced10d56264429d7d1bd4959d965916def995d3fe4a22e2624a5973deb9951162175b7726f5108e5b4acc31aadeee6f4c5b7c025a1771993932164d661247655175ecd6a890f6476dbd1fdd0a5ec59c4a5245458cb124252c5b3166e6ca5497a7747644cef5ba5fe3152d3eb1d24c8ed2dec46db367dd83bd2eb9e6257ff00e684efda21a611bc2e900636587e6927203ddc72b6a829fad6335d0b0e9b0d826cff00f4c4aab616bd66f1798e2a950bc72d055fff00c669a47ecd90daf90bd749f393b68773bf8ca6367126dbcda7fdbb6241ca52ee1cc949faf8aded9da979a7a06454b9708656c9976d5fe28ba5cac329a84b1b5e55cd66b36bc457d39415aacced267b799cbfdab4b4f7ac8bbfca13fe54d8cde59309e0b29ff2c133b677ca2cdaaa46477225b9d26425bb8803d9f55308df99cdea72bdf0915dfc3be17f92fe4a721f76e9ff00715d847e6eacd887e8f68edcf1797938e4c2592a5505667ceb92ae49ea098bd02a54beb7d9cf9d6e818f4a83b76074690b22fb726b7e5b3d6a330938172837cd227a3214c452190c94b362391cb63723b3b36d3427d3e98792d606a3a68d262072b9797cfa6f4908b953b32f45b6889762636ef74c3942d36e0e154f0912fe6696925376c2a77872e62b37a17030e93eddd185c14ad4dbaf7a0d18465ab29db5896e8ef44b642cc144ed24fdee286d2aa0d2b3d03a47721b236023eb844fd1aaa89651f370b7b08f3717b512d5b7454d40223571114305ab454b0d4e8ca3e2a6184ed179944e93a2a5087847345d89f1ac0f03391953517dda6248b73996d169e1e19fda86c66d9e2839f18b2d4590292d3ef0c30005813c1b43787bbed10fd98c1591e83cc23bc3a62f22260b37314ce9af36f551cbd5ddb6eaf2c3ca1b1b02904e66a9a767715b6bb3ef7ee0576598bf9ecad1302202586bb07847a6270e40de52298092d48d45930848aa2fb30bbce73cf2d14faa4f2a254ea221a47ecc182cd9e4d2a4d11c3469cb98f2e62a4bc5961e3c009551676a875a85e1d23028a266a1976dbe6c788bbd089e32bb30eaab288f78b7a2ce6c0aa96599b6245555c5dd8491da16996511cb06608827f9dd5e180dd80b2db21b3505ba2c533f09651a69e286c85ae95e93c271a84adeac4bfaf288d23176a46e26d3306e8adf16ce92a6d6625f37c62e8d898da54e1a94f671db1c9ddc7bcf7f2f31d9765adb2ce506578969dd821c3f8cf0f6d8aa6d132fa6a329a1bd9eddb1c8dddb652c90de6e502e45c90bcd7612479972ddc8cbacced93622d8a386616e6246c2ce91d99922c90d2e2f21d77b93b90dd59b5f47336e41efebfe7bc93f29d617fb4793cbd05a593e3cb82356bdbb2ad7b22777b795a965fcb664f656cfff00a83e4ba54494f25fff00e5dcaa5c524693506c1f38a6067f045e5bc5c993ab996ddf954fd46bc945f8995b38e4ba74a2b82e6e05f311ace5abad945112dee9b68476145f8e570e6efaf6cca6ecc114ef2a4325e56e48395319bb6e8427ad8374ad21aea10c9fb4a2657b66b2d5402685ce959633191cf767fc7c9487e68e68fd08ecd856d997a2db7343ebc4b37041125aab59b55258e14b32d8ea58a664eaa7553eb87f3c74e75a959735e6eb116f08e8f746177a475ed3d54fbc30a3bcd57a350c1b923edb631ece18c6f5ff007c63faa31fd518febeec73e3b04ecb7b0e9afc23bb084fc94b56b17eb1370e05479fa414f4a5e1895df25de8cdd25a64697c78a8a97817b0a9ff0066b6b6a1683fb69fbb172396abdcf26f3972d1d24c2f65f197a72795bfb6da5add4ba288d2a5a86cf3769263b3c3b6dedb62edf283c9b34975cb9e34bb2533bab7316f89f91bb924352f79af4979f9dbc4f844caae9f50c4df93e9acc9e5feba36dfe6c77c67497c6dcbcf29065536904b7ce7c50d8ecdeb7b2d1b35698bff0074aeb4c2eba578ec93ad22e4ce5ab134b8b28532ccaf2bb1e83725e9eb29eb55dd1d8366d8bc7299ac9a6036cce5761cede8d6849ac4ff009b26a0d4388986f109651b3309599ac876d951766863f3a7d6d44aa8058823c5986ac4a87a48a05b2a0bd80198f748730fb312d952b46ddb87fa41d50da4e886b4fa7777aa86d2d403136a79cbfce5806d914eae028451d9879b7a0321f9df6a1b2c00756f4337e1869eca06d1a8aa860f304388be93c3bd12799063380252904c32e5d5c5172a64883c6e0a294809d445e128b9efe5b3596a864f11c54ea570c7553bdeec36e52eec39e72764c3198d6a8ad9b0974852d254fe1893f2b573cd6511b2b24d34489120dd2dd12a74fb50e7957bbc8afb15503628022220555254e5cd13e9acb664750d043ab2c7c3924e12ee5a965c12a537d2e6ea097110e42ffb7ee05c95cbf1d69e3914ed25851149b0d9c4a9525fdd1326066f140c4c424d6a14a46af1668ce0a26469e4102570f88874d5159ac0f1637065887e10211d450f11c66ce0e8a447288f76160c73aac53a0432ed8c6c10cbbd01ab376402c8d6a1927d223d486e8f8a2b333a8bb4b54261d3614228029a8e98411440f09c2745a3d15d99a9fafa37a193266269d9324d5e6ebf9b7e9f5a59786ae83f4596fd50c6ef31683246b7b15b2d90bd3a6597da5e9dab935222b4bbb6a83b7a6d48f62c366cecb224fc974925ab5cd90f2a93719014c4103e4af97e93912d2fa93f3093d5029c4472f6dbd6844ba51ca2b9e5724ed9ecc59f267f09b9423b6ef5e74e91bb1ca8cbb4e1aff44a2ce072edde2ed8737ca5ad18729f3792f2248a72a7446d7e109f078715756e74db3d9100e611cb5d486911e9b62f9df26ece5170a5ed794e398c858ac4f390ee5617e87b255c7aef88270422439bb4c0ab21cb6765b17b6fb94d1e5f670eeeb1b14660ae1f28f758132f9a3e1b7fdeecec2e94f3e753a43acb68d94c4e6f33c4962b555f9c3a06dcde60751533a95179b514eca941e8b6aded5e887b3958051105f105ba449a445bcd0b74bc306eadb4542252ab046812e21dd1837369ea52097b2cf441b98c7f54637aff00be2bef4627aa318a313d515f7a31bd7fdf00bff66f77a18de37498bd4d558c41dd363f56cd76a03f4236ee8c727bcaa5e2944f58bf93dad9bde2e686d242e4bf9b5d9960edadc055971765b6e7ddd5db6c5cdbf9c982b7081b3c4df17261287c0abd64265f1df2917abb4455dfe6e27e8dd1ef5b13c657d6617d646b4c6e7b1bc9cb34e1a005d0b8a908148f93e93d9a16763a31531e9cf17ab9396cbccef5cbaec4fbe3d5e5a64af28bcaa3ab696492e45d620cccb76afabac54bb21396337c83a162e3065007b15982e3d6b950784756ad223a46dcf0c1825428483636ed748a86552855165aa9d5c3961b36af1053eaecd245fe75403300cbbdc451ccf3a7bc3019337a07ed42f4401986af7601c98618e266186cf000d3dbc79a0e6868f5c2a65a08b37bb077e5cb33aed4cea231cc39b2944aafb0635226022a69aaaa84611bc93e788a608bc7248373dd2ab37116589abf786b26e4d3a54acb1141ca5e289f5f9e64c3149e737b47290811095357f9ca50c39759c23882acd029440b0ca9f3a3a474c7243cb639720a3678a1d4a1d35166dda8463e1e8ebe32bc9c9c39b2c2a0a5ab855bb502dfb815c16df16ddc40e8fe70b11ad4eaa29ca30c39e04b6b3ad3c67342688d3d5565554451357eb1ad304ad4eac3ca98869cf0e4c1147070c08510a9d29c3dda61f39c636e80765026a0f7cb3530f1b0360a494cdd8423c5bdeec167f20640d9c508b635b16d1ec10a88a000e8eec228025b6c513cb5eb1fc3e8860d9ce0edb10e78d802a311abab1e82b7bc9f4e5aa393e904f1e22f15914bd2bc4ce8ae6f76d41f9de1a636d4a0a6398a9e9b44c34746d8f8355c97b3642f2bfe4f99b2beacac488afb721f3bff00782ed07ce2ac08a9c624f66d130d8a853d31c8acaa54cee2dfff00f56d215b94ae4d5c1917281f073bc596f3ddf53b0d795da5d2449d3948335b6599a26d32b89fea2546ae1ecd3951e424162b656f92cb7fb92e78366da48729288b7b3a3d09556c729bca1cf549bdc27d33e5552777a1ab7a393ce5999f432bc52e12b06d94cf40a8aa92d8dc8cf6008d87b6ab22f4deac77d7d2db6ec83117a0277b2e987995142a4ed9a4a69b3626256f5b4852346c1e9189ade45910975132072e1ba5872f99d23f39634d3cd9c8f10f655fb7d50e9e91d16005209991243f9be21878b507608a805e1d030ede560980e91d5de2835a0d6f543396cc1ff9a6e6567147f25679f980f7e1c49e6ad3a5468a53c5189ea8c4f54627abcb5f7a2bef402d0d5fa890a838a7867e7444a9c41e18e4db9489dcaef3ca662c4998cf19a649c95671608cb642d847a5c00974630fa0b8ba7a6d8e4e6fcddd2e4e6f5208dfb7975ae7bb508b940e515c5a4a5e4bdef0b314be581aec4cbffd4ed8e50e5976dfdd1e4f82f5dd67575ee7620db70390f93e69ecf4cf283c9a10e61c4de2b737d51cae5cc9a5dfbc72a1bcb2a6ed6f03847fd8dc99ca34ca1a10f562ecd3aa92a7773285bf0e64f32f8cb0e68a028f533a1394b7f348111175548e51cdb83c50b30c10eb72996614c3744f37b3e18a02c0a7da118a029ef41e404e9dd8c9d65a506675c635194731402d820a59c5aa1e4c96e6ca0d6140e5cdc31779173357f50261b7772953176393d5dfa89dab2814898e51d3124bab216d2d7089cbc13c4a4886ce218bd7761106ce01170098ac7aacd43dd18e522ef2ccdb3ceb0c806a221de32e28726e79fa96d9653696e8f0c72613c72cd604f0cc712912e3d34c7c2f1e1bc6dc938e20161cb55c4ffaa4a66fdc05a35376e5ba43a94311b3da8b116cc1b26a22a619a614229eaa53a69a8a016c145b8918160fe2cdf77543973d7265907ae33cbde2d50b183b729a1656289199b822e11cc4450e56c0494b053cca66514decdbb0e5c9ace542f66a8dfd964067c3b2c8f387b22cea40d1b2ce9aea50a1a80622769a67456356c86a0e953a92a14dbd183dde1d9e11d431755826e1e204caf37c513548c70ac7058689177552e812dbb29b0f2fa6db62e7dd8bb4e2f148d2bcf387fc96de6b4814bbf7bd344fe2535046cb4145e8cc9ee963a56db66f5b643dbbc9a2b5d373cacc955b917880933b95f093ba14ad2972b06cc129a135c85574547d043b769c7294f5d2d33bab36e53a68173af5a386372be13b736db5691cd44b6e18cec1b7e7006db4acd65b7a6394bbf179595f74279303975c2e535d01588df0970039b8fca1268e62178015204b286436159e6036678bcd3fa1d4f9b36ba832c0981a6b5e1b846a623376a5348cce52a97454598c4b48d7d5d85644f27816a2cc066caaa8352db2e7c795fb02de417de211ec1dbe8b3a367644c1d99e3db6800da67d6243a6ae21872b7176ef4395a83f37488e912835a095b6c8bb173cdfe1acba794b308c212766c0369a80980ef142d3e968644d4c62d3488c2359f6b30d85a6a89ddcd6d310ac13c15b8874943d60b4b5c9a6aa74da3e98c9eb8ac3ff0018afbde4afbd189ea80386ebfa2de91de0e28e4c79437edef1ca1f272a65339eb11b024f63ec34e4924403fe20932c8568eae9cbe9e9b63922bd2f9d237926775ef62294c9dd8437d3e10379eca536d56b6d25496dee1d99a0eea321b99395ae4bcb6eadd17464579b96abcf52739bc0a16b1958175b865c29662fae1cdd596b396d8b5de95bc6720ac83f955341c055f10fe6c474d5d1902a21ed8a51335399b7596013a5478ae5d4350f744b2dbe9cd0001465cc65bd185bd068e4830a3a63ac8440f56ef143f58daf40d79b3530ce48b4c8eb370157090d5174a548b0d96829e2228bbce79b2c99e48737ab99eacb92922dd8bcfca2cb416a4de5243a462f75e86d38ea8736f42cc1cfc6589676d7a8a393a952c8b9ce999157e7a9cc5dd1aa3e15b33595bcf77d9a8a52a359705688e94aa2ca3eefee03c9d4b6d9adf291a54556636d2f66264e6807292796c2595d419b87eec39c145879beb96acd421d2356efd9872000d943b533d8980927dedd8ebfe78a62026028955fc30660a24eccbe8f4d5c701d67ae28c876e277611c9d3089f36050f7cb28f7478a1b23582bdd0a88a1ae3d01867d39ba3ecf614326d2c557c3755b3b6ba71292211ec1cd676e5e9ec8954a67032b4d69d5ccfe55492c3cf3797a953b6c2455175c1b484b6aba57b35747a23e0e1766f7bdbb6f51e4d27777f95cbaeae69e723f795304274855a8988a96e653a7a156e7666b36db647250f24b227f3b61c905ed5aeb4e1e65bc3f06fe50d2c495cc494cc49cb5575b2c22da56617615a5d3073c92dc89fde3965cc4d6e4ba7ef8940bcdc865ee531aeacd9325285865aed7c89d49a36d6aed1fa82d8bc33a4182f3c92c9a48e25363830f8e39289e54a361734e3d52b50a9211c5576a2859b0a9b369db6c4fa652de6d80db9eb96491ed4d93a2ff006aca9412b3cd2bf483b047ff008b226d332596af9c62108ec15e9f39ff0052c878b67d83a460cebe9f40e912e2878b67a712aa75177a0cbd7173eef9ce1de21a7d4a3aa1dbb6777e54a2cb760e54c4751116ec3c9c4cef239dab294a63e6d11d230d99a2cc2ac387335044e9f4449e64e5c9a76d89d43d8517fe481ceab1de8113a941b7b4630713b228f67c989eaf287a61aab60a89ed0ac6c3aad4b74a8e28e47af98de89e5db35ee79dfb9d32ff00735d95fe6975a4c23a577023688908ea2d23c56db1759c072957b5258e55febcf9466a016248a5f36b8175877477414c3fb51cad4a91995ed5119d5fc5b94ebf85d5272190a44377a4c3ba90a898e6c3e10b047ebb62f0b672cdcd334788a6b27a652ce9a521ab130ca9ca3aadfac84ba20c0faba9be081661e22a4a980a28e2830f542c8e4ef41a2606a0e1c036c9ec6f40234079b08451c3c31c3ef44b5e35470f8a0ef23345153e72150d39478a187c6b7e5cb849aa750221f385074888ea28e55f937bc1741e26f9098397ac9c6a222cc897097762580b1a951a712d67cf1e2560a7553bb1c9bdd8f9cb735130ca624234fde8f8484dec9cf2cd7d0c0c481bae28090e9ea46c12fb5fb80f244d17077397416e706f4265bc356a2f64616456f89d358735a47e73bf4d4557f744fbe64cd9f560a5b5d249f1143f45606c9a36d988a515a843a46a872b221cdd1152ac8254eed513424704000fa2bfb22315d014d9bdbd08a24e4d301f68a0d1a01433ec13a44603fbf7600ff9ba29e6b2bdba751c238056856061ebb3c5c3175a593e5c82d64d19ce87ff00e1c74a8a7b299527a94e8a35147257fc864af2a04cf9559c725179eba41cbb135e54445b72a87675a98f4efd85653b6d87b730d84965d35e547e0dff0018342eb25bcb87264e4535d3cb690aeed26793289d969f40153b2c8993f9ff002a576ad2399ddff84e5cd639c330c8f947928d56959490d2a929425d3aa80b22f65ee4ef6c87e2a955f4b79459235453482e2df1439a5e89561370483982f96d3a4d7b6c6c959695459cc22f14e2c9a8dacec5d59b366d588dde9c95334638856a968b67396d5a92d9eb32f46c89f4e8dfac15ba59c61d9d5a8bff003b4c47288916f08f643a71691d44a788acde858eb3cd06b6450b0f26af677460cfd3bd0889b95520b3b48e2eccb5196b168851ab786394298f3c9a20cc14eadbeaff00aa512495501b4b2c4d5cf3643d700a9bb7898f19d3121600cc99861e72caa45e461cf1652cb53d3bb135910e3294a7e1f142c06dfc5a48787bb07e8f9189ea80dd86c8d6165a4a77698bab366ec164925d9b97ac0d71e732b49726c93ba740a843bb54724f7da533294cbe413c9fcc9f20b1894bf91eb8096126b9ff00fdd1e27555decc7eb8e511b3fba575546179ef25dee47eeeb80a51e4eaea80cc2f2ccc4b48bd544aacdbd5db4c5e4bbaf18229b861c9b1dd593a95737793956a7ce478bac1cd954fa218579a19b8c370b3c54aa2258b2ee8955bc594b6c68e83cb4eec086e8c281576c1b3e13f14736b43a6ddd84d9986a4f72a8005bacd9ba14fbb0b03c334ec0eb0f4a623bc45bb17f1805d241064bb8027aeb33811cc286f0d25f648bfb2393a773833e6a8d640e730a63a4a9de2a62f2720971aef724ece7338e512549e30240e1a9aa2ae112a98910ab87c25b472d85eb8e528ae55d9bcb34458cedb1b5ed477a91ef53177af33678fd3161d610e6258b2a63f88a3925953c30af9ee20518a55e5aa91ab4c5ee7c733bd1789d5bdae1faea7bca5bfb80dcb96b261739805aa9a6b3cb6b74a599694b86107206cd4402b4d12313c42eee689f3933366958a547456a788a1fbfe6c6f2c0eb0faa1c4f08e68581145ccc0c13e84eaa48b542d8d83b7d9abed47d2433dad113e9a4d60cfe1835cccec1dc1d23019e190226a6d50cc6ce21cd12d074a1db6a46938b681a523a7dda4b87d504ceeda0e93b26f7666d243a8baf6d984735a39416d9a69d9d16c7226c3944bccc926b22bdbc9d72c52b1b0aaba578e9633811abe82d7142a3d09596e43b760ecb22ecbab8dc88dea0e693ce52be0cd7815211518cc51527d741d95491112957d1efa9dbe8b2395194bebcd227178e75c8d486f2ac0d470b954e4ca61cd1ff58d955ea98320de53ceb8e8ca1d11ca5df3b794c514b17bd32ee5201335b09d3d47e23bde8892f60d4a5bd8b19268fd6784945e79c93f4ad41c4c959858964b1099a783316d4ec4c4456dea6c4ecb365ba7b2264f5458f3a86768e5123d43ed428a6d8aeb3a7761cae467b376ba8a163cfd1a7762e349ce65366e7ba99c3f7812a60bae7d88865ef449915a6d335153cc6a1d45ed41b6b514760c4f8ceb5062eacb41d39ce1eb896b045136856f691e5189db6451c43de87ec016fa3a62f24aa8b545412d3e73f8be45946f79035c365b074c24667841887496a2e28f83f728a72190b8960f28932baed1c1e13897dd997e2de19bd5b84e4bcd8ff5ff00545d293ccf937bb6acc98727f75791b6ce02a5afb5f078339bd8e6ade41b1661228be72abbd7c271347f2afe5b7298ff0035aeaf34c9251a4bf2d4550a798a91ef5a3133e7289a89b89a336e234fccd9d2ad34549eee5cbbdd308d81e84ea84b4590d99d769d9aacd500d8160e8d4394a19cb513cc69e58095215a9a048421b335915923b376a2eec7272ceed5db9cb89cbf97f3a16749a68d244952797f17bb17fef21b9be77a1cbb9a03a509e15229661a472888d3974c5c9be17d999fcce89782615f3a31c55691cd508e58f8465dabd9741bf2686af286b4cacbc32a272e18e2910a0baa55294d39692e8896dcf9acd5fa68e7ad43e1aa2e05cf4648e53250cd6544f30965a7d98e47e4fce6ef4d2850d33166a922a6ad29943fab9fbcabb714aafedfdc01a35374e504eced50c46cf6a1759672f398a3a041204cbbc49e51189aa86d9b38dea4d21451d59847543c3ad6707c28e62e0a62b05b9b90e6a8f377a1dad5aca5829d22474d3ed42a5d34770887c470dfcea7f577b4c3c776bc5d43d356980dd86c89acb26366a286e0a00e44014b08f28ea8601293502c7483a4432f5a9e6a7b3352a7f6c5c15a6ad8c464bcb1cb52b28ff764dc49140ba2deafaeb144b7a9f46ab62eff0026c578e4a939bdbf00f5a6ed89113b2f65c37b4a99856213249bdab259ad1abb2cc81175794642ee014a6e8fc34cc5962a761727bcac4a0b0d4a9c010244bad61d82256f5aa777645f7bb2d818ad3957e0eb31baaf399a4437cb93b9bf3e952e2a22b6c5176c36db4f3a31ad4eca52b3b22fe5e1fe5a4c9ea8f2f5496fa928aa85cf5d23f12cf0b11633c4574d8445acba4b2ec18bd4fd7b6846d5de100654dbbdcca27bd954f6a1d9d9d96419626cd907f363f58c2e65bddb019ce2e030b5b30af0f566aa39479a87306ed82dd6b5443dd18b812ac63b4b842a8990500a54a6987ed8dc9a96f145db0066b565d83121bc47782f7a409a9f366889ed2e350a2f0b9035360c730359b5587e2289f3030454da9f74a1f37e6cb9d9bbbbf240f279bf6a11034cf3274c363233cd940748c722179e65762f22668df39ac85175d5397d2b40549810fe690aa92a88b86d8e4faeaff2799a73396fc1c1833754545ca072a137122cdf48934529ff00b5b1cb1de194df60b519ff00c29e6b7edc8f99bb7746544da50816e8d5953a47f65b135953e9539d89dc6f8a42beac9f954ae5508736253e12e88a2824eb79896d03a7c3f874c0515d387ef436086cd8c30caccd6c4b5b2d5a9527555c30c2e873f6ca50dcfac44493a46a1f78626576d6618890370e70215a64458445f84862fd4aaf55e145468d9c2c9a28a353858baa4869d59862e7dc6924ca712f1b5bf35a404142212571d522d443a86a8bf9f072be7c975da53e3095873159b2a6cdc375c57484a9cc9d49e64c87780e928e4baef4def6f29120648d65622b118d85510a4239b4f8a27770de4a9ed649a2a1a75e60cb854ea2a7da8606b039a8dbee0d45547c1ca64d830c4d3c4dc14ed2e2def763976b88f3935e57eff49d6ed6b325ad44bb2c51050ab4c87c436fee0170d802f3ac53d0d0313dadd86c67fca76e787fcddf8e5dd21a7f88a2f239044d2443cf75a4445a72944cabe669a21d8e16cd138a19395c414d2022243ba5dd8736e74ecf6a0cf3a768a9d31680806df41698103ac2af2001861fd659bd986c2d4f0ea331ef6a8babf1958e90e697b19a0a118ec49c1529ea0d58b65a14d5f5f0c5c9bb77da6c9266bf20926be0d452eb099108baa79bd756d647b6a101b4fa47b7b62eab3e40ee5ba055cc9b96fe47665a5778c311db312a95057a2db113e1447fae15e536f65f293ae8a3f0b5e4ab95769cdd435e537ca5a32c99da229a2b2a9a6aa82255190d880f4c72857251baeea72e97f838de1b9ee36b90527372279cfe58a282e0c15eac6d31c3eb45bd9d3a76c5edbcff001e9bab5c5f3613f323223b66ec09a3f3a8ad2ab153de22b76e6b7ea899a9846760a66167e6eac44c7c250b1c199823b2cd459bf861ceba77875419fae03cea7121259195274e50208bd2e4decf68b73618088fde8b992ae67244c8b5a99a27668f590e5cb66c0a19a8021aa26f798de5aa22df2816a3e28e4a6516b492aaecb2e31e5f660c39cb93a94a60e8eac6cd313b6c060af7627acea33b3d23a60fd119d6dcd3e4afbd147d5417de86a8e7db87ef44b431b26c01ab862edb95a54b3355178b37344c4935922a5512e2128e46ae35b3566c26ed7e0a8136589113fe567283787098ff00d5144b0ea1fed8e52f9459db395386337f8665c9bb68692bbb716518a5e1c5469fbd13b42ea9be515612fbc336a8c889f3dea895cc598853a8b4fae0d1728eb97837b3877bcd8f1716a84739f4c3630eae110590453b452a8e24e182b6d253a080729668e4b8d903ff00cda49d3875ef545c43dd89ac919cca4eccd3529c446bc421a88a9cdece587b70eef232f9c58299f5c74a898d23508ead5974e98bc5701cddebcf82c1431223a9b8aa749675327f9180be0b4d6ef4d25f35bbe6dd550295b312442be54cb4f9c1cba4b7a2e9486ec7232e6f5bc295bc9812cb08b59800890a4955a487bdc513e9dcaaf3b05262cde02c74638a7ba39a92121e2e289aa3439c5b2b115b353dd8e466f6b961324f67da2e18f87ef25e57aa4720bf4c051355b00b39dd81ab0eaea54a7bba7f700e4f25c61279a392f49d23ec8c36720c264ccceb201ccb66d44a953178a8f8d57fd180897788b35306b634d5b80fd180910eed50ea8372a6dd227947bb57e287675b952372cd9aff000f0c1a34021bd6969180ac312de1cb09518815767a6016335ad2c4e9e28649bcb0f60a691fba5bd12560ff0001325b937e7a80d244690ac254d36176855ba3b7fae2ebb3e4b99b80b669c9fdf994ad676af2c5ea2121c5b34ac036e6569b3b776df4c5cbe58eebc8520f88ff00d20f7ee4382446d985e39393d6dd5ae0a20279951cc664a17ec873389f5eab136e1ca27c1d79480031450398b34e4af96eb8d8a155bb11d56a98e517c6e83996209bb6bf0727b21b44133f8c6e95e5e729e190502429d6a6ab50555feb8be931760020bcde7d61eda7026ec41421a4447ce76eeecfea87a7591e8feacb0bf16dca318c666a2b89e6f4c1fde8fc30979c4bc7127a0254dfabaa90d312eb0e6b7888cbe956d30cf05b4b53b378422f23f00033b7b07a4a26b327334739d4c83a462ec5d098cfdca7852976b27bc609110fbc3645e47ee6e84ad9a3fc9f789a688522448100fdd8bbd7fd9cc9e609a7876a9e6c8b8a0d1330aacca5bc3132acc3ce44ed1af344c5b5a16d629f46f47760feaa3a7d301c5b21b01ad9061b4b42bcea191784a18330af2e6a75704303fabd9a63e0f1730e7976e4efc7e0d976274a907fbfaf6de8c062443bc936234f28fec8bcf3b9dddb60e00f974e406e3d821fcd6efca9399bc1f6c41428bff786553578bda7cb64eef31e6eb399936408aa32ca245a6ad85d9e980e66789cdd9b921ddafece91847699edc386db37a8eec33303ed4f3430f3d5129173de73058ec053a480750e51ab317b5173e64da70cf9be1995ade9c4deaaaab30fbb9a1e0226fde8827558b6282c98965cfbc2557d98e52f9316d3690e30280f290fe6aa888e1153f465a84a989b2d35bb73b4c16e7249153d5abdeef692893abcfdb2876cbd151216c58956611ab2d4513893b396ad30e6adf9be22d5d23f769e289f73a7e8a6e4d3a8c7f9c70f0d5176265f16b9b160714da27ab8bbb1c945f0613545e4adfb7074c2608e0ba6aae615522cb49551f0a0e43d6e43794d7ec13b0ce56f3e71285adb6ada817d1977834febfe50c541bbd2b649e5a53c6745de2cdf66a89c2260cdb9738f38b2434f744712af7a1e2c0f264a0e2555526443e1866b54ca687874e7d5543c5a8c30c4aadca44500159a8659a983ce2997a4aad9642c0b02ca0dbda219bb99633d148f60e628451c957bb0951bd0db99da566daacb37bb2250776111da53b9bb53a76f569890d5d25bb68f73fbe2e0dff46efa899b1f85c5e09298111258f2e5964ea4560512ab3a9676aa67ddd9eb8babcb0de4768b7483e1c1c994d0294c0119e5daa778a52151125ba8163c4d960be2dad49747e0d13eb55014515414294a804e46d968165a7cdd8863fb717eee7c8160372df90aba4cb1f3a3f11def12c3e74362c98d0a19175698ecfeb8bd88cdd86187319db54f7414988bb4fd9a7c5643d2d9c7fd70e4fd1e81833da8a6030a9d7d966518c9477a36f4c5d9760e2576ecb3b42250df9a5ee443eb5a016036ce04b762f433984ee652896340c45de2bd03ebd31f06dff4785dc42572b994e93f8c1fa80278663d5245dd18ff00e9d655246698232b01b074888d31ca172748b045c584cc3677863971e452efb846d9835978337a89d64490522a08ee90c2d58334feec39a0cfa6276dabb7a3b60db578a25bd0e581a2b53e82d300cc1cf74c776011303a78bfcea806cb01ed1ece21fe21866e6b3a0de651e1ab3434d1b014a437847544b833f763e0d97224132bbcd1e2dc8c726f3454962ff685e5bd5cc7de6899890d3fb226affe216142134f82eddbb28d28094cd71f6884a3948bd0fde3c5054e5ceedbe1ae9a6512a26c9539472d2927ba5fdd06e79c8275de059c5a5ab29053554a71714360cfc54c323c8a6c4e199d009970c36300c4b47344b5c982db713a442a1cb171af0a2cde37eb011b4a80a7f3b96afbd17b654f030dc850235d0b55492a3c5e21875cd9ccb6609176e621d4aa4748d4397344cae484c8e91a33662187f76024f74a56920df393915541a777c5dde18bdb24e726d160cb6ac0598b74b8626b2a5916db6c4f505243e18043079c539693a4b2c5cf9c3c97bf4c8d431b7e8cbbbbc51cba7240dbe113f06a9a3962d0fe37bb81ce9aedd4a0d3987da183034c8c6db365b6745b67ebf6edb00994ed8225d8479a24868a3f1e1daa188179bef55c3eec2cf31969857a1ab0eb94fd2d2223081e0a2f162ca58348f09451449d9912957383232f00c393d65eefdd872b1f36c2b3491d45de286a90a27695aad368525de1f0f7a0c80f10b4857a6dd4500b6c4541fce1d45e18c5ae8b21b575d42a536c33274796c722367666a7869894cd6f324a82e138926d4f3d82a0b52cdd0b6920facbf0c5ca9ff282c702c4275c9698a54d822f536655606d960ee66e85717bdb2bf444a2f55fb788ab6aadfe0e4b62011d2a737121c61b24bbbc34e3fdb89cbd5e676bb4dc5ccf83566c447101ee1d38e564ac541a4b7092c6f6aa8beffc98798aadbc9df238858b919d2c26cb7562b9da623b2bfa3b028feb8bca12ab1c9da8ca24cdc7745abb2507ed78a16a0c14d034e6e283f4416853ecc5791483f4792e13fa575522db97359e189db7f8be6b2c75b95e681c1591a788350c722d2d60f396fb8d8f98377c4251c8ccb582d2167d58650187f76d1583f99d43dd8e5b2e1d6cdc124ce92a32c72af21f99cc1124e9b4808692e2a61cccb9fb3c2c8268e5538aa18786607dd87e1586dd5008863774a26b270591e8ca5ba506060b5269d263abbc30b33c64533b37bf077a19a2e68ab0c08356ed3ed4073a0c32e6e0996a2a4474f76199d78969ef53947ecd50cc3a9a6c4f49ea8f83db69385db97e25c7e459f2c467f38bcb355107de155213a47bbd113578f1b36505b5c7f82eb7b34d493e15487de8e509fcf9674a01a7c98a7bbfec9c120cdc25ff00adfddea858de2f8953860389ab08531d5ff8c0199f0717bd0819d1b7d9cb0d9633c3abbb0c0cfacb2c53543272099a656563bb172673cda7014b3c612fa3a75d23508f77345dc3733b952a362952c550a89d54d25e0deab8a27d273922ea58345047ba454c3366cdfb340c9b811ee8d3de8994a81e314d226f89bd4d5488c5eabb09d09a4ab73a77b2e6cc5dd89fc8560cb67d1ef144d6486b625a09e1f7474c336df394030f30d3497de8f8365e666ca6bcd9cd6b365809ba88f797ca25ecc7c30b92a5f921e5f2fc4bb9a61b65dc93a63c268ac5bbed6dfd7ef25c8d13676e6d4ea145031a7bc634c58cf9b364f12bf3c751169a52cd0732a255782d24ea3993c4b2f08d51325f05b289daa6723f669841b7ccf3e6010ca3c5dd8593ebba78fee43a3000a3d3067fd90679131dbd0315d67b603d308fae1b2ad3d2c88acaf30d5bb12be636d8891726ce9d0886d3eb96a729111554d997a2d1ff00bfa62e7ddf982186a97c1442620d40cdd93a72e531219723cd5cd5d23f4ab0aa7c25b2cec893dd3bdb27c6595f817f26890b1274a2a9cc26babe236b6337699092dbca2962bde2ec89d4a67f2168bb773c987c1da576b049448d455e8aea286c9983732ca65512962f62a3de18bf8fe5ed937e077cb9104087106db2572f5dd11525637c968817e6ab1f1c5e57eddd19db64e25ab5a5bad65c4dc7d25bd4f143a2d9ff008d30bfa20fd107e883f4792efbde6537687e8aa92f0944c9804ca54a06ab750945d53e7f27436eb4f210f78619ced6ba5786edcd43294bdfa46a7808a928f83bf2b4c26b219198b8a456012a7c631fe92fbc9ca721f03fbc0eaeace1e33019ab31bc8e99910b94a507509909279853af6574eec7fa3bfe156e6e3dff0073c9d5f0bc0aad21bc26012378e97250259352d035a969528b8d3dd2d91f0c9b80f2e4bc91b9e65f37746aa045c2a8e68bc979c25bca6de34814ea5473987744887344c800d1ac37b7a1b1819f1530b360af68c036ac2d1289c4900fb53806c6dba0d30d9ba25a4bbc3de844283da0a1d459484a98668da00a51d48e622a8b4c30ce1919e9e2ef4360a013e18e441cb346edc8114af47c1f9d5b83fcdef036592980d5babaca008910c4eeef5e47acd4347913f8364d04be9184cd3488bbc2246317e6ef4edb3c702a721f7625e5986a96bec71aaa21cb4aa5bca59eec2c8ac1885fc9fc1c4d34d548e28d43f646d844c0cf2a74ef08c018570d7d59619ac61d8a74f143633334cb490eaf662ef39e66e5bac1da5a86bcde28e4f5664f2549f5ab0d4024b0896a1ddef45f4bb6c1e24a127a14444aafa2121e1a61b4a96618761766a1f6a110a01bd3465d356f44fa4e8b90536ee9f0e68bc927d6409e52d456c4fa4e6cd64edf694fc30e6845650ac4f486ec724b3b096cd581db96d1d357147fa54ee6a3782eb72577d9060638bf3174a0909a5e6ea1a6dd5da3bdfafdba0d5b4ba46c3aca4c9115945376a2222cdecc5ed35916cdc3215b47b352a554390a0e46d92ed25b30ff00d2cd13b3d93252c14e911d230e5e1f366e03a86a2aa3d7bc3f78a16acf13dd8fc3e41d09c076a70d8cfd07497f0c35ad230b3e34c3b34d5655e1ddf1432732b334ac757e26249910e30a624596ba0a9c43fcd0d96fd98ba8b726cedd4b45d4aaf94eced26d6acd9bac29e210ad693b4c69b0edcc90d949716a8b89c9d369cfc4c832f816cd268e552953717b379aac8a2abd74e2d789285561888bb6c347f7c36924c65a9b0729f249c85dd06ae799aa829357a2f564d376f95709110119975746029ddd917bef6caed63847cbb5c903b524f6b2bbb74854507abb4e9c55131d24768174fa22780edd267682f785d08ef9a00d93dc1f4787fed0f43fcd5541ef41fa20fd107e8f2dcb9d04c65685a5654a27915f662c33bb9355161fe6ceb2a9dd2e287e883c07165b98160a63e0ddf09875c9d2a84867130344533a65cf88b253c251703e1ad7611ff645e098305a5d3244dbb84d5544905d25c692494ee90c7c33f918ff00527ca1268310c4bb730327574e6425554cccaae6c463f48dcb2f8765b1f0356178fe1e9f00a712bbc6a1fc7e20fa5b239f2b989cba97ff00367245c5b845bc431ca3dc2befc977287796437825aab49dcae62aa130414d78e25abd76176d96c309a19cb400d4dcde8952d5bc507d10b2341f4764228d50e5b630db67143f96e2074a94d3a4a01b39345402aea1cd50c3366e402ab7b469a6a8950501ebe2896b6059e374d450d30231c4500714843788477a393abcf2959ab26cdbe117c904cac4d1104d8deab9ff0017a9488e9254429fef8bcd74a7d3266a2a5f067e42af407ff7177e6e2d952cdba98aa9c5f690b096ba718bc85bfbbaa7e6c1ca8ba0350e5cca097e6c8bb62c0635e44dca64555225496f65fb300001d8a65ef468cdf6a113303aaddd86ce6834b6f6f143658134e924eade8952dbc4a79b0a87bd1c89ced17e0f0db38c6b189893846aa88495cc25f66d878b01c9123b13312202ead2a70a9f08ea89c39307fb6ccda6aab87d9cb0ce87386609e9cb9b7a166c5827de0ddeef0c4fdb06f6b138be0c11ad4abb44f3523aaacdf66270068874f6565ab4d2251755e53cdcf490ea21d5e1aa394fbb3febbbe0757ce4d6260b3c97b6378cca9fa66dd6097b431d9b6cb6cfd7db642d72e5ba7676a8623ef404bdb22ce701cdf0dbb5470932e2c21a44a27ce41e4e13b0b4a6197ff4b4c22b022f1c2d867d5b621cbf9d54a9a8a16acde385712a83ebb13bb97de8596a029e23aa00f7ad8ec00fedf207a603761a98866b7d98646016d96fc5d5d83d25b6aa72f86181cf9822ada32a95b4a00ac2b54b10c42c342831a5422b6a2152aece92ecec894de99c4a3cef2f26c2d48dc9a432d44cbe72c99f376ca0900a595602b52c4f7a2441c9ede17858327e542faa29621d162fcd44a58ca5f94b262524cd52dbc38312cb8ca5d0974b8d4f836f2717655014ec37b7a2744e94516194dab5bd556595d58562a1d1afa227dca1a44cd566dbe1068ba5304acb25b722ea0a557cd521a8973b04b353b0fbd65bf5c5eb914cd07abdafa49351d59e76ff000d4f46a0eddeb3fba1f005b5d80a017fd312a7de283de8542804feb2cd07e883f4796e8cf7e2498e6b7a9572a9ff00b147cd9fb650093a85408ade5de5940b7ac6c5a7887bb1cdd8de1582c51b8159a860e48ccd1513c002b3863e0cdcb65de60da5771aff00ddf61782ebacb0fc5a5314b1c58abba39b77bd1c884eeef5db6d236d2895b3632e6e88a4de5ed40504052d422988e51e218ff4c8fc07d2e596e037e57ee9ca0149f5df6745ec6a925d6be978e87748ef27bd0132300a755912a7868adb71354335b9c8536c22014274c6bcbbd06dabc4fb51cc00373bb08b323734ef0f773143367821b30f37114721f7627d32bc89cc5095ded51bcafad7130bb880aef9a16e294955962edf2a4ce6a8aad4fe1317326cb16a92f289739362b97749da231ca4726813266e1ca9f042b93304a822f8e2e5de1220cb575984245c3f544d42ef3372e1b82779253689d24ddd162d398c487e8cb28ec1fed8adcab654538c6b4b5118e6cc39b578698a3453ed41d745249d39e13e1f761b1d07b4948457ce997bd0d8f1c28c4d51c89cca65752fb4e00533c45964295855c24b9b0a9985522a472d550c492f102c8cc04f18444c884adcc5ed524517c1e922b3c134cf69664d311fbd177a6559859dccc50e9b22619eb2f0ef45e767826a6c52a21a44aa2d51784c192ce08fb7490fde89dbf40d652a532899531765fe0e19138e92311cc5c51f0729ad138984a819f3897cd9b2a0e048a8c22a69cded47c26392b73c8ef2d77e248499e003c3598990d35b65caa0ff00e3f5f771e5a333bd52346db6dd9ce42d2d9dd2876b22b2f33ae814471494504bdd1f7a163309abc2b7aea4337f9f146730714a787ce16a531ab77353061436796fe9852abc239a0ce904f671eda61dda162ce2c1ecec8dfd964197ae03d301bb01bb15db5a747d187fe508d6a6a7b97d5517aa2588c98d542c062f5f2f696c14accb51d7944446a2cc1f6a254b4e5b3054dbdd391cb9baac0aa72f36129cd9c3db04574f1edda4a22434d416554ed85afb2afdb4c7e39f845ccc9453e3d7032e91b621452992db111cc382180f87b68ecb3d10cae648da26f5cca7e0c276a425334826b7d2698674a32a050db6095a9f5cdc8b190e21e882bf3319edae25a5f08451635c95b06ecf27121c3c4c4451ff0088d81954a73709d96c5fcbb6376667d7dcc46496990679e3de7f30a49348c48914fa7497474765bb3b6c89e20aae38b8ee1c27f9d34c5b21a6c2ca3fdb0e47fcd90bf9c57c87e8f91702f5ed1066ba9d23e648bd23f5439481ca3992aa1b4ab05ca64965eec56e43a4a26ae7cdda3bda863e00df0ab37f877566f34f9fb30aa5ab19667280eef8938e497942673861cd9cd0e1b380249c373f34aa4a8d2a265dd5072947fa563fd1f6ff00e0b5ca5b8bd177656b29c9fde4724ab152c1ff0077ba22ced15a74e6d30ccb0ce25af28c3866b57865f66327f145145bb0a283afcdc2289866f4c09a2be88f83f726eacd6469cc8393bbcf34313a867d736789fc6ec478576355797576436e50e64b365254dfe121762f764a4ae8f29b77be2f9987e8c5e90d357b51ca8dc9bb72a4547930f82f3fba6b1554ce2eace39f4a88b3d396a504472fd7a61e4d56727436bf8e5f255f569bf48aaf3c443555883bd59450782856dd121cbd6070e9dde2800f5461fae341a7f5c635189dee184563fcdf87bd0ccc3a0872f8b76242b1b6593a14a6d2a711312d4225173e70b22b6283766e03b04488abcd98492e18be0e56585c50a53fa41ca2757de8923f591c4d8a54447bc5498c329902cd932152aef6ee58be6fdb023e73a443608e6cd1ca2de76ccdcbc2b1c5367bd0fef3a4b2ca55453ddde8bbd79287299738a738e58e41efe1b05a5ea20a52aa6b0977bbb1fe93ae4b10bf3756517d59056fa594a536a07fe194f77cd97ebef921682bde0b14203eae9a887746268b1f33709865aabf6b343658183a78be200d89a2598c6acd4ee8ef14333c636f6e1f422d88a9f17142cb7ccd0114f52ca9fbd961c850098966b6b11a7ed41f9db7c71bea5b1ba1fb603d3e40b30fa603761a98d63421595796acdbd12d5a61423614f529721d48da566aa6ab4ec2a51cc54dbed0c4906eeacf188592b793578a1b5a12b4b0d32718dd62043654462a59d03bd544aa6f7c65923738335bbf74592b209b800d0993d9834277662b032d8a298c368ec4aba4a9b3b6256c2e95f5bc730b65f73ef672ad31555995964ca68ba8c99b96e9cb46db151b2aab9d35b46d2d5982cb215beafa5c824c66dcb2cbe46838c0506e7727ac849dba172c52cdce034e2514aa3b729f4c7289742db99699db7059dc74150a925678ebe309fb9a84c3130b505469e6cb90fd51366b610aab9a0ae6abfda1322a48a92abaa4aceea967443d4bd39e9ed123cb50f74616d7d1d907bdf2408d030303a486dda36c5d0be22f830d6f3a3aace2ef4226898550b1f53b21ff006778a169c4e2eacee573260fcdabb66b0aadd61d40411f01bf856b4e576e94add58e0119935a529b33e157887ba5bb132bbd70f97ee4baf25d6bc92b45f49e6ccc927489eee5a4571ef27f763e18ff000679ff00c127e1037e2e5bd726e1362b0ad2b776ff00c4b172388929e2a7a0a1819c49cce84a2ccfabff00180dd8f39d300147ec8ba5246cfdf37372f1e4be5e898f3a9a22cc9f0b6ab4928034e5aa2e7dc36b3b669cedcf24e17999b5d3ca07268f898cd59d3bcee5f9484b8b28c2d7b6f25ff939b09572b973f96460390ee8df2629ca2f5203f9a4972a48941ee945f3fe465d87ee116b77ef6f26f3220eba526ba8e65e55096512ca7495548eacb0f167ef1c28aadcce6835d44e12caa954b166cb4954a17159a60011a3256368eef7aa804f687af746283f6628f4c680f39559c450d96a0f36ec3373e6f5f11449264b6327d600e1879ba750c5d2bc8c99e29d89d3611d235d44222556ef778a1cb95a652deadc620d634891559b888b86198506a15b4503c3a4bd9893bf3245303cc34531ca44e1b4a831f7072908e58bc932467cfde27aaad2a71042d74a6a7ce30d3cb5d30da5b3296ac981f6966a63922bc26c30d2b14a48829cddf2a6184ae57caa724b79254b60ad63c4551244848c95cb490c5f6bb2fee5dedbc329709d2b4bdda8818dbe8b40bf5f5c9dcb41833b552d4a361d3ab3545f762767449133d26a2354390598b04c09c546a36221122fcfff008631a860a1d99aa011cba7860c02b4c3215215523e2874759a96f08114019d7b604f6029de8b77203d3e505293846b2d4e291ff3bb1293441d216049f9e2e46368a56d442596da876074943755f8350e733e062df098d4937d95a8857d0a0d8194944f567b6c28bb96b674ce6e12ce4ece6ceac924ced983d78557562a5563e6d66d1c35110d5d25053a633abc0c5b5e1bef34bdce5d4e1b9ff246ebfcd9a3b15e5b862e5b1a360d82e132d8060219b65b177a7933bb325935af6f049b93195be974b9514246d85e5e59a8f58cd45912a88d354be9d2b6d1fd917b64a12a90b09db5b948dcb953b00506f4de673f195e29a10d0b6234494db49159551d149765b6c4fe5c28da0f2c059ba0e2cd833c9af58edde1db6a064d90e1d397b4226adcc41bafb554ac57326aaf99cafe11dd1ab6c4c1af3556cb34eddcaaa21f141fa3c87e8f90919a67b6c3a6dfaec8bbd7cdca3860e2b21fce6f4369db6781b45402b3bb0b390dd89da3ce23907e56ef27215ca0c9e76c14324913a260ceacae5ad5987c5c3178bfd2ad75ae95cf06f725b84da7cf1b548cc9fd4da552c221d4ad59d6507802cfeb8e5befa5e2e5a2f6a9369c5ed7f3c7c288a45347a7d7ae55128454e94c6a2c898e91d96433bbd41a70c9b51db94a0ffe9c57fe180f4c7e1d51c9d5df46e649184c9d3f9dc8517195bf2857797f8ce5b497d04d1a777784a92f55b0de432f96c95a5e49e5ce5cda7fc2f2d1c972e481a5bc3f1a4bd3a444877aab062fe4ca777c2edb976fd3ba5cb75de442b1bc52e486517b98808e527229889e5a73556144d676839c46f25bf93274ceba06473ca4954b302748915415153dda53185811e72991cb8d9a854962069cc4444a88f874d308631e16f59f74637fcdd314501f6a16c99474f0c1e408a33fac619b9dd150c4b7a1b3c30c3b738c49e76008a60398140a0a9cc42425dd8924d41660a02ccc0837486a12223ca245dd85b5a8b1e602d3bb9bfceec4b5c9a6cd3d89d243c5aa3e1337c3e2a464d682863895d8a27c4512dbc28b8593eafda18ba544d70c4b410544450db922f8d5b28a289d23454245fc30ce488caa649902750519b884a3e0cb7b418394f15e00a43bc259b87347fa46ae6b19072d484cdada1853a6c46560fe7512a4aafedfd7cb46a6e9ca09d9daa188d9ed422883045c1a4df071804053eed22317cd63006e9066ea68289f51832fb053e9247355dd1a462655b3430310e84cc4c7c54c1db4619d8755598bda858cc1b1912798b2c574829e0a63e8e16b7b2cf287a603d3089805192ab6195aec28adf7354ca9b6ab357a692a473143159a000604a4d55c79b912aa79b4d413cd9472e197667855cb3345a23389fb9341b14c41295b2a7e62b966121aaa0c3514d547d51259dce64b2748b1995c8965721991d8daa29d3b11226ff184ad53cf56a330aec18ba2a9499a3a9a5d993b294b6b5699a43ca2cfeda9576bb1585f224d00aa141f8859d966adb1266526bc9fca39dc9e57f1b8a6e5419872a97c8a9688a6a6721692f2cb8942d6e4cdf5844f65ccde387f364ddb95dbad4f3dbef3c1a89cd5f3554a5edadd84b08aa361098670f4c396e6386e76ba44663e6dd2dd64c1f2845491203c38a36d9576f4c3d61605b8345155b560095449f092e7c5ea8788e11d3b6ab374f74bbc307e8f9296bb2191e78675d794e9286c0e56d2a41b078767f3702f6e1696bf3ec674f155125bbeb03cc65a8cbba308d001b34c7a3cde6e28a3d23d9e40dd8103af2e628b8321458a2d278ea60fe5ec04e86f7918242f92973cdd4dfa059b0cbed7a36c5c690872753a954e1fde13e4d5ece02994dfe9425f1adc29f097d14c9b66146ade1ddfaac89c1b7e4aef236984c945b919bc9320a98df6baa5f19dc0bc75ef396c350a756f08ff006472ba6013e66fef15cc6121992d99af2857415aa5930eb30f1d54132a7310dba69222f544fdfcd6716633f51b4eaaa7fda89647244553821548444894eb339159eadb007685b4a6e3113ac7ab3ee8fdd18468f0d3bb036edc4eb2ae2833acd42f74617f4ff5c1982c7e6e9a78a0d6a6125778b7a183cf39569de8927366c0a5098280a66a448b57145dbbcfccd2a93700368d348ab9757090c2cf1078095a6a1d03bc2393566a61839045150aca0404328d79a9f6a3e1557b4dfdea97b0b13fe6e159285ab36ec485e51d994877a2eb5f74654cd4eafce6ae28b7972993645b87380201a887bb0e7948378f145b20da5c31702fd1b55921e7075692a72d4225dd8f8794d9bcee49c9aad475c2b391abb948febe793c689bbbd92eb4d3b49342a554b3c23ffcc2c8e34edb8865c146b21e1287ea1bf994c151cc9227b131e289aac0fe6acec0ac8930a44788aa89d6772e0774a90a8736622cd068e74c35672cddd1879d1ccc77b541f67b716ee7c80dd80d79a1b12bbb9738e6e1f6a1b1a00a256da18ba726ef86017784d12b09e8b74f9a90827665c6113ab0cb0f7b6f1c49a62e183d41c49d3e66093fa139e39d49f390b43097e8201f497645d941a3c078d65f76959f4cce4ce6d2b4c88465ca363af9cb4a6deb044077e25d7865b33bd0bcce6aaa37ea7ee5fcbdd58d48706ed5a2f53c1545fd94a586a276908d63b07d71277a737bcb2e6d386cb72937ae5ac8926d7580b0e47261941907ceed4b23a4450e9b0c2dcbe98bccc0af4ce67ab94dd9df59f350ae6b33cc85cfbb48b9ea4c92c3a7a513a0ec552cbf5d9136045727b33b67a47ceed229bdea7498ed70a95a28b9465c8dbb056c332b0ec30d87fb21e3236ea5ad8d8288910ed1975b573a5cacd9692aef7843e92cb2d87cc935c17b555c0804f673c11221a87fe19b59d85aa1db65d9b830502931b736f4187abc987ebf207a618004331a2189e8dd8f561c18547088518908007a603abf541ef47d1c0019e5f49698ba576d1720f5db955d26cd99fcf1e351c5732d2ab2aeaa594893ab545cbbb0f2ef3fbb7335af44b6e8cfa6c14dddbde090b9b957a922ca4ca6414d2dd42dfaecfdb659175984cae4de49a492ee49d9dc7bd93101b6f17227798b9cdcebd0043e7e48e54a804941cc03b77ba2d8994fc2e939bc127b9ecceef9a865fca8e426f6f5f2f25779495aea65a54a72885a27c1135983060fe68da4163fbbabacb12534b9efcb15015c44532c32532d5591522760e18fa616e666e54345b9cbd62a8491022c22022a44522d4234eaaa0eb3594234c2acdd60e92f0d39602bd9570e5f218559bed419fb36c567b365bbb06759a7dd8073587e1866b6650acecdeab7a25a6881a7b728d63dc8969a2b1a820e0c406b1dd1a87bb12d781cd4014516201ca8d65a6aee8c19a3602609d6a0ea22dcf763e15176dfb0be6c2656a07cddd3610c4ef0459314a5c8e22c74897bc50e79447216d2d5bd23d951c257d67762db5571559c312798f3e6e9ac9b8e82d3e38b99357e0fdbec53a44e3e14f7c519ccfaeccb535abb658c8ad71c362abdb5d3ec8febe7922947c6165e85725582926355b4ea52c2b7eec23d4bc9a286a7732fbc500b073354c75955977b8a243cd947f3476aa595ab6d25bc4ae51fbd0ff0d672dcc40f5d65c39aa87e6850f68d6a1d1ecef439b73a85c35fdd82d156d856dcf6f77ca1e9f206ec07a61052ddb6d21a7a6d2f6aaaa1b1b54d4b6a6fceccb12c21cd4e61ca4368f4c2b6dabd4bbd7d52849373451011a5611cb4961f9b2a47eaaa1159bb80629bf2263256f322b6d97a14fc6209bc1a8892c4b06d50760d9db6c4a5dbd73769a8a9321bb32270c9f4b5699354c8d49aaa87ced341f2427b4ba6d1b2ad948c23386965d946d74d94b9d735416b336d24494227d3b346962ef983ca6ab2ae9b693c90fdccbddddb9032bcb26559ca1a2c48dd7e4a25824d669305880479dcd2d1b2b4c944ad13afa6c53645e5935e54ef32ed9e4959cc2fa366ea2eb48d0490b65377db354f0dc73943cd2ca288d2ad495bdbeb8984b189b798dad264730628bab1bbc9d79d713673b4c9b737496a574d331c85b36c2cd9507b68d209ba4d0a8c473272b68254ec506cb06dc64fb0b6ed8e6a0e5041bd8865203e6c95a5e613df74bd3d3565fec8994a49b5b58546dd4a8923deb5312a6b2b2cd35461fafc987eb8c3f5c333a02ac3aa19986086d8667e6ede1805abe91d5c50079e11cffb2035f46f790c3d36c067f0ef16e8c5d8b96ee647352091ad30162d8979b3143f9c8b1de76db8847517ff0011702e139954cee428d6fbb197cd66415727dca317fb9a739693914ec14a8535087267d3e9db645cd90bf6057fd8c8792f479fa61572a5f0769a79878908d4534bb66a6612a73851987a366d89c4caeaff00aa8a309e72a1c8d26b5228afd55f6e4f9c9169ab5e1896dee908f4ec8e532f3f3f9449dbce27e77eaeea61ff00e19be897553c970a4225cd1722e122102af2fe6ed89c3c7a60dd2753009c354c2863321caae1215088e6cc29d6a6fd951419d81949c73a46ba5353495290e511aaa211cd01a32a9fe180d6a7bd4c57e73ebe283ae163a032ead30e56c13f37ab541ac15d518d9f6c22b0e37465866fc0029d551d55144a66a0db0ac34eadd128969a0b66c4cda4469d2508e0a8f1b85b9adca550e9a22fcdc9925f3babcd1e330512ac4532a73554c72cfc873c9261d883631b50aa9e12085189019d96e5312d250ce44e56a3ac89236095b04d32d6475530a5fa975ce6e6b1f5cee8f9ab5ef6e929dd898cc1dcd5fbb72bad6a8b2e646a9dbda5697ebe7936942d25b9aaac61b05d238b5d54966e1fee859c9fc529d5f48b1016ed3516a872899a6e0414a6c232d3dd2a47eec0860c91c5a594d673e1a8460d634564d2e71569fb29c4c910045a0ef154450fe80454dd12a887eec2de65bd90aebb7e487a6037613cfda74d9fe77619a8ad7b52c94da3692bbc3bba8625b6d96ae08b663ce1cae2a2676188a82556924878b6402e26999162cc5e2cd46d4d4a8f1199205ed6265b3c3094fca53335a6a6b7c673d236cfd93d4e8510454ab11417289052a65e8a74c4b66d65d49baaba36359acfd27b8bcfa94deddf6f2e98234ab52041b06d1353b748c5d27f3794b874d64d78936f33cccef1f28cf5425d8b45102226df15bd11ad0c64870b36a8748dcd985c941c366afe5371105c398b77022acdaf74f13aa835006da891a8ad44cd2b728ecf4c4de57307b326a0b3304e70a3323652a4b6be61752efa8464b630f9f45c333cdc43643e64c5c091207cf18a53116edc6c585c2f399decb68764938a55e6ae2cd5ff00cc4de5a4c959a0bb03b0513ff6ad96d8a224a3b1b06cf8b93aac506a42decf5419923639270a8188d80bcc040830edabcc37b29b74f159bb0feee24f71ace849d86c15c29a4547ab9f43701e8b070eced898ca1f4b0edc50c98aa262b0e64cc93e8b692f4f9597d0c36ae1a7d1406cd3c301e98476e4fae03d308d9e880606e815b39b9a992b24c75125a8bdd8b99c8fde4993901459a2a3e293fc6d27972e542578e5825d7a0d94de58446dcbab2db676d9173ee95da3b2e1a127bd2bc99acd5e9b8e4bafeaa14af2a9ce956ef4e0872e191e5122cbbda624ec19b36dca43c5792be708a3f36e5bf9181a830b86f24829d34ebeab48fa765b17916baeceef727ed27fca23c7f749c1d7c90f2ecceaf8deefb9d432d9c1239c853df0d43d1d317fef55e7737e711e26dae9f2aacf22d34614fc477cdb5548d49a7d528a2c5b03f34a74d7d30fe6a6f26afdcb29784a66a474ce24e39d9bc5d2211a853cc2a112a569616cc31f4406081a86dc39b9e515999e612c21cc4556aa8b7203a4f2a749519878a028af376c1d746d18c7f541fd9dd8330eae163ff142c789d306660196ccd08d7e9529845c864af4f77543578606988f66e945de72089a75a98898d7a774a24e7f39a8a811a3abaa248b2201c568ef10ea21e189f5d5954e1b3c4556f5585e6eae22ef472d1f06d34c1cbd6c9809d7b9c3de18bdc8ceae84f5e30b5cd3874da2560ea13b2a18527b362b7f9f283e1cb0a1999db6da7b6dfaff005f2d9335dc2022151118d823c5135ae5b236cd813ca9824356911cb5108c3c0ff6948db61e54e93507bc451387208e20fa4ab11ab8447fc50fc30419a234088a2397bc598bef40238eb287b730eaa6264b11b9aad8990181a6056ee0c3ad7646b3f901e9f2851db6c0128609d474866112fb508a84b375c2c4c052131554db4d5c394b56f764365cc0edb5aaab268a0aec29958242a022e327594dbf662526ab53505b2eab56e064d9f4e1313a79b3a2c3eb03869ddf4c4817316c16038792b9357cc27d39655113941c9da760aa895a36169e80860fa5b3091b755f89b3bbdfcc6d612a5c45ccc664d53236eeddb7322aaa22ce7b3d5645debd13f5af3cadd2574d84d2fabeb160bb9769b0126ca4069e5704a325a9a56211c60a2dd59a1e30bb93096de9b1b4fca652596ac9bcbed7e5ca6a12f349a2a25b193750695d345c79a3db566cd072f9cced7945884939e4e2652a5d2bbb24a9bccd2935db4f171535c54a55174df58116689ab797316a0e59199346a629ddd4f09f33526ca0da61f1d08e70c446d1cf13166c25cb4d0be3768f6d972f45ab83b0545ecd1cedf9ea62b25b49becb338c2ac1296a8e12172dac26076351501cb7a549839ca4b0da3b2a42ca6da4acd316384acc66a9ac36017fb351b4d446da42d2adc2bdbb331761f643a955d499aaa2d6158c84f9eb8200b44ac4db223b114c44add6a10c2b70a724aa02dad176a296b10c24adeb2d72f93ac111b37887d3164bdeb234f1599a7554235090d5495254f84a19436b68fa5a611a3fae00e11cf9462ef5d5bc379e652c692e93b978e5f1aa9334406a25d548710931e22a7353175f91bbc337974bdc03d6c99cc242ee69206f59114c15962d86e65f9730b8111b4a928ba372642d66d23fe4bff3c982233fe4de6cf691c75d98d2fa40f44b2a9516d01e22eced8bbb756433b6d70db369e2d21905e6992ef7938bc0aab805746f8a1492f2872a9534b750b570edb3d307cc1b5dce502673fe4eff00fc3afdf8caf971b8692580bc866fa52bc9294c86a4f10739108e41e8dbd30f02fb33be173e5817e1b29ca14965bceb925e520a91677daef10d43289cd45491100d34ab6e511a3644e2fe306d2cbeb32905d30465b38324b950e495d81124cdd09544fe5a194934c4b3d5d02996cb2ddb644f9fa3f13cbd81cc169a5da231191cc15a89e4aaa1a85a12948d582055289075645d3643a5963e660e94350d3443e2f7c34e2e008d292659b288fbc30b056541d1b53c82a069a477b2eaf1467af69e622de80a28cd19eceec1e4cd89075eac4ca5007ef419e7fe182acf4e58ce1d05e1efc01d1f4915f9bb453d3a6182c6679ebf0c5de7260b276db606c5378bed4337289857860296ec49df81a34a8a1a9bb5545f663191591a6d4eac94e5e1e2836cce64cde26699a98950d54d34c7c30ee585dfbc9267c958784e12244b86a4b4fd9fd7df2612bf8daf84b44bb123aed89d983f9dc9db9a74daa2d8ab1116a4a01ca2e6f6cc151ec4f49770631826af140b53e8ac4112ddcc589544c8eb793422cd87984776ad3961880a2c268a16f1fdd1830337a9d85da3aa26b9d650c74e9183d67ddf921e9f207a600cc0f2c631ea34836ead3aa133c6c3b545320e51d94d5c508973bb50c5f9b21451582755449d95661dbabbd0353a4015580d9b5348804921b48545d01dee9d45bd167367b6a0e5f35c268aa249249b3a04b19ba760891095bbdbc5bde88466aa4de65cede22da6932990f356a901133559b94e84d05e90b047c3fdf163d7ee9598cbd7bc001359bad60de79e4d5122525aedb2d6ecc276159d2a59aeddeec8bbd79e52a30bbcf96bbca2974a46f082efdd8252c78330bc6a22158ab685a0b0a6b167b2dddd30ea54f2f6a938973abcfce6f14f43e35e5127e6d41d2b2264d4aab0512ead515931c8e02c8b26668a92f7f2f3193bc982c2c2e1b319a3a6c324494a4557e40e84ace6aeac2b7a76f6ed85146b284ac565b337a09481cfc5577479f307429de07c3658ed72aaceb1a2d4db49eef443e935b77826802e564d2bb1f304b6bb9719213f7f9552cbb719a5a436e6e9a6266c5292db376e84c82a94a012b6601334563076ebf9cac8e085bce1b166f0d503227134796326b8cead7cf119632e6dcf1de23468352ea36ca9d8aa7dcb730c344e8752b98dae052172f660f12335134c49362140536aca15b555b8766dfaad896b89f37904c2c0ac926b75f095a932304ac9a3aa8b500e1d556afef849b482717bcc15b96c1d02d7bdb2469b7124c0db26dc849b244ded21c350ba72db0d6ee5d87b2e4ac4e48e5473fc9b9ab85701723a1db574786aa822254a621b04872fd71fc92b800f145936732525a8ad779574a58ba6462cdf088bb1221121152b2eaf8624f70ee3379aca1b2b77de3c54af0cde50e11e734aaa92e8d52f21111afab2d5d149448eee4be732860d5adca6ed14bc1764d820e54158cd2bc5215310c9150872a8e046ca8076f6c04e6f0deff8d1c30788cbde4d116d7baeea0852d524af0ca8705f364853d2a28236e40cc5d1d912ebbef674f15b6ec51ce66409df2b823492a43356bfef294509d8a54a10edea3846caed890dd26379cd83092aab4ae5d7f1cff28f92b9a664be28be32c1a9dca317a81a94a6823d003b36437995c09f49e69337f2ef8bee07294b24c2fc376c966b997e1b15294c04111224db91e6486aeb7a76c399d728b762773c9aaacdb4c3945b82c0a53ca65df32c5677cee765a5eaa499163108154b911545d117b26d73185cf4e4284f1cbae4e274f0a65c9ccf9c657375e7434acab45c847288d5663885859766c8bd5786f54fa7cddcbc6eb237cdad293e2212ff006d21489264b86625965aaad5af2a89c568e33959b373c158299835ca4a88e525484b652989169a74c1f528ecb333623ac51e154aa11a8a9d54c519388748941851fc5043870667e12858e8fd907903eec1ade9e28af3d5ee8c58675d94c1801fd266e1806c792166d4079b3f6600cd15120d556f44b5e608275279b74a25b3e0591b070f4e92d7eec4866a6654038a6acd96259325b9b29d674ea1e18660f0cfcd98896a8f84a725ebdfae4ee70490012a9f5adf2e6a931aa2d0b5350c6ded1e8fd7d7216cc2df8ddce1e64cc444bd9872606fe68ef4d88b6a13cb961836c66cf56b7b54cd9b3e5de893e3399b57b998848b4d43015f369829beb2d4d45c23bb4c2d5b4954bfaccab545e2a7542f69d6e14b32d9aaa8799cf371c7e2fc801c2147a53aac8aebe933e920ca503c67977931a729668c40235d730c1b4bac402c1eacb369cdbb0476da6e1c2e8f5eec311960908889626a211d23d1a61259c3b52d1b146af9d4d3a14252a15105894e32d96545c5c312f74873609794c6652c95ac6985e1543e74992e9a96926a080d3665dd1db085e1696ed9d3a6f2b3519249cbd94bd3ad92f50a768a5301c1d44990d445b73143309a384e6577ddbf9a580a2bf19728f37489bcd6a4112a937089d96d59454eb6caba4a06f6cd2628bc99345cda5e0bc762722b972bacd26d2e90a9d59a840f04c39aac256889097565b61d130bb764d5d4bda9b96172d2f892eddae658c1f26f674ffcfb6764997589eb2415e9f4414995b86ad1cc1d825c9eca49d3e70a5df40946778265d163098544588debca0650de4539b9cbcbd0599de46bfc88931cee6e9073062ea573a996cc25db19d44b21e6eda7b61c20c65ad93b1d9cacca5174c9e935753a5de20f66536cd8ec39af422e844ac224adde0e9898c99492ddbbe96a22fc064f7525b2d74ed095232e145ccd56acd09a0bada65db6d962c198ba3d10f6efb4753ebd2d5326abae138bbb2860920bad3922a6cb2af8be6074a03a742bfb2cec893c9ce657d258d369aee5c729ae40e5b680be9af568d3d6cb11a5aa9e202d597b22e75db39eabc9e3006c6f165a577a90e62825f1c3b40d2235334bfabe67e2a8beb895484ef6dd07b620ad8f9d1725893aa1baa8be5db2b28759b1d47983cd6911d08d654fed89f22db9b7298ec5e36f9c49eee5ed624baae1041755b108ac2923300255f2998b7ac0edf444ee48e6ec3ce56ddcb656e71ae7cfa517ca5a362488aa32899088ae2e5ccbd6106a8d2a59d52365713745e5c30be0ee4c9bc51c727b3b677beeea68213666aaf75e7c224ed26c24442cd98d59953ce70e64d38bbd6df467765bb970a5d5590e50f93724929920939bbcfb34c18b6c630c3674975aa9663a61c482ec4f5e5e1bbb2d51b33947282c12bebc94cc4d26acc65f3e69d61b2eb0d6345bd6368025ad52d9132e522edcf8d3bd53597adfc8ee5403e24e5465a552a528bd480e599278d8602e0bce8908d2906db3b62777a6f6c9c24745e001be7c9a8604b67434e04d6ed7d1154e291505312ea8440b104f6fa226afe4f5cd16692b34eef4f8c71988d45f17bea8940405cac244587ace8d43d10606b073437804bb5a859be0a524951a889422514a48b4e483307278c29d27f4c888e1a548d34e5ab7b7a0c37ec4fbc43ba30014f7a3201f4f6467f5c2d9014eee6835abec833faf7a2b003a6ccd60e98cf5d5891ac32eec519fa13cd0cdb567d1ecf147c5a660a57da5bb1cd914710adcc3ee90c3cbc8d981ec171a78625b7871964c82d022fbb177a7c882d52ae006dcd9a25d7da4e009e2b8e1f66265cbb5db957422a635a3f7e1cf2df359c394c6ca306ba94477698e571b4a9a72917c058ff36e7876a63c15e621f66dfd7d7253f33b9b3153129c4725e2ca30b393732d9e1e9493e81ee9165280581b3278219aca29abef422e566c0a09574a804423e18a3065b5d8a66a088877b3152313258cdfa7664106ecc42264e40cd4b2ccb9c72c3ac86a7141ead9f90af7600fb2d803deb7b786103a33dbdb5f4265bd0d57e6a60aef818da9a66350978aa86cbdac36a9d726e84d351b1815223bd57f0c2161afb5aa2a3774a3ec32250b2924a555535a9488f7a1bf34579bd8483d49986184d144cb12a2aadd854e9fd836c34bc2f9b2e0f949aa4ab96290b662d5cb5159326d4da1bd97abb0b7a1ab449d252a94a2ea4d61ac7ceed9a92868908923513354cba291a7ead512fbe4e65564ce7cd105592eb624beec8369a96249c8b58e19ed224080adb3365e9890ccd85d799ca13792425a55c9e3059d4c19da52f7a8a93c765b2aed1c76a474e5da443176e46d9d7faac95bc96b6e76f955ef5de8766c79c9272e486d34912a16f9c3521b2a20d43127bbce2f930b8cd7f939622e2ff5eb5263cd5a49849cb4954bc8bac95aeb1e74b56d42de1879ceaf7b22db315c5b7283ca1d16aab28c64f2498309517fc4006d366ad865dba61ab1637d6f436b1b33c6773ee5253459a490b89fde26cd25a3ff000cbab4a0ed1ee9662a6cf444acec9e3c97ba74e0144e79cae113876f14ada2a9b31ff8fbbec736f6a0f58d91735982f2ce461572980c91ef2a13731e7dd5dd32a13112c241afcf53cbabbb1715802c9fc1aed7c9014a56bc37a99b7399204bddc0c5abf9a26c7e7c5edfaa391f952d3b6df06b4154dcba0788decbbedc5541bde1a48aa50465f2a1c3551cc5ad5b7574c7262f1abab39000e7e0d549b486f1dd09e02538598b9224abc2f8c17980288374f359d525bb1c98f339c2df05776f5be3369e4aa6f71664a7c592b7822ba550a1cc5b09a64a299ecf9cafbd1719667749b720f339b49c39a4be6b35e4fafd26acbc574b0d722c0517a5c7cf1c08965dc0a6c8693e79c8fcaa46aaccd1527dc8ddf3565cf9155066bab30bb935221215ea3539c289e9001b3092db13874d9833bf173a4d3472e2c93ce06f5f25b306b88aab4abd72e8244882751106b574a6416ec89f5fc61389c4e5ff003745bc9eff00361f8ea5e048b64109aa44244a08a78caa6dd154ab1de53a639e4e2c4599a7305be3691d44ddf00e62663f4e46b155d5f4080ecd10672d072a2a09826cdf010ac88f5ebb6112e25047315357860c0f07096ed1a6d4d42222214a9ca988e9cd54199aa6a19e65751116f41f17bd15801dbd66583303db067e8b14e9e28333a14b4bda85ebc6b60c0fd3d90619f37862803c5dda6000284a94e011cf12a46beed3a61d1a608a8362750ef16f47285ca5ad2a7ee19b20322cc2a2c5f863f954fd5514355c19111d50c2fc3c40360b70e218fe5fde1739454a7bd08de4991e212d3031a7ed405e144cd4d8a1953130bdea4825dce494fa13c112de537461cba59db970a28551a876915bde2fd7d5c16dccae3caed3b6922c55e9e21ab2c4d68093c9d12a319e2c4aac5565a4734199e0b8a930d946c112d351c4efe6cce9b28dab222245bd5550b03636d2b010ccb2c225df1189999acb382ddac8a9ff003dd833ad6ab13a48ea28f3c755bd9a8a0ceb252df961e9f281fb5007e6cadcdbb4c26a6fdb98872d050dd736669aa0a1838031202fc50809abb5b82292aa3934f0c87509708fe2844da96005a0e926e34d8fc80aaac84b56cd3fb36c339b2e9ae0b7c6a55cb807e2d034c541a44b4909740eadb02b0a6cc1117cd48662624e94b51ccd8854e2fef2d9084e1041fa8e7064ca14b5b8a28b736c584f847aac42b38a92aeab76433424c4daecb15670c1141c38e70ee61cd8d45da17486029c63976ecb3eb8b276331697d164652c2c995e0740d1bcad0961522dcada895979edeacaa1b029e9ed80bd8d25afefbcd9bca9572c6412019249dc5b2b45304d75c68127a891f56b166ce19aa8bab7ae51752f4dce32973464a5cfb88e0f61a92f151e4c1da64a54254280e3ced94a679e9e88e4d9cb0721c83cbad989bc4249249ecfe62cade7ce5041c989959d4b7b12347a02ca8d32b47d31c973e097b5f82690bd16cb94ca7d3559e02add8b94e92211f9fb5159c0e9fa51f0c724276cb8be09b331f99ba777e26ea94d80065ae4a9211cd3253144a9ab7832c5c57252a3f83c4e12f9ab8ff5af354149b2424cdd16290ea9a278845ab752cb1219cb3bbd2db94469a24725e5a57070a529912a83b1a4aa551249f2c397d43fd7132993fb8b21be088bc7236f277caea1316acfe70092083c5093508505055411f3766654ad2fdb17fe7176db4abe1192866f18286cef833bcb775e19278ae6b53ac4c48914d571954b0a91a03d317c2fe5debe135e5c19a52f9535657d254c672dc71daa432f99b64c5621c44d2eac8b30e0254eab2cb6d873ca2ad78a6b2b993a98223fca4bbc326bc89f39c0c5e6c229a6bb906e97528e512101aaaa7a63e3b78e65526c4780e9e484f01bd64e15c7635542398a94dba7c3975c00238cf1a026b28ca694aaccb0136b8ab8e51cca554a224568e5b60dcacb1b772b280b396e620a63912a4bd3947296e888d3db18d820e045432414a48847aa1c5fb5a6a8d192da069e183cf9b87311142cb419f9cfbb06b67833f7a31bd16f6467a93d946c8b37e16c403e9dd8330f1559a3eec360f3765bbd0c14000a61160b3c078366f045e3b8d2823d8e9a0907108e78ff00538d9659b2cc946ce91ac0146eae52cdde80e4b2efb659e22ee500d552a4da89ab995af35234ff005c726fc9a7c1edfb998a33c95bc676b83662c56072429242a8d4756a2a8b763950f81af27ce98345aeb4fc800981acb02ebe2820ba556f0e521529cbb62fbb59c5c1bc2bb15d91a2e530122ab49096f0f74a265367f37504965ed2a748ee8febe81323301b3b4a02b6d2197b40533509214f7873144d431a70cdbdaa625addb7583de1cc5f7a26418c09eee7db977b762f0ac1f1a980e614406aee88ea858115a64dd2152a49ab6cd4eaa8a26ab022d94b6cec2fc501a1c1dbbd067422a59ecc519ff241e980c3dbd3fdd00769673cde8d50829879ebce3a4486a8ec0d84155a74da255402f405a9d8e151b14e87166ee52e1dea639c91180fc65526d6ab5a15a3deabb3bc5f5c7c66e7e7ce31d2259d6202a9e18e92cc4439691f662d5c57b1834399222dd2a8c57b13df506c2b44b78b4ec8f8e9fae33b7164ca976fbab5d004444554d4cc5a728e61b32d96420e572363682f3770ca529e20ec2c3519a8a6ab469aa81c5f4c588893391a4ba6926e1e3925ce646e894124c8a8a574c6aa6921b6de2871784ca5b7e2d45466ced9b39492297b7643cd09012c4ea163a891a486ccb66a89a4d891995eb0700a95b2fbbe9cb9ab59a3e509e37a76090b4b5be52c32db485b9698bbb3c72ce7770c9276b01caeed39b04830e46ba64b8aaa10e38e671ab295b9941c91706f09caa65c859367009b896cc9cab88dff00d94f049550753d58883c25b32433bc2b36935db5014c3598df355e0a828124bd4549545304cbbba46ccbae27d3959db0e55004d65922bc283da9255378daac43112276b08aea6aca5bddb6c4e27cd9e4cb9480b5260284e9820ba62293a96361546850701b0910917688d797d3085e4994ce7d27707307ea1cea4832e7d4ccd355cb9a479bd2ba8b0d28a654d990b721b4ca6ace5b75de038729ab25724dc5c528920d9254894114069cc4455166a860d07808cf25e926fc9023178d5b98a7569ab1d7a7f445bb1f193959cb77ab387eb0bc0c299284b889ba57786a1ddecd5140003846d4c31533f3d8b5651fa21a72c7393c6aeca13a8292111eed31928a6caf67d1c574f769835abededde8727ecc2c74c1ad9e2c3b6b4e31ac1c4e1280103cbed47fe9f471439e8c41d223aa0d10ec152a2e180ce7b30fbd0cd6cfde89681ac7516eeec49028a07d05c51796ec02acd4da9d4259bc25138923c666a2c8a874d150a3e18955ff00990334db3c6e0f1b69c35f36add1e18924aa433b47198cc711e28d89059ab8cc9d3bba84b7b86119dde4ba5f17b651c2cc507003626889110d229909089165504bbda63e189857baefdd39dd92845b2ed485ab8a351264150917ebeeec363773e940583575e25b3c39a271f36f8bd2b32911911786a872b1acb4c15b72ee27e12d50f199d8f2568f080965e23cdf861d7cf273303b7592c203de2aa00c1146687666c473849f8446a2fbd13b54fabb0b743fc23161d0d92b38b37e183d098fb51d19edfecfc9817ae028f4c02c679cf35348d2500601d36d7b7e8e056300caa74a995418a88e842b1d95edabd9e2845f2fce93736037da8d14a64234953974ef77a2d58d06462268958ef5a74d4a0e1965ddcb57aa39c50e9048e7a786cc0b992e98ef79c1a74dbab7a2bb1ca36ede744f5c2b94ad2caa0965decc455402c6d6653255262c9adad5221368bf582454e195225a8fd30d2b723246692ae9e012a46acb7308e2554f57ab31263aa31c0984dec479aa69aae06c140c7117111da4349ecd23a4a1b296ab337bb2dc6b1196d023322eb52a5311eab4e612f34312a735ad7412271ce011aba97ffcc52a9422cb4fd196ff007a33fc48a0fcf32ccaba44be63e6edd23f9cfc30e4d378f2f61e1b37c6418bcf0079988e61a8904b2f86986cfd66ef246e3e307e8daa33c051d2e22e7288926428097d1d397bb0061f13b31c46db1bb9221470baf544873547bc3969a60f0567935a59b3a960ad3c25481243e9294eaf769284166c00ccca5e14279541a8bad2aaacdc3972c22201ce030804b74aad3bd94a016f3768d034e5a7fc318dba4a74776016ac3d7bb06b79b835bfb60ceb858f0e0cebfc318debfef803a2ddb87d3c508d15ec8ce08a96fbc3047e8e285b5d5bd4407d190e51864899e255bc11276ca0024786054eee9f7a2548f5c1565c9a47341a26b367099274e4cb543c9680622669e5a227d27e6c6a6ca2119d9ca8a92d1a7da8ff0059cfd166cd91bca50a0f04756ad5aa396abced9d727868641270f12d823fa2fd7df2552ee7d79d33e9da8865d9c4796271827359a1f39a811ead32fb357d98344f99cac2cca4b2d5fb3bc51323f9fb85acca88e29097fd31a6248600e5c2d6e5c3023abbda611fe6ccc4ebd82d88cbc4a9551355b19653c74fbb96163dddba72c1f41d3b20cbd7f950a3faa2aafe9328e9aa0163b2dc5b682fdbff00c45740664f56928a4cc812a29284173b16c5b0032eedba7365d2500e5506aa058634a879837b2e98c742d34c0d75956e98ec4f769ab365aaaa73456612fb449a0e73cab6f757a847de851d81bad8e5c1b94d24a84893cba4726ab348c255f306c269a3412c458834e2e5111212eec22b19ad385413e78147f38705d688d4222aead5ef44b56c473231171ce0d3e8c171e604ea22a7579b84704db380b71b171b2d25d5539aaf6a318dcbc323c1786a36f394e108f5639b2d398603a906660a2c9aa99d58d5651de1a7bd099d00f001cd40a662231cc54955ecc6351cdadc30cbbbfc5007e7070836f8e31ab04cb0f28f0ef6f4739303d9841d669eed500e4cc29e18e78679bd3c51ce7fb60dc84637affbe165b133457de8cf5c227871bfe28dcf514067cb66f7e18d6157a4b4f76002b3e84f28ea866d83aba625b423d9bbaa1867c3d8a1e5cd4f0d50da8edc5aacf7a989949d17a098d94579a9ef45e1953b41ca9527944292a7544ca5562cb38b093a73fbb17f1b33944bac72a2869d8274a74ea22e189ace1e4dd6b0d53ca36e40dd1fd7df2312db1168bafb6951422b53e2cb96c8bc2068f6274d8a191110e9cb96167383326fb330b56d50d5c54d59a2f3bc3612452c24fac5bce170ef7de858f05a269ef12222548c3f5b05b27451b16cbec8ff00e306759a7ddd507fe28af78b57cbd96fd5f90c4f545841d5f57d1bd02615fab7600c28b6aeddd80b6bc3b2c4f3fde80533ed1011b53e921b7bbe2815cd305361d357410f10c2365669d09d45bc25bd08ac743820529ab29263bc30d8f3b7d9d5da3bc5a6a86c6078b69a755bba50ccf3b7abae110ca9d9c3c39619ac782a062188d7561f17fe3082f41b7ad3aac20ca23bd00a568ec2af29d423bb18c66b276e42b4b8bddcd15e45070eaa77a0170a12b70fa07577a39e507b6d4fc31ce40c367a6318239d261a639cc6301f860cc0ff00641ad15d74757d100b5675426605027c318d5f416f42279fce66dd80d6a718fbb0db5a83e986df47677e9860075a908ad9d32f376178b861839acd3057355c3089ee9d059f296f44ca4889a38a5988b2e989ddd8e6c6e15dc10a942eec728d7bcef6de276a58afcd515081b00e9a077bdafd7e5c96012dbaadf13288b31222ef16689f99bc99b34415ca38425c35166803e7ee660b1f628e40488780bfc317a9c82c6c11494c8351116aaa9287266e5e3746c4e9b4a91fc513e3045e6158a542dd111f68a034287c5947c859fe49e63b6db7a2af4790f2fedf921e983030e8b72f9713d5151d14eeeaa600ebc31253a3eec01e26d2b54e98030f6a35980514dbbc45f8a2bacd4233cdf8a00f25b93bc2a401863275298d60e586a7d4a9d65235e61866615a7bba737e286d5da0a70e5cd00b22998756627bc50899f5966206c2e28aeb4d3a93cba6a83590c6ee46370c1b9cf994aa01cd31cf280a8b34739af30e928e798718fea80738706718dbba603d315d19bde80735e21402de6f84bef4226607e735714643c51b73550885079b2c22b7e92ab44f57170c335a80db6d95710c3634563dfdbdd2de84428e6e42a74eef7b8a1b3c0d26a0090e91e186608af865867e28e53a547fc86be0a8294aa32d5c854ffd3fd7e30686f1f3446ced50c46cf6a1c9f33baaa0050388b0a49a968eeef7d980581478a2e3a84c884bec8c3c041196cbe9cc4204aa948eee9187e60b1e7ee891559728d450d416359cae3a869a4b86acc5f661fac6b5ae0fd2b2c54f874c11d08ff9de83dbd9c3e5a2c01aadedfaa0bb6d8a00036db6f4dba47f8a3399fae2db68fdbbde4575dbe4d83c16f92d2d9d9bd1699296f4c627abe4627abc98c7bdbb94600c2bcd007da3f6a03e8faca861b1e750872d9e2dd866607977b8a1b6434ebb2ab7fce5844ebee96e8c02c7a7545616e6c3a631ab835c13835a2bef4637affbe096faa01cd1daa473cde807316b90fce5318c07d8a668afebcd0067dbba3bb06b19f48a900b1e9f6a113468b69ae0163c99ea803031a8558456c89dbe9e2844e853c3f78611573edb7c50c1cd0b79ce8def143650164531c3c4a8ea1cd498c333305a8c3ab8abfbc251243c6eac777565a627cdfe32924d1b7ff70d97487ff544861f35366f5e236f6a2b1017b36d3fafbb88cb9e4f9b17e6408fdaecb22f839c145ba02a74354692e2acb2c364560c400ac8840448bbc454c4f9ca06e5c00509e0a22223ba492430e5605813a8329054235651abff001873828b06c44a526a011d3af2969fbb0b575d957d187de8afd7de83ca167d65d3e400ae0ced3b7d501ac3676c749974dbf268c9f2f13d5e5fa3803fb501bb007089fbb088433aebdb0cf3f861b507b2cb200eb3a4becc576401d1d99a0d6835a98e767f5c739859cfe93a60dcff006c73e3fae01f9a700f3cdc039fd2746f403ccf1cf2b8b5cd67b34c56606a70c22b6ec0507978b8600c0029f4422b507b710e11580ec4f66a2dd845c823653ab8a01ff9ceec33781d8546c2f7a18182c6a7594d9a72e48943e0a1b8f3832c3ca43a48bc308bc41704f65634e9128e5b64e323e55afd351ec1982863e157acfc5fafbe479822b1bd536d278c3515bf9a48710a2f0bf3379b0282b543332cb9eb286768220e071336a1cb9870b747da89c3cda8a96daa53697514ef66cd0f40ab60d832dab7fe23f6626ab220f141b72823969ffa5bb0e5435ade9d6a6650bc505aadfec82edb7c9f471465abd1f23d5fdbf2836a85b20e9af2fc80f4c57def287a610f4c06ec32a2191e7cbdb0c0fd1027c3e40a203760d6a631abe9d9066078906747ed835a8f0c739835a31bd7fdf1cf30e117ff00a3817f5ea8071fe28072787e28c6f3700b0401801f4401f8211726069d8508bcace01cd7db0cdce7dccdaaa866e435627b30da64b80516a94d21946184e011eb2d529b7f3831279c1ac09ed7193bdc31f0af68d5b72b8f944bfe219a0a29677b4fe1fd7ddc4626ce4ac11d26e8337feae6fbb00bb379387876a75027569eee987eb60cb660659884084887f4bbb0fd6c927da9f4279caae2283580e6ea392530c53d225c2230f33adb4f529994fbc506ae7b2db7c50aebb628de82db60ecfebb62dd21f5c19fa3d1f228a42cb6dded367c8a326d8ec3f0c24160a4a1db67a87c5f2f13d5189ea84ecd98501bb08eb8472433cf0db2079ce9186f5fe72000c3f641d67f470667067067b3da833dd83ae0cf760fde83eafd506b1ec80731cebd700b1ed84563d908ac7b201cfd5007eb80580201d561e18e7275f9d845e501eb845e5100f3d986cfcf4f0e6a61b4d6bca5e21cf08bfac13a94a8776248fccd6a454e8a3347c2b5f03ce51d96ced4e548097bc5fafa66dcde394121ed50c4611441104c4bfe1d12b13f1530d9604517056279d4a43c59aa878669a2e2cb54d4624b774b76a85ab581bd3595a5518fbdbb068acbb9a077b566e1d5132b7e72e76299472090f7754197afe55192db7fb2282d5e880311e8b2ca88b7ad83d5aeaf91f86373bd065a2ce1f93f47e50f4c00467dd84bff002f23644eb0a7b21b6786d442393136790cce8cde4afbd060651461c187d715d0106b41ac071bfde8442b384513d900144674fb201c98403c845e7bd1cf003da845d70c0390edd554367906b52700f0d13e2ef422fe83ac95abbb0da6bef170c5d89ad6b6cd548472c17846f2f28778dc81892762f848959d942797f5f572d903bbcd2803ec12acbc236550e66a89b650b0eab48cf36e0c19a20e6563665223222cb13833c67047d8b5479b8472894335a86cf1cda9d562600837f06f530ccd458d43f4164abb8398a1e2d8c7d1d83f8bc81e9f928da02565a76554f6042aa9adfb0748d9007457f5fc81edb3c896d0052ddd1edf1476edb6db7e4ee53e500810e1800800ae110fd1c3346934e0028f10eec00501ea8469a2ab0ea2f251dd8303a14b2283085fd3fd707c5b2163318596822c483de845180a03a20dfb747b54018f8f9885bfcf02119db03ec780451ce40e2af4e24739a3c300fe8b33291f1a80404ec0f0f69d3de86735033cb00f2b0aadf76167875d3665118e7940665202714f37a7b4b4c5e2bf495d1bb0e551b3e74ec081b08f110ebf662db6adb6db6f4febeae3224883f75a726123ed6a87219d9b7d2228d4a55ef42cf3229ba6a0108f76a2a627c0b6333b013cea222298eaa627c60d8526e0ad428a34e5d24a94646ccdc10a95088503ed6a832a429febf26eecf7bc8235dbb20c5b005bbc7ddd315faba3f21ba1fb608ad10b03facbf22886f422108840067844000ed2de8667f5e6846830e980ac32eec228d1aa340451441864e183c814ef451e983f441fa7ab8591834630403343c9a376796db3a77461e4ede3ab69b0f0c386c82222edb7ca0e574adcab98c253b98a56f9fabf6c05e379e94c0a3f94756cdade2d9f207b7ab38f8f13b4fa533d912fbc0cd23e950c61a4ed27029da0f00bda8e78b5a1d19a1d4cb04142b5482be48b1b7286329bbc31389d4c678e719c2f69159d023ba23f559fafa0050cec1b3b4a256c51612e95a766512a48bbd96a2aa26400d9e4d0c94a891444469ef4306dcfdcb3455ca90d35117dd8358dcbf78b295d29d587e22ca23132eb9ed22af9bfbd13233004c38b8a152350ed22ed2f90015c105b46db6ce8f2f7be536015570ab40f4978462baf108bb4b4fe403d3001ea8483cd6d8440e00021100f76198019c36d7c430006b7412714187e22800c9de8dc083fb5068d50b2318359fb11cdabec8591c90b2313a98dac51a454ce5a60ccd52db69d56fe53a46d817ef407658f14b2cfab6c1ba70af6ae65fafc64026f50b0b4e20ed864d965974d33ca0552a54ee88ffe30fdc82dcf29ac8d65aa18950022cd43ae957315318d47385894a8533d230d50b5d4c1c19a94a698112ca53bb13273ce4d4530e9b0b2a69f088f90fd1e41023ecb2002814edd445a460eb33e9fc8a55e0d03a963fb2307abd5f900d70884221fd908a215c507db187eb866063a61b07a78a00000f3451e8152a18a0ecec83af561c6ccfe6e347d1c1a59ea8046b3cb06880668591a0298992c0d814b6d5328c3f784f9c19db6fecfdc2e4e89b99acbc2cd44b0c3f33465530581431050284c87566cbffcc394db23cf2a529066da911e222cb4c3f58db02620a520214910e6cc5fc30b992c8a89d9a53d5f862b23470c34a87a6163accf61e51ca3003eaf220dcd6af84751457e8b3b37bbd155a6a6df90d9b639d96554d83d2a1708c1954797b2cd3f200710ecb2ced28ae833b6cb74f40fe442bae1b510884221e928a0d3b7d5008d7d30cc33e6b211ac30c61100eb2a8a29ef47f9a62ac955b1bfb74db146f5b00007d36e58a280e185b0cc3861ceff00145eb9a5a678407ff53f70cbae881cd436eda682cd66eda5d913b306c8c9db129508ea11eeea8330306e049d35191ade189c560cd45494e82aa91ddcb9631b9b4b53de2ddf16f1475c08a8a8a9b914f534c006df6a06c1dbd3d3eab20c8cf25996cdeeec19fa3d1054d01f5f69410180d9690ea1cb677606cb4adb2c800a8f67bd0679281ecd45f2412b5bb33536e72e81f0c5b9013fc807a611086896f4366d6d108b6f3643d9c3183e82806d921b2387de86a1e9b37600028f140007074c123f541d7a63fc9550b67d3a61103dd5232061c3cea432c5e79a84b59a87be59531ef419a8aa8644755a5a8bf70ce4ce5f6bd9938b4b452203b7d651359901bf9e2a2dcc407a84ead54ff88a3ae060e16513aad2ca9e6de2fc2313b353e6898d7b130cb544d5172b1b76e29d22203ab2e52cd13206c8f5093805053cb50ef17141d1bd0665b367a21149432e8ed85ad10b691ecf4971791166b56dcb0b131348f144c760b83b31310b7cfbdddf5590ddb1abd9ff0088f145a6095876d9d3d3976ef77be4a41596cf44395ab24c37475419d7f910756876a70c1c375ba2be9e1286c14851c30d9b0187441b6fec8003086c19fd70907a454f1423c3b2283d43960c20fd34fb50b68cb1a0e9b72c360f41418fd59a1fdb47d2658bd135b26b33528b7aa4fa13fe2fdc36e35a72a60df627e72a56aa730969189c060cb1be82350c9550bc59460d13e612b44943cd9ca91f74632397f9d4a8896a70c4b35313272e9674a167250b296f7b30b02c05b4b2969a60ec0fce556ef4036333b4787545741a96fb3e46e8eca36e5af4ed859f95969d81c14ed2ddf0c73659673402798b76155444291ecfbd4c1999f6fc834cc28dbbc3b4611b05ba4a285dbd89f8bfc306348ecb6de9b735bf94974f5eb030cd88166e5b12a9eb17c09d80e30cbf376ea8d5dc8c0333b29dd86c8f9bb47b611053753e9847a329279a0000f2ef41870c507d66cf6a1ca21d9e9de28e6d5f6ea86d93a30fa60f206dc3e9d317fa69f174a28053ac7190477a9de2fdc358001bc42a0a86bcc30ce8680cf6d80569362a844691ce513e786fe649a209ee5223c50f1e86374275123d537a74d5c451ce4c1670765bd6955865c356f413959b236611d1880444566aa74c51ecf14208ace564c130e9ff0039a0cc01150054aaa3eb14f222974195bd831518258c4ae72d164356fce0e8feb22e185ade6c828a02949a874d3dd182b368d96fc90017695b6fe6c0413f7b5438b40d600b330219444778a1c59428766ddb6ef7e544cd3e9b2da6d8935ed510a13716543b7a14def6a127806099d8a55616f0c4b5e22beadd80eeeadd80acc2af4c23a2ab60c020c37472f114390a3bd08b644f565283470bd9de8a0cfe93a0a2fbcc7e329fbcb47cda36d09fb3fb86dd862a3f9aa436690cca7846163781f118ff00fd35350e9f6bde867fef5707ce322351a85dd01dd87815b3516d35654fdad5ee8c3f59136d40274909d389c55419d1d25e1806cb2d98fb0b48f17860fa9c404bb778bf0c2aa89740f60e9fe28a0440b6f6fa21b220b0a95af48006db4bf0c228ace7ac53a0069111e2e11183580342747a007f1143801b14b046cc94fd9e2833acbeab3eaf900274d5e8866060d97b74fe22dd83439b365cf0fcd9d025c4a166fb231d256fe5d9cd1f30b7626b5b659c3bb12fbde761ec56dc3b78acd3129bc39abd566ec339aa2e72ef4226069d4318797bb0b85797760db71698044379308344164e9f762f6bfb2ef5dc982dbe41427e22832b4cadb7f70de4f1863f383e67899f600ee9153a6a8bc2f39b337162558951803c5e72afb4508a342ce07d15d2a7e289aad59b70b13c89f171c3f00304f78b8462c44115ad13cc41bbbb577a1cac6076d9be5bdc230279366add118d1fb61144dc1fab78a1630334d24d3a4728d3c45c450b3b32c82757a2affbc36440cd43b54e84c2a858f3facb57c936d8828596765155bdd4c778bc50b1982298fa4bcd88c3b3a52413dbb69fbc5aa16114b27a77adfe832e9bbb969e43b483d29eec48a7c83da2d4f296f0ef0c4aa65585389089d61b6d3d5068d7bf00147b50b3603150b0e9b639b1d756ec72d8fb63a953413e810256df6ff70ebb2072892b00da188a75a3ed66b7ecc4f9635a6aa058ad4634ef6f0e989233451070e4fae49332f0953bdef144d5e062b41c3ce41aa39c6b103d3f6fbb0679f2f6c6e29c45165868fd2536c20a025d3835dbbb56983707479ce9de845cf37071b0339f455c2308b7c10b14514e920ca98eaa61ce322d94b2d0a6d2f39ddeec1d1f22552f5de396d93211e62b74e5cd0675ba705f46a1d4a78474c2266ddc63e18622d55a025f443d98906a56416f0e5182a77be5051f9449caad8ea0529b78ac8915fa59b2c02e42b1fce0eafec8925e160fc2b45e0281e2cc1ecc2075e1ec53a21103d36e6f0c77a11678cb271ca83e59f5f39c5a5d891d09f847f70d96b7b1ccc5a05ba48ecdb0460cc133b72da8852a7bdfe462707cd9e4f15b13a4d4a524ff00eaabc3ecc4d41695491ba36294e2522a0ffd2ff143e3589670a9294d3969deef4686db4b7b4c09ebfb65f846163abc8197f6f911050cb6d89e2530dd980229db6a864a299bbb97bddd87ef49e9a63679b4ecd83ffb917c86c95aaac1651577600024e8d826e2ac40adc08fd1a5f9bf1114030358f6a996c10c575bb48ee8c3e787681edcaa2dab66914c7488c02656a4a5bc3fd15a3f74c164d549734cc7490c5d6e541156d4127fd4a9a45c59e6fda1dd86060b03730700589993202ca5068d0b54597bb06e5096b278b9e5b13448becc4f1fa9359b3f716fd22856fee1b721b7cf5c39b53020440b5719698adb04a535164eab545ab2f0a5a47de86a1ce5e37325c0ac44c9721e223ca2317916441cf37171d09e51fbca7da833373e1ae1e1e44c74d8396163b7b34d85bbc23059e35f91ba26e564c2cde845981e188a750a7c396a289f183645346cddf3c5dee11fc50a1d5b326cf9171aecb672b8be7b959b5cca0d54e2f7461ca28cd5fb82e6f4a4275aca1708e518993f0f3009861a3556a539952dd1285adad4b6de2813e6e16851abce78776140b40f67f645bb6ce8fe8807445d5bf7782ea2d6f367769245adb9e64cbf862e7f28520be19014e6eef79b99fda12de8e58a7c724b9f6a76294acf0e8ef53bd1bf541fa2dfdc32eb31db28681d84e96cdb3861fce00d17096062255888d3ba357e22895320378a1968af2f887288c4e11a0de287a8b2a7015d0a70e9f6e163acd4fb3dd8a2b3f1429e7168e90b76db055eca6cb3a75143346845410cd6979c21fbb07fec563886a52b2de653ab38897d21143876666a6f196ff77bbe46ed965ac56d11e84c6a22e1f249658a3d721565b376d2d318cd8d9c9db22dea6f2f32321de5d7d4357747a48a1678cd9b34cc14358c8cc888869c573c3e11872e7156a6c3db66f17116f17b5016256ec2b6ce800cc3de8d78876fbb1a337a777f2d89eaf954777caddc2cd4d2303a484eab08750c5e0bdd3dbde8cb1378f31ad680409196b2ab88a0c0c0f65bdb016e2747ee192dada33689a491a86384098712a430e40db1bd0d2a22e7378877616720d59b74c4ced350eb58bc3bb138786e516f849d20980d3c445a460d1300502c52ac3d5e280468050f8728c2219143f7630fd701afba3aa000c28db96d5330f7478a10368c46d334cca9ca98d54e6870ed77ab9a8a9d445bde18ef7a21b3751c2898d9bd6ecdb13130668d8d53ed13dab97117a07d9860cdcbe728a290111a9a46c86d761ecb4d366da827628893a52aca916f263c443a7c50b2c8d6e031011e668d2a295662e1487bdc451339b1ba514b748e911b3bda8bda86ed2c6f2e15cedb49772543447bba6d52dffb0c3d10c54d04fa443295bc4a6f1418a361db609e40dee22822b4adf288ed1b608b6f87e5e1fafe4e27abe557def257de8b2c0756ec33a4b74bf8a304d25a830a6d8708ef8e9defdc2a5c9633f681c4a0c3372d999e296636f52b4f090e61aa03196593234e9078e4f1388aad8445132c6e7e9a5e810311f6a2f0ac00f680ca0dc29f68608cdb306ff5a99cbf0c393b4114c378b317e1830a01ba7be5aa16ea7129cb08a3425512756e88f16f4364680515b54cfbb0ed4354833f40e91fc4514242155bec8f1400631ed2cb6402dcd12514b0291d288f7b8a1b3659fb8a402d2b7b4bc3bc517724d6ddf6ca3a59034d45baa11d202243e6eae22df87f3346ef36ad371f3c7407d708d29248165221e1ab7626ef4d16a9a15f5ca075825f449ee8f88b5144b98f3e59523f328856b1777f88a1dbeb29aed0a562b3600fe6c748fd98c2e6e1b0b2997d91832033e8b29b3d1e41edb22c3b6ceef930fd7e5fa3f2e27abe587a603d31afe50575c647c96c23a541f365f84a016591ac2decde1b7f70abb2154e1a17a03316d8c7416c401d4b2c2425fa04b77da286c8acf264988e5b4aac32fbc5541b9c17eed7b735a88651e287e66f1e747d21c3c0e70fec1b3cd8e4f746a283acdc6df6bd91d3088752aad899b88a28e72af4694f78a019f397940e8443344d5e58076b6413a6cd265bc5076023650398f7a14020b6d1b75ef4366c07b6d3ca9a76f5ca7e118724a2d416ca6c2ca927dd8bb976dc4aa54a2f6a752eb65111311213d566ae1de8994f81b4b5bed718cab7f325b890ef523bd9a0a6ce70d4983948d44eb206807b2d151711d45c429c7ce9fbdfce2cb1fbc450b28de50d19203429658788b70aaaeee6e1186d99672aa998a8a876f11438786b5a9f4edb07b3e507a7f2189eaf921bbf270fd7187eb8a3bb0010099d74c3b606bb4e7036660cab0fe2fdc2aed28b85aee84eab48356f70c305b3cd15c3a411445bb72f0ef436b2dc278b5b61e188109296fd10d39a268a83762e29de31cbddd54c01e74142b69b68228025514dc296dbd22148f894cd6c22066899db6e650e98788ae88346c1988b76c860d8c16c2c3aa93ad6f6748c2cb73304e94ea22cc3fc5ed419d07b6cccb1749170c09737b40c7a0f76dfc50ddb1a8b276165b4b35a65ba3c451840f312db14a5a37de2deff001145d6b82c1b36f8c666e30d620c46aca9ce43ba34ee945e49c5ae59d06dd11a829504328888ee910f0ef143b98a2fde675b62165247dea469a46265337530513ab2a48f4364b7521d548c32612ebbf2d3275fcf1c24447fa34f847bc50e5c1cc5c28429ecb4ba69dd1187e408a49a366bb3a573e222ddf67f267e8b7e5627abc9477633fafe461fae0377c819e03d301dd8951f9c02d25961e36e6ce540f46efee1375570601305cf280853e222ec1866b73361b2c500856a8c8b786262e6d096b742d50085433358438469a7ed0c4c963304ecc4aac2a8e19a26e516e1bca1d23e1cb0f96af1007354b117bb16a4883997a34542880d43c4a966a603e6cb3c5ad4fae2ea9af8b78a1667f11c9fad4e951631c4a7553c30e5ca83ce143f3aa1e6eef08c6ada65d9f7a1bb4556cf6d9d25a6aca308cbb15bf1244b0892960f5aa96e8a63aa24371d196e1bb74902663981ad558b6dd112e252af7627d3545072f155543597ded58550e521cbdd8bc53a37e7860bf57bf4e51221eef08eec006d1b7d5177250d5920de65314aa6c557356fbcb90ea2a7846269325e6af2d2b4f211e518c5e6c0a5945445bdf2402b8060a9fd1c049d53cbe98f88d6faa0e54e43e8e0da2e1a9238a0c3e8fe400faa1167586d8732d30d39aa8340d38ce1027c51afe486efc8afb3643358eb53de89be734cf8ba2dfdc25820af30624595354e8057bdbdee8c390c667305c13ea53ea1bf78874c5e4c166e5b221f42d800b87bd0b5a6a9ecf4e51f7600f9b1d096ba30932ef16afbd0cd9e32cbad6e545131b07bc7ba31779151c3e51d1f9848c847bca90eefb30c187cdbe315130ead6c0668969254b31178531fb5179e65ce5643ac32b46ad5abc450baa4ed532dbb2c1ecf0c4a106eaad692c9d490663cd488ff008a12e6ce56b4ed66b503951444b366dde11ef449254fe4e6d9f3d6e1cef28cbd11a694078844b5143c7ecd1078bace0d35b310886f65dd22ef6f44eaf03c75d4d8f2a4b7a9cb541fa22512d4950b5772a61b64fa69b6aeb7ba31317ab4e1fe22abd21a478531e1184de58d9650934c76dbd036dbbb1b76dbd36fc8459acb5ba3a218492bb13a93a478a119682387c43a6306bf6611468e82d55c03603fa30ef42d2e33e0eec7c4e67db83c39a1e4853366e69551ac74ec859100e8b3c81e986601426389496a85a8343617bd0e433ab061ea8a3b76c5061d900b7140511839f6406ec519e003d51f49147bde44722d0f811b0765b9ac2deef418da056d9fb83b74c5559212ca245b08a12345778b926861a2dc3a94c8f8a3aee6b2f48fccb5025d4ef2a5a6a89a9e33f50c94a894de2f7625618afd4b6dd0351117860ccccd352c4c36e62111e22d30b02c0da5e802755b45548ef2aa95230d2eca295bcc03ac195b6a5c159a49eae43508c4d5fb66732c23ca2c408934c4b2a548fde2287ce5e385d4324e9371bbdde18492acdba20df3e922d551717b3008b6b450fcc22140e1ef2bf88b88a2432d672ac3773250c435b76b97296ee2f7784462717bc18399a2e2cf0ed58294d13e1ddd59b3166289a4fa633570a111f4958234f74615a123f39887c5bb12b9422ab655ebb3216e36ec44379c2bc03f8ad89bcd5499b94ccd3c34c7a0510d21dd18555256df57a2cf9023695b12b90ace6822ec2d30c25408fd18551828eef67141d1e218b7660f7b7628dd8dcf571458df7494836ccfabdb5c02d2a0c4b2dde8992208b97003a6bcbe1ddf22210cce80fc50b1eccc2a74c2d9f13ab8c3f5c688c3f5c0b7156de9836cb241b6cec8056bfdb1464ec8c3f5f9344056a4514406b0b61cd783e729b0b2d5bb0e5b1a36edb4c3fa8aafdc1d11150d31d3c4512865ce12db5f411e5ddc58991a206f0493a4282112e2a61e23b0de285948434fd9fbd0cc14465ca9d9a96c967861b208fc6adc0b42619bd91aa2e7d68cc9499f33e70a33cac51dd273a53abc24513bc6ba52797a22e0147299ae4a3822a871c47ad5cb8884cada2260a5a8d626151a80279b554ae9abbd4c22919a98855a8bade6eaef6f7b50ba4da44df0323878a5a38e56694877531890b459b1a8baca0569d3d596621ee88e989d4fb98037c5eb9d75a68d5a52c5e2fd217d918733272f0d52354c888ea2322aa2be9cb9625f77c1b4bd37cfadc340ba5ba3f48bff00570c4ea7ce670b27b430d14c29450b34a43dd823353e43666e1e1d20155b12abb68a39d4cc5c3000008f465e1833fd2554846bcdbd075fe72308030fbdbb1af2f16a183acba230563fa4cbbb1cd43b2d71ab7a116d2d470faaa8bbd17a91668b864a589f9c0212f67ff2804eb380084413ad3ab4c5793b7a3542ff00494e9800ee451dd8001ed8a3b2a8cea7d1fbb0b300582a1cb6c75ad0f6186db205412b7b2afc3193546b8a37628dd83de8b0eb6db2d53a37861693d61d56628e91b7f7066f4e118e5b2aed5386181da0ea5f620dcc8d304ac1ab77872f78b344e02878dd0b74a3512c5e1d5f6a1f99ac9285b6a370b6511e01d30d3ae72dc0b2d899e6ff00d286cd9678b4d17b13a474d5c1545de668ca9691b149401702646b284234a0ad3512a5e1118be1326ce6649ac7e6d88088a65f4aa1112823ef154506924cd151d2c06b2ea748a27a0542cb9bc230c13591c473699acb106522ca224af0c5de95360738eb286463a7f4aa91691eec4e2f09b637008b6cd9b0c87769ca45543c766badb310d4e2a8b78a2c4d65d60004ea32dd18945de6526402613158281b7aa6fab10a27d3c5e74b01a96e9f363c23c3f2000ccf659db12ebb2f1ced2553c308672d6ccc36249e68ef17696f4068a70e39b51dd385b465cb00961c02393c5068d1aa280ea8b13c50b673cbd91a036f0e98ea4fe9337e28bd5feea6f6e255689897e18442cae00ccfb63441d061e280dd8c23804fff002800c438a0e8cdd9014069b228fabb62805814db9acef43a664dcf68db961273ecdb00604714fe8f341f59eb830867b0f103d39a105b236b6ceec5e1958adf394edd41510fee0d286aa3858edc8222151287a44462ee26a26a2af55569250155446dd5c230eccd6050b7543f39ed55f86016f9e287f99a8c7d9847202a5e920d5de2d512d43983293d9867ce5d1938446bca908e922ef16ec4a81ccb583c5964f19675520243baaaa422a10fdd878b1cee7c924d9baca5a89953de2aa9abdeff00b45e1648369826826df1011a7e6a35112ab9fe74a39b739594059c54ddb9f5cb5996a54b508f861c4dec498af6d96e52c8d91b37a9cb0f5d2ea286047d9ab665f6625cdc5c384f6a06435691d5ecc22da572b45272b022360f9b6225f6942de89d4c979b2f6aca29b6d2d23c1e1eefc8672e74f0f2279778b7625176db3414c8f5140509e25a3a77a16eae28f37540064ab0e918a0cc360d7068fbb46f7140180746f41f0e9858f74548affb78a163fab7a0d60a29f49419e4e8dddd89be7943ca6dcbc3ed4279337a200fdd8d1ed4515fd1e6830af129ca31467e2ef4051d3c501e8eae28c438fbd1a3122b000cb142278952794b761f33c1ce1d9bc3c308ad60745bef422e4cf0c4d4a87763200710969830000cd08d60b270c283e709dbc750fb50b548a2a2249f46a1898b60f381ed0fee0ad816720dd1fce18e51fb318c6db9c0dadf84531ddab4d3ecc4c9b73099366c7ff0e8fce29d38a598a11f32f2df4ad488fb45517d986200186641882474a29f1177bbb0f01c5b349828a2986a356c902358665542cba60de228cbd9a1ce16e724044341534e5c34eaf7ad2286c6feedf330b52c10f3f480d2449249ef6f43458ad59c3a594351e38ab046aa53122d45ec8fda8993945636e8236d28a7ef1711142af9515ac34cc53a04844a19b76c7d62ca65e1e228b66ca125502028370d29d9a4ff00c3132726b395153cd6168b38bbd076e6b6d2edf26cb7ea8925d959fe7532870f14366c8b604e86fd03a460032777d7140766ec7aacac7c5a62b5b7b4f77c9b9e73bb1587869de83aedc42dd8c633ed4e98c6a3f6c5766f294f760cf27f0c19851e6f2c19ef6cf661f9ff00b2de59e820cb01e98475c0176947f918008000f660c3ed479bed8af2658a722766f6f4670ef41f17a20000fe97d98591034fcdea87ad0da29dc28054c3f643779681f101418226150e9e2e18f327e18456c17899ede82cb0fccdc8746a1d308ac76f416f4396097363b403a7b7f7034000d6cfa07a4a24aad9ce535adcb6a7518f761857cf24836ab55be7d41e1ab48f8a264f0cd67fbc6a18817154455141208aafe674a9b106e059fecc4a831e64cfa69b11a4534e01759645c29f4ce9c91e35b516f618ff00ef1752ef22e671347aba6652b96d24f9ce5cc680e20a63f8a27cb399ab951656bd9979c27566cdd6618f7888a1fe33078e52d2488092c25c5aa9837c602e0f51a950097de2832f5c3303594a71320c28f80cd2b050aac1cbe2f0c395b19c19e1d3ddd5e411faff00aac890dd8af0d45acda45993184f206c00a60f5ecaeaab8628ac3d4306601a53a4b7a3184cfa7b062b0fb71ce4e8e88ac2bcd40dbc518de736c1e8f50c1ac7eec19d7d366583fa3efc1d99ea2ec833f4e1c6322076c3f580d838a74906580dd8d1089e7cd1dd8d101deb331668a0c20e81e88aeda6af446b8dccda46280a203e8faca478a33f583a8461c8a2e028b77a1644db1ecb600cc0ea186ceed43b330ef271828bc0a814f10f0c1d9d4edd56a79a0f3a3e735698c9565dd83a0edaacecd30e13c154c7d1bbfb8121467db65456f60c30668fcdd1572e21d6e0bf403bbe228992c1f3c5ad4f3ee8869e111f6461ca2e565bd69e653c4398a3986750094c839cbbc5de896bc3441c2960556e6b131ef1651ffdca2ef03939f374d30c636e03863bb508d298fbc51383464174a472a050cb1baf714979f2ab51788b4f7616451939a6e0533589346a6aa5bab9e2a5994f662f1b8728aca22ab8c4588eb594d5aa1c2d8a4160f60e9800b54e8b20cc40281ecde2e2f54115a25d94dbe4040d4892490028554cc701a13a7ff1833fd265dd80d1b30f2945a6610aab9eab20d63d9046747762d33eaea8aebc4e1858ebc4b7dd8034c3b54f1419d07e7204fce4627aa2bfec2833f7a1cd1e8b7da87f6003353acd501bb007eb80d10159f4425aec8333b3f66f14070e2c1e8ab0e003ee4006eff5c001982b65b16051db1be7ff00b46b3fc50b51e1b442262df1434671def20575f476c02c681fe6cb7a1b1a2e72eca6ad50dbccd16ea4ce9830feda2016a0e9f46f44ddbe18a6767ee057765df183ce90a934c6b5adeef0c2d82861f5788b2dd2b10fdd1eec3966b22b366c4980d463d4ea222ff0c3c336ce5c05b9acc62a8b8852cc43ef43c0584121f36398d6521b3346b6c39e82cddf1486aa8bda8b8ccdb1ad9d706e6f16caa6f0a0966353d91fb5000735bc330e72a6446a5dd2625a521ca92157862f33a49315dd2e954826662d512de50328fb35747f6c393b4f3dbe708cad2f201e087af7600b65b69411d67b6d84b5d912a975ab1d649f40e91803c3453b2cf7631ada14a54aadedcd00667894e583d09d59a16afc5c50079f3274c1ae3d66f5bc315d7f862bacfa7da8c6c9c3159eac3eec7a7ba5aa0d6dec38afcdd47e28cf5d3a63c5d901ad3dd8c6fd25255c4d0fa9a6cde3d3193d71af6d30067089f9aabde8020f6a28b3d3bd0614766a8ac0014aab8a00f68fa6002da14a628a03a3c8015f496f698af3a9f7628cf6edec83a2bda31346341d61d9bd6406438b1ba6ba3982db0b8a16059a65b7b0b494305816056df0d50618dd9db07c3b603e70d9446dcdc30636815b65be8fdc0644dc2608b76606636aca92ae29e101ca30ccc1b337f31c44470d61418a7bc45a6af0f6c4a91368ea5636a988b2c8912643a840aaa958330e739bcda7d5088eaca59bde287eb3972e1e5a6a690c21a748e6cd0cd55d66cf174dbe670af37663dd11a6df74624fcc24f249e509828ae0e00ac5a4b4915308b372da54cd00501377363eb3ba925d61117b5b22f9ccc1e394d044cf013e9012f0d354285597ab761100a142b7774c1621f6f965cccdcb90e1e2840285b2a550e983330e915032c63016a522c5a80ca9d554738f3957b316ac74265ecd306b19879c8c5af34639fa15aaa8ae8fa4cddd8c6300a78b34635565589978601cd16f760d6fbfa639cd07b7541ab8906b055960dcd31ce6b0f5c395b18fc81bb01e9844e98038d7627e38da15f9c8f57a635efc643c421f6a3cce9523d56698b0febf660cf26c2f662b0d25e2228af3f141e7d7d90f1b5add6b47d1bb0cebe6c9dbe8de830ace924f2c364916f6f406a8f5d9d8519288ef69b462683f38b4f8bf70004cd63011e9228652f3974a904452f9fbb31012e0021abfed0f244d1245858adb6f366014e189f9d569cc23f76107ce2d5a77325400b9ba3848a7bb8a794447c30819b044ccd5a9410ad31fbb57b50f3e672d6e4599471517b312b61cd1b5a786036336690263bd8ab8d445e2cd0b39c15936c09d48b3a454ab354bea2fb513c728b095385b12a37152188394843ce1d3fdd0b58763735c8f3ac64003dd1edffe200710e0cc3b2cec8d7e4480d43d96449d9822d95dbbd014760e6a77a0cf3ec8dca8b2814017576dbe88ac020cce8db6c63579713a77a0f2054318c7a3132c5747d1d566ec546614ea1833a0fd704e43acdb18d6d7f8a0dcd1d9da306b516658e72679ad85d5333f39189ea8575dbe5c4f5401c0776034406ec6e6db3de8ce7db9addd803a6df379637f6dbd9159f6625315a983b62b0eb2c8c633fa3a6a8d6101c25db0e5b039454abb474c3545606db2ddddd28cfeec53b3dacd0d960daa596a7ab4c28075db542f92d50a1547112b2cf4eec10da36ecb7f5ff204515e6018aa52002445ded9bb12a66601f193b501b9514344e9cc23fc5bd0e4f18d32553314d30a5ba3a8badca35711145e46df1504be546a54aa678af8bbc4356a87e89bce6e09267d6188916ed65947dd8724bcee7482682214a79514f74853cb0f967324051ca8a0118865cba9cab9bec8ec8969f3372a24798d3ccb29c2a965fbc517cdf8823860e2a358c8047f443a8bda2fb30f0eb34c2cd298ec18a0d10aadb3569f288567b2c89431b545c2ddc800a029b1380a03b7b60cc3d980ff00c60fd79bbb0e8feb4fa20cfbf18c1d66d8c6c9f6b3419fd5a60ccfddd300b187860d60b6c53bdc5c506706b41ad067189ea8c4f5475705ad4f2d7de80dd80338050f4c01fae00b87c3e4d3fc31a237fd515860d3ecc739c94c63547ebeec02d5e9d230067ba9c5793a77a2b30cdaa0f26aecae28a2cd83c715e7db015b94736b1830ac29de8acc0f6143b6fce5b638768e5507f17ebfee4b0696d8b2eb186d3314114cb7eacc56fb3644d57661324c30ea0440b0c8b7469a894f144a99acf6649aebe0e0b50e70b53a5257744bc230b3909a2d34597b311650cb30ef2b57ff00b0c1d80db1ecb55fe6adaa12dd25d5ca23ecc5c06cdb64cd73b7a340f1908e62a7c5d1645e43f8ca7ccda0a81b1ae29adfa556ac453ed64fea83006c8a6be2655b15d29e1ab0d0f78b344d5ddaee63ab28d21eef6c36439db8b3742d2cc50ed6c63e8d03953f2cb18ace97b690845b736454fbd1ff007d50161d74c1851d998bbb075874f146733e2e285bead5019036c1981dbb0b7b860960a3614579e2b3dbd3aa3c50660189f660d68338ce7f910f4c057d1015806d844e02ba38aa80ce8f15bbd0a06f6e8c01d69a85aad85abfea8ac28e121d30b1d7d030070070067ec947419a9bc23000061145a7d1bbbb061914faf8a28f7612b2859331f6861ca3582843bd0b06f4325800fa73016521874dc9b3831f46ef87f5fd74db039752fad4a45147abcbed55ef42d826d932c4ab3f569fe7e92cb57762f0abf10dc96ed3539992c2786234d423a8bda28608a2d9666162955a218ee8a276f16e6db6cca2a5474f8b2c5dc66ea43216eaaa8622ab00e0b7ddcc588357de2fea862d8e64ee616e218f383c24d41d203a9553c2231792648849db5a2961f3d325c53e16c80e1a4315e7db12c494364e42c4b338a446dfc50b742a766ab07a3c88a56aaa80fd712d660d829f4c2da132d356ec0670a6d8b6d333dcf0c68cc307f5ef0ef42c60794a16e93aa3ab83a020cc3abeb60cc0a0f2698ce7061f5c1ef79304fc314fe97e4e27abe467f5c06780c99ac844eda2313d518de9b3b37634767860d6c9d39a165a2bafc9def4c247fe184739f4c018757f5f90f8b0e35e51de8d01e2866b057411f41698788d0b2960e9283c870e401c33efa7f77f5fa14d79a182c6da55458a52aad4888ef2497145d445b3c99385d64cf9b0d2025aa91abf145f09f1de1bc8e14f36dd10c01eea43ba3ecc51f3671427d2e8c4310b577a918b19b6733e4d11cc0998d49da35661ca23ef45ea72b232e6f6979c5aa487367d5529ff00b0c49182a176d76e2e30d674b0b3e91d025d62aafbb962f34dac9a4cdf18594a234a280f0a4969800b4cd3b07b6d8991fc5ad934320d48d3975008966f78bcb2461f4849e5de8d1637d9ec8c1999e6c3cf08f16d8a0ebb77a0f7a0f46d8596c94c19819f9ccbbc319fb63eec5075c0057fb2019fa7ef42c68a3894ea8596afa2d301f50c561f9bcdde8c633cb8bd1f2c3acf5c61fae2bff364757e43380dd803a3bd04793bd18dbbe8858cc3f142cb06a1833f5f9028e880380d1b34c51ed477b0e2bf37c50a053db1903b53cdbb1b9b2d3f0c68cbbb08803f4141fa41859120ca5bb08ad41d547443a4ac45c18d9a7b47f5f83b7d1fb62552d378e536c478769536b82e112cd48f78a39c8cb5b383443a072223c4a8fe14e183035030cd4e9cc6e3ef17fec306e59b672e0ec4ea0628d0988fd2aeaea8bab2759636e58815a998a9e22d5ee8c5e13e7f791b276e545a8508f8bff2289a39060c5e1065b5344904cb566573117b23b061c582936f5a865ee8c5dc629dbce5d2da110224c788a260e39d2f5fd9eef91a36372b00d9088736443f470646794aca78611aff008a3445793b60cfd706b18029d5c1adfdb19ffaa000e0c03da2811c48a11446a387f32c6ca3a60d7353f2607ebf27eccb0061e98d7fb203abf54018409f146351db0b1c19fae0fd1e40f4c0567d108515ec28d101d67ae014cfb602bf4e685aba36c1a21d1642baed866b1a2b2643ed44c9b01863068de830a21df5c96de0fd7e4a8040d450f4a7a47894dd189156cd770e145ea31ccb17e9cb48fb313e58db7c5e89eb101224c776bd23e286660cc5dae29d42985643c54e91f68a01850c3ae537f377952d74fdd893b6396f5cb07376e9866abf3a594469ef430335a64f1e7373a5ae614cb78b4a63ed1668bc08858dad6e0a012d6ab42de3f3ca9787b2c89a288aafd30a29493a44447553fc50f8f98cbd34c140a9cdb885658755096ea71d256c7495b1246635a96965a74977a0f1a8ab51401d7fc31a3a78a00fabf5f0c28b561d118c61db9b860cea0833afb3761103d55c7d240673d906e5b3303b4f5f08c3c7eb393a8bdd8afbdf970f4c0287a60fd1007007eb8358c20cccfe93ca1bb01bbe40384b459015d9d1a6c8ef59eec0640fb31a31387862c0b6b4e143fd1f8a3381edd312a71e711b7429f7a264ccda9d2564670c4dba4b2942c89a27b3d1ba5fafa00333a461a180394ecb330a35178948938232d040d44c0d44cf4969e72a8d4445ff00447ed42206fe64f1cabe6c6a222286add77672f4934eab2b15941b7bba04bef44a9045e4f933b2826cc6906a9966c55f8bdece513ec345197a2394f3397447c5c45e11cb08cdc25b88ef9bf54cea34ead24be6c3a87c50e575ad45c19db510e5ab8888aa32f78a2c13c601b35287b054eeef44df6f384f868cbe1f2344aa2db4edf408f7a1b228a214e4d19a0f3f6c5193b22d3b285208b0e0d683383afb20038a2bef462076db0b3fa347bd06759ed2edfe8207eb8afbd08d070b01a7e433833f5c1fa203d301e9f2e70fa380dd8afd23ed4051466ed813af2fdd8afbd0b2393bd147760c3255c5bb00668fe1840c264cf6fd327a878861644c0e2c6e13068e047cea79d3f0ef0febe80cc36db65bd31236f637b65e76a5898c7508d3d35691f66a80072f9e275b8a5146ab0c8786ace5ed143ca2d45ba3637c994d64c7ec2106b2d2d07204e295eba4a81f3aaef53f7462e4337881a4a1b70d8204223fa5577bdd89c4c969ace305bd7af08488aba86ad5ef45e70451792b668d0b26881aee84778874e9f0c3c93bf3360dd6a1134409771ba23c3577a1e2a983bc64edea520a111ded443ffc9419621f9250dab30abb075788a3068c4b3577a346528350f4c02dbb0b2d007eb833e2dd8c4b3f3701b4365a5d906e428a8b2c2cf2beed9c3189eafe875f7a113a4fd507d733afd2279a0cf3f92bef7903d301bb01bb1ae3ef4051f9b80eec5614d2501c3a862babbb15d767ae0c28ed830030a8617f443079cd964d41ecd25135669eb0b321668457366e533b2de9189eb100b53729f9b5b5774bf5f29d1d1b7b37a1bbc272927b86a0508fe8931cb5419b7e7298581d4a348d3c5444841672b26f155004ebf9aa7fa5e2f660311cb95341027bda6a2de2185a7df15486bb5402350296fddaa242c31d6c43af2853ed2ba7dd18f9b23f183c3d2b39ca35661492dd1f6a270b292d90bcb554f3cc004c46af348096f778886165ab6c9870e6f7a0a9dbd101454157644a998a28d76e6de12dd837346246bcdeec1a99f6c19fae0cfd7001001b3da812c3878fff00b3861658ce313d5e5c4f57f436cb186259ba5961cd941a9f2037603763cdf4f90377c9a02af76325767e28da1ab0e028d5e880f63bb15e7d9e430830a2182dcf19aa896634fcdc1905749449cd178cdc355330a8150970943c6cab370a267da3faf86e89ac7600ea23d82309508b9ab261a60225fc308801b6515c3e6e0a654c8b32aaa5dde118e7e1d5aa8502141a4dc8ca9111de896a382db1b1710dc008239e9cbbc43e28bc332e76fdb86a4510cbc3a75449e6468826588620555225decb5450edf3c6f6dadcc5b8d3555972ee945ff722aae69885290d029edfcd8e9187614269edd659d4b3c5a47cb2b9d399785a1462225a932fc30ccd17fa346f717b50f2803a6c8735eec2d67a77a28cf001ef42ab51f4948c2ce725364197affa4af656099717c80f4fc90ae3477bc300a507e403cfe6e03fbb760ecaec4c6321e24508d7d19a1600ddb3d9866bf3659331ed1891cba5137bed76d05d33241e2d42823c45963957e41ff91e8cbdfcb9ba2982c15b74d25495a84750955984a2f033b1fb305c13eb13f39e1fd7b86ab2189e0e21a7ab423e2de2845b007374d44ea2534b71fc50a7336c18ab29ce2af3623e6bbb4c4aadf8e1fe74ea1102aaaa452487c3dd859cb36c8ab466b54f36a6f43ceb8e8157a4b29433e66cc33e84691a75545ff941bf3442a04f11450fcf55a6ad234c4f5ce32cdd3efd4a1787761dac6b2c7d357943d30d9d3966b26aa6ad243a61bce117fda9d2bf0ff0c1d7bd07e8800aff006c3c720d83376f0c1b9358edb6d8c4f57f4a0cedd4b38737943d301c5b3e47d1c06ec051d10079364777d301a3bdc5007fa3cb0075e253a628a3a600f3c2c89f6eec2d90fd512d993c96bd95ba414015d9b94976f57e7522a86a80be72a7f3e6f350ac9b4c91e74cd1ccae02a5fce5b53e2cc31cb1c8585dbbeca2cd53a5a4c9115c51dc488bce0fbd139656cbde1d8367567993fd7ba6aa4c9a075152b67e286068a28dab29ae8cdde12ddf6beec06339c433d65a4b7462489b604b0ecac514e9c62d58a7de89c3fa1e3852ccb887d5f8b8bd98952214564deab54cadc4b78f8a1b22880280b661442a211de54b48c4fe6a8b0c3004faf4c32d3a71c87f0c3926c16a9bd4a3b04adde50b7a1521333b6cf9189ea8c5eceec34991b9ca6a67fbd06610bbfe6c1b075c1ac4bf6ff4c6dd61a9671079437633f669f95ddfb519edeccb00a79cb600fd700715f9ba62bf45b6e583afb313dd80303ca50b018065ec805b07a38a2e8dfb7f71e7ac16f3cd45c8aa48f098ef0f7a3963e52eeddfc5e50f1b2988edc395d5749d242282442298259b5165a8a1740668c70be913cc89418901db65bdb67ebd510a8edfa873461ace5c006a32e9283027ce2c4f169451a6a3a75178611205963b01b99263951def6bc5c30e560978268a2a651ccb17117143c03596b48fda2eef08c5d8058ccde5a90503d5374c74eafe28c65cd64f5d089961a7c4a970c3f3359e296d95d1988735451323adcdbfe737cb4abaf2f6c2ef360523dbbc5fd343d308ab82b01709c2dad4f207a628f4fc8afb367c8b77228eda635f760324627aa3251e6e03ed41e88308668b67969a6a27ab4977a2830e7095a9d2499fd986ce6834cf6f74a2f1b1005935c342da8784bf5eac042d33b4a1b9384470d24ea5d6ed21fbb029b94c70125368979d574870d4451828a20cc81c02839853a469cbc50b1819d01da3994abecd5e1820e78e53405432250e9253844a11006dcdd34d3c4b1b80888ee9aa5947dd189c3903b29b68a6820121ef166283ca8a842980d5e6cbba10e4c0c93a7d01b3e5d7406c1f6bfa707a7c879f0e03760377f21a2313d501e98c4f5419d115d185dd84cfebf662b0f6a3c50b6886c782b2650f285d6c51ded508e4350211045e22a373fa4d25df8708a8d975133b330f47ebd10f9b081e4aa8eafdade86cb007d1e510cdde845159e0516a98762998b86980ce742566613a531e11de2858c2852d053aa1d445bc51244400f9c965113a7bc45fe185ab45828aad40a89f0eeaa5fc31323e72eb60db5128b6a89ebf44f111453a4472fb2314d2076faf659f2bc3ff0023cfeb8afbdf900dd8eb23eef92830cbf6a0283d515eec6b08dcf54514436305814085ba4d328058c17f544f5a7396c9b800ce9e553c3c5faf36e8d87b4add03f6a2dc67269da5bda7ba300cec00d96e5b0754180360f3818d92acb4d30e9c8366d829a998bce29bd4c02c6b2c9a419447da84011445bd19ac6f97369c5de89c3f33097a2396ca37b5778bda844edc67842ae9ff0025067886a116a28736811a74f65819bc5bd07aadff009306880f4fc9d7f2bbd01bb0147445786119fb6028e88afde8d01d36e583e2b21b19a27b4b4c390ac36fa22bc956f0c4b5c875899e8532944c599b178b276f60db96deefebc43d3089d7869d89eaed22817a6dedaf143659d029d822239618621e2b923a884fab4f5662de83726675ea2dd2b7ef42eb1868cc450cdb83145454ebab8b7888b860dcf3306f526047c23f6a0dc9acb28af0e6cb0b3506f2956dfa5516101f76a28728e09f84204f6029defc8e1fae30fd7187ebfe981a3f2a1c5b3c9d6401c7d1c6bcde98cffd70147a60f27ec86c75851ecc1e45a9b6133a0fc3132479fb4c4fa54fed0febc9b9981edb2ccc5e9eec7f39ee827d04318e1d827d4a7f68a0c4f07a53ce596984d1e66b246600a283a51ef77a11a11b145d67151a7953abf3be1eec39323e9de2d5e1ff001141ab4b3716f1523ef44c80ce5adfeb23221abddfbb0fd1b416d9874daa534fbb1d3d9f90008c3f5c5187fd34742bf2fbd1def2ee6cf2fddf201c57de8f0c01d10079d4aa0f4776113a0eaf444cc77e150c891f14307346a4f56589936e6ce4ec1b321664fc3faf102c9b7d98d0144346c6e403a7ab4f516ec2cf010350814ce5a54a748f761b1e6e84f4f16a2228358d6c3b2cd09e98c9428b5bdec3830d8c7a7375da78b2c39044db370357a282f74b2c4c9bbc5b00c54ab043c34d2513145bb45941a2dc42cc25a4692f94015c023459eb83e1dbe43f47f4c0f4c27bff00243d3e5f0f9327afcbe2f278a326ec64f5c7407666f257de803f5c6fd5bb0699b9670075e207a46017a4e1fa3ced9f46b4f37b3faf10a120eda8b746110cf9ecaaacc4230e5e060ec14e94b4d306667e2844e8d3db1f9b0d3696af0c2c6066987a06165ab052d1decb4f0c057ce530c432b134522ef661cd0bb93b5a59867b0d3cf570f8a1db9b5d2f61da1b2db46cdbf2402b804b0e0fd115f7bfa7a1af6717c90ddf287f7fe434468f206beec067803acfce461a7f5c362b031478a1e073573d10b653fb50cdce70fb51306fcd9d9596682cc3faee0033ec845210cc54959f5428e88f600d81655aad1184b6806db3fcf7a0cfdd1d302768eff88a11acedaf480c23d71d56e5de858e8c4ef7dd8fcddb677a113c67ee0ac5328a397d9189c239d3b53af628025977b2c2a141ecdbb7e40051fb6130018ae8833f277bfa720742c9f8e0f21a9e4c4f57cac4f57c8fbb1d5fc9af77ecc57de803cf019e3381d42a66d5135441645231f6a3a4d1ef0c2276570f039cb3abd29fddfd778a947641b6c14ba756f41f0fbd06769dbea8fa38db5d167a0786372cddb37a16380ce14ff9ef44916c159b98ef010a9fe7c30fcd1366dc02ba9333abd9837d886a62a60a116fc18225a14e8e1b630fd701e9843d315d1067e4c9ebfe9e1ae1c65555f1fe5347c8afbd1ddf4f903760f7a1130ded51467b4877a0338384fdd8f32b5b54683d9e9860a057b2dec878df9bb8503fb3f5dc885670b1f574f7e08e9afc81afa3b7760035ef5a30a895892567a4a0c08e8b073559ad8346d4bb72d2112e73b167045d85d14c3c2245c5bb330f6f7484a1c9b3597c8960a7ef42a141f9c12f5d9e411c483d1dd8c4f5457deff9087a61c79ddbf5d3f970f4f92becaa34793586d800cf0141a39750c5660b265c394bc31356d42ddd283cc157b25089d071314ad55ba4af0e52fd76b76e6b2bb28f115ba4636a436db627d83bd07f499fc966dece28b0e8ca39788a0469b7659e228ae8db6f16984721d856fb30b1da596cd30d8c1b9b42efd443dd8c5b1b3d541442d24cea1a6d2dcf45250b23847d9d1e41edb2373bd19fd7ff00230f4c38fa3b7eb1fe855f7a314e03d301fe461bad9f64535e58728e336a77875406dad408d16d56c32eb81444be920c0d23506ded1e8fd758f6d9000b1826885874e525a1e0228e20589e44f2a85bc451b6b1d96a907457d1d9e410253a7a7bc50145748e9de285cf10e2bd1eaf21ebcbd830e2c59cdabab6279069ab7a9abca96bb3fe4a1e985b692285be2b3f215f7bf20147447d2793ac8c4f5477a10f4c227587786341ecfce6987889a2b477a1bf9c4e274da8593547b14fbdfaeb13b513da27d3c50d967369a609f9c2ca34c18a80d8c832d394b66f77a0b279002b8331d3ba3007601faa36dbf5f903eec555c22e7054dbaacd243c430e30f10e8d1bbe4474ff00c98fcc27e3fe801bb01e9f93f76199e7f514390c9b6c89921b013384738283ed0c79be9830e792d5036671cc3faeb103514d960556fd5643260690d94504e37eafa3abd5c506008b098026a19595889116f14176dbe4afd1bbe4afd1bbe5d01eb28a72f4c6e0450746df4793e8ff00e4dd3cd94ee9ff0044f14757e444bd1007d4d3676ef4390ac140dd1d30790e3d7669860b50b7143f439bbd547d1b768f87f5d4d8d74738294d596a849e0371b5344f586c257ef1143c78060a5815886e8ef1778bf2606767647495bff274bccb8fca06efca0f4f933fae33fae3bd007f5433582db2987279d3b78b2c3c0a0e1b176d9025871374f101b29ec117fdbf5d46474a7b7d9e184b70013a88b50c19dbf9cd5abe52281aea8059da5d90e28c4d83a47a2af28f6d9e41edb3fe4e8e853c1f970ddfc8574422b51efc2c00b23b6c87818809db00a507145716073896ae1e91cc3ecfeba5104695088f4e91e2854d5576547553d030db1011330ca346c33fc3158632a7e81d2251499d76ff006fc80023b7a3b615b1262dac01b2dc721ce5c231b7d1b7fe58db5ecb780bfa17ddf915fa62ba200f8a1b181a3d30b0e452cf6a0c21b1e4a7d230d9700553878960b85c7ea3fd748008eb3a6ce1b35428bdab5166901d23016236add2a53f6aaee8c2c7b9a6c1ddf207a6053c55406cedb61b334590a8b285b6d00ca1c45c30e5633152bd6a5b515b6ffcb50d767e5327ae313d5f27677fc9f471e2f90d8e8ed8575db0e82cae113b6b835a987ea62981feb9c29aacdbd918fe800a6cfb5fdbe4a0ed3a75142ae526c5d41546419d4e1ee8ff00f30aebb7cad9a73445bab6fd27477a264ff69da2401b432a621a460cc8cb6db6ff00cb50d697f43fa3f935f7a04b0e0f387dd875bd096bb20fd107e8fd7522cced050cf2d83f5c22d4d6c31b37b7bb91ccd63e914ca8e22ca3f6a01b099665bc22398a1262cda229996631cc4dead5c35143e7f8c7596653747860cb10ff00e5a1e980d7fd03c3e453e9bcbdd8fa3f2f7611d14942da3f5d9cf9cd880a789b07d423ff00785cccceb35312d2d450c5398ac762a16e750e84c473111d3ba230e6460c8cf9d3e213ecc1b02a57fc30068b6453b11f9bda5e7163d5ecc3c7c067b134f26a2a8aaabc50074d87ebdeff009707a6035ff40d11a3e451ddf92d8f7616fab8a0fd1e43d107e8fd747a7a6129535b301455e61a643552299190fbd073b91c998209b1971a6e29cce95cca17d74d3a47f641383c250eb013131a6db7319550b2d59db6d66445a8b8bfe628ebfc9757f93d1e53f5f911d70b6b4ed85fd1e43d11f47fae9158ff00387fb2a805ac4adda398f8ad833332e93dbb7fe648ebfcaf8be5d1ddf9407eb85bac87214457de83d1ff00f3efffc400471100020103020306030407050605050000010203001112042105314106101322516120327142607081142330405291a107336272c115435092a3b1245363a2d1738283a0b2ffda0008010201013f00ff00f53bf1074a2e685dfad117b6fdccb952ae3f82cf2a25eb7909b9ee55c7e1cc589ee240a0725af0fdff00045a7bdc0ee55c7e356ca99b1ee22c691f23b1ada4e46bc3f7fc0dd80249a79bc4b806ba8a55c7bf3f6a66c7e17e9dcc00b7af53dc0914af6e6d4e36fc0c965f16e01dbad00aa05852ae356d87c29d7e27e94c856d410a516f53514836bed7ab6e298dd8fe04ccf912a0edd69572a55b0fad03634ab975ef55c7b93afc7e1e7d6a4b6e49a218dc915e27b509d0d1d50fad248925ecc0fe03cb260bcf9f72ae34cb8d61ef4ab8d7cf4ab8f7aae3f1ab634cb955b634cb8d4d2786056a356d25c0e47ad68b88c9a29c31b1522cc0d433473c48e8d756e47f019d8b496a11fca2f4ab7a55c7bd45baf7aae55e1fbd787efdecb95787ef4cb8f72b65452e79d4e5608ab55a8918b126a7d4dc0b0af149ae17c59f43300cdfaa7366a0410a41d88b8fa1fc0499ac00f5eeb6c3e155ca9571eef0fde96126f736a484ef6142363d28c457ecd782d5e19f81972ae22462c59ed7ad637a1efb11cc57667892cd11819b74178fe9e9f808cd931349d694dfa7c0ab8f708893bed4b01eb51e9492be4b721fd6d49a52d6f2edb6fee528691ecfe4e4a7f90514da275b8b753fff004168e943116ea7fee6dfe947499e16def6feb4fa6daf8d369b96d4f0b6d454adae3bb890c806e84ed4f20c4d3f4a66c7bb43ab6d0eb34f283f2b6ff4a0432a91c985c7d0fe0148d8a9abee280f2fd293af72ae5dc885ef51c237e96e75168dc93e53b024fb81b923ea3715a3e0333b6e9b7da7fb360c159bf2570df4ad2f643572a3af80c9332362bd73f0dfcbf512c047e75a7ec2bcdacd305518bcb1f87d462faa451ffb750a6a0ec1cda9e1f0f9066f045cbd65d3e96c3f9cb5a9ec5cd19d44c1368d9e4b0e6446351a8fea235fe75adec6f11d34ef0785e7121883740637fd141fe6ae7e80d6a3853628d8e28cb717e88c9e27f48ec7f3a9b44e97bc5891b30b7224026ffe5e46a5d25b7b7e5d69e0e5e5a7808b5aa68c615aed3903717ad505f359afdcfd3b99b1ae01a8fd2384e94f55055beabb7e016a246ccdba547fac14ab71f0226679d43a72c4f945bab13603dfe9ef5c37834f3b02415b02589b9c427366b7f07db1fc3bd70aeca78463cf18594dae6cc226523e7b5ee23722e7ac4f7a8341c2b42bbe9718828f1213f360032b21f7f0cc911ff122d1e3ba2e1cc59e4596689bc4246e1de261237e4eda62c3ff00a82b4fdabe1fa0960559321a791423fa8819141fcc6881fa1ae15db3e1b03f0e56c6cb268d5bfc91c9a343fd12b84f6b38349a6e19e33294f0b4e67ff208b4a64ffd91cb504dc235da778e7955738f0d54bd51563314efed6bea9c7bd711ec6c5c4e572344a6766bb69400aa256932301b74331109f4485eb8e76266d28263533c560c92380a194a9910c9e99a83a87bf24c41ad5f0d9212462e732000ca558e432171d198798fa0a9e0cb23607d5afb5bff008f4a934f6b8c6a78b1cb6b5715d6db240df9d4d7cb73dd27cb7f4a2b72a6fca9971aec8cb7d36b23bfc92036f4c85bfd3f009fcc4d45b5bda95afdcab8d221735a7d366c8157726c3a1b9e80fafb5703e02f3e0db05f3f98296055479ce3f680ff00789f301b8ae1fc3a0e1aa315b3af86159489082ab9291d1982dca1e52c7753bd6b78e69b46a022c5b228c73cd02aad82fba853883d626f55ad776a352794ac31b7cfbb022c416f5dd013eac0fad4dc765dac765b587b023fd100a978bcc428f16fb107e9891fea6bfdaf35ee1ec6f707f307fd2a1e3b3c645a6dad6b7b79bfd1cd70dedaebb48ca7c5cd8152c0f26b156b1f62c0dfd98d766ffb4d0e238e4bccac3164672ad2065c4e4d7f2970c54b74f1256ad1719e17da184b49347206259de64f21c984cef24606e18e324883a78508aed7f610785aa91222a516432f8ce09508d94a6675e589396a1c6d991125715e1336926955d1d58359d19487c8f20e3a391b841ba8e75ae68e18eed607a8bdcdff00d4fad717d7b48580b8fceb56923d4a9975ac363bd581e6296391efe5a68a55b7eac9aeca4863e21229360f1ffd8dff0000673e4b7a9b55f293e951ec693ad2ae54ab954100bd8aefd4731f98aecf7053ac9a01e1e45fa5bc4c946e6ca3fbc5f50be71cc0ad1e9e1d0e995815b140eae1af758b60fe220bb04fb328f3a72704571be39e189146c2c4116c763e6b109caff3597cb7f3a56bf8a493163e21b9e676b937e752ea9a4277a6988b5c5e9f5ba78cd9a6453e84ef493c52004382299b2af11fd6a3d53456debb2fdbad7f0ad5c2c7512594821c3957521ae086e8d72486e84e5ced5d8ded7e838e6860532a2b2a865c308d5469c5c32092ea9e103e52fe480799b290d7f681d924874ba9952158c46a03ecf1a20977553705e357e81afa89cee4006bb4d14d06b7528cac1a362aeac3120837c586e179eebceb5519fa93cfa1a9e276353c78272a68d9adb50896222e2c7d2bf4a8579a5685535b9ddb9570b410f1e847b37fdbf00756778fe94ab8d2ae2293af7411ddbafe42b85e88cb229b3796cc48b9083d4e1e651ee2b8070a8e1d3404c608d45b6b232cc40bdd6c424a45b6285255ae3bc41a1524392c6437704b3348a36370149716e642ca3a8615c4f5eeec7ce3aefb7adefb01ebf4a9e662c4534b95bcb5c5f89491b2c30b7eb1baf514fa4c3132ca5a4fe106a2fd2602aeac54d6835a3570a5ec1baf70bfad2b1535d91ed66af806ba0759481929f980c4a1bab2e41802bf64d8e27702f5c1b8ce9fb49c0f4a6373be69a708ce082fbba44622efe238f9d612f3b7fbc916bfb40ecf0e1baad5baaa2451bf8792f86a90dbfddf90bc7137f815a497f88d6a12cec30c7ded6b8f5df7fe752c776617e46b5108df6a90e3caa799ee6a187f499429d48427e5b8d89a4d43680bee1ae2c7e95d9c63ace3264bec9193f9dc0fc01946721a45c9c528bd32e34ab9568e2c985803edf35764f869d4eae040b94a84155177707d94324ca7fc997d28811e9b50152ecab79940cddadbfeb6c976ff00f3c5ff00dd5da2d5876cb3b8618a9f99481d2e0b8fc83301e82b5731773befd4d4cd76b5b956ae61a7824726c145688979a6d439f96f63ef50c8faad59ccdc56b254d942eca2a0d4be8dc9cf99ad2ea06a620c0fe5dcad955c8eb5fd93f6cc682797493ea556391310ced180c97bf86de2b46196fc9198a7fe9b1afed23850d5e9f440c4cba9f040811b259d63b5ed1a94f1c27f8608224f735c4a3fd1f52e989537378ec14def7dd4166ff98dea5174352fc86b527236ad2e88caa4daedb635a6e03233eecb61d4ef5c4b45c2b470ca7c5692526e1072aec84411f5e6f738a5bf9fe0031c549abee2a2dedef49d693ad275ae1f0894c6a2c7fe57fe8c45766744d169e3f197088aed1cc1963fa81ac8e58ff93ad716fd768c62ad2428a6db3cd1a7f91d4ead13eaae95da09b39656125f33bb64acc47bb067bfe6c6a46c5ced44dcd71f94fe8d1adb62dbd08fc3d06997916f31fad42ed1cee11096e94fa568a0924956ccd60abd403d6890ded5c135654b21e57af0fde9571a66047a5ab8571a9383715d0ea239991a2954e4acc8d6bd8ee8c8dfc88a7319ec94be2c620d2ea10318d97f44d3be43e67f15b86c327d5bc6fa9aed040a93cb862d178be5588e508ff2f829145fcaf538b0a986c6a72a0ef50cd2228087eb51710c20d40cae645b0ad61debb33ac1a6e20413659c5be8c0dc7e006a374b7ad74149d680b0a4eb50a59b9d708f0bc4405a23f5923b1fca404576457490a2787a8851fae0fa78cd875cb49ab858ff002aed069649212fe134a46e1f0799fea18c3a961ff3d769048353264ae0ff0088480ffd4b1ad47dafcbbb8da931c4dd036f5a990651db75c05ab84699122121405dcdd7e95a9d1198dd9d88f4ae27a48b4cc985c02395681f09c6f5a79830c6fcabc4f6a99fc86c6a77732a9bf5aec1bc8bd8fd04abfa87934ca5a540fa626e3abc1168093ee643f5aede342fc5b50c752923747f12291afeecfaad4b0fa934b25fed0fe607fd856a47cd5a94dcef4923477b1a33b0b9a99ddf3f6ad3c8e5d072f7e95c0f88ff00b4346323fac8ce2ff7fe66bb91e95e1ee05fba219654ab8d407165ae0724c2450baf75f52b24ff00d70535d978b8b34096975ac82c4af85af717e8ff00dc11bd71fd15b4f2f8aaa8fbe7e2450a1ffaeb1d76812359e72a52c7f87c103fe99a9f6627bb590f8fa7956dbdb6ab868a3df7538fe55c15d1a34079aec69a10e2c4d718d0492c4c57ec824d21c47d2a2d690e841a8f56258d4835a862c2a63775fad760e078bb2da1110c98408098a046df11ccc0921aedd2f103afd4095f55f474d5477fa789125393620bdeb536f35854fb826a6ea3d699b1a0f73ca96045bd701d4fe8dc5225cb69815fcc0bfdff00cf261f5351ec7b93c97eed3ff797cadf9d8d70519b026191945b2da69141e97f328feb5d963a057894c7a669330b631e84c8430bdfe5d5c84fbdab59a3306910485b4b21b844676d2963ea14bf0f3f90535dadd0cc9ab7574753738abe41cfa584a01fea6a71727b9971ad6c034ba87b2f95f715a5d4b695f20a594f515a2e331cae11d70bfcad7b8bd6a50b46c46e545edeb4fa031a4c7d688c5aa2d5bc76de8f106239d704d1bf17e35a181726ce401ac1890bd5bcb6e548cafc108887e9291a5885beac281eb6ff006a007d9ad5da3934afaf9b08a1539625163d32107e90a4047e6b47e522c45feb53751e952362e76ad585b6dd69fa527cc29c854b1351cc50c4e06e8c187d6a291668a2706e1d411f43f7f6438a31ef4ebdf01c5d39ec6f71b1ae16a8ceb740dbdb32a1801eb94a420fad76575f2bc1263348635814b246ce62528c00cbc13a7896d7fb4c7f9d70578bf47d4346e9169a59f03e13ac1031b0dbc480e9626fa65293e86bb73c00e9355ad88c3e10b64e9e188b107ed3278716def244a0ff0015715d3182793d0f994fa83527cd6f4a65cab55a68f551156fc8fa1ad5433c0e548b1148ec6fbd709d599f4b1066bb01607a915afd3e366bec4ef5ab884659a9e4e5b5249cf6afeca3811d57116d4b4024c16e9195cbcbd5c8092b281fc58803f88576b788c6dc37c49a54d4476c62926293a83e8934e7549f92ce87dab89eaa5925193bd8a7915998a807d3c4320fe4d47a796df95ab556c45c56a6a46c96a64f273a80de4b5158e490ddcd27ea98aab86435d99d534904b031de23e5ff0029fbfb393602f5135addc9d7be173735c398f8f09e654ef7c5edb75327945703d5a308dd9d4e3105f198ab625e5ffcdd4028bf4453b7e75d9de24f26a837eb3c6916594b5e51332b3e0092cc350c9b7ccef0c75dafe0916b749a59225528d1b490aae2b1845d9a55f0c46817d648c041d6635da4e02d32b629b82190d88dcee2c36d981bfbff008b9d6a6178d9afb106d6ee65cab570c73200cb7ad4695612486ad2ea5f4e10070313715c578c4ba9c114850bbb5bab7ad4f3bc9cfbb8370c7e2bac11860a805e5636b2a5ec58dc8007b9205766f86c3c2786aabaa22425720e1555188f297cf1552dcc33f86c7a4a6bb63c5e47d54e0b3f8ca007639acd8fbb1b4c01ff00d4f113d1aa66048208dc9deea2fef75d8d1d988ad4f227d6a716269971a98ec6b87c3fa56a825ba5ef5369d6098dcd87ad24d16fe7ae01a844e2da6c4ecf70c3f2bfdfdd4b0694fb015f658fa547b0a4ebdf09b3568651787d54dc75fe42b83eb1b4ecb28948922c2d26603a08c67fde9d937e4105cfadebb3daf3a78e28555318b1658eca1098808925292f9428690da6d45c0e41472ae17add3716e1faa47973f2c7299252e4bdf68e694ca19ce5cd1e65323728a315da9ecd3c73ce4c2d986943aba957cd7cce2404b7987cf2dc9083fbc666b2d7683b269c40120149c5c2befe76b85b303bdee7626e6f607adb5ba1d468e6292c65585be84117041ea0837eed48bc46b50a5ae00a9459cd3c9cb6eed070fd4f10982221bfd09e97e95d87ec90e1e226c006c810402cd985c815319b936dec872c7ccb90dab8b7178b8668d30951304ca22aeaaa8926c595a31b2bff001c60c2dc9d01ae27ab1a8948d9421b84b62a973d025c2dfd63f29f4acb6269e4195aa67d8ed5349cc5b9548d8b548e25bd68350749ab8e4c6e0021be86b8641c3388c59b2e6c0ee8790fcab8c43a111af86881f2dc2fa5767f8591ac7d418caaa8212fd49fbfa1b26636f98f70f9d693af72b654ad8d699f1900dac79826ca7eb5c3f51e1c9131ccd94900001adf31c14df1f4cab84eb268cc2164546cf3460015cd14af8cb99f33a1666f15acab6d88aecdf684e98e9dd5cc62cf2c6be2346114d91a459398520847d473203043446978ee8d5e30b9050a45840abe1278a177b88c22f9b01e4813cf212e6b8df008d632d8205c40679632881000d65888cac1581c3e6b1553bbd715e0ba4d42c916a213320c835f2665dcdcab01f35d58dfa90dd1ab89f60d83b9d2eb63e6b78a438db708c437220120dcdbca41ae25c178a70e0e27d0c9159996e54dae87122e2e3635a8d998d4e2ec69343abd6c8891c0ece480aa0124926c00ae13d82e23ad788ca0c4ad8e3d5886008c475bdc01ea4afad767bb31a2e19123631801727958b15d8092e59770b6b35c6f8d9c6ea6b59ac8386e9e50540003a32b2def81f11d59233bd8d99d56c45fc58fad71fe392eb6793f5aca0499962cb966cbf33328c723ff0098b60e3e617a662c7901eb618d9bafd29d801b9e7523800f5a91c06b56a24049a916f4464f6a8971caa29a582457490ab0eb5c2648359a0d349e12e4459f61f3036fbfb39c6273ed486c9de876ee4eb5d4544d9655a5983036b1b9b952763b827335a4d585f9e3cb605aec16eaabcdf7d873d8589bf5ad071029232e4c4b32c843a02ef2fc8ae508219daf68c62d8ab935c13b56da192163abb031d99a43985589bc662f96523a2379dc6204b35c5acb4359a3e22858acfa69a3b872416d4651b96291e66ed32bbd8b736d5393c9011aee15246ec09962f0d882f13c6238950d8b2588bac7e0165e5e481795c5b5fc14443f5f1bc29ca586588c6238c0c248c3203ba2671836ff00742c2fb0d7707d5c516a3ccd1caf0cb902405695e3747c5c12ac44ba53b5f73b0ae29d9ad36bb5f303a185da5d4c889789036534f000ac48d9943f5a3d9be1681661c334d8122652101cbe7d462b95f601553daf51f003a2251d44623c848114231118915d942dbcc309980fe22b51f0cf06521e2569198abc6ad8a9624c65633d03306453ef1356b78bc1a25cfc76620875963b2b9b933078d790be465407af8919ae31c6a5d5b2a2955501422a1608154929813c80bde23f328254d17cfaed63f43737fc87b52b63533dd7954929526a69058daa46c5aa493cd6b72a249917ca4d40c55775a7b6d735d96d49cb550f43e75fa9363f7f755f228f561ddd05741f0ab635a79990eedf4f63eb5a69d51e220dac720c6f75ff0011b7f402b43ab20a20471bb298941cace0823607cef7c6f8ec2d5c3b8a3c124046abc320659ab61674018300af10fd50f320eb25fd6b85f1efd0bf47314c9a76016d227825a00a975652d931f052ee3ed17207cca2b86f6e34a238c4ba18e48d31b41fa4425b0458dfc11e163bf87145a75b0deee577d841ade0d3f810c9ab6532ba453ca322ad197582593cb752187e92de841b72a489352346c70bea5e17931e59ccda50f928d89cb56e2ebbf4150c21bf4095939ae858dcdff57ff819fcdea9e6f9291a1d243a491ec4411c459cd89b41169e42074175d33806b51c5345c35153c64975300022c9b3569a03874bd8349a303e921ae29da9d2a23470c8cd0042aa198890c5885b1b7530e06ffc71d711e21a9d44accee6e5dcb3211e562d9b60dbd865e75fad3bb36560bb9dec2c0df73b7a1e62998ee49b9ebee7d69e40a766a9652c4ef5335dad6e54efb72a91f104da9572ae17270a874f1a8d38bd864c4dc923ad49170d6b93a6150e8b4dac908588120570de191f0e47d866c773e8074fbfb39f320a02c295711412e39fc0ad97744d8e55a69d919546207bf2247226a098623cdb58d8900100ec4f5dcf2a835d26200beea80264554db70a2ce399f31ff1543c472525a567520970ccf674cbed79c6d24837b545c5278d8df50f23a937bc8599dd5bc422d9b821e520916b3dae2c6975cc8af1a498bb2bc6a402ac7c9fa3dc05c18df36362093d41a93b49a83a85956561fae5641b16b78e6502e0598008398fc856ab8e6a22d105598d9215c6db018c10afbefe4ea6ded5aee2d24d34b793c859aec40618b492c46d7385ad29e448f7a9b8a6aa7dccd2667cf9036f3bd9efb0fe34bd4da83b95cadb15196439165e63a5c8fa5336e2c2db6dd4900ec4d12a3da9e5bdedd699b2a94ddcd194afbd3363537c9511b83503945daa1d64b98cacc3d0d70c9f2d768ec08bbd8dfd0fdfe94de6aea3b90edf1a49cf6a866c548f0d48befcee697537b0f14124fcc482726e64dc541aaf3a156dee0a0162d7bf940b2f3149aa75c7cf7502c2e58ae0bbdbcc45d4b6f6a5d5e212df280b8dc82a7c35cbfc20dc9eb5a9d62ac5f31b7a93704ac76ebf5e445710d59911ff003b5ed6f9156e2f52ea99de462c72b9209be40f94dc16dff99352c84dacdd48ebfc5975a241fb36ff00e2a57b11b5492936a7948b5abc4f6ee73bf732e54ab8f75bcd70f5c1f879d1e9a3693790efbfd91e9f7f939b9f535d450f987c4ad8f7ab634b332dec48b8b1b751e94ba8206e6feb72db802c2fbd47a852545c1538efc8100df734dabd9ce772c0926c2e4b1bf5ad5eb4d8ddf98620dc8b8bdb9f335abd5012300e39b0f4e62df4a6d52f46e446dd3718d0d496b7236b7f4a799ad524a4da99b1a66cbb9fa53802d4cb8f7917148719613e8ea7f91bd741f7f656c109a4f9452ad8fd6956ff001ab63f02cb8dfcb464f7b519c8ad4ea09bd6a750f7b578e7f8abc4342de95e11346107ec53e96f6da8e9dc731522bded8d32e340135e1fbd787efdfa097c6d0e91ba98c5fefece7ca07ad28b38ee4ebfb156c695b2ef9e4212a794906ed5a976b9deae4f5a8c5ec7b95b2a4eb44034e8a2db53c68f7da9f4a4dbcb4da775b5085bd2990ada9c6d4f284bd70d88c3c3b44a56c446bfd45fefeccd93f2e5517ce2adb0fd9a75a55c6a596c0796a698dced5a872053be67952b6550b620d2b63dfbc840037a5d016032703e9bd1e1911b7eb1a9b8638b59c53681b6f25370d0e2c63ad5f0b788838edd69740cc46d507671e7d440d28c624373eac7d3effa75a55bfecd571ee95acac2d4f2e46a77b83b73a7f98d275a4eb49273da9243bd40f9e3b569e1f063171e63f37c7603eff31b29a55c857414ab8fecd971a66c6b552a0bef458166ad4ba141bd32e4693af732e3510b935c2b4db667903b7e034c7c8687eac0abec2956dfb4201ad5685a40c51b7f43532cda772194827a56a250ca293ad275efd3c6669a351cc9a8a358a34503603f01a73b8ee4ebfb655c6b53a5875698bafd0f515ade052f9b12187b54b0c90b90c293ad071ddc0e0b97948f65fc076379bb9571f8f3f6f89572f838870c8358a6c815fa1ad770ed5e80f9e238f47fb343516eb43516fb55c321f0741a51d4adcfd4fe03136149d6ba0f82f991deec09a417f85572f899430b1008ea0ee2b8a764a29d8be9df063ce326ca4fb7a541c3f51fa7c503c2cac5c0208fea2940544006c05bf01a7364a550bc852adfbdfa52ae3dccd8d2ae5f02ae55e1fbd2b65fb068217646318c97e56ea2f4ab8fe034a3223dbb9571ef41b773b841401977a27003bd572f84903f60cb8fe02c8b9352adfb99b1af9fb9a60a39527eb98135e58d295580b9ebdff257889eb4ac1b91f80107e365cbf0193e51dd7cc90280b0a9655502f4b0c929dcd00a80500d6b9ef32ac5975a7999efdd72391a121247989a56c853f4a4ebf1b3634458fe0216c59a80b0a95eea6956c39f3a670a37350abc8496e5e94eca839525c9c987d07733051b9a79b21b77ab65dc6feb5a4feea99b2a56c7bd5b2f85fa532e3f804e76a516714cd8d39b82295b2a44329df7bd126dca820f293bf749204bf5b533163dcad95275eeb6e29571a80595ff00cd4fd3e155cabe4a56cbb8ad8a8bf3a65c7f009ced48d958f71389fad042ecb40015e1fbf74b2dae01f895b1a55c69572a8f714fd3e365c695b2ee7e9f80537cd51ec699fca76a6f9daa14c506fce95b1ee76c6e29972af0fdebc3f7af0cd08afca82fa0a2829571a55ca95711dccb8fc0ad8f7275ee65ca93ad3802df8004d81a77777e7f5fad47ca99b1b5787b817efe8689b9ef55ca9972ee55cabc3f7fd8aae54cb8d275ee56cabe4fc019cda36a0b729fe236a1c80a232958d42845cf7b9dfe0f0fdff64cb8f72ae54ab977bf4a4eb4ad9521de9971fbff0035b1e74880b134c71526953ca82f45822501614cd8fc09d7bd571fd832e54cb8d2b65f032e34cb95787ef4cb8d23e6397dff009ba8f5a26cb4ce721d6f4a4dee4511932f733647bfc3f7ef55c7f62cd8fec19b1ee7bc6ead7d89b1a66cbeff0075269daf90a4552ec48a56b1fad2ada89b0ee55cbbfc3f7fda2ae3f1789ed4ab8d2ae34cb90a876cc7a1aea7efe335a9fa51400b0a7012322d517cc3b95435ee29e2dfe6a55c7b9571fdd3c3f7a65c7ba556b391ced606a3624af5b2fe771f7f1fa7746a1989e9d2a46c5ced51c42ca01ee4ebdde1fbfeeecd952ae54cd8d08419588623d872a55c7efd937269fa50182d463c461d2906ddeab97ef0fd3bdfa7dfb66c6892073a11ee2e2a43bd442c0fef8ab8f73f4ee56c6996c7ebf7e89b0a00d8dc5a80dc9a66b5aa33751dc9d7f7ef0fdfefcbf4af0c120934fd281b114cb6b5462ca3b93afef8fd3b93ad32e3f7e1fecf7336349d68b5d4ed4ab61f5fdf9972ee56b1fad32e5f7dd9ad6a8f71dcfd29571ee02d405cff00c05971fbece36a4ebf1275fdd95b2fd83f4a65ca95b2a7e9f7d9972a4b5b97c49d7f7466ca95b1ee56cbf60cb95275ee65c7efab2e54ad7ee670b6a4e57ebd4fef2ab97ed1fa7df602d4ceab48a09b9fdebc3f7fd93f4a56cbefb335aac41ac3f7955cbf6845c5275ee65c7efd275fdabf4a4ebfbb3f4ff8f7ffc400441100020103020305040803050802030000010203000411122105314106101322612032517107142342526070813091a1156272a2b22433404382a3b1c1539250a0c2ffda0008010301013f00ff00f53a00934b6d211938515e0227ad148c03e406bc9f8456bc7218af13d2b01d9891450518dc74ac11fa2705ac93fa0f89a458e1185dfe27ad4849c64d336af600248da8b80c073ac91d6943be934c34b11450532953fa2105a600661f214cda69df6e54fd3bf6343bc04f28141b4272acea6c96c014cba6b2727071442b75a2a474fd0c00b1000c9ab5b458c066d8f434ee31527bbf3a7e944ea07d3b88c8a66c533628b628b9ee66d559c72e9cbd29500ce77a110c1a65071d3b997276fd0bb6b648143b0f3f4a2df1342552f81465cc8469afbcc3e14c7209f8572db98eb5d0d30c8a63a7bd5b15afd2873069254deb57218a6840c60669869623b9936d87e84da40130e46ff769dce69e55276e94642a0e1f39a47099c27b071f0a2724d11a80ad1ebec038342522a27276d348d9c00334b12ae68c4c4d25bc8f8ab981e07194233fa0f6f178afbf21ce998ae3069e4d27bb3458135ef2d67714a751a2724d677344e072a273ed275a89c31348aee3dda82dccb20037356b6490e09dc8e95c438445c4202baf4bafb87d6ae6da6b499d244c329c11fa0bd45408228aa470a49344924efddd79d29ce68ee2b5fa5038cd6b35b7c68ca4d6bf4ad7e941c7b31c81455b78b31c86daaca08e30a00a853a91ddc738347c4ad490009a31f66dd4fa1a656466054820e083f1fd04b68f392457dc229d8c8e77e428b6281c67b8b69076a66c771741f7abc73f8a8dc03c8e285cfad7d64fc684ca3ad78cb5e20ee0e6810680c9ab100e90aa6ac63dc645275ee8c83aabb61c2443225cc69b39d320e81ba7e824681235a98f948a638c77f89e9dc65514d7206727352de80766f97ad35f04070debfd35535f229c78801dff0090207fee96fa32c06bfbc3f9e48a5bd5d8e7a03fd334b767270692efd6a3b8f5a49c7e2a126ae9dd1125aac3088001509c69a030295b5547b1abdb24e23617511fbe9b7cfa53a346eea46ea483f31fa056e099568a6073a987997d6a5183dccd8e94cd8c549285c60d4b7434ecdf2ab9e2d045a06bc6a6500fc096d0a3f66d8d711eda5bc2a4acbe62a0c51f52ce19e353f368da3c7e2abcfa57e076b2c4dfda29240b2c61e4ce5440d240c1fd4182f55f3e86ae7e9ab86da70fbe2eefae2b699a704ee1a1b09a4618f47b0907cc54df4c7c2ad38c5d46f21022baba0e7963eab777eadfd2d0d70efa4ae193bd941e3f9a63145bf4699ad6d47f9a63fc8d709edbf0ce256d1cf1dd031b469291f782c918bac7ff00574fe756dc435b100ea619048eacada0ff0037c8fdaa2b8523224041f77d6a1b8fef524e07dea47cf235039d556132b1ab552d8e9dc9d6a3d8f776a2d7ea9c6ef4636721c7fd633fa05691623f9d4cdd29d8124d139ae8699b1534c16aeef820e64e7dd03de247e1f515da2edad9d8a3e5d64d6515624703c5927cf851a92463c7e5136401279739aed6fd36433eb5b779af63923d463881492f209918e21ce087ba811fc35d8add4250ee6ae7b55db0ed04f104e2e935cbb0fab5ec671034eed0b25c2818c21b8faadf2fc239e4f81ab3fa3ee3bda985a28a29aded2ee136e91bec60b6bc89eda1cfac10f14543f036be94ff0044dc7b8e417b2b42d1bf10866778cec0497cb7123aff003e30cbfb5719fa1ae357d1f1b756c34f071264ff001dd45c55d7fcd722b8c7d14769d2fb8ebda863219af05afa4867e21e063e524f6e7f6a92c3b59c0ef5a6b4b37709319387da9e52b34c25b688fa369b088fa16aecff00d265cf088e249af243690c6ba6f5c1677b68a2005cfc4916e86e31d64b88c57677b6f69c4f01d843364acb0860e56446113a211b1d0ff60a7ab86c72ab7bb5940f38f520e46db1fdb3b03d4d47311cdaa39b23deab572ec809e640ae19639552577ab718c77275a4eb5149c8e2bb7b02add584a3fe646c3ffa9cff00eff4046e4528d200cec06c2a56c0269fa7717c8e552c8141ae237a90c53b3b850172c4f200756feefaf4afa40fa448782c3709ce5cc486232884f8929fb14329f2c6d211fecf337d9bbf918835daaed8f13ed5de4e858c91cab3ab2c81ad11e291845387cef0c4f2612e54f9acae82ca3c86bb2ff475c578f4eef33deb3cb2c8cee63105c995e45779401b453996212b2f28ef62c8f2cb5d97fa2ae196c87fd861218105611a612ae1c3041d174cee883a46e83eed70fec6db26a2e14b386d65540cb3ea6247c3cd2337ef50704b48ce440bbb67fcc1bffe452708b50a07d5c600c7ed823ff74dc22d5f9c201f88d8e721bff2a2af3b1fc36ed0a98428d385239aed8c8f50318f8102bb4df43f67765e4853c0954864645d4913230914aaf508eaae1791f0a35e55c43b25da0ec55da7810ce8a9a5208e161e280a86148e291b0032a168a373c899a76e95d83fa484be36d04ae1999a2111890846f1574c22047df0e062dd0efe1032be0115677493c713091194825594828547553d57fbdd6ac607b83819dab84d847068ea7a1356ac8aa7a52305c0a56d549d68bc639c805453c6c701d7f9d76da259b85c0fd5251fe61fa036aa0cc0e390cd37b952eeb8a7e95afd2a4e58f8d5e5c6819d7d7e473e86be917b670702e1f7f334c116dd943399560f09df017548f916ee7eeb4a3c17d813bd769b8b712ed27189e02af98e636cd098154abdd28d501b59ce946980fb5b3918dbdc81ae070f5f479f475f58304cf106e4dbb3cbba030060d3805ca2e625790072998271b035d9bec95b5ac51a8842a280020d40614051ef1c9c00064f9b0003bad5a58471ad25b6deed45c2aea55056d5d87c40c8a7b49a03878194fa822bc35f85685a302d71cecaf0de336d3c725a4655d0ab232ea460cba4865eaa71823a8db9576ffe8fafbb3f7b2cf02338772195bc490b19d86a57f0bcefe29189163fb4b8388c698c57d1776d1f893dadbcceef24a5b412c923c8d6e70d8298491931e731e2de1f703135c0d15edd08c696dd0839057e20f5f9d45c96a19fa6aa8a56620d24a4e69de6906179fc2bea73375a7478186f5c6dc9e0374bf0d1fea1fa036284239f89c7f2a7e952b69d34e28d5cc8464e40aed1712faa418c8d52ecaa7402f9fba3c5f23ff84906be947b55737dc4efa38ae0a3f0f046bd4f0bd9248305662ead3d9a3f55b98e6b371cd857d1e76362bb9610d6e2344b70b1c0516348ad643928b1932a2dbbf3d2ad2d9b1dd0c66bb2dc0228238f2871b675649d869049724938db2d924732c2ad2d7485da96145c5702e1319fb6917ca0f9474f9d2c8a7dd0054d1a5c2e9750cbd41ae27c38d9ba10498db931a014f5ad1ebddc7380d9f1cb39a1963043a329c8382ac3055b0412a7a8cee3635c73b3b71d8ded1dc3e3ecf0925c33888ae98f64797c6d11e88f9234c52dd3fe5c4e6bb0dc70f15e1b66c5d8bbc61f07c42d2a9e4e04aa8f203d1d9510f414ada85249cf6ab76d5a6a14dc6fcea14caf3a10948f257229e2f118edcabb527eadc2147592403f6c67f406dd0a429ebbd336aa94e037af74c3726af25d2b92d81d4e70057d2871d1c3b835e4af208a19508795ca43115f83bca935a367e13691eb5710497dc4f85bb92885b3c39ce6285359e7685e6d119f5e1f7601ff00e3afa3becf1b6863536e51d1b53ae8d0cae79c840484863f8cc71b9eac6b875a2c31c6026c2a08b480718ae1f686e2e5171919c9f90a0a02c680600151a6186f52808bb9a9522b8834950455d5b1b79d81fd8fc477100d220635f493d916e31c3639e3818cb038652824d6af8f7d7c3590ab7c5d007f83ad7d13716304d7c9a94db894f8f2269680c84e09778dde12feb3dc4b2fa0ab76d70ab6ac83c8e49047f203f954632c2adc67156bd296e9212be6000209357dda48e22001924e302acaf3895e4e9aad5638bf1637aedc1221e1ab9d8b393fb63f40110bba8f89afbac7e15237879a7f78d3360548d8ae27298a2958368f5f32f2f550d5f4917a67966faab48f740e4cf6675dc03f3e1d3c17047ce37f95764ac16d38a387d305d5d3fda302b697137c7c58d97864b37af890ca7e75d8ee16b696b0af81a047eec610c6abb7dd4d312aff00d28b56d12ed400006d5d9d8519a5277e94fb48e7982400699828c9e5d4d3dda4d32aa3642ee5ba6474ae82b8a5b19e2c8f79771de9112c2ae787c5c46ceea0744649632a432875cf4d98383fb8356bae1edba18bfda6ea290a99037d72e9029c695f087139a31e8a601e82b864acf1425b5090a8cf8802b9f9eb666a43bd5b8c62adb6153462552196a5e11992dd8b1011f555a9d5f2e86bb5960d75c303a8cbc04b7fd0763fa0168b9909f80cd37bed4fd28f949f5a7e953a612b8b2bbc2f80e371eeabe7fed906be93ed6f2f5dbc5e1f713421b0a934377708c7fbc979c3ef117e608aec32456f7a632e2052c3c48d592dd00e81a38e7b246f9f855d988a31690e928474d26323feded56eba74d2ae6bb3cdf6938c7219a28718f524fccd715bacbb205d948d5ea7e150df88cae9856acae249d64d40641e62a641a6afed5a3932179d18dc74ab74df715671015dba9237edbdec4cc6e024ee163765b9030db612796f801f2897e55d94d7fd956c3c0641a4646968d7f9086dc7f4eeb5e9507315e0060302bc03a71a6a38c475b7c2bb4bc2870cbf3a57114b968fd3e23f6fcff649a518e79d06f78d4feed31c636a7e9531d42b8cc48e8755a2bfa1588ffad8576ea2e08d7049b3e1e24605518c9c3a36900e708cdc83b0e66bb1b205bcb6f0159a2dbc1304f3380a7eeffb3bc99ae07e27d5a3d5af23f11909ff00b9bd474bcc570e9cdbde42d9c0ce0fc8d13a81ae32acb3641d98641a8dcc66b84dcc61f4b3fbdc8fad336aa9e1132e08a96d1a1761a6a08d500c55b4781cebb757b14bdb1bcf190aaf8ef8f1ae1a2182df0b8922503e42bb20d68dc2ed8c6202ba47b8d0b0ff00b6ee3faf75b6e6ad4e6a139d3dccba4578af5da9b3175c2247c79a02181f42707f3fe9f0e2c673802a73850299b553f4ee997095c51490df6a15ba65a35cfa0c86aed743c49e298a4f751a84f155966bd58c321f74957b34c7a16df9f2ae14d1cdc51a48905d23112788a12f0609fbcea9c4b1f3675aecdcb1c96f1952a4607bba0afeda0e3fa0a8f7149ef0eee1577f5a8141392bb30abeb31731633579c1e4850bab6bc7318df1562d10b88c31c02c37e8307345c3d2ae07cea4b549b3b52d9608ae2d7f1707e137f70eea045112093805b905fdcd23ba769a3f107d4de47e6ea2c4b67f0e47072df34d55c19668ed2d83b4ade51e66331047ce5697fd549ef0a817247a55a8cd42a452aea1522e95a55cb1f5a31acc92a30f2ba956f9118ab881eda79a36186462ac3d41fcfb0aeb9507af74adab4f7b8dea51902af811149e623d012bfe81935da3e1d0b4b0334482437042c8eb187224539c19567909dbeea8fe55c56ce592e6d5248de7b88ad438f195ae2755cec447722ee65f9948be75d8ee2a9756764e25121c690da84babd032bcbfc9646356ee0a50383dd6578f653ab0dc7de5f88a82686e224753a81a68d48271cab8c587d5676641e4720fee6b84dd871a18f9d47f96a2cb13935e1fad787eb5f4c3da45e1bc212dd66f0cca407972c9863c901325bab31fc1acb1fc0d5f47bc31c71891228dad652daae22855ed64607acb0dbad8b8cfc5eddc7f78d70e458e36c04d9ba051fe90bfd4547b1ab2ab518c52b64fcaa06d49575fee9a8653a52b6aaed8d8ac77104ea72241a5ff00c4bf9f6d079d8fc29ce19a9e3e5bd3f4ee7e94fee9ab94ca483e23e247fa77ae276c482aa8c097ce85d40b613f0c4416fdc819ae39c211acde328821531441711f848517c4385c1815bd15257aec5f136824b88e4d7a91c47296d45c97dd63632348fa8f4473afe110ae1978ba5016d87bc3e5b11fb1a560c3239521dbbb85dc4b0cbb35457dad4653954f145728ea7704570fe13159b3312589d867a2fc2a28635c6dcbbb8b7148784da191c6493a634df2ef8c850002493f00093d0576dbb413f1ce34a2291e492712059232ccd2aa9c3aa341a9dc2f2758cccabf7e05afa37e0915bf0eb3601044d96545f0c43ab3cd553ec33f131889ff0012e69390dcec3a924ff5a8b7c7ad5af4ab46a41ac547b0ab86d22338fbc2a42a50e2b4bd7692d84bc0ae988de32acbf3ce3f3ed9a9108f534770beb4c76269c6fdce36ee9d0906af6d9665642a087c8d1a721b51030547bdfbed5c638778e6576770cde4d7972c158ea68d593ce4954198e2c7a93ceaeade7b0bfb7952361b98f422af93933c3188f0a319c32c6422f392435d9fe2eb2c11812295291952ada9349d94a900654f24200d5f70637ab2e22231b8f29e7e80f51492248a0a9c8a57e793561fef5be59a8bdc148358a89756aeebfbfb6e1d03492b80a3d40eb8eb81d71bf5afa49fa455bb17088e9e104f392c8a850b786c1fc605154b7909907861c6893c36c35764b804fc6f8a4a6685a4d72e8b81223334b24236491673a9a4886e239cfd6506f1cae2b855b0b7853ce589c664c962f81f799c02c7d1c647c680c0a87ee55a8ce2a1186150b74a56d357235201ea0d71dbfe356f2948c08e3c6cf80598f53935c19f8c12fe3b3952095d5b9d55daae2e82cfeaaafa9dc8f171c9541ce0fe7d2022003920a27029b788d48da9bbc8c1a9572b53c4486c6371b67e3d338c66ae6da26493526762083b1c310741c720700141cfa8ae2fc1d275995a30fb22392a1f5953a954a723d5962e5920b0a89ae785dd323b3e09d41b5195bceda33fde673e50c7795b2a8028ae15c61de554c331c80554876c938f330db98233cb2091b0ab5be71868c98f382a0ec0e40e87e607efe951719c7fbd81b073e7419e991915c2afacae265f0ee91cedb75df71b544300d236ac1a96e2ded227925b848e3504b3b10aaa00ce4935c73e90783f0a4b811c82774320623223531121b5b11b69c316c64808e71b576c7b79c478b4c63d52125cac702840fa8bb4380b292acfa94a157f2993544767535c2ac2f78f5e40e929f7a278e48a5230b22944922797254b0052292418619b79c64035d95ecdc3c2ad21510a8fb211a2856545456ff76aae7508c7489b3e19f74e294607cff9d46a59855bc59209a8530a37a83ca4540da40a5949cd3c9cb6a9424c8559322b8dcf7f69c4aea3fae4a13502a0310349191f9f6d9434f18f5a947993e79fe54cda69f92d38dfbdfa774abd3352c649186c6fb63a7cbd6a7b7574ce3dd054107000e64023700637dc6718abfe022e22751137bde5080a9cb8d1e4c6155994695209289d7268d9dc59168c491cb09c6940744215c0552fa060465472fbb02e3ef6f6dc4c16e70b17c615d64f11cbee03100e0bf8a01fef4a7e1bdaf1a1282627595881a2589c3ea66dd1b4b11ef1d2ff0027f86f567c6aca59a32d1ac88b2a61b49660a248c8d6a4061f6738c9c6c37350f1f8eced2322ee78c456e923a895f4058e199b5800ee8c63e9bd4fda2bc67308e2372b286f0593c69329abc38353953cf2ed27ae9abeed4417a2078d04ef2143097632c6a66f09e35766d5856f120527f0ea3f1abfe3a6ea3474bb78d348749a44d52a468ab3091d0919644d32b2f5093a7535c33b2f77c56468ded046872925bceed2460a816cd14ae37c2e916f211b9510cc3715d9eecddbf0e899db53392ecf2caaa64d6e02bb4983ef36009b1b3b0d637a0ba3a1cf23939231ff00bf5af7ead97955bc44e32b51478c6fcaa21aa95748ad80249c014d323e3140124002bb6bc38c7159dc1c024e83fcb23f3ed88ccc7fc268ecc45677fd81a7e67d69fa7b04609a650c2a58c3676ce798a962d44907975e991bff0021cea7b712789988b743919d8eda7937bdc8fa55e580b8465746954e72843fda6a3e60718f7ce17e1a7d0d5f766a7632f8576d1bb16065589d46a62c9aceacfdf91e539ea17357965c5a359a58e1491d159e08d9406570a6545cecc0a9102e798c679d4fe342f74aaaff0060932c5af224d10a5cb26976df75b543a5b23a9cd71433aff69c71b75be58caf94f8c05fc395e7a5fcbbc9820fc2af2deeaf6e6fa251bdccd388e255210fd666b9894b6324e1eee3247204022a2e09c4f8b3c845bbc16b7258ca16348f44170da8905b1e658af8ff00d710ae17d89b979526b9454ba2eaeed180504e1fc4380707489fc518eb1ca41ae1bc2acece3091c69a02a28047355508be2291b9d3f66c7d050042a825b61b1272411c8fcfe3406af40390a8a3723ddab5802e322a28fc837a55d349d6ba0ab8b7e2335c337d70607ba846c055ac37017765fd855cde47c3adbc49a5d099c6704924d768b8e7f6ccf0e8465862f701e64fc7f3edaaf9246a3e5d46bef31f8d1d8e3d965d5dc63f5a68f27e14f10f2edf1f5a30ee00400ec0631b1c63fca29ad94a8f22818f2f97180469c8d8725a6811c0661950431c9040dfc4df39000c0f4f855bf0481eddd194634329ce71bc4233b7319d64ec735fd8d6b35d3318bdf7392799569656c6db63ce790cfad41c32148a2c2f991570012a4b048dc648058b6631b9dfe22a2e1b6a8702042ab85c30ce5572806e7f03e2921e59009c6e7183becdc8f5c03f3a51ab393450d476fa4fbb51c183eed4108f2ed4aba45787eb517be3b994034ac558571a8e2b8e03c48b0dc44483ea083f9fa050b6bf3a90e943424d80c53363da65d5dc5735e18f8534428c5e84518b7e5f1feb5676fa8018e9ff00920ffea92020ed9e9ff92685ae140e80631d08c11822920e7d397fe31491119de96171d2961e7e5a8a1dfdda8e24df6a8b6c7a52aeaa65d3df80798a65d55c738d4d7aef12498855b040fbe4753f9fb1854ff08a9bdca2da41a7e9ed919c51047718f3d68c67e1505be5bddab4b6f4a485719d34222c40d35e03281815e09fc3411074a8e3c0e75e1fad2aeaa4eb4ada7bbc4f4a56d3dda7314bbf3523f9ed44609fcfb00ccd1fcc513976a77db951183fc2283bedad9b3cea085069af07550842f5a4879e69974f723aefbd47718cf9a9664239d0751f7a91b4e77af149ad5a7ad472026a3dc547b9ae2b1783c4afd7a099bf3eda0f393f0a90e98e99b5517c1e5fc489013eed5a4499f74d471e939140014a807ad32eaa7e9dd2b69d3426715148cd9de91d8e77a49c6fbd7882b20f2348ea33bd45303b1350b07ae2f2acfc4efd87232b63f638fcfb6eb8887a9a9f752688d2d4e797f12d23662b5047b018c772ae9a0869fa532e9a93dec7c2a404632299950649c0a6e2414f963269789ca3fe5ad0e283aa914bc4a1fc4687144e920a86fd350c480d477a060e6afbb4315adbcab1481a571a41c642fafe7dea280c21152be346dcc53becff00c48c658558c2bf0a44541b7b2e83146253570a0676ab89bc67db90e5edeb7fc67f3f2f314e74362a539734c718ee65c7f0ade22e763564874ad3215c77275a55d54cba699b5538dab8cdd95211762479bf41a019907a56321be5dde27a52ae73bd01934c714e318ef2318f66396488e55b1567c6d142acb1e3fbe2a178ee135248197a114ada7b9574d32eaa55d357722c3048e4eca2a595a695d8f363fa0d6bc9a8eea4776299b38a4eb5c877c7b9a71bfb769793d949a91f19f787422adf8ddb5d690e7c373f1e47f7a55d3dde19af0cd7692768c430e773867fd074f2418a73b7731c52ae73bf71d940ee0326b2403ebfc1f13d2b86f199ecfc872f17e1ea3e55637f697fa4a4c33f80fbd4abaabc335c627fac712bb6e81f48f92edfa0d1aeb7033528f220a93df6a66c63bd72884e28b163b9ee850a83eb53383b5118c7f09666474604a9539041deb8576a9e328972a5c7ff0020e63e74d7f6cb6525c2caaeaab9041fe869dcbbb12772727f41ad535bb6dd289c3d11827be241934f20d80e42b1b1a8103b54ce100a209f6bc4f4a2e28b03f768027bd4e33b54771304750e429c6a1d0d32e288c1fd05b3f2a31f89a9775c53bf98eddc887352103201a55cd0432300299d225203564c8d927614d838c9f63c3f5ee201af0fd7b95b55635935e1faf72ae9a071f2ea28823f416df68d0d5c3e072a2718da957047ad11a01a0a4f4a8a17269d9204650b40bcbb5161c81c63ad1393dfa1fe14548e94aba695b550527a53a60ee2b47ad32eaef55d55e27a563c83f4162f7054e72fdc88238fcd44990d5bc1a86f4648e01b0cd1d5339a2e157481b75f5a249ee4859f15e184eff093076a94608a8bdf14e758a65ce37a55ce6b0474a55d54cdaabc3f5acec7f4117de15ef2d13a9cd44ba9bddcd4bb6dd3a545139c6dcea595224200a08f21e7b0e6dd053b0030bfb9ee44691b005476da4ee7d865d3dd326657dfbfc3f5ee201a00afad2b6aeeea28c790703f40d065854a311f74434250880232724f5a964108207c282ea6c96a9662415030bf0ee485d8522041ecf89e95e27a54def7b0cba7b997554b1e9dc52b927b93ca87d299093fa056c99c9cd4fb29147de5a03213d0e69dc40a49a672e77ad4531dd147d48a56d5dde27a5789e95e27a5336aaf13d299b553fbc695b577aaeaa56d54cda6997553a1434ada6b3b8ee652a7f406da3fb214e9b73a5c3c8322879116ae65d6e467977c7ca95b4d2b69a66d35e27a5789e95e27a5336aee66d344e4d2b69ef56d5decda688120351ee714aba7b9c6dfa008a5dd47c4d222c6aa31b6361570d8e9caadf19638c8e94ce34b31a6e7dc064d7414ababd966d345cd789e95e27a772b6aee56d34aba7bbdcaf13d299b556c0820532e9af7fb88c1fcff006885e61e94d84cef52909be6a3409028ea79d5cc806900d721f3ee51851dcaba7d866d54cda7d94eb49d7b93ad3369a77db953befca95b577336aee2f91ca8af97f3fdab1566f2e722a47f2a8c505d64797358cb3fcb14434b20152b866db90e42906fdecdabd89241b516ce36f655b4d2b6aef270299c92295b4d275ee4ebddd4532e9a61827f3f5a8c64fad12e5b6eb4a8b129c0a90865c567024f5ee0303d92c171934f26bc6dfc10f93cab3b9a66d54aba69574d2b69ef65d3dcaa0a914cb9fcfca8ba1403caa146e676a972a00cd38da9fa520dfd932818c0cd1045004fb0cba7d956c74a2c1d4106bdfa66d34ada6bc4f4f619b5777414c391f8fe7c8c65856e48daa2e8690f8923f4d35707094dccd648a0e3b89029d8c98f2f2a29b0de9fa7b0ada6bc4f4a65d3eca75f615b4d2b6af619b550380be845603075ea0ee6882a48fcf711d193d790a439152b154033508c2d4f2925bd8d7e9ec32e9fe0275af0fd7b89c74af73d956d5deada7b86b520f5e9529d407a7e7b8d75691480b67a539579363529c21a9ce481f0f6d9b4ff0005574f7e3734879f7aaeaeef13d3d94ebdce9a0fe7941961512ae79e6a594043504446e4e0fc2a52188c1a73bfb45c7f0d975773f4a2f8276f695b57b2cdaa8ae53e5f9e506f501dcd3323b818a2322a37672f9a94658fb2cda7f849d7b95b57732eaa031ed275f6546435751522e963f9e1000324d2c863076a1efad39f21a8f7cd4e7703d966ce3b95757f059b4d2ae9ee66d358349d7d966d5ecab69a7f78d30c8fcf0806324539a45dea672472a1ef2d487531dbd866d5ec32eaf615b4f72ae9ee65d5ec2ec5bd8f13d3bd5b57b2e36a0ba59688c1fcec80679549cf1f0ee1f2a67391e95af7e54e77ef66d5dde1fad2ae9ee66d3fc4c6e7f809d7d865d5446a3f2a71e51e9f9da04677daa7d827a8ee6db1de5890289c63b93afb2cbaa95b5777b94abaa93afb6adabd97e94adabd856d5dc9d68e3270281c67d4628ec4fe7589f466a662c47b4fd295757b6adaa957552ae9a65d34aba7d956d54adabda65d54ada695b57b09d7ba45d2b51ec29c6ff9d01c5290a724d377431190fa0e66a5d9f039741fc656d5fc01b11ecbf4a66d5ecab69ee0722bdd6a71b7e74048a5cefb5382c41a4899cd4b2aa2685e5ff0efecb369f6d574f748ba5bf3b26a6cd15418c9dfa8a794e36ff88233decda699b57f071b8a9361f9dc9cff00f814ebed3fba7f207fffd9);

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
(1, 'Donaremos cinco dólares al Fondo Mundial por cada compra realizada con Apple Pay en Apple. Hasta el 8/12.1 Comprar', 'https://www.apple.com/es/', '2024-11-01', '2024-12-31');

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
(1, 'luis@gmail.com', 'luiskill');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`Identificador`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `heroes`
--
ALTER TABLE `heroes`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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