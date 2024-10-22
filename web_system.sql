-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 23:04:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web_system`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `energy_consumption`
--

CREATE TABLE `energy_consumption` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `energy_consumed` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `energy_consumption`
--

INSERT INTO `energy_consumption` (`id`, `user_id`, `date`, `energy_consumed`) VALUES
(68, 6, '2023-07-01', 250),
(69, 6, '2023-08-01', 300),
(70, 6, '2023-09-01', 270),
(71, 6, '2023-10-01', 150),
(72, 6, '2023-11-01', 180),
(73, 6, '2023-12-01', 200),
(74, 6, '2024-01-01', 150),
(75, 6, '2024-02-01', 130),
(76, 6, '2024-03-01', 100),
(77, 6, '2024-04-01', 200),
(78, 6, '2024-05-01', 120),
(79, 6, '2024-06-01', 90),
(80, 6, '2024-07-01', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `role`) VALUES
(1, 'israel@gmail.com', '1234', 'admin'),
(6, 'josemartinez@gmail.com', '789', 'user'),
(7, 'jorgebasilio@gmail.com', '456', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `energy_consumption`
--
ALTER TABLE `energy_consumption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `energy_consumption`
--
ALTER TABLE `energy_consumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `energy_consumption`
--
ALTER TABLE `energy_consumption`
  ADD CONSTRAINT `energy_consumption_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
