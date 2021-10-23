-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2021 a las 21:01:33
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cheques`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE `cheques` (
  `clientes_id` int(11) NOT NULL,
  `numero_cheque` bigint(50) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `cuit_librador` bigint(50) NOT NULL,
  `fecha_vto` date NOT NULL,
  `importe` double NOT NULL,
  `propio` varchar(5) NOT NULL,
  `echeq` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cheques`
--

INSERT INTO `cheques` (`clientes_id`, `numero_cheque`, `nombre`, `cuit_librador`, `fecha_vto`, `importe`, `propio`, `echeq`) VALUES
(28, 6, 'prueba 3', 656, '2021-08-27', 65456, 'Si', 'No'),
(28, 2453, 'probando', 65465, '2021-08-27', 646, 'Si', 'Si'),
(28, 6465, 'prueba 1', 54654, '2021-08-27', 65, 'Si', 'No'),
(28, 6846, 'prueba 4', 654654, '2021-08-27', 6546, 'Si', 'Si'),
(28, 684654, 'llll', 27352252544, '2021-08-12', 80, 'Si', 'No'),
(28, 789654, 'Maxi kiosko', 275987564, '2021-08-27', 8000, 'Si', 'No'),
(28, 6547896, 'Carolina', 123456789, '2021-09-02', 9000, 'Si', 'No'),
(28, 65415341, 'prueba 5', 65465, '2021-08-27', 65465, 'Si', 'Si'),
(29, 69465465, 'oooo', 351424460, '2021-08-02', 8000, 'Si', 'No'),
(28, 654564156, 'prueba 6', 65456, '2021-09-27', 6, 'Si', 'No'),
(28, 789456453, 'David', 352252544, '2021-08-12', 800, 'Si', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `cuit` bigint(20) NOT NULL,
  `telefono` int(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nombre`, `cuit`, `telefono`, `email`) VALUES
(28, 'Probando 1', 2035142446, 2147483647, '1@gmail.com'),
(29, 'Probando 2', 2147483647, 1168313308, 'hola@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `usuario`, `pass`, `imagen`) VALUES
(1, 'carocalvi', '123', 'uploads/perfil.png'),
(2, 'seguridad', '123', 'uploads/logoUno.png'),
(3, 'prueba', '123', 'uploads/perfil.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`numero_cheque`),
  ADD KEY `clientes_id` (`clientes_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD CONSTRAINT `cheques_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id_clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
