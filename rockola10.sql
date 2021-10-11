-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2021 a las 22:43:58
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

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
(0, 'Nunca niegues que te amo', 'Los inquietos', 'Vallenato', '1999', 'https://youtu.be/vNR-vEvj7_0', 3),
(1, 'Una cancion', 'Los de Adentro', 'Rock en Español', '2001', 'https://www.youtube.com/watch?v=gE2J_Dzyeeo', NULL),
(2, 'Smell Like Teen Spirit', 'Nirvana', 'Grunge', '1991', 'https://www.youtube.com/watch?v=hTWKbfoikeg', NULL),
(3, 'Do I Wanna Know?', 'Artic Monkeys', 'Rock', '2013', 'https://www.youtube.com/watch?v=bpOSxM0rNPM', 1),
(4, 'Sirena encantada', 'Miguel Morales', 'Vallenato', '2017', 'https://youtu.be/YmHcAcu8IGY', 3),
(5, 'Después del adiós', 'Hebert Vargas', 'Vallenato', '2020', 'https://youtu.be/agToq_yMeh0', 3),
(6, 'Niña bonita', 'Binomio de oro', 'Vallenato', '2020', 'https://youtu.be/mdnJk_QpvJ0', 3),
(7, 'Osito dormilón', 'Binomio de oro', 'Vallenato', '2013', 'https://youtu.be/SloTFWbshwE', 3),
(8, 'Entregame tu amor', 'Los inquietos ', 'Vallenato', '2013', 'https://youtu.be/kQiBJcz2udA', 3),
(9, 'Busca un confidente', 'Los diablitos', 'Vallenato', '1997', 'https://youtu.be/zfShxTjGDBY', 3),
(10, 'Vivo en el limbo', 'Kaleth Morales ', 'Vallenato', '2015', 'https://youtu.be/XuQPRv89PG0', 3),
(11, 'Tragao de ti', 'Peter Manjarres ', 'Vallenato', '2018', 'https://youtu.be/4nmez937ePQ', 3),
(12, 'Tu eres ajena ', 'Eddy Herrera ', 'Merengue', '2004', 'https://youtu.be/4nmez937ePQ', 3),
(13, 'La dueña del swing', 'ALto voltaje', 'Merengue', '2018', 'https://youtu.be/wwe1QCtYtPQ', 3),
(14, 'Moviendo las caderas', 'Oro solido', 'Merengue', '2018', 'https://youtu.be/sHNaHsw7JQg', 3),
(15, 'Abusadora', 'Oro solido', 'Merengue', '2016', 'https://youtu.be/w0udiHZ85MA', 3),
(16, 'Pegame tu vicio', 'Eddy Herrera', 'Merengue', '2015', 'https://youtu.be/sNAmowMBbJw', 3),
(17, 'A dormir juntitos', 'Eddy Herrera ft Liz', 'Merengue', '2015', 'https://youtu.be/4jGinuG2caM', 3),
(18, 'Moches de fantasia', 'Joseph Fonseca', 'Merengue', '2018', 'https://youtu.be/pQPhUYu42dU', 3),
(19, 'Separados', 'Los hijos de Puerto rico', 'Merengue', '2018', 'https://youtu.be/FVIxXKOHfWc', 3),
(20, 'Junto a tu corazón ', 'Miguel Moly', 'Merengue', '2019', 'https://youtu.be/5su-nn2heJ0', 3),
(21, 'Guaro Remix', 'Pipe, Yeison, Alzate, Jessi, DaríoJhonny, Jhon A, Charrito', 'Popular', '2021', 'https://youtu.be/-MevIA62rqQ\r\n', 3),
(22, 'Zumbalo', 'Liz', 'Merengue', '2019', 'https://youtu.be/Ev7cNt_r82c', 3),
(23, 'Si me dejas no vale', 'La linea', 'Merengue', '2020', 'https://youtu.be/afidb97d4wc', 3),
(24, 'Te compro tu novia ', 'Ramón Orlando', 'Merengue', '2020', 'https://youtu.be/9o6unVUbS5U', 3),
(25, 'No hay pesos', 'Los cantantes', 'Merengue', '2015', 'https://youtu.be/OEVuEszR7OQ', 3),
(26, 'Ella es tan bella', 'Rikarena', 'Merengue', '2015', 'https://youtu.be/lXttBQJO8PQ', 3),
(27, 'Por un segundo', 'Aventura', 'Bachata', '2009', 'https://youtu.be/GHLVjriwzFg', 3),
(28, 'El malo', 'Aventura', 'Bachata', '2015', 'https://youtu.be/GzMGKJF09AI', 3),
(29, 'Todavia me amas', 'Aventura', 'Bachata', '2017', 'https://youtu.be/CKrnnsi34lk', NULL),
(30, 'Su veneno', 'Aventura', 'Bachata', '2009', 'https://youtu.be/fY36BMNDqbg', NULL),
(31, 'El perdedor', 'Aventura', 'Bachata ', '2015', 'https://youtu.be/EJuxDbSkwmQ', NULL),
(32, 'Enseñame a olvidar', 'Aventura', 'Bachata', '2015', 'https://youtu.be/uPCZm2Tvjpo', 3),
(33, 'Blue - Extended', 'Steve Bloid', 'Electronica', '2021', 'https://youtu.be/yy-oWhoOIIg', 3),
(34, 'Calabria - version fruit', 'Dmnds and fallen roses', 'Electronica', '2021', 'https://youtu.be/kcRzb1Be3wg', 3),
(35, 'All falls down', 'Alan walker', 'Electronica', '2017', 'https://youtu.be/6RLLOEzdxsM', 3),
(36, 'Faded', 'Alan walker', 'Electronica', '2015', 'https://youtu.be/60ItHLz5WEA', 3),
(37, 'The espectre', 'Alan walker', 'Electronica', '2017', 'https://youtu.be/wJnBTPUQS5A', 3),
(38, 'Titanium', 'Sia - David guetta', 'Electronica', '2011', 'https://youtu.be/JRfuAukYTKg', 3),
(39, 'Valio la pena', 'Marc Anthony', 'Salsa', '2009', 'https://youtu.be/Ns9YYSqLxyI', 3),
(40, 'Ahora quien', 'Marc Anthony', 'Salsa', '2009', 'https://youtu.be/toLrTToaN0M', 3),
(41, 'Yo no se mañana', 'Luis Enrique', 'Salsa', '2015', 'https://youtu.be/bVNrCuxYInU', 3),
(42, 'Amores como el nuestro', 'Jerry Rivera', 'Salsa', '2014', 'https://youtu.be/IHXg_Wv3TeE', 3),
(43, 'Cuenta conmigo', 'Jerry Rivera', 'Salsa', '2014', 'https://youtu.be/i05Wn7lnI1Y', 3),
(44, 'Me tengo que ir', 'Adolescentes orquesta', 'Salsa', '2015', 'https://youtu.be/krA4QNOpFbU', 3),
(45, 'Te amo, te extraño', 'Guayacán orquesta', 'Salsa', '2014', 'https://youtu.be/bqnY6w6AWm0', 3),
(46, 'Juanito alimaña ', 'Hector Lavoe', 'Salsa', '2017', 'https://youtu.be/Evl18kT8LqQ', 3),
(47, 'Ella', 'Hansel y Raul feat Luis Enrique', 'Salsa', '2017', 'https://youtu.be/vzMcW7Pu9Mo', 3),
(48, 'Oiga, mire, vea', 'Guayacán orquesta', 'Salsa', '', 'https://youtu.be/xm9T4PbzTTs', 3),
(49, 'Y no hago mas na', ' Gilberto Santa Rosa · Andy Montanez · Pellin Rodriguez · El Gran Combo De Puerto Rico', 'Salsa', '2014', 'https://youtu.be/bgSpdgL9lkQ', 3),
(50, 'Decisiones', 'Ruben Blades', 'Salsa', '2017', 'https://youtu.be/CRqityqhhEY', 3),
(51, 'Aquel lugar', 'Adolescentes orquesta', 'Salsa', '2018', 'https://youtu.be/aYEjegmQZU4', 3),
(52, 'Ahora entregate', 'Adolescentes orquesta', 'Salsa', '2019', 'https://youtu.be/2KhMmSmlYLU', 3),
(53, 'Persona ideal', 'Adolescentes orquesta', 'Salsa', '2021', 'https://youtu.be/2KhMmSmlYLU', 3),
(54, 'Amor y control', 'Ruben Blades ', 'Salsa', '2017', 'https://youtu.be/6LQNd9vpIes', 3),
(55, 'Aventurero', 'Yeison Jimenez', 'Despecho', '2021', 'https://youtu.be/6LQNd9vpIes', 3),
(56, 'Siga bebiendo', 'Yeison Jimenez - Jhonny Rivera', 'Despecho', '2017', 'https://youtu.be/ET-T8JsMc38', 3),
(57, 'Me tragaba tus mentiras', 'Jhonny Rivera', 'Despecho', '2016', 'https://youtu.be/9wveiphYgUk', 3),
(58, 'Tomando cerveza', 'Jhonny Rivera - Francisco Gomez ', 'Despecho', '2012', 'https://youtu.be/Yh0uZiFZRIg', 3),
(59, 'Comprendí que te perdí', 'Jhonny Rivera', 'Despecho', '2012', 'https://youtu.be/U9GFert9tkU', 3),
(60, 'De bar en bar', 'Jhon Alex Castaño', 'Despecho', '', 'https://youtu.be/L7IveCXqGok', 3),
(61, 'Te extraño', 'Jhonny Rivera', 'Despecho', '2019', 'https://youtu.be/Fs_BnnaEUts', 3),
(62, 'Angel o demonio', 'Luisito Muñoz - Fredy montoya', 'Popular', '2017', 'https://youtu.be/HKzBvMeAuPA', 3),
(63, 'Ya superame', 'Grupo firme', 'Banda', '2021', 'https://youtu.be/g2BzGJnNvEw', 3),
(64, 'El toxico', 'Carín Leon - Grupo Firme', 'Banda', '2020', 'https://youtu.be/7MacBC8cLjg', 3),
(65, 'Yo ya no vuelvo contigo', 'Lenin Ramirez - Grupo firme', 'Banda', '2019', 'https://youtu.be/lDToOe8pVzY', 3),
(66, 'En tu perra vida', 'Lenin Ramirez - Grupo firme', 'Banda', '2021', 'https://youtu.be/48YRN33AxYY', 3),
(67, 'Por mi no te detengas', 'Banda Ms', 'Banda', '2019', 'https://youtu.be/5yBGbPUBXFM', 3),
(68, 'En peligro de extinción', 'La adictiva', 'Banda', '2018', 'https://youtu.be/B4BDh41Y8hQ', 3),
(69, 'Atraves del vaso', 'Los Sebastianes', 'Banda', '2018', 'https://youtu.be/0E7KbIy0cIA', 3),
(70, 'Palabra de hombre', 'El fantasma', 'Banda', '2020', 'https://youtu.be/2pI8HBMayVw', 3),
(71, 'Somos los que somos', 'Los dos de la S y Banda Ms', 'Banda', '2020', 'https://youtu.be/SEFvW2PjP6A', 3),
(72, 'El color de tus ojos ', 'Banda Ms ', 'Banda', '2017', 'https://youtu.be/7UO0O6ADu4Q', 3),
(73, 'Perfecta', 'Banda los recoditos', 'Banda', '2019', 'https://youtu.be/6N4mxe8Druw', 3),
(74, 'Esta es tu cancion', 'La adictiva', 'Banda', '2017', 'https://youtu.be/kLqa0zYTWz4', 3);

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
