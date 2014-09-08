-- MySQL dump 10.13
--
-- Host: localhost    Database: bdu
-- ------------------------------------------------------
-- Server version	6.0.4-alpha-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
  `nrolegajo` varchar(20) DEFAULT NULL,
  `nrolibmat` varchar(20) DEFAULT NULL,
  `nrofolio` varchar(15) DEFAULT NULL,
  `escproc` int(11) DEFAULT NULL,
  `condinscrip` int(11) NOT NULL,
  `hermanos` int(11) DEFAULT NULL,
  `hermest` int(11) DEFAULT NULL,
  `kmhogar` int(11) DEFAULT NULL,
  `habitantes` int(11) DEFAULT NULL,
  `habitaciones` int(11) DEFAULT NULL,
  `librohogar` int(11) DEFAULT NULL,
  `cuil` varchar(15) DEFAULT NULL,
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
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `barrios` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `calles`
--

DROP TABLE IF EXISTS `calles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `calles` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cargo` (
  `doc` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`cargo`),
  KEY `cargo` (`cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cargos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `catedras`
--

DROP TABLE IF EXISTS `catedras`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `catedras` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(7) NOT NULL,
  `docente` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `inicio` time NOT NULL,
  `fin` time NOT NULL,
  `curso` varchar(7) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `materia` (`materia`),
  KEY `docente` (`docente`),
  KEY `curso` (`curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `condactividad`
--

DROP TABLE IF EXISTS `condactividad`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `condactividad` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `condinscripcion`
--

DROP TABLE IF EXISTS `condinscripcion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `condinscripcion` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `condicion` varchar(40) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
  KEY `especialidad` (`especialidad`),
  KEY `año` (`año`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dia` (
  `cod` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `escuelas`
--

DROP TABLE IF EXISTS `escuelas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `escuelas` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `jurisdiccion` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `jurisdiccion_2` (`jurisdiccion`),
  KEY `nivel` (`nivel`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `especialidades` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `estadodocumento`
--

DROP TABLE IF EXISTS `estadodocumento`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `estadodocumento` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `familiares`
--

DROP TABLE IF EXISTS `familiares`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fichasalud`
--

DROP TABLE IF EXISTS `fichasalud`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gremio`
--

DROP TABLE IF EXISTS `gremio`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gremio` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `instrecurrir`
--

DROP TABLE IF EXISTS `instrecurrir`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `instrecurrir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calle` (`calle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `localidades` (
  `cp` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `codarea` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  PRIMARY KEY (`cp`),
  KEY `nombre` (`nombre`),
  KEY `provincia` (`provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) COLLATE utf8_bin NOT NULL,
  `userid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `success` tinyint(1) NOT NULL,
  `newloginfails` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `materias` (
  `cod` varchar(7) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `año` varchar(10) NOT NULL,
  `especialidad` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `especialidad` (`especialidad`),
  KEY `año` (`año`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `medicos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `calle` int(11) NOT NULL,
  `callenro` int(11) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `calle` (`calle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nivelescolar`
--

DROP TABLE IF EXISTS `nivelescolar`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `nivelescolar` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nivelinstruccion`
--

DROP TABLE IF EXISTS `nivelinstruccion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `nivelinstruccion` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `paises` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
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
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `provincia` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sexo` (
  `cod` int(11) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tipodocumento` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(3) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipoescuela`
--

DROP TABLE IF EXISTS `tipoescuela`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tipoescuela` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `titulo`
--

DROP TABLE IF EXISTS `titulo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `titulo` (
  `doc` int(11) NOT NULL,
  `titulo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`titulo`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `titulos`
--

DROP TABLE IF EXISTS `titulos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `titulos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `turnos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `perm` int(11) NOT NULL DEFAULT '0',
  `loginfails` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vinculos`
--

DROP TABLE IF EXISTS `vinculos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vinculos` (
  `cod` int(11) NOT NULL,
  `vinculo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-08  3:41:07
