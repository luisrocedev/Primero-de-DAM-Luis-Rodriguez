-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 20:19:13
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
-- Base de datos: `cookiesexamen`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
