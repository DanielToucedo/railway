-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2021 a las 19:40:01
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
drop database if exists preparadasB;
create database preparadasb;
use preparadasb;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(3) UNSIGNED NOT NULL,
  `nombre` varchar(35) DEFAULT NULL,
  `ciudad` varchar(25) NOT NULL,
  `nacimiento` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `ciudad`, `nacimiento`) VALUES
(1, 'Pérez, Antonio', 'Sevilla', 1999),
(2, 'Rodríguez, María', 'Sevilla', 2001),
(3, 'López, Ana', 'Madrid', 2003),
(4, 'Segovia, Manuela', 'Barcelona', 2000),
(5, 'Ramírez, José', 'La Coruña', 1996),
(6, 'Darlet, Leonardo', 'Utrera', 1998),
(7, 'Avilés, Miguel', 'Dos Hermanas', 2003),
(8, 'Torres, Pedro', 'Dos Hermanas', 2001),
(9, 'Collado, José', 'Algeciras', 2002),
(10, 'Rueda, Andrés', 'Dos Hermanas', 2002),
(11, 'Oliva, Sebastián', 'Dos Hermanas', 1999),
(12, 'Marchena, Juana', 'Barcelona', 1999),
(13, 'Velasco, Bernardo', 'Huelva', 1993),
(14, 'Arenas, Jimena', 'Bilbao', 1998),
(15, 'Lucena, Pilar', 'Dos Hermanas', 2002),
(16, 'Carmona, Angel', 'Utrera', 2002),
(17, 'León, Isabel', 'Utrera', 2001),
(18, 'Llorens, Blanca', 'Pruna', 2002),
(19, 'Baeza, Pablo', 'Dos Hermanas', 1994),
(20, 'Romero, Alberto', 'Dos Hermanas', 1992),
(21, 'Márquez, Francisco', 'Sevilla', 1997),
(22, 'Badia, Irene', 'Dos Hermanas', 1998),
(23, 'Anaya, Julia', 'Sevilla', 1996),
(24, 'Osuna, Alejandro', 'Dos Hermanas', 2000),
(25, 'Martínez, José', 'Málaga', 2000),
(26, 'Priego, Lucía', 'Dos Hermanas', 2001),
(27, 'Asensio, Patricia', 'Dos Hermanas', 2002),
(28, 'Sousa, Conrado', 'Melilla', 2003),
(29, 'Castillo, Manuel', 'Ceuta', 2004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_cursos`
--


CREATE TABLE `alumnos_cursos` (
  `id_curso` int(3) UNSIGNED NOT NULL,
  `id_alumno` int(3) UNSIGNED NOT NULL,
  `año` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos_cursos`
--

INSERT INTO `alumnos_cursos` (`id_curso`, `id_alumno`, `año`) VALUES
(1, 1, '2020/2021'),
(1, 2, '2020/2021'),
(1, 3, '2020/2021'),
(1, 4, '2022/2023'),
(1, 5, '2021/2022'),
(1, 6, '2020/2021'),
(1, 11, '2019/2020'),
(1, 12, '2019/2020'),
(1, 12, '2021/2022'),
(1, 14, '2019/2020'),
(1, 14, '2020/2021'),
(1, 22, '2020/2021'),
(1, 23, '2019/2020'),
(1, 24, '2020/2021'),
(1, 24, '2021/2022'),
(1, 25, '2019/2020'),
(1, 27, '2019/2020'),
(2, 1, '2021/2022'),
(2, 2, '2021/2022'),
(2, 3, '2021/2022'),
(2, 5, '2022/2023'),
(2, 6, '2021/2022'),
(2, 11, '2020/2021'),
(2, 14, '2021/2022'),
(2, 15, '2020/2021'),
(2, 18, '2019/2020'),
(2, 22, '2021/2022'),
(2, 25, '2020/2021'),
(2, 25, '2021/2022'),
(3, 7, '2022/2023'),
(3, 11, '2021/2022'),
(3, 18, '2020/2021'),
(3, 19, '2020/2021'),
(3, 21, '2019/2020'),
(3, 26, '2020/2021'),
(3, 26, '2021/2022'),
(3, 27, '2022/2023'),
(4, 8, '2020/2021'),
(4, 16, '2021/2022'),
(4, 18, '2021/2022'),
(4, 19, '2021/2022'),
(4, 21, '2021/2022'),
(5, 8, '2021/2022'),
(5, 9, '2020/2021'),
(5, 10, '2020/2021'),
(5, 10, '2021/2022'),
(5, 13, '2021/2022'),
(5, 15, '2021/2022'),
(5, 20, '2019/2020'),
(5, 23, '2020/2021'),
(6, 9, '2021/2022'),
(6, 17, '2021/2022'),
(6, 20, '2021/2022'),
(6, 23, '2021/2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(3) UNSIGNED NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`) VALUES
(1, '1SMR'),
(2, '2SMR'),
(3, '1DAW'),
(4, '2DAW'),
(5, '1DAM'),
(6, '2DAM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumnos_cursos`
--
ALTER TABLE `alumnos_cursos`
  ADD PRIMARY KEY (`id_curso`,`id_alumno`,`año`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos_cursos`
--
ALTER TABLE `alumnos_cursos`
  ADD CONSTRAINT `alumnos_cursos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`),
  ADD CONSTRAINT `alumnos_cursos_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
