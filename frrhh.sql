-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2022 a las 00:30:06
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frrhh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asuntopersonal`
--

CREATE TABLE `asuntopersonal` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechaautorizada` date NOT NULL,
  `horautorizadode` time NOT NULL,
  `saldo` int(11) NOT NULL,
  `saldoactual` int(11) NOT NULL,
  `horautorizadoa` time NOT NULL,
  `responsable` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asuntopersonal`
--

INSERT INTO `asuntopersonal` (`idformulario`, `numformulario`, `idusuario`, `fechaautorizada`, `horautorizadode`, `saldo`, `saldoactual`, `horautorizadoa`, `responsable`) VALUES
(1, 0, 0, '2022-04-28', '14:46:00', 0, 0, '23:46:00', ''),
(2, 0, 0, '2022-04-19', '15:43:00', 0, 0, '11:48:00', ''),
(3, 0, 0, '2022-04-19', '15:43:00', 0, 0, '11:48:00', ''),
(4, 0, 0, '2022-04-19', '15:43:00', 0, 0, '11:48:00', ''),
(5, 0, 0, '2022-04-19', '15:43:00', 0, 0, '11:48:00', ''),
(6, 0, 0, '0000-00-00', '00:00:00', 0, 0, '00:00:00', ''),
(7, 0, 0, '2022-04-29', '08:00:00', 0, 0, '16:30:00', ''),
(8, 0, 0, '2022-05-12', '08:00:00', 0, 0, '16:30:00', 'Paulo García'),
(9, 0, 0, '2022-05-18', '18:35:00', 0, 0, '20:35:00', 'Camila');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita_adminjudicial`
--

CREATE TABLE `cita_adminjudicial` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechasolicitada` date NOT NULL,
  `horautorizadode` time NOT NULL,
  `horautorizadoa` time NOT NULL,
  `razon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cita_adminjudicial`
--

INSERT INTO `cita_adminjudicial` (`idformulario`, `numformulario`, `idusuario`, `fechasolicitada`, `horautorizadode`, `horautorizadoa`, `razon`) VALUES
(1, 0, 0, '2022-05-18', '19:39:00', '20:39:00', 'visita al juzgado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cumpleanios`
--

CREATE TABLE `cumpleanios` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechacumple` date NOT NULL,
  `fechahabilcumple` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cumpleanios`
--

