-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 17-12-2019 a las 15:50:40
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatphp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `contacto` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `usuario`, `contacto`, `fecha`) VALUES
(19, 24, 19, '2016-04-14 08:45:59'),
(18, 16, 19, '2016-04-14 08:45:38'),
(17, 8, 19, '2016-04-14 08:44:38'),
(20, 29, 25, '2019-06-15 14:14:00'),
(21, 28, 26, '2019-06-15 14:16:05'),
(22, 27, 26, '2019-06-15 14:16:31'),
(23, 29, 26, '2019-06-15 14:17:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajeschat`
--

CREATE TABLE `mensajeschat` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` int(11) NOT NULL,
  `contacto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `mensajeschat`
--

INSERT INTO `mensajeschat` (`id`, `mensaje`, `usuario`, `contacto`, `fecha`, `hora`) VALUES
(12, 'Hola Mi Amor', 25, 29, '2019-06-25', '18:09:39'),
(3, 'Hola', 29, 25, '2019-06-15', '14:14:09'),
(4, 'Gracias por la solicitud de amistad', 29, 25, '2019-06-15', '14:14:17'),
(5, '¿Cómo te llamas?', 29, 25, '2019-06-15', '14:14:29'),
(6, 'Soy el administrador del sitio', 25, 29, '2019-06-15', '14:14:52'),
(7, 'Gracias por responder a mi solicitud', 25, 29, '2019-06-15', '14:15:04'),
(8, 'Espero te agrade mi chat', 25, 29, '2019-06-15', '14:15:13'),
(9, 'Hola neechan', 28, 26, '2019-06-15', '14:16:18'),
(10, 'Hola amiga', 27, 26, '2019-06-15', '14:16:38'),
(11, 'Gracias por la solicitud', 29, 26, '2019-06-15', '14:17:26'),
(13, 'Jejeje', 29, 25, '2019-06-25', '18:10:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `usuario`, `solicitud`) VALUES
(7, 25, 21),
(8, 29, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `online` int(2) NOT NULL,
  `col2` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
-- admin pass: admin
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `online`, `col2`) VALUES
(29, 'midori', 'df2d7e63cac30bb42c05e893c35c8aa8', 0, 0),
(28, 'margarita', 'e45bba48e1a1bfa964839e478cbe0034', 0, 0),
(26, 'emma', '00a809937eddc44521da9521269e75c6', 0, 0),
(27, 'daisy', 'df4b892324bbb648f27734b55c206b4b', 0, 0),
(25, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajeschat`
--
ALTER TABLE `mensajeschat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `mensajeschat`
--
ALTER TABLE `mensajeschat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
