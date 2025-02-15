-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:10:17
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Emiliano', 'Lopez Sanchez', '23325061070437', '2008-01-25', 1, 'emiliano.lopez23@cetis107.edu.mx', '6675137288'),
(2, 'hector aaron', 'ortiz serrano', '28742347238748347', '2008-08-23', 1, 'sptmarco16@gmail.com', '6673583222'),
(3, 'Victor manuel', 'diaz gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '66784895957894'),
(4, 'maximo', 'Coronel Aispuro', '23325061070422', '2008-04-12', 1, 'maximo.coronel23@cetis107.edu.mx', '66757854578'),
(5, 'Axel Armando', 'Beltran Lopez', '23325061070317', '2008-05-13', 1, 'axel.beltran@cetis107.edu.mx', '667578235784'),
(6, 'Diengo', 'Dominguez lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez@cetis107.edu.mx', '6676786767'),
(7, 'Firda Sofia', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '66778789678'),
(8, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '667676767679'),
(9, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '6676786767'),
(10, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.aispuro@cetis107.edu.mx', '6676786785678'),
(11, 'Luis Angel ', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya@cetis107.edu.mx', '667787896789'),
(12, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez@cetis107.edu.mx', '66767675678'),
(13, 'mateo', 'ibarra gastelum', '23325061070484', '2008-06-24', 1, 'mateo.ibarra@cetis107.edu.mx', '6675678567'),
(14, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '667679678'),
(15, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-10-10', 1, 'emiliano.ojeda23@cetis107.edu.mx', '667678578568');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 2, 9),
(2, 2, 2, 10),
(3, 3, 2, 9),
(4, 4, 2, 9),
(5, 5, 2, 8),
(6, 6, 2, 9),
(7, 7, 2, 7),
(8, 8, 2, 9),
(9, 9, 2, 10),
(10, 1, 4, 7),
(11, 2, 4, 10),
(12, 3, 4, 9),
(13, 4, 4, 9),
(14, 5, 4, 10),
(15, 6, 4, 8),
(16, 7, 4, 8),
(17, 8, 4, 10),
(18, 9, 4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasess`
--

CREATE TABLE `clasess` (
  `id` int(11) NOT NULL,
  `materia_id` int(200) NOT NULL,
  `maestro_id` int(200) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clasess`
--

INSERT INTO `clasess` (`id`, `materia_id`, `maestro_id`, `hora`, `aula`) VALUES
(1, 1, 3, '13:20:00', 'CC2'),
(2, 5, 1, '04:00:00', 'CC1'),
(3, 3, 4, '03:20:00', '12'),
(4, 2, 9, '02:00:00', '12'),
(5, 8, 8, '06:00:00', '12'),
(6, 6, 6, '04:40:00', '12'),
(7, 7, 10, '05:20:00', '12'),
(8, 4, 9, '04:00:00', '12'),
(9, 9, 7, '04:40:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`ID`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'PROGRAMACION', 'La carrera de Técnico en Programación del Bachillerato Tecnológico, establecida en el Acuerdo Secretarial 653, ofrece una formación integral que combina competencias técnicas, académicas y profesionales. El plan de estudios se estructura en seis semestres, con un enfoque en formación básica (matemát'),
(2, 'construccion', 'haces casitas y planos'),
(3, 'contabilidad', 'aprendes a administrar '),
(4, 'diseño grafico', 'aprendes a diseñar y a dibujar'),
(5, 'electronica', 'aprendes a soldar y a hacer circuitos electronicos'),
(6, 'ofimatica', 'aprendes a usar el exel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha de nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha de nacimiento`) VALUES
(1, 'luis carlos', 'luis.carlos85@cetis107.edu.mx', 1, '1985-02-20'),
(2, 'francisco rochin', 'francisco.rochin79@cetis107.edu.mx', 1, '1980-05-23'),
(3, 'jorge ibarra', 'jorge.ibarra0@cetis107.edu.mx', 0, '1810-09-16'),
(4, 'maria guadalupe', 'maria.guadalupe', 0, '1985-02-20'),
(5, 'marco salazar', 'marco.salazar23@cetis107.edu.mx', 1, '1980-05-23'),
(6, 'alma aragon', 'alm.aragon23@cetis107.edu.mx', 0, '1980-08-23'),
(7, 'maria verduzco', 'maria.verdusco23@cetis107.edu.mx', 0, '1970-06-17'),
(8, 'cynthia gonzales', 'cynthia.gonzales23@cetis107.edu.mx', 0, '1990-09-08'),
(9, 'marco salazar', 'marco.salazar23@cetis.edu.mx', 1, '1990-06-30'),
(10, 'luis aispuro', 'luis.aispuro23@cetis107.edu.mx', 1, '1987-02-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nombre`, `Semestre`) VALUES
(1, 'BD No RELACIONALES', 4),
(2, 'INGLES', 4),
(3, 'TEMAS MATE 1', 4),
(4, 'RS ', 4),
(5, 'BD RELACIONALES', 4),
(6, 'REACCIONES QUIMICA', 4),
(7, 'HISTORIA', 4),
(8, 'CIENCIAS SOCIALES 3', 4),
(9, 'TUTORIA', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `clasess`
--
ALTER TABLE `clasess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clasess` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD CONSTRAINT `clasess_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clasess_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
