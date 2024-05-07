-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 17:56:48
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
-- Base de datos: `d.p.critico_bded`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `Tiempo` varchar(5) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `ID_Ejercicio` varchar(50) NOT NULL,
  `FechaHora` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`Tiempo`, `Correo`, `ID_Ejercicio`, `FechaHora`, `Nombre`) VALUES
('1:00', 'anonimo@hotmail.com', 'Mate1', '18/03/2024_5:00', 'Simplificando'),
('1:30', 'persona@gmail.com', 'CL1', 'Secreto1910 resumen', 'Secreto1910 resumen'),
('2:30', 'yo@gmail.com', 'Raz1', 'Congreso cientifico', 'Secreto1910 resumen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `Puntos` int(3) NOT NULL,
  `ID` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`Puntos`, `ID`, `Nombre`, `Tipo`) VALUES
(150, 'CL1', 'Secreto1910 resumen', 'Comprension Lectora'),
(100, 'Mate1', 'Simplificando', 'Matematico'),
(200, 'Raz1', 'Congreso cientifico', 'Razonamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `TipoDeCuenta` varchar(15) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `CorreoElectronico` varchar(50) NOT NULL,
  `FechaDeNacimiento` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `TiempoTotal` varchar(50) NOT NULL,
  `PuntajeTotal` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`TipoDeCuenta`, `Nombre`, `CorreoElectronico`, `FechaDeNacimiento`, `Contraseña`, `TiempoTotal`, `PuntajeTotal`) VALUES
('Paga', 'Victor', 'anonimo@hotmail.com', '1/1/2001', 'cdsadcsasa', '3:30:04', 433423),
('Paga', 'Vectro', 'yo@hotmail.com', '4/8/2001', 'vfvdsvds', '2:56:44', 161545),
('Gratuita', 'Aldo', 'tu@hotmail.com', '5/7/2012', 'cbfbvcbdfs', '4:30:55', 1151515);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NOMBRE` (`Nombre`);
COMMIT;
SELECT * FROM `usuario` WHERE Nombre='Aldo';	
SELECT * FROM `usuario` WHERE Correo= 'yo@gmail.com';
SELECT * FROM `actividad` WHERE Correo= 'yo@gmail.com';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
