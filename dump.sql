-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2014 at 02:49 AM
-- Server version: 6.0.4
-- PHP Version: 6.0.0-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `bdu`
-- 
CREATE DATABASE `bdu` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `bdu`;

-- --------------------------------------------------------

-- 
-- Table structure for table `alumnos`
-- 

CREATE TABLE `alumnos` (
  `nivelescolar` int(11) NOT NULL,
  `curso` varchar(7) DEFAULT NULL,
  `turno` int(11) NOT NULL,
  `tipodoc` int(11) NOT NULL,
  `nrodoc` int(11) NOT NULL,
  `estadodoc` int(11) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `sexo` int(11) NOT NULL,
  `fecnac` date NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `lugarnac` int(11) DEFAULT NULL,
  `provnac` int(11) DEFAULT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `piso` int(11) DEFAULT NULL,
  `torre` varchar(10) DEFAULT NULL,
  `dpto` varchar(10) DEFAULT NULL,
  `barrio` int(11) NOT NULL,
  `localidad` int(11) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `celular` varchar(40) DEFAULT NULL,
  `nrolegajo` varchar(20) NOT NULL,
  `nrolibmat` varchar(20) NOT NULL,
  `nrofolio` varchar(15) NOT NULL,
  `escproc` int(11) DEFAULT NULL,
  `condinscrip` int(11) NOT NULL,
  `hermanos` int(11) DEFAULT NULL,
  `hermest` int(11) DEFAULT NULL,
  `kmhogar` int(11) DEFAULT NULL,
  `habitantes` int(11) DEFAULT NULL,
  `habitaciones` int(11) DEFAULT NULL,
  `librohogar` int(11) DEFAULT NULL,
  `cuil` varchar(15) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `jefeflia` int(11) DEFAULT NULL,
  `retira1` int(11) DEFAULT NULL,
  `retira2` int(11) DEFAULT NULL,
  PRIMARY KEY (`nrodoc`),
  KEY `curso` (`curso`),
  KEY `calle` (`calle`),
  KEY `nivelescolar` (`nivelescolar`),
  KEY `turno` (`turno`),
  KEY `tipodoc` (`tipodoc`),
  KEY `estadodoc` (`estadodoc`),
  KEY `sexo` (`sexo`),
  KEY `nacionalidad` (`nacionalidad`),
  KEY `lugarnac` (`lugarnac`),
  KEY `provnac` (`provnac`),
  KEY `barrio` (`barrio`),
  KEY `localidad` (`localidad`),
  KEY `escproc` (`escproc`),
  KEY `condinscrip` (`condinscrip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `alumnos`
-- 

INSERT INTO `alumnos` VALUES (1, NULL, 1, 1, 33333333, 1, 'Silvero', 'Franco', 1, '0101-01-01', 1, 2800, 1, 1, 15720, NULL, NULL, NULL, 1, 2804, '2804', '3489237890', NULL, '1', '1', '1', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '20-33333333-3', NULL, NULL, NULL, NULL);
INSERT INTO `alumnos` VALUES (1, '010101', 1, 1, 39414147, 1, 'Schneider', 'Diego', 1, '1996-04-26', 1, 2804, 1, 1, 416, NULL, NULL, NULL, 1, 2804, '2804', '348951368', NULL, '0', '0', '0', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '20-39414147-7', 'diegoschneider.96@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `barrios`
-- 

CREATE TABLE `barrios` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `barrios`
-- 

INSERT INTO `barrios` VALUES (1, 'Dálmine Nuevo');
INSERT INTO `barrios` VALUES (2, 'Las Acacias');

-- --------------------------------------------------------

-- 
-- Table structure for table `calles`
-- 

CREATE TABLE `calles` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `calles`
-- 

INSERT INTO `calles` VALUES (1, 'Fray Luis Beltrán');

-- --------------------------------------------------------

-- 
-- Table structure for table `cargo`
-- 

CREATE TABLE `cargo` (
  `doc` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`cargo`),
  KEY `cargo` (`cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `cargo`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `cargos`
-- 

CREATE TABLE `cargos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `cargos`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `catedras`
-- 

CREATE TABLE `catedras` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `materia` int(11) NOT NULL,
  `docente` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `inicio` time NOT NULL,
  `fin` time NOT NULL,
  `curso` varchar(7) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `materia` (`materia`),
  KEY `docente` (`docente`),
  KEY `curso` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `catedras`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `condactividad`
-- 

CREATE TABLE `condactividad` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `condactividad`
-- 

INSERT INTO `condactividad` VALUES (1, 'Trabajo Permanente');
INSERT INTO `condactividad` VALUES (2, 'Trabajo Temporario');
INSERT INTO `condactividad` VALUES (3, 'Changas/Jornalero');
INSERT INTO `condactividad` VALUES (4, 'No trabaja y busca');
INSERT INTO `condactividad` VALUES (5, 'Ama de Casa');
INSERT INTO `condactividad` VALUES (6, 'Estudiante');
INSERT INTO `condactividad` VALUES (7, 'Jubilado/Pensionado');
INSERT INTO `condactividad` VALUES (8, 'Rentista');
INSERT INTO `condactividad` VALUES (9, 'Discapacitado');
INSERT INTO `condactividad` VALUES (10, 'Otros');

-- --------------------------------------------------------

-- 
-- Table structure for table `condinscripcion`
-- 

CREATE TABLE `condinscripcion` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `condicion` varchar(40) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `condinscripcion`
-- 

INSERT INTO `condinscripcion` VALUES (1, 'Repitente');
INSERT INTO `condinscripcion` VALUES (2, 'Reinscripto');
INSERT INTO `condinscripcion` VALUES (3, 'Ingresante');
INSERT INTO `condinscripcion` VALUES (4, 'Promovido');
INSERT INTO `condinscripcion` VALUES (5, 'En compensación');
INSERT INTO `condinscripcion` VALUES (6, 'Proveniente del ciclo lectivo anterior');

-- --------------------------------------------------------

-- 
-- Table structure for table `cursos`
-- 

CREATE TABLE `cursos` (
  `cod` varchar(7) NOT NULL,
  `año` varchar(10) NOT NULL,
  `division` varchar(15) NOT NULL,
  `preceptora` int(11) DEFAULT NULL,
  `turno` int(11) NOT NULL,
  `especialidad` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `preceptora` (`preceptora`),
  KEY `turno` (`turno`),
  KEY `especialidad` (`especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `cursos`
-- 

INSERT INTO `cursos` VALUES ('010101', '1', '1', NULL, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `dia`
-- 

CREATE TABLE `dia` (
  `cod` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `dia`
-- 

INSERT INTO `dia` VALUES (1, 'Lunes');
INSERT INTO `dia` VALUES (2, 'Martes');
INSERT INTO `dia` VALUES (3, 'Miercoles');
INSERT INTO `dia` VALUES (4, 'Jueves');
INSERT INTO `dia` VALUES (5, 'Viernes');
INSERT INTO `dia` VALUES (6, 'Sabado');
INSERT INTO `dia` VALUES (7, 'Domingo');

-- --------------------------------------------------------

-- 
-- Table structure for table `errorlog`
-- 

CREATE TABLE `errorlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `errno` int(11) NOT NULL,
  `errstr` varchar(255) DEFAULT NULL,
  `errfile` varchar(128) DEFAULT NULL,
  `errline` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `errorlog`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `escuelas`
-- 

CREATE TABLE `escuelas` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `jurisdiccion` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `jurisdiccion_2` (`jurisdiccion`),
  KEY `nivel` (`nivel`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `escuelas`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `especialidades`
-- 

CREATE TABLE `especialidades` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `especialidades`
-- 

INSERT INTO `especialidades` VALUES (1, 'Básico');
INSERT INTO `especialidades` VALUES (2, 'Electromecánica');
INSERT INTO `especialidades` VALUES (3, 'Química');
INSERT INTO `especialidades` VALUES (4, 'Electrónica');
INSERT INTO `especialidades` VALUES (5, 'Informática');
INSERT INTO `especialidades` VALUES (6, 'Adultos');

-- --------------------------------------------------------

-- 
-- Table structure for table `estadodocumento`
-- 

CREATE TABLE `estadodocumento` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `estadodocumento`
-- 

INSERT INTO `estadodocumento` VALUES (1, 'Bueno');
INSERT INTO `estadodocumento` VALUES (2, 'Malo');
INSERT INTO `estadodocumento` VALUES (3, 'En trámite');
INSERT INTO `estadodocumento` VALUES (4, 'No posee');

-- --------------------------------------------------------

-- 
-- Table structure for table `familiares`
-- 

CREATE TABLE `familiares` (
  `jefe` int(11) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `profesion` varchar(50) NOT NULL,
  `condact` int(11) NOT NULL,
  `nivelinstru` int(11) NOT NULL,
  `vive` tinyint(1) NOT NULL,
  `tipodoc` int(11) NOT NULL,
  `doc` int(11) NOT NULL,
  `estadodoc` int(11) NOT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `piso` int(11) DEFAULT NULL,
  `torre` varchar(2) DEFAULT NULL,
  `dpto` varchar(4) DEFAULT NULL,
  `barrio` int(11) NOT NULL,
  `localidad` int(11) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `celular` varchar(40) NOT NULL,
  `firma` varbinary(1024) NOT NULL,
  `vinculo` int(11) NOT NULL,
  PRIMARY KEY (`doc`),
  KEY `calle` (`calle`),
  KEY `nacionalidad` (`nacionalidad`),
  KEY `condact` (`condact`),
  KEY `nivelinstru` (`nivelinstru`),
  KEY `tipodoc` (`tipodoc`),
  KEY `estadodoc` (`estadodoc`),
  KEY `barrio` (`barrio`),
  KEY `localidad` (`localidad`),
  KEY `vinculo` (`vinculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `familiares`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `fichasalud`
-- 

CREATE TABLE `fichasalud` (
  `doc` int(11) NOT NULL,
  `obrasocial` int(11) NOT NULL,
  `numos` int(11) NOT NULL,
  `antecenferm` text NOT NULL,
  `internado` text NOT NULL,
  `alergia` text NOT NULL,
  `causaalergia` text NOT NULL,
  `tratamalergia` tinyint(1) NOT NULL,
  `tratammedi` text NOT NULL,
  `cirugia` text NOT NULL,
  `edadcirugia` int(11) NOT NULL,
  `limfisica` text NOT NULL,
  `otrosprobsal` text NOT NULL,
  `vacunacion` int(11) NOT NULL,
  `talla` int(11) NOT NULL,
  `peso` float NOT NULL,
  `fechadet` date NOT NULL,
  `recurrir` int(11) NOT NULL,
  `medico` int(11) NOT NULL,
  `famdoc` int(11) NOT NULL,
  PRIMARY KEY (`doc`),
  KEY `obrasocial` (`obrasocial`),
  KEY `vacunacion` (`vacunacion`),
  KEY `recurrir` (`recurrir`),
  KEY `medico` (`medico`),
  KEY `famdoc` (`famdoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `fichasalud`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `gremio`
-- 

CREATE TABLE `gremio` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `gremio`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `instrecurrir`
-- 

CREATE TABLE `instrecurrir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calle` (`calle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `instrecurrir`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `localidades`
-- 

CREATE TABLE `localidades` (
  `cp` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `codarea` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  PRIMARY KEY (`cp`),
  KEY `nombre` (`nombre`),
  KEY `provincia` (`provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `localidades`
-- 

INSERT INTO `localidades` VALUES (2800, 'Zarate', 3487, 1);
INSERT INTO `localidades` VALUES (2804, 'Campana', 3489, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `materias`
-- 

CREATE TABLE `materias` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `materias`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `medicos`
-- 

CREATE TABLE `medicos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `calle` (`calle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `medicos`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `nivelescolar`
-- 

CREATE TABLE `nivelescolar` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `nivelescolar`
-- 

INSERT INTO `nivelescolar` VALUES (1, 'Primario');
INSERT INTO `nivelescolar` VALUES (2, 'Secundario');

-- --------------------------------------------------------

-- 
-- Table structure for table `nivelinstruccion`
-- 

CREATE TABLE `nivelinstruccion` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `nivelinstruccion`
-- 

INSERT INTO `nivelinstruccion` VALUES (1, 'Ninguno');
INSERT INTO `nivelinstruccion` VALUES (2, 'Primario Incompleto');
INSERT INTO `nivelinstruccion` VALUES (3, 'Primario Completo');
INSERT INTO `nivelinstruccion` VALUES (4, 'Secundario incompleto');
INSERT INTO `nivelinstruccion` VALUES (5, 'Secundario Completo');
INSERT INTO `nivelinstruccion` VALUES (6, 'Terciario Incompleto');
INSERT INTO `nivelinstruccion` VALUES (7, 'Terciario Completo');
INSERT INTO `nivelinstruccion` VALUES (8, 'Universitario Incompleto');
INSERT INTO `nivelinstruccion` VALUES (9, 'Universitario Completo');
INSERT INTO `nivelinstruccion` VALUES (10, 'Posgrado Incompleto');
INSERT INTO `nivelinstruccion` VALUES (11, 'Posgrado Completo');

-- --------------------------------------------------------

-- 
-- Table structure for table `paises`
-- 

CREATE TABLE `paises` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `paises`
-- 

INSERT INTO `paises` VALUES (1, 'Argentina', 'Argentino/a');

-- --------------------------------------------------------

-- 
-- Table structure for table `personal`
-- 

CREATE TABLE `personal` (
  `tipodoc` int(11) NOT NULL,
  `doc` int(11) NOT NULL,
  `estadodoc` int(11) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `fecnac` date NOT NULL,
  `cuil` varchar(15) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `localidad` int(11) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `barrio` int(11) NOT NULL,
  `calle` int(11) NOT NULL,
  `nrocalle` int(11) NOT NULL,
  `dpto` varchar(5) DEFAULT NULL,
  `telefono` varchar(40) NOT NULL,
  `celular` varchar(40) NOT NULL,
  `foto` varbinary(1024) NOT NULL,
  `firma` varbinary(1024) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sexo` int(11) NOT NULL,
  `gremio` int(11) NOT NULL,
  PRIMARY KEY (`doc`),
  KEY `calle` (`calle`),
  KEY `tipodoc` (`tipodoc`),
  KEY `estadodoc` (`estadodoc`),
  KEY `nacionalidad` (`nacionalidad`),
  KEY `localidad` (`localidad`),
  KEY `barrio` (`barrio`),
  KEY `sexo` (`sexo`),
  KEY `gremio` (`gremio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `personal`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `provincia`
-- 

CREATE TABLE `provincia` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `provincia`
-- 

INSERT INTO `provincia` VALUES (1, 'Buenos Aires');

-- --------------------------------------------------------

-- 
-- Table structure for table `sexo`
-- 

CREATE TABLE `sexo` (
  `cod` int(11) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `sexo`
-- 

INSERT INTO `sexo` VALUES (1, 'Masculino');
INSERT INTO `sexo` VALUES (2, 'Femenino');
INSERT INTO `sexo` VALUES (3, 'No especifica');

-- --------------------------------------------------------

-- 
-- Table structure for table `tipodocumento`
-- 

CREATE TABLE `tipodocumento` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(3) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tipodocumento`
-- 

INSERT INTO `tipodocumento` VALUES (1, 'DU');
INSERT INTO `tipodocumento` VALUES (2, 'LE');
INSERT INTO `tipodocumento` VALUES (3, 'LC');
INSERT INTO `tipodocumento` VALUES (4, 'CI');
INSERT INTO `tipodocumento` VALUES (5, 'ET');

-- --------------------------------------------------------

-- 
-- Table structure for table `tipoescuela`
-- 

CREATE TABLE `tipoescuela` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `tipoescuela`
-- 

INSERT INTO `tipoescuela` VALUES (1, 'Estatal');
INSERT INTO `tipoescuela` VALUES (2, 'Privada');

-- --------------------------------------------------------

-- 
-- Table structure for table `titulo`
-- 

CREATE TABLE `titulo` (
  `doc` int(11) NOT NULL,
  `titulo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`titulo`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `titulo`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `titulos`
-- 

CREATE TABLE `titulos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `titulos`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `turnos`
-- 

CREATE TABLE `turnos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `turnos`
-- 

INSERT INTO `turnos` VALUES (1, 'Mañana');
INSERT INTO `turnos` VALUES (2, 'Tarde');
INSERT INTO `turnos` VALUES (3, 'Vespertino');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `perm` int(11) NOT NULL DEFAULT '0',
  `loginfails` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'diego', 'diego', 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `vinculos`
-- 

CREATE TABLE `vinculos` (
  `cod` int(11) NOT NULL,
  `vinculo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `vinculos`
-- 

INSERT INTO `vinculos` VALUES (1, 'Padre');
INSERT INTO `vinculos` VALUES (2, 'Madre');
INSERT INTO `vinculos` VALUES (3, 'Tutor');
INSERT INTO `vinculos` VALUES (4, 'Hermano/a');
INSERT INTO `vinculos` VALUES (5, 'Abuelo/a');
INSERT INTO `vinculos` VALUES (6, 'Tio/a');
INSERT INTO `vinculos` VALUES (7, 'Primo/a');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `alumnos`
-- 
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_51` FOREIGN KEY (`nivelescolar`) REFERENCES `nivelescolar` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_52` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_53` FOREIGN KEY (`turno`) REFERENCES `turnos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_54` FOREIGN KEY (`tipodoc`) REFERENCES `tipodocumento` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_55` FOREIGN KEY (`estadodoc`) REFERENCES `estadodocumento` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_56` FOREIGN KEY (`sexo`) REFERENCES `sexo` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_57` FOREIGN KEY (`nacionalidad`) REFERENCES `paises` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_58` FOREIGN KEY (`lugarnac`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_59` FOREIGN KEY (`provnac`) REFERENCES `provincia` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_60` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_61` FOREIGN KEY (`barrio`) REFERENCES `barrios` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_62` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_63` FOREIGN KEY (`escproc`) REFERENCES `escuelas` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_64` FOREIGN KEY (`condinscrip`) REFERENCES `condinscripcion` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `cargo`
-- 
ALTER TABLE `cargo`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`cargo`) REFERENCES `cargos` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `catedras`
-- 
ALTER TABLE `catedras`
  ADD CONSTRAINT `catedras_ibfk_4` FOREIGN KEY (`materia`) REFERENCES `materias` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catedras_ibfk_5` FOREIGN KEY (`docente`) REFERENCES `personal` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catedras_ibfk_6` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `cursos`
-- 
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`preceptora`) REFERENCES `personal` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`turno`) REFERENCES `turnos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_3` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `escuelas`
-- 
ALTER TABLE `escuelas`
  ADD CONSTRAINT `escuelas_ibfk_1` FOREIGN KEY (`jurisdiccion`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `escuelas_ibfk_2` FOREIGN KEY (`nivel`) REFERENCES `nivelescolar` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `escuelas_ibfk_3` FOREIGN KEY (`tipo`) REFERENCES `tipoescuela` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `familiares`
-- 
ALTER TABLE `familiares`
  ADD CONSTRAINT `familiares_ibfk_10` FOREIGN KEY (`condact`) REFERENCES `condactividad` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_11` FOREIGN KEY (`nivelinstru`) REFERENCES `nivelinstruccion` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_12` FOREIGN KEY (`tipodoc`) REFERENCES `tipodocumento` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_13` FOREIGN KEY (`estadodoc`) REFERENCES `estadodocumento` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_14` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_15` FOREIGN KEY (`barrio`) REFERENCES `barrios` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_16` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_17` FOREIGN KEY (`vinculo`) REFERENCES `vinculos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `familiares_ibfk_9` FOREIGN KEY (`nacionalidad`) REFERENCES `paises` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `instrecurrir`
-- 
ALTER TABLE `instrecurrir`
  ADD CONSTRAINT `instrecurrir_ibfk_1` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `localidades`
-- 
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`provincia`) REFERENCES `provincia` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `medicos`
-- 
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `personal`
-- 
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_10` FOREIGN KEY (`nacionalidad`) REFERENCES `paises` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_11` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_12` FOREIGN KEY (`barrio`) REFERENCES `barrios` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_13` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_14` FOREIGN KEY (`sexo`) REFERENCES `sexo` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_15` FOREIGN KEY (`gremio`) REFERENCES `gremio` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_8` FOREIGN KEY (`tipodoc`) REFERENCES `tipodocumento` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `personal_ibfk_9` FOREIGN KEY (`estadodoc`) REFERENCES `estadodocumento` (`cod`) ON UPDATE CASCADE;

-- 
-- Constraints for table `titulo`
-- 
ALTER TABLE `titulo`
  ADD CONSTRAINT `titulo_ibfk_1` FOREIGN KEY (`titulo`) REFERENCES `titulos` (`cod`) ON UPDATE CASCADE;
