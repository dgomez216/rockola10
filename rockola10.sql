-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2021 a las 22:42:18
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rockola10`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `IdCancion` int(11) NOT NULL,
  `NombreCancion` varchar(100) NOT NULL,
  `NombreArtista` varchar(100) NOT NULL,
  `GeneroCancion` varchar(100) NOT NULL,
  `AnioPubli` varchar(100) NOT NULL,
  `EnlaceCancion` varchar(100) NOT NULL,
  `IdAdminFk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`IdCancion`, `NombreCancion`, `NombreArtista`, `GeneroCancion`, `AnioPubli`, `EnlaceCancion`, `IdAdminFk`) VALUES
(1, 'Una cancion', 'Los de Adentro', 'Rock en Español', '2001', 'https://www.youtube.com/watch?v=gE2J_Dzyeeo', NULL),
(2, 'Smell Like Teen Spirit', 'Nirvana', 'Grunge', '1991', 'https://www.youtube.com/watch?v=hTWKbfoikeg', NULL),
(3, 'Do I Wanna Know?', 'Artic Monkeys', 'Rock', '2013', 'https://www.youtube.com/watch?v=bpOSxM0rNPM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioadmin`
--

CREATE TABLE `usuarioadmin` (
  `IdAdminPk` int(11) NOT NULL,
  `NombreAdmin` varchar(100) NOT NULL,
  `UsuarioAdmin` varchar(120) NOT NULL,
  `Contraseña` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarioadmin`
--

INSERT INTO `usuarioadmin` (`IdAdminPk`, `NombreAdmin`, `UsuarioAdmin`, `Contraseña`) VALUES
(1, 'Daniel Gomez Mendez', 'dgomez216', 'admin123'),
(2, 'Cristian Javier Garzon Jimenez', 'cjgarzon', 'admin123'),
(3, 'Laura Valentina ', 'valen', 'admin123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`IdCancion`),
  ADD KEY `IdAdminFk` (`IdAdminFk`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `usuarioadmin`
--
ALTER TABLE `usuarioadmin`
  ADD PRIMARY KEY (`IdAdminPk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarioadmin`
--
ALTER TABLE `usuarioadmin`
  MODIFY `IdAdminPk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`IdAdminFk`) REFERENCES `usuarioadmin` (`IdAdminPk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