INSERT INTO `cumpleanios` (`idformulario`, `numformulario`, `idusuario`, `fechacumple`, `fechahabilcumple`) VALUES
(1, 0, 0, '2022-05-18', '2022-05-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fallecimiento`
--

CREATE TABLE `fallecimiento` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `horayfechainicio` datetime NOT NULL,
  `horayfechafinalizar` datetime NOT NULL,
  `horautorizadode` time NOT NULL,
  `horautorizadoa` time NOT NULL,
  `diaregreso` date NOT NULL,
  `razon` varchar(500) NOT NULL,
  `responsable` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fallecimiento`
--

INSERT INTO `fallecimiento` (`idformulario`, `numformulario`, `idusuario`, `horayfechainicio`, `horayfechafinalizar`, `horautorizadode`, `horautorizadoa`, `diaregreso`, `razon`, `responsable`) VALUES
(1, 0, 0, '2022-05-17 00:00:00', '2022-05-20 00:00:00', '15:43:00', '21:43:00', '2022-05-27', 'familiar', 'Francisco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios`
--

CREATE TABLE `formularios` (
  `numformulario` int(30) NOT NULL,
  `nombrecorto` text NOT NULL,
  `nombrelargo` text NOT NULL,
  `idusuario` int(30) NOT NULL,
  `descripcionactividad` int(50) NOT NULL,
  `lugar` text NOT NULL,
  `fecha` date NOT NULL,
  `fechadel` date NOT NULL,
  `fechaal` date NOT NULL,
  `horarioinicio` time NOT NULL,
  `horariofinal` time NOT NULL,
  `permisopersonalt` int(20) NOT NULL,
  `yatomados` int(20) NOT NULL,
  `fallecimientoentrada` text NOT NULL,
  `responsableausencia` text NOT NULL,
  `idformulario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `igss`
--

CREATE TABLE `igss` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechasolicitada` date NOT NULL,
  `horautorizadode` time NOT NULL,
  `horautorizadoa` time NOT NULL,
  `razon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `igss`
--

INSERT INTO `igss` (`idformulario`, `numformulario`, `idusuario`, `fechasolicitada`, `horautorizadode`, `horautorizadoa`, `razon`) VALUES
(1, 0, 0, '2022-05-04', '08:00:00', '16:30:00', ''),
(2, 0, 0, '2022-05-17', '08:00:00', '16:30:00', 'prueba 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrimonio`
--

CREATE TABLE `matrimonio` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechasolicitadadel` date NOT NULL,
  `horautorizadode` time NOT NULL,
  `saldo` int(11) NOT NULL,
  `saldoactual` int(11) NOT NULL,
  `fechasolicitadaal` date NOT NULL,
  `horautorizadoa` date NOT NULL,
  `diaregreso` date NOT NULL,
  `responsable` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matrimonio`
--

INSERT INTO `matrimonio` (`idformulario`, `numformulario`, `idusuario`, `fechasolicitadadel`, `horautorizadode`, `saldo`, `saldoactual`, `fechasolicitadaal`, `horautorizadoa`, `diaregreso`, `responsable`) VALUES
(1, 0, 0, '0000-00-00', '08:47:00', 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Paulo García');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `fechasolicitada` date NOT NULL,
  `horautorizadode` time NOT NULL,
  `razon` text NOT NULL,
  `horautorizadoa` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`idformulario`, `numformulario`, `idusuario`, `fechasolicitada`, `horautorizadode`, `razon`, `horautorizadoa`) VALUES
(1, 0, 0, '0000-00-00', '08:48:00', 'covid', '16:48:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacimntohijo`
--

CREATE TABLE `nacimntohijo` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `horayfechainicio` datetime NOT NULL,
  `horayfechafinalizar` datetime NOT NULL,
  `horautorizade` date NOT NULL,
  `horautorizada` time NOT NULL,
  `regreso` date NOT NULL,
  `responsables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nacimntohijo`
--

INSERT INTO `nacimntohijo` (`idformulario`, `numformulario`, `idusuario`, `horayfechainicio`, `horayfechafinalizar`, `horautorizade`, `horautorizada`, `regreso`, `responsables`) VALUES
(1, 0, 0, '2022-05-12 00:00:00', '2022-05-16 00:00:00', '0000-00-00', '16:30:00', '2022-05-17', 'Camila'),
(2, 0, 0, '2022-05-18 00:00:00', '2022-05-23 00:00:00', '0000-00-00', '16:50:00', '2022-05-23', 'Paulo García');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` int(11) NOT NULL,
  `numeropermiso` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `nombrecorto` int(15) NOT NULL,
  `usuario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reposiciontiempo`
--

CREATE TABLE `reposiciontiempo` (
  `idformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `fecha1` date NOT NULL,
  `horasextras1` int(11) NOT NULL,
  `fechahoraregresa` datetime NOT NULL,
  `fecha2` date NOT NULL,
  `horainicio2` time NOT NULL,
  `horafinalizar2` time NOT NULL,
  `horasreponer` int(2) NOT NULL,
  `descactividad` varchar(500) NOT NULL,
  `horayfechainicio1` time NOT NULL,
  `horayfechafinalizar1` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reposiciontiempo`
--

INSERT INTO `reposiciontiempo` (`idformulario`, `idusuario`, `numformulario`, `fecha1`, `horasextras1`, `fechahoraregresa`, `fecha2`, `horainicio2`, `horafinalizar2`, `horasreponer`, `descactividad`, `horayfechainicio1`, `horayfechafinalizar1`) VALUES
(1, 0, 0, '2022-05-12', 2, '2022-05-13 14:45:00', '2022-05-13', '14:44:00', '16:30:00', 0, 'comude', '00:00:00', '00:00:00'),
(2, 0, 0, '0000-00-00', 0, '0000-00-00 00:00:00', '0000-00-00', '00:00:00', '00:00:00', 0, '', '00:00:00', '00:00:00'),
(3, 0, 0, '2022-05-13', 2, '2022-05-13 07:00:00', '2022-05-12', '16:49:00', '17:49:00', 0, 'comude', '16:50:00', '17:49:00'),
(4, 0, 0, '2022-05-13', 2, '2022-05-13 07:00:00', '2022-05-12', '16:49:00', '17:49:00', 0, 'comude', '16:50:00', '17:49:00'),
(5, 0, 0, '2022-05-13', 2, '2022-05-13 07:00:00', '2022-05-12', '16:49:00', '17:49:00', 2, 'comude', '16:50:00', '17:49:00'),
(6, 0, 0, '2022-05-18', 2, '2022-05-20 15:52:00', '2022-05-19', '14:52:00', '16:52:00', 0, 'comude', '18:51:00', '21:51:00'),
(7, 0, 0, '2022-05-18', 2, '2022-05-20 15:52:00', '2022-05-19', '14:52:00', '16:52:00', 2, 'comude', '18:51:00', '21:51:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidascomisiones`
--

CREATE TABLE `salidascomisiones` (
  `idformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `horade` time NOT NULL,
  `horaa` time NOT NULL,
  `numformulario` int(11) NOT NULL,
  `descripactividad` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidascomisiones`
--

INSERT INTO `salidascomisiones` (`idformulario`, `idusuario`, `lugar`, `fecha`, `horade`, `horaa`, `numformulario`, `descripactividad`) VALUES
(1, 0, '0', '2022-05-13', '08:01:00', '16:30:00', 0, ''),
(2, 0, 'San Pedro la Laguna', '2022-05-13', '08:00:00', '16:30:00', 0, 'supervisión proyecto'),
(3, 0, 'San Juan La  Laguna', '2022-05-16', '08:00:00', '16:30:00', 0, 'supervisión ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas_semanales`
--

CREATE TABLE `salidas_semanales` (
  `idformulario` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `numformulario` int(11) NOT NULL,
  `descripactividad` varchar(600) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `horade` time NOT NULL,
  `horaa` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salidas_semanales`
--

INSERT INTO `salidas_semanales` (`idformulario`, `idusuario`, `numformulario`, `descripactividad`, `lugar`, `fecha`, `horade`, `horaa`) VALUES
(1, 0, 0, 'supervisión ', 'San Juan La  Laguna', '2022-05-18', '08:00:00', '16:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `cargo` text NOT NULL,
  `dpi` int(18) NOT NULL,
  `telefono` int(8) NOT NULL,
  `email` text NOT NULL,
  `usuario` text NOT NULL,
  `clave` text NOT NULL,
  `departamento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre`, `cargo`, `dpi`, `telefono`, `email`, `usuario`, `clave`, `departamento`) VALUES
(2, 'camila', 'asistente', 335070779, 35597509, 'informatica@amsclae.gob.gt', 'camilaest', '123456', 'informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacaciones`
--

CREATE TABLE `vacaciones` (
  `idformulario` int(11) NOT NULL,
  `numformulario` int(30) NOT NULL,
  `idusuario` int(20) NOT NULL,
  `diasanuales` int(3) NOT NULL,
  `yadisfrutados` int(3) NOT NULL,
  `saldo` int(2) NOT NULL,
  `aniocorresponde` int(4) NOT NULL,
  `diashabiles` int(3) NOT NULL,
  `saldoactual` int(3) NOT NULL,
  `horarioautde` time NOT NULL,
  `fecharegresa` date NOT NULL,
  `horarioauta` time NOT NULL,
  `fechadel` date NOT NULL,
  `fechaal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacaciones`
--

INSERT INTO `vacaciones` (`idformulario`, `numformulario`, `idusuario`, `diasanuales`, `yadisfrutados`, `saldo`, `aniocorresponde`, `diashabiles`, `saldoactual`, `horarioautde`, `fecharegresa`, `horarioauta`, `fechadel`, `fechaal`) VALUES
(1, 0, 0, 10, 0, 0, 2021, 10, 0, '08:55:00', '2022-05-30', '16:55:00', '2022-05-23', '2022-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacadistintas`
--

CREATE TABLE `vacadistintas` (
  `numformulario` int(30) NOT NULL,
  `idformulario` int(11) NOT NULL,
  `idusuario` int(20) NOT NULL,
  `diasanuales` int(3) NOT NULL,
  `yadisfrutados` int(3) NOT NULL,
  `saldo` int(3) NOT NULL,
  `aniocorresponde` int(11) NOT NULL,
  `diashabiles` int(11) NOT NULL,
  `saldoactual` int(11) NOT NULL,
  `horarioautde` time NOT NULL,
  `fecharegresa` date NOT NULL,
  `horarioauta` time NOT NULL,
  `justificacion` varchar(500) NOT NULL,
  `fechadel` date NOT NULL,
  `fechaal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacadistintas`
--

INSERT INTO `vacadistintas` (`numformulario`, `idformulario`, `idusuario`, `diasanuales`, `yadisfrutados`, `saldo`, `aniocorresponde`, `diashabiles`, `saldoactual`, `horarioautde`, `fecharegresa`, `horarioauta`, `justificacion`, `fechadel`, `fechaal`) VALUES
(0, 1, 0, 10, 0, 0, 2021, 10, 0, '08:00:00', '2022-06-13', '16:30:00', 'vacaciones', '2022-05-23', '2022-06-10'),
(0, 2, 0, 10, 0, 0, 2021, 10, 0, '18:31:00', '2022-05-28', '17:31:00', 'prueba 2', '2022-05-17', '2022-05-26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asuntopersonal`
--
ALTER TABLE `asuntopersonal`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `cita_adminjudicial`
--
ALTER TABLE `cita_adminjudicial`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `cumpleanios`
--
ALTER TABLE `cumpleanios`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `fallecimiento`
--
ALTER TABLE `fallecimiento`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`idformulario`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `numformulario` (`numformulario`);

--
-- Indices de la tabla `igss`
--
ALTER TABLE `igss`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `nacimntohijo`
--
ALTER TABLE `nacimntohijo`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `reposiciontiempo`
--
ALTER TABLE `reposiciontiempo`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `salidascomisiones`
--
ALTER TABLE `salidascomisiones`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `salidas_semanales`
--
ALTER TABLE `salidas_semanales`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  ADD PRIMARY KEY (`idformulario`);

--
-- Indices de la tabla `vacadistintas`
--
ALTER TABLE `vacadistintas`
  ADD PRIMARY KEY (`idformulario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asuntopersonal`
--
ALTER TABLE `asuntopersonal`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cita_adminjudicial`
--
ALTER TABLE `cita_adminjudicial`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cumpleanios`
--
ALTER TABLE `cumpleanios`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fallecimiento`
--
ALTER TABLE `fallecimiento`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `formularios`
--
ALTER TABLE `formularios`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `igss`
--
ALTER TABLE `igss`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `matrimonio`
--
ALTER TABLE `matrimonio`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `nacimntohijo`
--
ALTER TABLE `nacimntohijo`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reposiciontiempo`
--
ALTER TABLE `reposiciontiempo`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `salidascomisiones`
--
ALTER TABLE `salidascomisiones`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `salidas_semanales`
--
ALTER TABLE `salidas_semanales`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vacadistintas`
--
ALTER TABLE `vacadistintas`
  MODIFY `idformulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD CONSTRAINT `formularios_ibfk_1` FOREIGN KEY (`idformulario`) REFERENCES `permisos` (`idpermiso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`idpermiso`) REFERENCES `usuarios` (`idusuarios`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
