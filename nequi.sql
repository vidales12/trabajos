-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:41:46
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `churros`
--

CREATE TABLE IF NOT EXISTS `churros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(2) NOT NULL,
  `valor` smallint(5) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(35) NOT NULL,
  `apellido` char(35) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `num_documento` char(20) NOT NULL,
  `tipo_documento` tinyint(1) NOT NULL,
  `celular` char(15) NOT NULL,
  `correo` char(50) NOT NULL,
  `estrato` tinyint(1) NOT NULL,
  `dir_residencia` char(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` smallint(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '2024-09-30 12:08:12', '310277879', '3202292524', 84000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
