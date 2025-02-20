-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2025 a las 01:11:02
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'slipknot', 'banda de metal'),
(2, 'muse', 'banda de rock'),
(3, 'ghostemane', 'musica pesada'),
(4, 'Sxmpra', 'musica phonk'),
(5, 'bruno mars', 'musica pop'),
(6, 'mac demarco', 'musica indie(chill de cojones)'),
(7, 'queen', 'musica rock '),
(8, 'Louis Armstrong', 'musica de jazz'),
(9, 'Ella Fitzgerald', 'musica de jazz'),
(10, 'metalica', 'musica de metal'),
(11, 'ariana grande', 'esta grande y toca pop'),
(12, 'akon', 'musica pop'),
(13, 'eminem', 'musica hip hop'),
(14, '50 cent', 'musica hip hop'),
(15, 'snoop dogg', 'musica hip hop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'duality', 2, '00:04:12', '2018-05-26', 1, 'duality.jpg'),
(2, 'psychosocial', 2, '04:44:00', '2020-09-28', 1, 'psychosocial.jpg'),
(3, 'before i forget', 2, '04:38:00', '2018-05-26', 1, 'beforeiforget.jpg'),
(4, 'custer', 2, '04:14:00', '2016-01-25', 1, 'custer.jpg'),
(5, 'snuff', 2, '04:36:00', '2008-08-05', 1, 'snuff.jpg'),
(6, 'hysteria', 1, '03:47:00', '2003-07-10', 1, 'hysteria.jpg'),
(7, 'Supermassive black hole', 1, '03:32:00', '2006-07-12', 1, 'Supermassiveblackhole.jpg'),
(8, 'pyscho', 1, '05:16:00', '2015-08-16', 1, 'pyscho.jpg'),
(9, 'madness', 1, '04:41:00', '2009-03-21', 1, 'madness.jpg'),
(10, 'plug in baby', 1, '03:38:00', '2001-09-23', 1, 'pluginbaby.jpg'),
(11, 'mercury', 3, '02:04:00', '2017-09-15', 1, 'mercury.jpg'),
(12, 'rake', 3, '01:32:00', '2017-08-15', 1, 'rake.jpg'),
(13, 'polaris', 3, '03:39:00', '2017-09-15', 1, 'polaris.png'),
(14, 'hexada', 3, '02:15:00', '2017-09-15', 1, 'hexada.jpg'),
(15, 'smog', 3, '01:45:00', '2017-08-15', 1, 'smog.png'),
(16, 'glory', 4, '02:29:00', '2023-06-19', 1, 'glory'),
(17, 'spooky', 4, '01:36:00', '2023-06-19', 1, 'spooky.png'),
(18, 'eu sento gabu', 4, '01:23:00', '2023-06-19', 1, 'eusentogabu.jpg'),
(19, 'blah', 4, '02:21:00', '2020-09-28', 1, 'blah.jpg'),
(20, 'next', 4, '01:39:00', '2023-06-19', 1, 'next.jpg'),
(21, 'die with a smile', 6, '04:11:00', '2024-08-21', 1, 'diewithasmile.jpg'),
(22, 'fat juice and wet', 6, '02:21:00', '2021-02-06', 1, 'fatjuiceandwet.jpg'),
(23, 'wake up in the sky', 6, '03:24:00', '2018-05-26', 1, 'wakeupinthesky.jpg'),
(24, 'perm', 6, '03:30:00', '2016-09-26', 1, 'perm.jpg'),
(25, 'chunky', 6, '03:06:00', '2016-09-26', 1, 'chunky.jpg'),
(26, 'for the first time', 7, '03:02:00', '2017-06-21', 1, 'forthefirsttime.jpg'),
(27, 'heart to heart', 7, '03:31:00', '2019-09-21', 1, 'hearttoheart.jpg'),
(28, 'Chamber of reflection', 7, '03:51:00', '2014-09-21', 1, 'chamberofreflection.jpg'),
(29, 'one another', 7, '02:56:00', '2017-06-21', 1, 'oneanother.jpg'),
(30, 'moonlight on the river', 7, '07:02:00', '2017-06-21', 1, 'moonlightontheriver.jpg'),
(31, 'bohemian rhapsody', 1, '05:55:00', '1975-08-21', 1, 'bohemianrhapsody.jpg'),
(32, 'dont stop me now', 1, '03:29:00', '1978-01-01', 1, 'dontstopmenow.jpg'),
(33, 'killer queen', 1, '02:59:00', '1973-09-11', 1, 'killerqueen.jpg'),
(34, 'we will rock', 1, '02:09:00', '2001-09-11', 1, 'wewillrock.jpg'),
(35, 'another one bites the dust', 1, '03:43:00', '1970-03-08', 1, 'anotheronebitesthedust.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'rock'),
(2, 'metal'),
(3, 'heavymetal'),
(4, 'phonk'),
(5, 'jazz'),
(6, 'pop'),
(7, 'indie'),
(9, 'hip hop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Individual', 129),
(2, 'Duo', 169),
(3, 'Familiar', 199),
(4, 'Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Maximo Coronel', 'maximocoronel79@gmail.com', 1),
(2, 'Hector Aaron Ortiz', 'sptmarco16@gmail.com', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`),
  ADD KEY `membresia_id_2` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
