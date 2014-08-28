-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2014 at 10:46 PM
-- Server version: 6.0.4
-- PHP Version: 6.0.0-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `bdu`
-- 
DROP DATABASE `bdu`;
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

INSERT INTO `alumnos` VALUES (2, '050605', 3, 1, 65, 1, 'iop', 'iop', 3, '0000-00-00', 591, 2812, 21, 387, 456, NULL, NULL, NULL, 8, 2812, '2801', '567845323123', NULL, '456', '465', '456', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '456786', 'dfsdfdsfsdf@sdfmsdf.com', NULL, NULL, NULL);
INSERT INTO `alumnos` VALUES (1, '010101', 1, 1, 34893283, 1, 'Pepito', 'Juanes', 1, '1996-04-26', 0, 2804, 1, 46, 414, NULL, NULL, NULL, 47, 2804, '2804', '12312312312', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '20-12312313-3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `barrios`
-- 

CREATE TABLE `barrios` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- Dumping data for table `barrios`
-- 

INSERT INTO `barrios` VALUES (1, '9 DE JULIO');
INSERT INTO `barrios` VALUES (2, 'ALBERDI');
INSERT INTO `barrios` VALUES (3, 'ALBIZOLA');
INSERT INTO `barrios` VALUES (4, 'ARIEL DEL PLATA');
INSERT INTO `barrios` VALUES (5, 'BALNEARIO');
INSERT INTO `barrios` VALUES (6, 'BARRIOS UNIDOS');
INSERT INTO `barrios` VALUES (7, 'CATEMA');
INSERT INTO `barrios` VALUES (8, 'CENTRO');
INSERT INTO `barrios` VALUES (9, 'DALLERA');
INSERT INTO `barrios` VALUES (10, 'DEL PINO');
INSERT INTO `barrios` VALUES (11, 'DON FRANCISCO');
INSERT INTO `barrios` VALUES (12, 'DON MANUEL');
INSERT INTO `barrios` VALUES (13, 'FERRERO');
INSERT INTO `barrios` VALUES (14, 'HEROES DE MALVNAS I');
INSERT INTO `barrios` VALUES (15, 'HEROES DE MALVINAS II');
INSERT INTO `barrios` VALUES (16, 'ISLAS');
INSERT INTO `barrios` VALUES (17, 'LA ARGENTINA');
INSERT INTO `barrios` VALUES (18, 'LA ESPERANZA');
INSERT INTO `barrios` VALUES (19, 'LA JOSEFA');
INSERT INTO `barrios` VALUES (20, 'LAS ACACIAS');
INSERT INTO `barrios` VALUES (21, 'LAS CAMPANAS');
INSERT INTO `barrios` VALUES (22, 'LAS PRADERAS');
INSERT INTO `barrios` VALUES (23, 'LOS PIONEROS');
INSERT INTO `barrios` VALUES (24, 'LUBO');
INSERT INTO `barrios` VALUES (25, 'OTAMENDI');
INSERT INTO `barrios` VALUES (26, 'PERDRIEL');
INSERT INTO `barrios` VALUES (27, 'RIO LUJAN');
INSERT INTO `barrios` VALUES (28, 'ROMANO');
INSERT INTO `barrios` VALUES (29, 'RURAL');
INSERT INTO `barrios` VALUES (30, 'SAN CAYETANO');
INSERT INTO `barrios` VALUES (31, 'SAN FELIPE');
INSERT INTO `barrios` VALUES (32, 'SAN JACINTO');
INSERT INTO `barrios` VALUES (33, 'SAN LUCIANO');
INSERT INTO `barrios` VALUES (34, 'SANTA FLORENTINA');
INSERT INTO `barrios` VALUES (35, 'SANTA LUCIA');
INSERT INTO `barrios` VALUES (36, 'SARMIENTO');
INSERT INTO `barrios` VALUES (37, 'SIDERCA');
INSERT INTO `barrios` VALUES (38, 'TABLITAS');
INSERT INTO `barrios` VALUES (39, 'TALITAS');
INSERT INTO `barrios` VALUES (40, 'URQUIZA');
INSERT INTO `barrios` VALUES (41, 'VITRAMU I');
INSERT INTO `barrios` VALUES (42, 'VITRAMU II');
INSERT INTO `barrios` VALUES (43, 'EL DESTINO');
INSERT INTO `barrios` VALUES (44, 'LOS NOGALES');
INSERT INTO `barrios` VALUES (45, 'GENERAL SAN MARTIN');
INSERT INTO `barrios` VALUES (46, 'NO ES DE CAMPANA');
INSERT INTO `barrios` VALUES (47, 'NUEVO DALMINE');
INSERT INTO `barrios` VALUES (48, 'NO INDICADO');
INSERT INTO `barrios` VALUES (49, 'LA LUCILA');
INSERT INTO `barrios` VALUES (50, 'DIGNIDAD');

-- --------------------------------------------------------

-- 
-- Table structure for table `calles`
-- 

CREATE TABLE `calles` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=503 ;

-- 
-- Dumping data for table `calles`
-- 

INSERT INTO `calles` VALUES (1, '2 DE ABRIL');
INSERT INTO `calles` VALUES (2, '25 DE MAYO\r\n');
INSERT INTO `calles` VALUES (3, '26 DE NOVIEMBRE\r\n');
INSERT INTO `calles` VALUES (4, '9 DE JULIO\r\n');
INSERT INTO `calles` VALUES (5, 'AGUIAR\r\n');
INSERT INTO `calles` VALUES (6, 'AHUMADA\r\n');
INSERT INTO `calles` VALUES (7, 'ALBERDI\r\n');
INSERT INTO `calles` VALUES (8, 'ALBERTI\r\n');
INSERT INTO `calles` VALUES (9, 'ALBO LUIS\r\n');
INSERT INTO `calles` VALUES (10, 'ALEM\r\n');
INSERT INTO `calles` VALUES (11, 'ALFERI ROBERTO\r\n');
INSERT INTO `calles` VALUES (12, 'ALIGHIERI\r\n');
INSERT INTO `calles` VALUES (13, 'ALSINA  (PASAJE)  INT. 4\r\n');
INSERT INTO `calles` VALUES (14, 'ALVEAR\r\n');
INSERT INTO `calles` VALUES (15, 'AMEGHINO\r\n');
INSERT INTO `calles` VALUES (16, 'ANDRES DEL PINO\r\n');
INSERT INTO `calles` VALUES (17, 'ANGELET\r\n');
INSERT INTO `calles` VALUES (18, 'ANTARTIDA ARGENTINA\r\n');
INSERT INTO `calles` VALUES (19, 'ARENALES\r\n');
INSERT INTO `calles` VALUES (20, 'ARENAZA\r\n');
INSERT INTO `calles` VALUES (21, 'ARGUI');
INSERT INTO `calles` VALUES (22, 'ARMESTO\r\n');
INSERT INTO `calles` VALUES (23, 'ARRIBE');
INSERT INTO `calles` VALUES (24, 'ASCASUBI\r\n');
INSERT INTO `calles` VALUES (25, 'ASTELARRA\r\n');
INSERT INTO `calles` VALUES (26, 'AYOS\r\n');
INSERT INTO `calles` VALUES (27, 'BALBIN\r\n');
INSERT INTO `calles` VALUES (28, 'BALCARCE\r\n');
INSERT INTO `calles` VALUES (29, 'BALDRICH\r\n');
INSERT INTO `calles` VALUES (30, 'BALOSSINO ABEL\r\n');
INSERT INTO `calles` VALUES (31, 'BARCA\r\n');
INSERT INTO `calles` VALUES (32, 'BARLARO\r\n');
INSERT INTO `calles` VALUES (33, 'BARLETTA NICOLAS\r\n');
INSERT INTO `calles` VALUES (34, 'BARLETTA SAVERIO\r\n');
INSERT INTO `calles` VALUES (35, 'BARNETCHE\r\n');
INSERT INTO `calles` VALUES (36, 'BARRIOLA\r\n');
INSERT INTO `calles` VALUES (37, 'BARTHEBORDE\r\n');
INSERT INTO `calles` VALUES (38, 'BAYLEY\r\n');
INSERT INTO `calles` VALUES (39, 'BECERRA\r\n');
INSERT INTO `calles` VALUES (40, 'BEGUE\r\n');
INSERT INTO `calles` VALUES (41, 'BEHOCARAY\r\n');
INSERT INTO `calles` VALUES (42, 'BELELLI\r\n');
INSERT INTO `calles` VALUES (43, 'BELGRANO\r\n');
INSERT INTO `calles` VALUES (44, 'BELLOMO\r\n');
INSERT INTO `calles` VALUES (45, 'BELTRAME\r\n');
INSERT INTO `calles` VALUES (46, 'BELTRAN\r\n');
INSERT INTO `calles` VALUES (47, 'BENTANCOURT PLACIDO\r\n');
INSERT INTO `calles` VALUES (48, 'BENTANCOURT TELLESFORO\r\n');
INSERT INTO `calles` VALUES (49, 'BERGAMO\r\n');
INSERT INTO `calles` VALUES (50, 'BERNATENE\r\n');
INSERT INTO `calles` VALUES (51, 'BERNI\r\n');
INSERT INTO `calles` VALUES (52, 'BERON HONORIO\r\n');
INSERT INTO `calles` VALUES (53, 'BERTO\r\n');
INSERT INTO `calles` VALUES (54, 'BERTOLINI\r\n');
INSERT INTO `calles` VALUES (55, 'BERUTI\r\n');
INSERT INTO `calles` VALUES (56, 'BESASSO\r\n');
INSERT INTO `calles` VALUES (57, 'BIDEGAIN\r\n');
INSERT INTO `calles` VALUES (58, 'BLANCO\r\n');
INSERT INTO `calles` VALUES (59, 'BOLIVIA\r\n');
INSERT INTO `calles` VALUES (60, 'BOLZAN\r\n');
INSERT INTO `calles` VALUES (61, 'BOMBEROS VOLUNTARIOS\r\n');
INSERT INTO `calles` VALUES (62, 'BRAVO\r\n');
INSERT INTO `calles` VALUES (63, 'BREGLIA\r\n');
INSERT INTO `calles` VALUES (64, 'BRID\r\n');
INSERT INTO `calles` VALUES (65, 'BROWN\r\n');
INSERT INTO `calles` VALUES (66, 'BRUNI\r\n');
INSERT INTO `calles` VALUES (67, 'BUENOS AIRES\r\n');
INSERT INTO `calles` VALUES (68, 'BUONARROTTI\r\n');
INSERT INTO `calles` VALUES (69, 'BURGOS\r\n');
INSERT INTO `calles` VALUES (70, 'BUSSO DR. JOSE\r\n');
INSERT INTO `calles` VALUES (71, 'BUSSO JORDAN\r\n');
INSERT INTO `calles` VALUES (72, 'BUTTLER\r\n');
INSERT INTO `calles` VALUES (73, 'CABRERA SALVADOR\r\n');
INSERT INTO `calles` VALUES (74, 'CACERES\r\n');
INSERT INTO `calles` VALUES (75, 'CALLE S/N\r\n');
INSERT INTO `calles` VALUES (76, 'CAMEZANA\r\n');
INSERT INTO `calles` VALUES (77, 'CAMINO SEC. RED PROVL.014-02\r\n');
INSERT INTO `calles` VALUES (78, 'CANAL ALEM\r\n');
INSERT INTO `calles` VALUES (79, 'CANAL IRIGOYEN\r\n');
INSERT INTO `calles` VALUES (80, 'CANDIDO CABRERA\r\n');
INSERT INTO `calles` VALUES (81, 'CAPILLA DEL SE');
INSERT INTO `calles` VALUES (82, 'CARCOBA\r\n');
INSERT INTO `calles` VALUES (83, 'CARHUE\r\n');
INSERT INTO `calles` VALUES (84, 'CARLOS PELLEGRINI\r\n');
INSERT INTO `calles` VALUES (85, 'CARMONA\r\n');
INSERT INTO `calles` VALUES (86, 'CAROSSA\r\n');
INSERT INTO `calles` VALUES (87, 'CARRETO\r\n');
INSERT INTO `calles` VALUES (88, 'CASAUX\r\n');
INSERT INTO `calles` VALUES (89, 'CASSUSA PEDRO\r\n');
INSERT INTO `calles` VALUES (90, 'CASTA');
INSERT INTO `calles` VALUES (91, 'CASTA');
INSERT INTO `calles` VALUES (92, 'CASTELLI\r\n');
INSERT INTO `calles` VALUES (93, 'CASTILLA\r\n');
INSERT INTO `calles` VALUES (94, 'CASTRO\r\n');
INSERT INTO `calles` VALUES (95, 'CATAMARCA\r\n');
INSERT INTO `calles` VALUES (96, 'CAVALLI\r\n');
INSERT INTO `calles` VALUES (97, 'CE');
INSERT INTO `calles` VALUES (98, 'CHACABUCO\r\n');
INSERT INTO `calles` VALUES (99, 'CHACO\r\n');
INSERT INTO `calles` VALUES (100, 'CHAPUIS CLAUDIO\r\n');
INSERT INTO `calles` VALUES (101, 'CHAPUIS LUIS\r\n');
INSERT INTO `calles` VALUES (102, 'CHAPUIS SUSANA\r\n');
INSERT INTO `calles` VALUES (103, 'CHICLANA\r\n');
INSERT INTO `calles` VALUES (104, 'CHIFFLET\r\n');
INSERT INTO `calles` VALUES (105, 'CHILAVERT\r\n');
INSERT INTO `calles` VALUES (106, 'CHILE\r\n');
INSERT INTO `calles` VALUES (107, 'CHUBUT\r\n');
INSERT INTO `calles` VALUES (108, 'CHURRINCHE\r\n');
INSERT INTO `calles` VALUES (109, 'CINTAS\r\n');
INSERT INTO `calles` VALUES (110, 'COLECTORA NORTE RUTA NAC. N');
INSERT INTO `calles` VALUES (111, 'COLECTORA SUR RUTA NAC. N');
INSERT INTO `calles` VALUES (112, 'COLETTA ANTONIO\r\n');
INSERT INTO `calles` VALUES (113, 'COLETTA CASILDO\r\n');
INSERT INTO `calles` VALUES (114, 'COLETTA JOSE\r\n');
INSERT INTO `calles` VALUES (115, 'COLOMBIA\r\n');
INSERT INTO `calles` VALUES (116, 'COLON\r\n');
INSERT INTO `calles` VALUES (117, 'COLTELLI\r\n');
INSERT INTO `calles` VALUES (118, 'COMBATIENTES DE MALVINAS\r\n');
INSERT INTO `calles` VALUES (119, 'COMELLI\r\n');
INSERT INTO `calles` VALUES (120, 'CONTI\r\n');
INSERT INTO `calles` VALUES (121, 'CORDERO\r\n');
INSERT INTO `calles` VALUES (122, 'CORDEU ANGEL\r\n');
INSERT INTO `calles` VALUES (123, 'CORDEU MANUEL\r\n');
INSERT INTO `calles` VALUES (124, 'CORDOBA\r\n');
INSERT INTO `calles` VALUES (125, 'CORRIENTES\r\n');
INSERT INTO `calles` VALUES (126, 'COSTA  LUIS\r\n');
INSERT INTO `calles` VALUES (127, 'COSTA RICA\r\n');
INSERT INTO `calles` VALUES (128, 'CROCCIO\r\n');
INSERT INTO `calles` VALUES (129, 'CUBA\r\n');
INSERT INTO `calles` VALUES (130, 'CUELI\r\n');
INSERT INTO `calles` VALUES (131, 'DA VINCI\r\n');
INSERT INTO `calles` VALUES (132, 'DALLERA PABLO\r\n');
INSERT INTO `calles` VALUES (133, 'DALLERA PEDRO\r\n');
INSERT INTO `calles` VALUES (134, 'DASSO\r\n');
INSERT INTO `calles` VALUES (135, 'DE AMICIS\r\n');
INSERT INTO `calles` VALUES (136, 'DE DOMINICIS\r\n');
INSERT INTO `calles` VALUES (137, 'DE GARAY\r\n');
INSERT INTO `calles` VALUES (138, 'DE LA CARCOVA\r\n');
INSERT INTO `calles` VALUES (139, 'DE LA PE');
INSERT INTO `calles` VALUES (140, 'DE LA TORRE\r\n');
INSERT INTO `calles` VALUES (141, 'DE LOS INMIGRANTES\r\n');
INSERT INTO `calles` VALUES (142, 'DE LOS TRABAJADORES\r\n');
INSERT INTO `calles` VALUES (143, 'DE PAOLI RUTHV*\r\n');
INSERT INTO `calles` VALUES (144, 'DE PAOLI SANTIAGO\r\n');
INSERT INTO `calles` VALUES (145, 'DE PEON\r\n');
INSERT INTO `calles` VALUES (146, 'DE PETO\r\n');
INSERT INTO `calles` VALUES (147, 'DEL CASTILLO\r\n');
INSERT INTO `calles` VALUES (148, 'DEL GRECO\r\n');
INSERT INTO `calles` VALUES (149, 'DELLEPIANE ANGEL\r\n');
INSERT INTO `calles` VALUES (150, 'DELLEPIANE INT. JUAN\r\n');
INSERT INTO `calles` VALUES (151, 'DELLEPIANE SANTIAGO\r\n');
INSERT INTO `calles` VALUES (152, 'DEMARCO OSVALDO\r\n');
INSERT INTO `calles` VALUES (153, 'DEMARCO VICENTE\r\n');
INSERT INTO `calles` VALUES (154, 'DEVOTO\r\n');
INSERT INTO `calles` VALUES (155, 'DI LUCA\r\n');
INSERT INTO `calles` VALUES (156, 'DOLCI\r\n');
INSERT INTO `calles` VALUES (157, 'DONIZETTI\r\n');
INSERT INTO `calles` VALUES (158, 'DORIA\r\n');
INSERT INTO `calles` VALUES (159, 'DORREGO\r\n');
INSERT INTO `calles` VALUES (160, 'DRAGONE\r\n');
INSERT INTO `calles` VALUES (161, 'DULCE\r\n');
INSERT INTO `calles` VALUES (162, 'ECHEVERRIA\r\n');
INSERT INTO `calles` VALUES (163, 'ECHEVERRIA JOSE MARIA\r\n');
INSERT INTO `calles` VALUES (164, 'ECHEVERRIA LORENZO\r\n');
INSERT INTO `calles` VALUES (165, 'ECUADOR\r\n');
INSERT INTO `calles` VALUES (166, 'EDISSON\r\n');
INSERT INTO `calles` VALUES (167, 'EL ALAZAN\r\n');
INSERT INTO `calles` VALUES (168, 'EL APERO\r\n');
INSERT INTO `calles` VALUES (169, 'EL ARRIERO\r\n');
INSERT INTO `calles` VALUES (170, 'EL BOYERO\r\n');
INSERT INTO `calles` VALUES (171, 'EL CEIBO\r\n');
INSERT INTO `calles` VALUES (172, 'EL FOGON\r\n');
INSERT INTO `calles` VALUES (173, 'EL GORRION\r\n');
INSERT INTO `calles` VALUES (174, 'EL JACARANDA\r\n');
INSERT INTO `calles` VALUES (175, 'EL LAZO\r\n');
INSERT INTO `calles` VALUES (176, 'EL OMBU\r\n');
INSERT INTO `calles` VALUES (177, 'EL PALENQUE\r\n');
INSERT INTO `calles` VALUES (178, 'EL PORTEZUELO\r\n');
INSERT INTO `calles` VALUES (179, 'EL POTRO\r\n');
INSERT INTO `calles` VALUES (180, 'EL QUINCHO\r\n');
INSERT INTO `calles` VALUES (181, 'EL RESERO\r\n');
INSERT INTO `calles` VALUES (182, 'EL SALVADOR\r\n');
INSERT INTO `calles` VALUES (183, 'EL TALA\r\n');
INSERT INTO `calles` VALUES (184, 'EL ZORZAL\r\n');
INSERT INTO `calles` VALUES (185, 'ENTRE RIOS\r\n');
INSERT INTO `calles` VALUES (186, 'ERRECART\r\n');
INSERT INTO `calles` VALUES (187, 'ESCOLA CAPT.\r\n');
INSERT INTO `calles` VALUES (188, 'ESQUIU\r\n');
INSERT INTO `calles` VALUES (189, 'ESTANISLAO DEL CAMPO\r\n');
INSERT INTO `calles` VALUES (190, 'ESTRADA\r\n');
INSERT INTO `calles` VALUES (191, 'ETCHALUZ\r\n');
INSERT INTO `calles` VALUES (192, 'FABRIS\r\n');
INSERT INTO `calles` VALUES (193, 'FADER\r\n');
INSERT INTO `calles` VALUES (194, 'FALUCHO\r\n');
INSERT INTO `calles` VALUES (195, 'FARELO\r\n');
INSERT INTO `calles` VALUES (196, 'FELIX FERNANDEZ\r\n');
INSERT INTO `calles` VALUES (197, 'FORLANI\r\n');
INSERT INTO `calles` VALUES (198, 'FORMOSA\r\n');
INSERT INTO `calles` VALUES (199, 'FRANCISCO FERNANDEZ\r\n');
INSERT INTO `calles` VALUES (200, 'FRANTIELLI\r\n');
INSERT INTO `calles` VALUES (201, 'FREMY\r\n');
INSERT INTO `calles` VALUES (202, 'FRENCH\r\n');
INSERT INTO `calles` VALUES (203, 'FUCHS\r\n');
INSERT INTO `calles` VALUES (204, 'FUMIERE\r\n');
INSERT INTO `calles` VALUES (205, 'GANDHI\r\n');
INSERT INTO `calles` VALUES (206, 'GARAY\r\n');
INSERT INTO `calles` VALUES (207, 'GARCIA\r\n');
INSERT INTO `calles` VALUES (208, 'GARIBALDI\r\n');
INSERT INTO `calles` VALUES (209, 'GATTI\r\n');
INSERT INTO `calles` VALUES (210, 'GAVAZZI\r\n');
INSERT INTO `calles` VALUES (211, 'GAYA\r\n');
INSERT INTO `calles` VALUES (212, 'GENOVA\r\n');
INSERT INTO `calles` VALUES (213, 'GENTA\r\n');
INSERT INTO `calles` VALUES (214, 'GIACHINO\r\n');
INSERT INTO `calles` VALUES (215, 'GIGENA\r\n');
INSERT INTO `calles` VALUES (216, 'GIL CASTRO\r\n');
INSERT INTO `calles` VALUES (217, 'GIL GOMEZ\r\n');
INSERT INTO `calles` VALUES (218, 'GIOBELLINI\r\n');
INSERT INTO `calles` VALUES (219, 'GISMUNDI\r\n');
INSERT INTO `calles` VALUES (220, 'GONZALEZ ELPIDIO\r\n');
INSERT INTO `calles` VALUES (221, 'GOUJON\r\n');
INSERT INTO `calles` VALUES (222, 'GRACIANI\r\n');
INSERT INTO `calles` VALUES (223, 'GRANADEROS\r\n');
INSERT INTO `calles` VALUES (224, 'GRASSI ANGEL\r\n');
INSERT INTO `calles` VALUES (225, 'GRASSI CONCEJAL LUIS\r\n');
INSERT INTO `calles` VALUES (226, 'GUANELLA\r\n');
INSERT INTO `calles` VALUES (227, 'GUATEMALA\r\n');
INSERT INTO `calles` VALUES (228, 'GUEMES\r\n');
INSERT INTO `calles` VALUES (229, 'GURREA\r\n');
INSERT INTO `calles` VALUES (230, 'HARRICHABALET\r\n');
INSERT INTO `calles` VALUES (231, 'HIPOLITO IRIGOYEN\r\n');
INSERT INTO `calles` VALUES (232, 'HONDURAS\r\n');
INSERT INTO `calles` VALUES (233, 'HOUSSAY\r\n');
INSERT INTO `calles` VALUES (234, 'HUERGO\r\n');
INSERT INTO `calles` VALUES (235, 'IBARRA\r\n');
INSERT INTO `calles` VALUES (236, 'IGLESIAS\r\n');
INSERT INTO `calles` VALUES (237, 'IGUAZU\r\n');
INSERT INTO `calles` VALUES (238, 'ILLARRAMENDI\r\n');
INSERT INTO `calles` VALUES (239, 'ILLIA\r\n');
INSERT INTO `calles` VALUES (240, 'INTERNO 1\r\n');
INSERT INTO `calles` VALUES (241, 'INTERNO 2\r\n');
INSERT INTO `calles` VALUES (242, 'INTERNO 3\r\n');
INSERT INTO `calles` VALUES (243, 'IRIART\r\n');
INSERT INTO `calles` VALUES (244, 'ISLAS MALVINAS\r\n');
INSERT INTO `calles` VALUES (245, 'ITALIA\r\n');
INSERT INTO `calles` VALUES (246, 'ITURRIAGA\r\n');
INSERT INTO `calles` VALUES (247, 'IZZETA\r\n');
INSERT INTO `calles` VALUES (248, 'JACINTO FERNANDEZ\r\n');
INSERT INTO `calles` VALUES (249, 'JACOB\r\n');
INSERT INTO `calles` VALUES (250, 'JACONET\r\n');
INSERT INTO `calles` VALUES (251, 'JEAN JAURES\r\n');
INSERT INTO `calles` VALUES (252, 'JOSE HERNANDEZ\r\n');
INSERT INTO `calles` VALUES (253, 'JOSE INGENIEROS\r\n');
INSERT INTO `calles` VALUES (254, 'JUAN XXIII\r\n');
INSERT INTO `calles` VALUES (255, 'JUJUY\r\n');
INSERT INTO `calles` VALUES (256, 'JUSTO\r\n');
INSERT INTO `calles` VALUES (257, 'KELLY\r\n');
INSERT INTO `calles` VALUES (258, 'KUPERMAN\r\n');
INSERT INTO `calles` VALUES (259, 'LA CALANDRIA\r\n');
INSERT INTO `calles` VALUES (260, 'LA CARRETA\r\n');
INSERT INTO `calles` VALUES (261, 'LA CUMBRECITA\r\n');
INSERT INTO `calles` VALUES (262, 'LA MADRINA\r\n');
INSERT INTO `calles` VALUES (263, 'LA PAMPA\r\n');
INSERT INTO `calles` VALUES (264, 'LA RIOJA\r\n');
INSERT INTO `calles` VALUES (265, 'LAGO ARGENTINO\r\n');
INSERT INTO `calles` VALUES (266, 'LAGUINGE ESTEBAN\r\n');
INSERT INTO `calles` VALUES (267, 'LAPLUME\r\n');
INSERT INTO `calles` VALUES (268, 'LAPRIDA\r\n');
INSERT INTO `calles` VALUES (269, 'LARRABURE\r\n');
INSERT INTO `calles` VALUES (270, 'LARRALDE\r\n');
INSERT INTO `calles` VALUES (271, 'LAS ACACIAS\r\n');
INSERT INTO `calles` VALUES (272, 'LAS ACHIRAS\r\n');
INSERT INTO `calles` VALUES (273, 'LAS AGUILAS\r\n');
INSERT INTO `calles` VALUES (274, 'LAS AMAPOLAS\r\n');
INSERT INTO `calles` VALUES (275, 'LAS AZALEAS\r\n');
INSERT INTO `calles` VALUES (276, 'LAS CALANDRIAS\r\n');
INSERT INTO `calles` VALUES (277, 'LAS CALENDULAS\r\n');
INSERT INTO `calles` VALUES (278, 'LAS DALIAS\r\n');
INSERT INTO `calles` VALUES (279, 'LAS GARDENIAS\r\n');
INSERT INTO `calles` VALUES (280, 'LAS GLICINAS\r\n');
INSERT INTO `calles` VALUES (281, 'LAS HERAS\r\n');
INSERT INTO `calles` VALUES (282, 'LAS HORTENCIAS\r\n');
INSERT INTO `calles` VALUES (283, 'LAS MARTINETAS\r\n');
INSERT INTO `calles` VALUES (284, 'LAS ORQUIDEAS\r\n');
INSERT INTO `calles` VALUES (285, 'LAS PETUNIAS\r\n');
INSERT INTO `calles` VALUES (286, 'LAS PRIMULAS\r\n');
INSERT INTO `calles` VALUES (287, 'LAS ROSAS\r\n');
INSERT INTO `calles` VALUES (288, 'LAS TIJERETAS\r\n');
INSERT INTO `calles` VALUES (289, 'LAS TORCAZAS\r\n');
INSERT INTO `calles` VALUES (290, 'LAS VERBENAS\r\n');
INSERT INTO `calles` VALUES (291, 'LAS VIOLETAS\r\n');
INSERT INTO `calles` VALUES (292, 'LAVALLE\r\n');
INSERT INTO `calles` VALUES (293, 'LAVEZZARI AV. FRANCISCO\r\n');
INSERT INTO `calles` VALUES (294, 'LAVEZZARI JUAN\r\n');
INSERT INTO `calles` VALUES (295, 'LEDESMA\r\n');
INSERT INTO `calles` VALUES (296, 'LELOIR\r\n');
INSERT INTO `calles` VALUES (297, 'LEPORE\r\n');
INSERT INTO `calles` VALUES (298, 'LEVALLE\r\n');
INSERT INTO `calles` VALUES (299, 'LINIERS\r\n');
INSERT INTO `calles` VALUES (300, 'LLAO LLAO\r\n');
INSERT INTO `calles` VALUES (301, 'LOPEZ PI');
INSERT INTO `calles` VALUES (302, 'LOPEZ Y PLANES\r\n');
INSERT INTO `calles` VALUES (303, 'LOS ABEDULES\r\n');
INSERT INTO `calles` VALUES (304, 'LOS ALAMOS\r\n');
INSERT INTO `calles` VALUES (305, 'LOS ARCES\r\n');
INSERT INTO `calles` VALUES (306, 'LOS AROMOS\r\n');
INSERT INTO `calles` VALUES (307, 'LOS CARDENALES\r\n');
INSERT INTO `calles` VALUES (308, 'LOS CARPINTEROS\r\n');
INSERT INTO `calles` VALUES (309, 'LOS CASTA');
INSERT INTO `calles` VALUES (310, 'LOS CHAJAS\r\n');
INSERT INTO `calles` VALUES (311, 'LOS COCOS\r\n');
INSERT INTO `calles` VALUES (312, 'LOS CONDORES\r\n');
INSERT INTO `calles` VALUES (313, 'LOS FLAMENCOS\r\n');
INSERT INTO `calles` VALUES (314, 'LOS GAUCHOS\r\n');
INSERT INTO `calles` VALUES (315, 'LOS HORNEROS\r\n');
INSERT INTO `calles` VALUES (316, 'LOS JACINTOS\r\n');
INSERT INTO `calles` VALUES (317, 'LOS JAZMINES\r\n');
INSERT INTO `calles` VALUES (318, 'LOS JILGUEROS\r\n');
INSERT INTO `calles` VALUES (319, 'LOS NOGALES\r\n');
INSERT INTO `calles` VALUES (320, 'LOS PARAISOS\r\n');
INSERT INTO `calles` VALUES (321, 'LOS PINOS\r\n');
INSERT INTO `calles` VALUES (322, 'LOS ROBLES\r\n');
INSERT INTO `calles` VALUES (323, 'LOS RUISE');
INSERT INTO `calles` VALUES (324, 'LOS SAUCES\r\n');
INSERT INTO `calles` VALUES (325, 'LOS TEROS\r\n');
INSERT INTO `calles` VALUES (326, 'LOS TULIPANES\r\n');
INSERT INTO `calles` VALUES (327, 'LOZANO DE OLIVERA\r\n');
INSERT INTO `calles` VALUES (328, 'LURASCHI\r\n');
INSERT INTO `calles` VALUES (329, 'M DE OLIVERA\r\n');
INSERT INTO `calles` VALUES (330, 'MACHINANDIARENA\r\n');
INSERT INTO `calles` VALUES (331, 'MAFFEIS\r\n');
INSERT INTO `calles` VALUES (332, 'MAGALDI AGUSTIN\r\n');
INSERT INTO `calles` VALUES (333, 'MAGARI');
INSERT INTO `calles` VALUES (334, 'MAGGIO\r\n');
INSERT INTO `calles` VALUES (335, 'MAIPU\r\n');
INSERT INTO `calles` VALUES (336, 'MANCICIDOR\r\n');
INSERT INTO `calles` VALUES (337, 'MANSILLA\r\n');
INSERT INTO `calles` VALUES (338, 'MARCELO T.DE ALVEAR\r\n');
INSERT INTO `calles` VALUES (339, 'MARCONI\r\n');
INSERT INTO `calles` VALUES (340, 'MARMOL\r\n');
INSERT INTO `calles` VALUES (341, 'MARTELLI\r\n');
INSERT INTO `calles` VALUES (342, 'MARTINEZ LUCIO\r\n');
INSERT INTO `calles` VALUES (343, 'MARTINOLI HERCULES\r\n');
INSERT INTO `calles` VALUES (344, 'MATHEU\r\n');
INSERT INTO `calles` VALUES (345, 'MATTI GUILLERMO\r\n');
INSERT INTO `calles` VALUES (346, 'MAUTONE JOSE MARIA\r\n');
INSERT INTO `calles` VALUES (347, 'MELGAR GERVASIO\r\n');
INSERT INTO `calles` VALUES (348, 'MELO JULIO ARMANDO\r\n');
INSERT INTO `calles` VALUES (349, 'MENDOZA\r\n');
INSERT INTO `calles` VALUES (350, 'MEXICO\r\n');
INSERT INTO `calles` VALUES (351, 'MIRACCA ALFREDO\r\n');
INSERT INTO `calles` VALUES (352, 'MISIONES\r\n');
INSERT INTO `calles` VALUES (353, 'MITRE\r\n');
INSERT INTO `calles` VALUES (354, 'MODARELLI PEDRO\r\n');
INSERT INTO `calles` VALUES (355, 'MOLINA MATIAS\r\n');
INSERT INTO `calles` VALUES (356, 'MOLLO\r\n');
INSERT INTO `calles` VALUES (357, 'MOLLO CAMILO\r\n');
INSERT INTO `calles` VALUES (358, 'MOLLO FRANCISCO\r\n');
INSERT INTO `calles` VALUES (359, 'MONSE');
INSERT INTO `calles` VALUES (360, 'MORENO\r\n');
INSERT INTO `calles` VALUES (361, 'MORENO PERITO\r\n');
INSERT INTO `calles` VALUES (362, 'MORIXE FRANCISCO\r\n');
INSERT INTO `calles` VALUES (363, 'MOSCONI\r\n');
INSERT INTO `calles` VALUES (364, 'MOYA PEDRO\r\n');
INSERT INTO `calles` VALUES (365, 'MOZO SADI\r\n');
INSERT INTO `calles` VALUES (366, 'NAMUNCURA\r\n');
INSERT INTO `calles` VALUES (367, 'NARDO JUAN\r\n');
INSERT INTO `calles` VALUES (368, 'NASH SANTIAGO\r\n');
INSERT INTO `calles` VALUES (369, 'NECOCHEA\r\n');
INSERT INTO `calles` VALUES (370, 'NEGRETE TOMAS EDGAR\r\n');
INSERT INTO `calles` VALUES (371, 'NEUQUEN\r\n');
INSERT INTO `calles` VALUES (372, 'NO INDICADO\r\n');
INSERT INTO `calles` VALUES (373, 'OCHOA FERNANDO\r\n');
INSERT INTO `calles` VALUES (374, 'OMAR PEDRO\r\n');
INSERT INTO `calles` VALUES (375, 'OTAMENDI ROMULO\r\n');
INSERT INTO `calles` VALUES (376, 'PADRE VICTORIO MARTINO\r\n');
INSERT INTO `calles` VALUES (377, 'PAGANI MIGUEL\r\n');
INSERT INTO `calles` VALUES (378, 'PALACIOS ALFREDO\r\n');
INSERT INTO `calles` VALUES (379, 'PALLET EMILIO\r\n');
INSERT INTO `calles` VALUES (380, 'PAMPARRANA BASILIO\r\n');
INSERT INTO `calles` VALUES (381, 'PARANA DE LAS PALMAS KM\r\n');
INSERT INTO `calles` VALUES (382, 'PARDELLAS RICARDO\r\n');
INSERT INTO `calles` VALUES (383, 'PASAJE 1\r\n');
INSERT INTO `calles` VALUES (384, 'PASAJE 2\r\n');
INSERT INTO `calles` VALUES (385, 'PASAJE EDISON\r\n');
INSERT INTO `calles` VALUES (386, 'PASO\r\n');
INSERT INTO `calles` VALUES (387, 'PASTEUR\r\n');
INSERT INTO `calles` VALUES (388, 'PECORENA\r\n');
INSERT INTO `calles` VALUES (389, 'PEDROZA HONORIO\r\n');
INSERT INTO `calles` VALUES (390, 'PELIET\r\n');
INSERT INTO `calles` VALUES (391, 'PEREZ LEDESMA MANUEL\r\n');
INSERT INTO `calles` VALUES (392, 'PERON\r\n');
INSERT INTO `calles` VALUES (393, 'PERRONE BARTOLOME\r\n');
INSERT INTO `calles` VALUES (394, 'PETTITI CARLOS\r\n');
INSERT INTO `calles` VALUES (395, 'PIEDRA BLANCA\r\n');
INSERT INTO `calles` VALUES (396, 'PONCE DE LEON\r\n');
INSERT INTO `calles` VALUES (397, 'PORTO AVELINO\r\n');
INSERT INTO `calles` VALUES (398, 'POSATTI JOSEFINA\r\n');
INSERT INTO `calles` VALUES (399, 'POSSE FRANCISCO\r\n');
INSERT INTO `calles` VALUES (400, 'POSSE MANUEL\r\n');
INSERT INTO `calles` VALUES (401, 'POTRERO DE LAS BURRAS\r\n');
INSERT INTO `calles` VALUES (402, 'PUCCINI\r\n');
INSERT INTO `calles` VALUES (403, 'PUERTO ARGENTINO\r\n');
INSERT INTO `calles` VALUES (404, 'PUEYRREDON\r\n');
INSERT INTO `calles` VALUES (405, 'PUJALET JUAN\r\n');
INSERT INTO `calles` VALUES (406, 'QUINQUELA MARTIN\r\n');
INSERT INTO `calles` VALUES (407, 'QUIROGA JUAN\r\n');
INSERT INTO `calles` VALUES (408, 'RAWSON\r\n');
INSERT INTO `calles` VALUES (409, 'REPETTO NICOLAS\r\n');
INSERT INTO `calles` VALUES (410, 'REYES LUCIANO\r\n');
INSERT INTO `calles` VALUES (411, 'RIGOLI\r\n');
INSERT INTO `calles` VALUES (412, 'RIGOLI  ANTONIO\r\n');
INSERT INTO `calles` VALUES (413, 'RIO CARABELAS\r\n');
INSERT INTO `calles` VALUES (414, 'RIO NEGRO\r\n');
INSERT INTO `calles` VALUES (415, 'RIO PARANA DE LAS PALMAS\r\n');
INSERT INTO `calles` VALUES (416, 'RIPPA FRANCISCO\r\n');
INSERT INTO `calles` VALUES (417, 'RIVADAVIA\r\n');
INSERT INTO `calles` VALUES (418, 'RIVES ERNESTO\r\n');
INSERT INTO `calles` VALUES (419, 'ROBLEDO MIGUEL\r\n');
INSERT INTO `calles` VALUES (420, 'ROCA GENERAL\r\n');
INSERT INTO `calles` VALUES (421, 'ROCCA AGUSTIN\r\n');
INSERT INTO `calles` VALUES (422, 'ROCCA ENRIQUE\r\n');
INSERT INTO `calles` VALUES (423, 'RODRIGUEZ JOSE MARIA\r\n');
INSERT INTO `calles` VALUES (424, 'RODRIGUEZ MARTIN\r\n');
INSERT INTO `calles` VALUES (425, 'ROJAS RICARDO\r\n');
INSERT INTO `calles` VALUES (426, 'ROMANO FELIPE\r\n');
INSERT INTO `calles` VALUES (427, 'ROSARIO\r\n');
INSERT INTO `calles` VALUES (428, 'ROSSINI\r\n');
INSERT INTO `calles` VALUES (429, 'ROSSITER CARLOS\r\n');
INSERT INTO `calles` VALUES (430, 'ROZA PADRE LUIS\r\n');
INSERT INTO `calles` VALUES (431, 'RUCCI GREGORIO\r\n');
INSERT INTO `calles` VALUES (432, 'RUTA NACIONAL 12\r\n');
INSERT INTO `calles` VALUES (433, 'RUTA NACIONAL 12 KM\r\n');
INSERT INTO `calles` VALUES (434, 'RUTA NACIONAL 9\r\n');
INSERT INTO `calles` VALUES (435, 'RUTA PROVINCIAL 4 RIO LUJAN\r\n');
INSERT INTO `calles` VALUES (436, 'RUTA PROVINCIAL 6\r\n');
INSERT INTO `calles` VALUES (437, 'SAAVEDRA\r\n');
INSERT INTO `calles` VALUES (438, 'SAAVEDRA ORFELIO\r\n');
INSERT INTO `calles` VALUES (439, 'SABATTINI AMADEO\r\n');
INSERT INTO `calles` VALUES (440, 'SAENZ PE');
INSERT INTO `calles` VALUES (441, 'SALK JONAS EDUARD\r\n');
INSERT INTO `calles` VALUES (442, 'SALMINI JULIO CELESTINO\r\n');
INSERT INTO `calles` VALUES (443, 'SALTA\r\n');
INSERT INTO `calles` VALUES (444, 'SAN JUAN\r\n');
INSERT INTO `calles` VALUES (445, 'SAN LORENZO\r\n');
INSERT INTO `calles` VALUES (446, 'SAN LUIS\r\n');
INSERT INTO `calles` VALUES (447, 'SAN MARTIN\r\n');
INSERT INTO `calles` VALUES (448, 'SANCHEZ JOSE MARIA\r\n');
INSERT INTO `calles` VALUES (449, 'SANTA CRUZ\r\n');
INSERT INTO `calles` VALUES (450, 'SANTA FE\r\n');
INSERT INTO `calles` VALUES (451, 'SANTA MARIA DE ORO\r\n');
INSERT INTO `calles` VALUES (452, 'SANTIAGO DEL ESTERO\r\n');
INSERT INTO `calles` VALUES (453, 'SAPORITI VICENTE\r\n');
INSERT INTO `calles` VALUES (454, 'SARDI NICOLAS\r\n');
INSERT INTO `calles` VALUES (455, 'SARMIENTO\r\n');
INSERT INTO `calles` VALUES (456, 'SARRATEA\r\n');
INSERT INTO `calles` VALUES (457, 'SAUBABER GERMAN\r\n');
INSERT INTO `calles` VALUES (458, 'SAUTON\r\n');
INSERT INTO `calles` VALUES (459, 'SAVIO GENERAL\r\n');
INSERT INTO `calles` VALUES (460, 'SCHINONI ANGEL\r\n');
INSERT INTO `calles` VALUES (461, 'SCHINONI JUAN\r\n');
INSERT INTO `calles` VALUES (462, 'SIERRA JOSE\r\n');
INSERT INTO `calles` VALUES (463, 'SIRI PEDRO\r\n');
INSERT INTO `calles` VALUES (464, 'SIVORI\r\n');
INSERT INTO `calles` VALUES (465, 'STORNI ALFONSINA\r\n');
INSERT INTO `calles` VALUES (466, 'SWEITZER\r\n');
INSERT INTO `calles` VALUES (467, 'TIERRA DEL FUEGO\r\n');
INSERT INTO `calles` VALUES (468, 'TOBAL IGNACIO\r\n');
INSERT INTO `calles` VALUES (469, 'TOMAS MURRAY\r\n');
INSERT INTO `calles` VALUES (470, 'TORRES ULISES\r\n');
INSERT INTO `calles` VALUES (471, 'TRENQUE LAUQUEN\r\n');
INSERT INTO `calles` VALUES (472, 'TRISTAN GONZALEZ\r\n');
INSERT INTO `calles` VALUES (473, 'TROFELI JOSE MARIA\r\n');
INSERT INTO `calles` VALUES (474, 'TUCUMAN\r\n');
INSERT INTO `calles` VALUES (475, 'UGARTE MENDIA\r\n');
INSERT INTO `calles` VALUES (476, 'URDANIZ FERMIN\r\n');
INSERT INTO `calles` VALUES (477, 'URQUIZA\r\n');
INSERT INTO `calles` VALUES (478, 'URREA\r\n');
INSERT INTO `calles` VALUES (479, 'URUGUAY\r\n');
INSERT INTO `calles` VALUES (480, 'URUGUAY Y SWITZER\r\n');
INSERT INTO `calles` VALUES (481, 'VELEZ SARFIELD\r\n');
INSERT INTO `calles` VALUES (482, 'VERDI\r\n');
INSERT INTO `calles` VALUES (483, 'VERDI PABLO\r\n');
INSERT INTO `calles` VALUES (484, 'VERDIER\r\n');
INSERT INTO `calles` VALUES (485, 'VIALE FRANCISCO\r\n');
INSERT INTO `calles` VALUES (486, 'VIALE MANUEL\r\n');
INSERT INTO `calles` VALUES (487, 'VIALE SANTIAGO\r\n');
INSERT INTO `calles` VALUES (488, 'VIAMONTE\r\n');
INSERT INTO `calles` VALUES (489, 'VIBOUD FILIBERTO\r\n');
INSERT INTO `calles` VALUES (490, 'VICENTE LOPEZ\r\n');
INSERT INTO `calles` VALUES (491, 'VIGALONDO JUSTO\r\n');
INSERT INTO `calles` VALUES (492, 'VIGNA JUAN\r\n');
INSERT INTO `calles` VALUES (493, 'VILLEGAS GENERAL\r\n');
INSERT INTO `calles` VALUES (494, 'VIÑAS CEFERINO');
INSERT INTO `calles` VALUES (495, 'VIOLA ALFREDO\r\n');
INSERT INTO `calles` VALUES (496, 'VIOLA FRANCISCO\r\n');
INSERT INTO `calles` VALUES (497, 'VIOLA PEDRO\r\n');
INSERT INTO `calles` VALUES (498, 'VIOLA RAFAEL\r\n');
INSERT INTO `calles` VALUES (499, 'WINTER PASAJE\r\n');
INSERT INTO `calles` VALUES (500, 'ZARATE BERNABELA\r\n');
INSERT INTO `calles` VALUES (501, 'ZAVALIA ANTONIO\r\n');
INSERT INTO `calles` VALUES (502, 'ZAVALLO ANTENOR F.\r\n');

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
  KEY `especialidad` (`especialidad`),
  KEY `año` (`año`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `cursos`
-- 

INSERT INTO `cursos` VALUES ('010101', '1', '1', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010102', '1', '2', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010103', '1', '3', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010104', '1', '4', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010105', '1', '5', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010106', '1', '6', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010107', '1', '7', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010201', '2', '1', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010202', '2', '2', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010203', '2', '3', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010204', '2', '4', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010205', '2', '5', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010206', '2', '6', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010207', '2', '7', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010301', '3', '1', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010302', '3', '2', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('010303', '3', '3', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010304', '3', '4', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010305', '3', '5', NULL, 2, 1);
INSERT INTO `cursos` VALUES ('010306', '3', '6', NULL, 1, 1);
INSERT INTO `cursos` VALUES ('020401', '4', '1', NULL, 1, 2);
INSERT INTO `cursos` VALUES ('020402', '4', '2', NULL, 1, 2);
INSERT INTO `cursos` VALUES ('020407', '4', '7', NULL, 2, 2);
INSERT INTO `cursos` VALUES ('020501', '5', '1', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020502', '5', '2', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020503', '5', '3', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020601', '6', '1', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020602', '6', '2', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020701', '7', '1', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('020702', '7', '2', NULL, 3, 2);
INSERT INTO `cursos` VALUES ('030403', '4', '3', NULL, 1, 3);
INSERT INTO `cursos` VALUES ('030504', '5', '4', NULL, 3, 3);
INSERT INTO `cursos` VALUES ('030603', '6', '3', NULL, 3, 3);
INSERT INTO `cursos` VALUES ('030703', '7', '3', NULL, 3, 3);
INSERT INTO `cursos` VALUES ('040404', '4', '4', NULL, 1, 4);
INSERT INTO `cursos` VALUES ('040505', '5', '5', NULL, 3, 4);
INSERT INTO `cursos` VALUES ('040604', '6', '4', NULL, 3, 4);
INSERT INTO `cursos` VALUES ('040704', '7', '4', NULL, 3, 4);
INSERT INTO `cursos` VALUES ('050405', '4', '5', NULL, 1, 5);
INSERT INTO `cursos` VALUES ('050507', '5', '7', NULL, 1, 5);
INSERT INTO `cursos` VALUES ('050605', '6', '5', NULL, 3, 5);
INSERT INTO `cursos` VALUES ('050705', '7', '5', NULL, 3, 5);

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
INSERT INTO `dia` VALUES (3, 'Miércoles');
INSERT INTO `dia` VALUES (4, 'Jueves');
INSERT INTO `dia` VALUES (5, 'Viernes');
INSERT INTO `dia` VALUES (6, 'Sábado');
INSERT INTO `dia` VALUES (7, 'Domingo');

-- --------------------------------------------------------

-- 
-- Table structure for table `escuelas`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

-- 
-- Dumping data for table `escuelas`
-- 

INSERT INTO `escuelas` VALUES (1, 'E.E.S. N° 1', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (2, 'E.E.S. N° 2', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (3, 'E.E.S. N° 3', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (4, 'E.E.S. N° 6', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (5, 'E.E.S. N° 8', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (6, 'E.E.S. N° 9', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (7, 'E.E.S. N° 10', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (8, 'E.E.S. N° 11', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (9, 'E.E.S. N° 12', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (10, 'E.E.S. N° 13', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (11, 'E.E.S. N° 14', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (12, 'E.E.S. N° 15', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (13, 'E.E.S. N° 16', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (14, 'E.E.S. N° 17', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (15, 'E.E.S. N° 18', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (16, 'E.E.S. N° 2010', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (17, 'E.E.S. N° 3141', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (18, 'E.E.S. N° 3181', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (19, 'E.E.S. N° 3465', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (20, 'E.E.S. N° 4147', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (21, 'E.E.S. N° 4148', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (22, 'E.E.S. N° 4374', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (23, 'E.E.S. N° 5134', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (24, 'E.E.S. N° 5772', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (25, 'E.E.S. N° 7892', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (26, 'E.E.M. N°1', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (27, 'E.E.M N°2', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (28, 'E.E.M. N°3', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (29, 'E.E.M N°6', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (30, 'E.E.M. N°7', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (31, 'E.E.M N°41', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (32, 'E.E.M. N°2070', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (33, 'E.E.M N°3031', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (34, 'E.E.M. N°3465', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (35, 'E.E.M N°4147', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (36, 'E.E.M. N°4148', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (37, 'E.E.M N°4374', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (38, 'E.E.M. N°5134', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (39, 'E.E.M N°5772', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (40, 'E.E.M. N°6062', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (41, 'E.E. N°501', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (42, 'E.E. N° 502', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (43, 'E.E. N°5905', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (44, 'E.E.S.A. N°1', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (45, 'E.E.S.A. N°2', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (46, 'E.E.S.T N°1', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (47, 'E.S.B. N°1', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (48, 'E.S.B. N°2', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (49, 'E.S.B. N°3', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (50, 'E.S.B. N°4', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (51, 'E.S.B. N°5', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (52, 'E.S.B. N°6', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (53, 'E.S.B. N°7', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (54, 'E.S.B. N°8', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (55, 'E.S.B. N°9', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (56, 'E.S.B. N°11', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (57, 'E.S.B N°12', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (58, 'E.S.B. N°14', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (59, 'E.S.B. N°15', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (60, 'E.S.B. N°16', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (61, 'E.S.B N°18', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (62, 'E.S.B. N°19', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (63, 'E.S.B N°20', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (64, 'E.S.B. N°21', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (65, 'E.S.B N°22', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (66, 'E.S.B. N°24', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (67, 'E.S.B. N°2210', 2804, 2, 1);
INSERT INTO `escuelas` VALUES (68, 'E.S.B. N°7124', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (69, 'E.S.B. N°7305', 2804, 2, 2);
INSERT INTO `escuelas` VALUES (70, 'E.P.B. N°1', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (71, 'E.P.B. N°2', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (72, 'E.P.B. N°3', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (73, 'E.P.B. N°4', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (74, 'E.P.B. N°5', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (75, 'E.P.B. N°6', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (76, 'E.P.B. N°7', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (77, 'E.P.B. N°8', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (78, 'E.P.B. N°9', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (79, 'E.P.B. N°10', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (80, 'E.P.B. N°11', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (82, 'E.P.B. N°12', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (83, 'E.P.B. N°13', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (84, 'E.P.B. N°14', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (85, 'E.P.B. N°15', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (86, 'E.P.B. N°16', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (87, 'E.P.B. N°17', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (88, 'E.P.B. N°18', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (89, 'E.P.B. N°19', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (90, 'E.P.B. N°20', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (91, 'E.P.B. N°21', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (92, 'E.P.B. N°22', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (93, 'E.P.B. N°23', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (94, 'E.P.B. N°24', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (95, 'E.P.B. N°25', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (96, 'E.P.B. N°26', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (97, 'E.P.B. N°27', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (98, 'E.P.B. N°28', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (99, 'E.P.B. N°29', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (100, 'E.P.B. N°30', 2804, 1, 1);
INSERT INTO `escuelas` VALUES (101, 'E.P.B. Nº847', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (102, 'E.P.B. Nº1206', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (103, 'E.P.B. Nº2499', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (104, 'E.P.B. Nº2506', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (105, 'E.P.B. Nº3139', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (106, 'E.P.B. Nº3954', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (107, 'E.P.B. Nº5791', 2804, 1, 2);
INSERT INTO `escuelas` VALUES (108, 'E.P.B. Nº7324', 2804, 1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `gremio`
-- 

INSERT INTO `gremio` VALUES (1, 'SUTEBA');
INSERT INTO `gremio` VALUES (2, 'UDOGBA');
INSERT INTO `gremio` VALUES (3, 'FED');
INSERT INTO `gremio` VALUES (4, '');

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

INSERT INTO `localidades` VALUES (1621, 'Benavídez', 3327, 1);
INSERT INTO `localidades` VALUES (1625, 'Escobar', 348, 1);
INSERT INTO `localidades` VALUES (1648, 'Tigre', 11, 1);
INSERT INTO `localidades` VALUES (2800, 'Zárate', 3487, 1);
INSERT INTO `localidades` VALUES (2804, 'Campana', 3489, 1);
INSERT INTO `localidades` VALUES (2806, 'Lima', 3487, 1);
INSERT INTO `localidades` VALUES (2812, 'Exaltación De La Cruz', 2322, 1);
INSERT INTO `localidades` VALUES (6700, 'Luján', 2323, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `logins`
-- 

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `logins`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `materias`
-- 

CREATE TABLE `materias` (
  `cod` varchar(7) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `año` varchar(10) NOT NULL,
  `especialidad` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `especialidad` (`especialidad`),
  KEY `año` (`año`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `materias`
-- 

INSERT INTO `materias` VALUES ('010101', 'Ciencias Sociales 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('010201', 'Biología 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('010301', 'Biología 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('010402', 'Literatura 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('010403', 'Literatura  4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('010404', 'Literatura 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('010405', 'Literatura 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('010502', 'Literatura 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('010503', 'Literatura  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('010504', 'Literatura 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('010505', 'Literatura 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('010602', 'Literatura 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('010603', 'Literatura  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('010604', 'Literatura 6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('010605', 'Literatura 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('010702', ' Prácticas Profesionalizantes  del Sector Electromecánico  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('010703', 'Prácticas Profesionalizantes del Sector Industria de Procesos 7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('010704', 'Prácticas Profesionalizantes  del Sector Electrónico 7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('010705', 'Prácticas Profesionalizantes del  Sector Informática 7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('020101', 'Ciencias Naturales 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('020201', 'Física Química 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('020301', 'Física Química 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('020402', 'Inglés 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('020403', 'Inglés 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('020404', 'Inglés 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('020405', 'Ingles 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('020502', 'Inglés 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('020503', 'Inglés 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('020504', 'Inglés 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('020505', 'Ingles 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('020602', 'Inglés 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('020603', 'Ingles  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('020604', 'Inglés 6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('020605', 'Ingles 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('020702', 'Emprendimientos Productivos  y Desarrollo Local  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('020703', 'Emprendimientos Productivos y Desarrollo  Local  7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('020704', 'Emprendimientos Productivos  y Desarrollo Local  7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('020705', 'Emprendimientos Productivos y Desarrollo Local  7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('030101', 'Inglés 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('030201', 'Inglés  2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('030301', 'Inglés 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('030402', 'Educación Física 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('030403', 'Educación Física 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('030404', 'Educación Física 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('030405', 'Educación Física 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('030502', 'Educación Física 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('030503', 'Educación Física 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('030504', 'Educación Física 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('030505', 'Educación Física 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('030602', 'Educación Física 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('030603', 'Educación Física 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('030605', 'Educación Física 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('030702', 'Electrónica Industrial  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('030703', 'Química Industrial  7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('030704', 'Sistemas de Control  7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('030705', 'Evaluación de Proyectos  7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('040101', 'Lengua 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('040201', 'Matemática 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('040301', 'Matemática 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('040402', 'Salud y Adolescencia 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('040403', 'Salud y Adolescencia 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('040404', 'Salud y Adolescencia 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('040405', 'Salud y Adolescencia 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('040502', 'Política y Ciudadanía 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('040503', 'Educación Física 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('040504', 'Política y Ciudadanía 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('040505', 'Política y Ciudadanía 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('040602', 'Filosofia 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('040603', 'Filosofía 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('040605', 'Filosofía 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('040702', 'Seguridad, Higiene y  Protección Ambiental  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('040703', 'Química Analítica 7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('040704', 'Sistemas de Comunicaciones  7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('040705', 'Modelos y Sistemas  7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('050101', 'Matemática 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('050201', 'Lengua 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('050301', 'Lengua 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('050402', 'Historia 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('050403', 'Historia  4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('050404', 'Historia 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('050405', 'Historia 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('050502', 'Historia 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('050503', 'Política y Ciudadanía 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('050504', 'Historia 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('050505', 'Historia 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('050602', 'Arte 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('050603', 'Arte  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('050604', 'Arte 6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('050605', 'Arte 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('050702', 'Máquinas Eléctricas 7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('050703', 'Organización y Gestión Industrial 7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('050704', 'Seguridad, Higiene y  Protección Ambiental  7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('050705', 'Base de Datos 7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('060101', 'Educación Física 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('060201', 'Educación Física 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('060301', 'Educación Física 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('060402', 'Geografía 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('060403', 'Geografía 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('060404', 'Geografía 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('060405', 'Geografía 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('060502', 'Geografía 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('060503', 'Historia  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('060504', 'Geografía 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('060505', 'Geografía  5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('060602', 'Matemática Aplicada 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('060603', 'Matemática Aplicada 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('060604', 'Matemática Aplicada 6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('060605', 'Matemática Aplicada 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('060702', 'Sistemas Mecánicos 7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('060703', 'Laboratorio de Análisis Microbiológicos 7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('060704', 'Proyecto y Diseño Electrónico 7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('060705', 'Proyecto, Diseño e implementación  de Sistemas Computacionales 7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('070101', 'Construcción Ciudadana 1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('070201', 'Educación Artística 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('070301', 'Educación Artística 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('070402', 'Matemática Ciclo Superior 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('070403', 'Matemática Ciclo Superior 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('070404', 'Matemática Ciclo Superior 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('070405', 'Matemática Ciclo Superior 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('070502', 'Análisis Matemático  5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('070503', 'Historia  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('070504', 'Análisis Matemático  5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('070505', 'Análisis Matemático 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('070602', 'Termodinámica y Máquinas  Térmicas  6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('070603', 'Química Orgánica y Biológica  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('070604', 'Sistemas de Comunicaciones  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('070605', 'Sistemas Digitales  6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('070702', 'Laboratorio de Metrología y  Control de Calidad  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('070703', 'Laboratorio de Industrias  7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('070704', 'Instalaciones Industriales 7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('070705', 'Instalación, Mantenimiento y  Reparación de Sistemas  Computacionales 7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('080101', 'Lenguaje Tecnológico  1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('080201', 'Geografía 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('080301', 'Geografía 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('080402', 'Física 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('080403', 'Química  4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('080404', 'Física  4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('080405', 'Física  4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('080502', ' Mecánica y Mecanismos 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('080503', 'Geografía 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('080504', 'Análisis de Modelos  Circuitales  5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('080505', 'Sistemas Digitales  5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('080602', 'Electrotecnia  6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('080603', 'Química Industrial 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('080604', 'Instalaciones y Maquinas  Eléctricas  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('080605', 'Sistemas Digitales  6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('080702', 'Mantenimiento y Montaje  Electromecánico  7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('080703', 'Laboratorio de Técnicas Analíticas Instrumentales 7º Año Química', '7', 3);
INSERT INTO `materias` VALUES ('080704', 'Electrónica Aplicada  7º Año Electrónica', '7', 4);
INSERT INTO `materias` VALUES ('080705', 'Instalación, Mantenimiento y  Reparación de Redes Informáticas 7º Año Informática', '7', 5);
INSERT INTO `materias` VALUES ('090101', 'Procedimientos Técnicos  1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('090105', 'Teleinformática  1º Año Informática', '1', 5);
INSERT INTO `materias` VALUES ('090201', 'Historia 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('090301', 'Historia 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('090402', 'Química 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('090403', 'Física 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('090404', 'Química 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('090405', 'Química 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('090502', 'Electrotecnia 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('090503', 'Análisis Matemático  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('090504', 'Lenguajes Electrónicos 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('090505', 'Teleinformática 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('090602', 'Sistemas Mecánicos  6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('090603', 'Química Analítica 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('090604', 'Sistemas Productivos  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('090605', 'Seguridad Informática 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('090702', 'Proyecto y Diseño  Electromecánico 7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('100101', 'Sistemas Tecnológicos  1º Año Básico', '1', 1);
INSERT INTO `materias` VALUES ('100201', 'Construcción Ciudadana 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('100301', 'Construcción Ciudadana 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('100402', 'Conocimiento de los  Materiales 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('100403', 'Operaciones Unitarias y Tecnología de los  Materiales 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('100404', 'Fundamentos de los Modelos  Circuitales 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('100405', 'Tecnologías Electrónicas 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('100502', 'Resistencia y Ensayos de los  Materiales 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('100503', 'Química Orgánica  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('100504', 'Diseño Asistido y Simulación  Electrónica  5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('100505', 'Laboratorio de Programación 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('100602', 'Derechos del Trabajo 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('100603', 'Derechos del Trabajo 6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('100604', 'Derechos del Trabajo  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('100605', 'Derechos del Trabajo  6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('100702', 'Proyecto y Diseño  de Instalaciones Eléctricas 7º Año Electromecánica', '7', 2);
INSERT INTO `materias` VALUES ('110201', 'Lenguaje Tecnológico 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('110301', 'Lenguaje Tecnológico 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('110402', 'Dibujo Tecnológico  4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('110403', 'Introducción a la Biología Celular 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('110404', 'Tecnología Electrónica 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('110405', 'Laboratorio de Programación  4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('110502', 'Maquinas Eléctricas y  Automatismos  5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('110503', 'Química General e  Inorgánica 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('110504', 'Aplicaciones de Electrónica  Analógica 5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('110505', 'Laboratorio de Hardware 5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('110602', 'Laboratorio de Mediciones  Eléctricas  6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('110603', 'Laboratorio de Procesos Industriales  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('110604', 'Lenguajes Electrónicos  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('110605', 'Laboratorio de  Programación  6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('120201', 'Procedimientos Técnicos 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('120301', 'Procedimientos Técnicos 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('120402', 'Maquinas Eléctricas y  Automatismos  4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('120403', 'Laboratorio de Operaciones Unitarias y  Tecnología de los Materiales  4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('120404', 'Aplicaciones de Electrónica  Analógica 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('120405', 'Laboratorio de Hardware 4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('120502', 'Diseño y Procesamiento  Mecánico 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('120503', 'Procesos Químicos y Control 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('120504', 'Aplicaciones de Electrónica  Digital  5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('120505', 'Laboratorio de Sistemas  Operativos  5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('120602', 'Maquinas Eléctricas y  Automatismos 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('120603', 'Laboratorio de Técnicas  Analíticas  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('120604', 'Aplicaciones de Electrónica  Analógica 6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('120605', 'Laboratorio de Hardware 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('130201', 'Sistemas Tecnológicos 2º Año Básico', '2', 1);
INSERT INTO `materias` VALUES ('130301', 'Sistemas Tecnológicos 3º Año Básico', '3', 1);
INSERT INTO `materias` VALUES ('130402', 'Diseño y Procesamiento  Mecánico 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('130403', 'Laboratorio de Ensayos Físicos 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('130404', 'Aplicaciones de Electrónica  Digital 4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('130405', 'Laboratorio de Sistemas Operativos  4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('130502', 'Instalaciones y Aplicaciones  de la Energía 5º Año Electromecánica', '5', 2);
INSERT INTO `materias` VALUES ('130503', 'Laboratorio de Procesos  Industriales 5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('130504', 'Montaje de Proyectos  Electrónicos  5º Año Electrónica', '5', 4);
INSERT INTO `materias` VALUES ('130505', 'Laboratorio de Aplicaciones  5º Año Informática', '5', 5);
INSERT INTO `materias` VALUES ('130602', 'Diseño y Procesamiento  Mecánico  6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('130603', 'Laboratorio de Química Orgánica, Biológica y  Microbiológica  6º Año Química', '6', 3);
INSERT INTO `materias` VALUES ('130604', 'Aplicaciones de Electrónica  Digital  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('130605', 'Laboratorio de Sistemas  Operativos  6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('140402', 'Instalaciones y Aplicaciones  de la Energía 4º Año Electromecánica', '4', 2);
INSERT INTO `materias` VALUES ('140403', 'Laboratorio de Química 4º Año Química', '4', 3);
INSERT INTO `materias` VALUES ('140404', 'Montaje de Proyectos  Electrónicos  4º Año Electrónica', '4', 4);
INSERT INTO `materias` VALUES ('140405', 'Laboratorio de Aplicaciones  4º Año Informática', '4', 5);
INSERT INTO `materias` VALUES ('140503', 'Laboratorio de Técnicas  Analíticas  5º Año Química', '5', 3);
INSERT INTO `materias` VALUES ('140602', 'Instalaciones y Aplicaciones  de la Energía 6º Año Electromecánica', '6', 2);
INSERT INTO `materias` VALUES ('140604', 'Montaje de Proyectos  Electrónicos  6º Año Electrónica', '6', 4);
INSERT INTO `materias` VALUES ('140605', 'Laboratorio de Aplicaciones 6º Año Informática', '6', 5);
INSERT INTO `materias` VALUES ('150503', 'Laboratorio. de Química  Orgánica  5º Año Química', '5', 3);

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
INSERT INTO `nivelinstruccion` VALUES (99, 'Sin datos');

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

INSERT INTO `paises` VALUES (0, 'Otros', '');
INSERT INTO `paises` VALUES (51, 'Perú', 'Peruano/a');
INSERT INTO `paises` VALUES (53, 'Cuba', 'Cubano/a');
INSERT INTO `paises` VALUES (54, 'Argentina', 'Argentino/a');
INSERT INTO `paises` VALUES (55, 'Brasil', 'Brasilero/a');
INSERT INTO `paises` VALUES (56, 'Chile', 'Chileno/a');
INSERT INTO `paises` VALUES (57, 'Colombia', 'Colombiano/a');
INSERT INTO `paises` VALUES (58, 'Venezuela', 'Venezolano/a');
INSERT INTO `paises` VALUES (591, 'Bolivia', 'Boliviano/a');
INSERT INTO `paises` VALUES (592, 'Guyana', 'Guyanes');
INSERT INTO `paises` VALUES (593, 'Ecuador', 'Ecuatoriano/a');
INSERT INTO `paises` VALUES (595, 'Paraguay', 'Paraguayo/a');
INSERT INTO `paises` VALUES (598, 'Uruguay', 'Uruguayo/a');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `provincia`
-- 

INSERT INTO `provincia` VALUES (1, 'Buenos Aires');
INSERT INTO `provincia` VALUES (2, 'Capital Federal');
INSERT INTO `provincia` VALUES (3, 'Catamarca');
INSERT INTO `provincia` VALUES (4, 'Córdoba');
INSERT INTO `provincia` VALUES (5, 'Corrientes ');
INSERT INTO `provincia` VALUES (6, 'Entre Ríos');
INSERT INTO `provincia` VALUES (7, 'Jujuy ');
INSERT INTO `provincia` VALUES (8, 'La Rioja');
INSERT INTO `provincia` VALUES (9, 'Mendoza');
INSERT INTO `provincia` VALUES (10, 'Salta');
INSERT INTO `provincia` VALUES (11, 'San Juan ');
INSERT INTO `provincia` VALUES (12, 'San Luis');
INSERT INTO `provincia` VALUES (13, 'Santa Fe');
INSERT INTO `provincia` VALUES (14, 'Santiago Del Estereo');
INSERT INTO `provincia` VALUES (15, 'Tucumán ');
INSERT INTO `provincia` VALUES (16, 'Chaco');
INSERT INTO `provincia` VALUES (17, 'Chubut');
INSERT INTO `provincia` VALUES (18, 'Formosa');
INSERT INTO `provincia` VALUES (19, 'La Pampa');
INSERT INTO `provincia` VALUES (20, 'Misiones');
INSERT INTO `provincia` VALUES (21, 'Neuquén');
INSERT INTO `provincia` VALUES (22, 'Río Negro');
INSERT INTO `provincia` VALUES (23, 'Santa Cruz');
INSERT INTO `provincia` VALUES (24, 'Tierra Del Fuego');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'diego', 'diego', 0, 5);
INSERT INTO `users` VALUES (2, 'ariel', 'ariel', 0, 0);
INSERT INTO `users` VALUES (4, 'aaron', 'aaron', 0, 0);
INSERT INTO `users` VALUES (5, 'sebastian', 'sebastian', 0, 0);
INSERT INTO `users` VALUES (6, 'pupeishon', 'pupeishon', 0, 0);
INSERT INTO `users` VALUES (7, 'braian', 'braian', 0, 0);
INSERT INTO `users` VALUES (8, 'alan', 'alan', 0, 0);

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
  ADD CONSTRAINT `catedras_ibfk_11` FOREIGN KEY (`materia`) REFERENCES `materias` (`cod`),
  ADD CONSTRAINT `catedras_ibfk_12` FOREIGN KEY (`docente`) REFERENCES `personal` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catedras_ibfk_13` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cod`) ON UPDATE CASCADE;

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
-- Constraints for table `materias`
-- 
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`cod`);

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
-- 
-- Database: `mysql`
-- 
DROP DATABASE `mysql`;
CREATE DATABASE `mysql` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mysql`;

-- --------------------------------------------------------

-- 
-- Table structure for table `columns_priv`
-- 

CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

-- 
-- Dumping data for table `columns_priv`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `db`
-- 

CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

-- 
-- Dumping data for table `db`
-- 

INSERT INTO `db` VALUES (0x25, 0x74657374, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y');
INSERT INTO `db` VALUES (0x25, 0x746573745c5f25, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y');

-- --------------------------------------------------------

-- 
-- Table structure for table `event`
-- 

CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';

-- 
-- Dumping data for table `event`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `func`
-- 

CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

-- 
-- Dumping data for table `func`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `general_log`
-- 

CREATE TABLE `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';

-- 
-- Dumping data for table `general_log`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `help_category`
-- 

CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

-- 
-- Dumping data for table `help_category`
-- 

INSERT INTO `help_category` VALUES (1, 'Geographic', 0, '');
INSERT INTO `help_category` VALUES (2, 'Polygon properties', 32, '');
INSERT INTO `help_category` VALUES (3, 'WKT', 32, '');
INSERT INTO `help_category` VALUES (4, 'Numeric Functions', 36, '');
INSERT INTO `help_category` VALUES (5, 'Plugins', 33, '');
INSERT INTO `help_category` VALUES (6, 'MBR', 32, '');
INSERT INTO `help_category` VALUES (7, 'Control flow functions', 36, '');
INSERT INTO `help_category` VALUES (8, 'Transactions', 33, '');
INSERT INTO `help_category` VALUES (9, 'Account Management', 33, '');
INSERT INTO `help_category` VALUES (10, 'Point properties', 32, '');
INSERT INTO `help_category` VALUES (11, 'Encryption Functions', 36, '');
INSERT INTO `help_category` VALUES (12, 'LineString properties', 32, '');
INSERT INTO `help_category` VALUES (13, 'Logical operators', 36, '');
INSERT INTO `help_category` VALUES (14, 'Miscellaneous Functions', 36, '');
INSERT INTO `help_category` VALUES (15, 'Information Functions', 36, '');
INSERT INTO `help_category` VALUES (16, 'Functions and Modifiers for Use with GROUP BY', 33, '');
INSERT INTO `help_category` VALUES (17, 'Storage Engines', 33, '');
INSERT INTO `help_category` VALUES (18, 'Comparison operators', 36, '');
INSERT INTO `help_category` VALUES (19, 'Bit Functions', 36, '');
INSERT INTO `help_category` VALUES (20, 'Table Maintenance', 33, '');
INSERT INTO `help_category` VALUES (21, 'Data Types', 33, '');
INSERT INTO `help_category` VALUES (22, 'Triggers', 33, '');
INSERT INTO `help_category` VALUES (23, 'Geometry constructors', 32, '');
INSERT INTO `help_category` VALUES (24, 'GeometryCollection properties', 1, '');
INSERT INTO `help_category` VALUES (25, 'Administration', 33, '');
INSERT INTO `help_category` VALUES (26, 'Data Manipulation', 33, '');
INSERT INTO `help_category` VALUES (27, 'Utility', 33, '');
INSERT INTO `help_category` VALUES (28, 'Geometry relations', 32, '');
INSERT INTO `help_category` VALUES (29, 'Language Structure', 33, '');
INSERT INTO `help_category` VALUES (30, 'Date and Time Functions', 36, '');
INSERT INTO `help_category` VALUES (31, 'WKB', 32, '');
INSERT INTO `help_category` VALUES (32, 'Geographic Features', 33, '');
INSERT INTO `help_category` VALUES (33, 'Contents', 0, '');
INSERT INTO `help_category` VALUES (34, 'Geometry properties', 32, '');
INSERT INTO `help_category` VALUES (35, 'String Functions', 36, '');
INSERT INTO `help_category` VALUES (36, 'Functions', 33, '');
INSERT INTO `help_category` VALUES (37, 'Stored Routines', 33, '');
INSERT INTO `help_category` VALUES (38, 'Data Definition', 33, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `help_keyword`
-- 

CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

-- 
-- Dumping data for table `help_keyword`
-- 

INSERT INTO `help_keyword` VALUES (0, 'JOIN');
INSERT INTO `help_keyword` VALUES (1, 'HOST');
INSERT INTO `help_keyword` VALUES (2, 'REPEAT');
INSERT INTO `help_keyword` VALUES (3, 'SERIALIZABLE');
INSERT INTO `help_keyword` VALUES (4, 'REPLACE');
INSERT INTO `help_keyword` VALUES (5, 'AT');
INSERT INTO `help_keyword` VALUES (6, 'SCHEDULE');
INSERT INTO `help_keyword` VALUES (7, 'RETURNS');
INSERT INTO `help_keyword` VALUES (8, 'STARTS');
INSERT INTO `help_keyword` VALUES (9, 'MASTER_SSL_CA');
INSERT INTO `help_keyword` VALUES (10, 'NCHAR');
INSERT INTO `help_keyword` VALUES (11, 'COMPLETION');
INSERT INTO `help_keyword` VALUES (12, 'COLUMNS');
INSERT INTO `help_keyword` VALUES (13, 'WORK');
INSERT INTO `help_keyword` VALUES (14, 'DATETIME');
INSERT INTO `help_keyword` VALUES (15, 'MODE');
INSERT INTO `help_keyword` VALUES (16, 'OPEN');
INSERT INTO `help_keyword` VALUES (17, 'INTEGER');
INSERT INTO `help_keyword` VALUES (18, 'ESCAPE');
INSERT INTO `help_keyword` VALUES (19, 'VALUE');
INSERT INTO `help_keyword` VALUES (20, 'GEOMETRYCOLLECTIONFROMWKB');
INSERT INTO `help_keyword` VALUES (21, 'MASTER_SSL_VERIFY_SERVER_CERT');
INSERT INTO `help_keyword` VALUES (22, 'SQL_BIG_RESULT');
INSERT INTO `help_keyword` VALUES (23, 'DROP');
INSERT INTO `help_keyword` VALUES (24, 'EVENTS');
INSERT INTO `help_keyword` VALUES (25, 'MONTH');
INSERT INTO `help_keyword` VALUES (26, 'INFO');
INSERT INTO `help_keyword` VALUES (27, 'DUPLICATE');
INSERT INTO `help_keyword` VALUES (28, 'REPLICATION');
INSERT INTO `help_keyword` VALUES (29, 'INNODB');
INSERT INTO `help_keyword` VALUES (30, 'YEAR_MONTH');
INSERT INTO `help_keyword` VALUES (31, 'SUBJECT');
INSERT INTO `help_keyword` VALUES (32, 'PREPARE');
INSERT INTO `help_keyword` VALUES (33, 'LOCK');
INSERT INTO `help_keyword` VALUES (34, 'NDB');
INSERT INTO `help_keyword` VALUES (35, 'CHECK');
INSERT INTO `help_keyword` VALUES (36, 'FULL');
INSERT INTO `help_keyword` VALUES (37, 'INT4');
INSERT INTO `help_keyword` VALUES (38, 'BY');
INSERT INTO `help_keyword` VALUES (39, 'NO');
INSERT INTO `help_keyword` VALUES (40, 'MINUTE');
INSERT INTO `help_keyword` VALUES (41, 'PARTITION');
INSERT INTO `help_keyword` VALUES (42, 'DATA');
INSERT INTO `help_keyword` VALUES (43, 'DAY');
INSERT INTO `help_keyword` VALUES (44, 'SHARE');
INSERT INTO `help_keyword` VALUES (45, 'REAL');
INSERT INTO `help_keyword` VALUES (46, 'SEPARATOR');
INSERT INTO `help_keyword` VALUES (47, 'MASTER_HEARTBEAT_PERIOD');
INSERT INTO `help_keyword` VALUES (48, 'DELETE');
INSERT INTO `help_keyword` VALUES (49, 'ON');
INSERT INTO `help_keyword` VALUES (50, 'CONNECTION');
INSERT INTO `help_keyword` VALUES (51, 'CLOSE');
INSERT INTO `help_keyword` VALUES (52, 'X509');
INSERT INTO `help_keyword` VALUES (53, 'USE');
INSERT INTO `help_keyword` VALUES (54, 'WHERE');
INSERT INTO `help_keyword` VALUES (55, 'PRIVILEGES');
INSERT INTO `help_keyword` VALUES (56, 'EVENT');
INSERT INTO `help_keyword` VALUES (57, 'SPATIAL');
INSERT INTO `help_keyword` VALUES (58, 'SUPER');
INSERT INTO `help_keyword` VALUES (59, 'SQL_BUFFER_RESULT');
INSERT INTO `help_keyword` VALUES (60, 'IGNORE');
INSERT INTO `help_keyword` VALUES (61, 'QUICK');
INSERT INTO `help_keyword` VALUES (62, 'SIGNED');
INSERT INTO `help_keyword` VALUES (63, 'OFFLINE');
INSERT INTO `help_keyword` VALUES (64, 'SECURITY');
INSERT INTO `help_keyword` VALUES (65, 'POLYGONFROMWKB');
INSERT INTO `help_keyword` VALUES (66, 'NDBCLUSTER');
INSERT INTO `help_keyword` VALUES (67, 'FALSE');
INSERT INTO `help_keyword` VALUES (68, 'LEVEL');
INSERT INTO `help_keyword` VALUES (69, 'FORCE');
INSERT INTO `help_keyword` VALUES (70, 'BINARY');
INSERT INTO `help_keyword` VALUES (71, 'TO');
INSERT INTO `help_keyword` VALUES (72, 'CHANGE');
INSERT INTO `help_keyword` VALUES (73, 'CURRENT_USER');
INSERT INTO `help_keyword` VALUES (74, 'HOUR_MINUTE');
INSERT INTO `help_keyword` VALUES (75, 'PRESERVE');
INSERT INTO `help_keyword` VALUES (76, 'UPDATE');
INSERT INTO `help_keyword` VALUES (77, 'INTO');
INSERT INTO `help_keyword` VALUES (78, 'FEDERATED');
INSERT INTO `help_keyword` VALUES (79, 'VARYING');
INSERT INTO `help_keyword` VALUES (80, 'HOUR_SECOND');
INSERT INTO `help_keyword` VALUES (81, 'VARIABLE');
INSERT INTO `help_keyword` VALUES (82, 'ROLLBACK');
INSERT INTO `help_keyword` VALUES (83, 'PROCEDURE');
INSERT INTO `help_keyword` VALUES (84, 'RTREE');
INSERT INTO `help_keyword` VALUES (85, 'TIMESTAMP');
INSERT INTO `help_keyword` VALUES (86, 'IMPORT');
INSERT INTO `help_keyword` VALUES (87, 'AGAINST');
INSERT INTO `help_keyword` VALUES (88, 'CHECKSUM');
INSERT INTO `help_keyword` VALUES (89, 'COUNT');
INSERT INTO `help_keyword` VALUES (90, 'LONGBINARY');
INSERT INTO `help_keyword` VALUES (91, 'THEN');
INSERT INTO `help_keyword` VALUES (92, 'INSERT');
INSERT INTO `help_keyword` VALUES (93, 'ENGINES');
INSERT INTO `help_keyword` VALUES (94, 'HANDLER');
INSERT INTO `help_keyword` VALUES (95, 'PORT');
INSERT INTO `help_keyword` VALUES (96, 'DAY_SECOND');
INSERT INTO `help_keyword` VALUES (97, 'EXISTS');
INSERT INTO `help_keyword` VALUES (98, 'MUTEX');
INSERT INTO `help_keyword` VALUES (99, 'RELEASE');
INSERT INTO `help_keyword` VALUES (100, 'BOOLEAN');
INSERT INTO `help_keyword` VALUES (101, 'MOD');
INSERT INTO `help_keyword` VALUES (102, 'DEFAULT');
INSERT INTO `help_keyword` VALUES (103, 'TYPE');
INSERT INTO `help_keyword` VALUES (104, 'NO_WRITE_TO_BINLOG');
INSERT INTO `help_keyword` VALUES (105, 'OPTIMIZE');
INSERT INTO `help_keyword` VALUES (106, 'RESET');
INSERT INTO `help_keyword` VALUES (107, 'INSTALL');
INSERT INTO `help_keyword` VALUES (108, 'ITERATE');
INSERT INTO `help_keyword` VALUES (109, 'DO');
INSERT INTO `help_keyword` VALUES (110, 'BIGINT');
INSERT INTO `help_keyword` VALUES (111, 'SET');
INSERT INTO `help_keyword` VALUES (112, 'ISSUER');
INSERT INTO `help_keyword` VALUES (113, 'DATE');
INSERT INTO `help_keyword` VALUES (114, 'STATUS');
INSERT INTO `help_keyword` VALUES (115, 'FULLTEXT');
INSERT INTO `help_keyword` VALUES (116, 'COMMENT');
INSERT INTO `help_keyword` VALUES (117, 'MASTER_CONNECT_RETRY');
INSERT INTO `help_keyword` VALUES (118, 'INNER');
INSERT INTO `help_keyword` VALUES (119, 'STOP');
INSERT INTO `help_keyword` VALUES (120, 'MASTER_LOG_FILE');
INSERT INTO `help_keyword` VALUES (121, 'MRG_MYISAM');
INSERT INTO `help_keyword` VALUES (122, 'PRECISION');
INSERT INTO `help_keyword` VALUES (123, 'REQUIRE');
INSERT INTO `help_keyword` VALUES (124, 'TRAILING');
INSERT INTO `help_keyword` VALUES (125, 'PARTITIONS');
INSERT INTO `help_keyword` VALUES (126, 'LONG');
INSERT INTO `help_keyword` VALUES (127, 'OPTION');
INSERT INTO `help_keyword` VALUES (128, 'REORGANIZE');
INSERT INTO `help_keyword` VALUES (129, 'ELSE');
INSERT INTO `help_keyword` VALUES (130, 'DEALLOCATE');
INSERT INTO `help_keyword` VALUES (131, 'IO_THREAD');
INSERT INTO `help_keyword` VALUES (132, 'CASE');
INSERT INTO `help_keyword` VALUES (133, 'CIPHER');
INSERT INTO `help_keyword` VALUES (134, 'CONTINUE');
INSERT INTO `help_keyword` VALUES (135, 'FROM');
INSERT INTO `help_keyword` VALUES (136, 'READ');
INSERT INTO `help_keyword` VALUES (137, 'LEFT');
INSERT INTO `help_keyword` VALUES (138, 'ELSEIF');
INSERT INTO `help_keyword` VALUES (139, 'MINUTE_SECOND');
INSERT INTO `help_keyword` VALUES (140, 'COMPACT');
INSERT INTO `help_keyword` VALUES (141, 'RESTORE');
INSERT INTO `help_keyword` VALUES (142, 'DEC');
INSERT INTO `help_keyword` VALUES (143, 'FOR');
INSERT INTO `help_keyword` VALUES (144, 'WARNINGS');
INSERT INTO `help_keyword` VALUES (145, 'MIN_ROWS');
INSERT INTO `help_keyword` VALUES (146, 'STRING');
INSERT INTO `help_keyword` VALUES (147, 'CONDITION');
INSERT INTO `help_keyword` VALUES (148, 'FUNCTION');
INSERT INTO `help_keyword` VALUES (149, 'ENCLOSED');
INSERT INTO `help_keyword` VALUES (150, 'AGGREGATE');
INSERT INTO `help_keyword` VALUES (151, 'FIELDS');
INSERT INTO `help_keyword` VALUES (152, 'INT3');
INSERT INTO `help_keyword` VALUES (153, 'ARCHIVE');
INSERT INTO `help_keyword` VALUES (154, 'ADD');
INSERT INTO `help_keyword` VALUES (155, 'AVG_ROW_LENGTH');
INSERT INTO `help_keyword` VALUES (156, 'KILL');
INSERT INTO `help_keyword` VALUES (157, 'FLOAT4');
INSERT INTO `help_keyword` VALUES (158, 'TABLESPACE');
INSERT INTO `help_keyword` VALUES (159, 'VIEW');
INSERT INTO `help_keyword` VALUES (160, 'REPEATABLE');
INSERT INTO `help_keyword` VALUES (161, 'INFILE');
INSERT INTO `help_keyword` VALUES (162, 'ORDER');
INSERT INTO `help_keyword` VALUES (163, 'USING');
INSERT INTO `help_keyword` VALUES (164, 'MIDDLEINT');
INSERT INTO `help_keyword` VALUES (165, 'GRANT');
INSERT INTO `help_keyword` VALUES (166, 'UNSIGNED');
INSERT INTO `help_keyword` VALUES (167, 'DECIMAL');
INSERT INTO `help_keyword` VALUES (168, 'GEOMETRYFROMTEXT');
INSERT INTO `help_keyword` VALUES (169, 'INDEXES');
INSERT INTO `help_keyword` VALUES (170, 'FOREIGN');
INSERT INTO `help_keyword` VALUES (171, 'CACHE');
INSERT INTO `help_keyword` VALUES (172, 'HOSTS');
INSERT INTO `help_keyword` VALUES (173, 'COMMIT');
INSERT INTO `help_keyword` VALUES (174, 'SCHEMAS');
INSERT INTO `help_keyword` VALUES (175, 'LEADING');
INSERT INTO `help_keyword` VALUES (176, 'SNAPSHOT');
INSERT INTO `help_keyword` VALUES (177, 'DECLARE');
INSERT INTO `help_keyword` VALUES (178, 'LOAD');
INSERT INTO `help_keyword` VALUES (179, 'SQL_CACHE');
INSERT INTO `help_keyword` VALUES (180, 'CONVERT');
INSERT INTO `help_keyword` VALUES (181, 'DYNAMIC');
INSERT INTO `help_keyword` VALUES (182, 'POLYGONFROMTEXT');
INSERT INTO `help_keyword` VALUES (183, 'COLLATE');
INSERT INTO `help_keyword` VALUES (184, 'BYTE');
INSERT INTO `help_keyword` VALUES (185, 'LINESTRINGFROMWKB');
INSERT INTO `help_keyword` VALUES (186, 'GLOBAL');
INSERT INTO `help_keyword` VALUES (187, 'WHEN');
INSERT INTO `help_keyword` VALUES (188, 'HAVING');
INSERT INTO `help_keyword` VALUES (189, 'AS');
INSERT INTO `help_keyword` VALUES (190, 'STARTING');
INSERT INTO `help_keyword` VALUES (191, 'RELOAD');
INSERT INTO `help_keyword` VALUES (192, 'AUTOCOMMIT');
INSERT INTO `help_keyword` VALUES (193, 'REVOKE');
INSERT INTO `help_keyword` VALUES (194, 'GRANTS');
INSERT INTO `help_keyword` VALUES (195, 'OUTER');
INSERT INTO `help_keyword` VALUES (196, 'FLOOR');
INSERT INTO `help_keyword` VALUES (197, 'EXPLAIN');
INSERT INTO `help_keyword` VALUES (198, 'WITH');
INSERT INTO `help_keyword` VALUES (199, 'STD');
INSERT INTO `help_keyword` VALUES (200, 'AFTER');
INSERT INTO `help_keyword` VALUES (201, 'CSV');
INSERT INTO `help_keyword` VALUES (202, 'DISABLE');
INSERT INTO `help_keyword` VALUES (203, 'UNINSTALL');
INSERT INTO `help_keyword` VALUES (204, 'OUTFILE');
INSERT INTO `help_keyword` VALUES (205, 'LOW_PRIORITY');
INSERT INTO `help_keyword` VALUES (206, 'FILE');
INSERT INTO `help_keyword` VALUES (207, 'SCHEMA');
INSERT INTO `help_keyword` VALUES (208, 'SONAME');
INSERT INTO `help_keyword` VALUES (209, 'POW');
INSERT INTO `help_keyword` VALUES (210, 'MULTIPOINTFROMWKB');
INSERT INTO `help_keyword` VALUES (211, 'DUAL');
INSERT INTO `help_keyword` VALUES (212, 'INDEX');
INSERT INTO `help_keyword` VALUES (213, 'DEFINER');
INSERT INTO `help_keyword` VALUES (214, 'MULTIPOINTFROMTEXT');
INSERT INTO `help_keyword` VALUES (215, 'BACKUP');
INSERT INTO `help_keyword` VALUES (216, 'MASTER_BIND');
INSERT INTO `help_keyword` VALUES (217, 'REMOVE');
INSERT INTO `help_keyword` VALUES (218, 'MULTILINESTRINGFROMWKB');
INSERT INTO `help_keyword` VALUES (219, 'EXTENDED');
INSERT INTO `help_keyword` VALUES (220, 'CROSS');
INSERT INTO `help_keyword` VALUES (221, 'CONTRIBUTORS');
INSERT INTO `help_keyword` VALUES (222, 'NATIONAL');
INSERT INTO `help_keyword` VALUES (223, 'GROUP');
INSERT INTO `help_keyword` VALUES (224, 'SHA');
INSERT INTO `help_keyword` VALUES (225, 'ONLINE');
INSERT INTO `help_keyword` VALUES (226, 'UNDO');
INSERT INTO `help_keyword` VALUES (227, 'ZEROFILL');
INSERT INTO `help_keyword` VALUES (228, 'CLIENT');
INSERT INTO `help_keyword` VALUES (229, 'MASTER_PASSWORD');
INSERT INTO `help_keyword` VALUES (230, 'OWNER');
INSERT INTO `help_keyword` VALUES (231, 'RELAY_LOG_FILE');
INSERT INTO `help_keyword` VALUES (232, 'TRUE');
INSERT INTO `help_keyword` VALUES (233, 'CHARACTER');
INSERT INTO `help_keyword` VALUES (234, 'MASTER_USER');
INSERT INTO `help_keyword` VALUES (235, 'TABLE');
INSERT INTO `help_keyword` VALUES (236, 'ENGINE');
INSERT INTO `help_keyword` VALUES (237, 'INSERT_METHOD');
INSERT INTO `help_keyword` VALUES (238, 'CASCADE');
INSERT INTO `help_keyword` VALUES (239, 'RELAY_LOG_POS');
INSERT INTO `help_keyword` VALUES (240, 'SQL_CALC_FOUND_ROWS');
INSERT INTO `help_keyword` VALUES (241, 'UNION');
INSERT INTO `help_keyword` VALUES (242, 'MYISAM');
INSERT INTO `help_keyword` VALUES (243, 'LEAVE');
INSERT INTO `help_keyword` VALUES (244, 'MODIFY');
INSERT INTO `help_keyword` VALUES (245, 'MATCH');
INSERT INTO `help_keyword` VALUES (246, 'MASTER_LOG_POS');
INSERT INTO `help_keyword` VALUES (247, 'DESC');
INSERT INTO `help_keyword` VALUES (248, 'DISTINCTROW');
INSERT INTO `help_keyword` VALUES (249, 'TIME');
INSERT INTO `help_keyword` VALUES (250, 'NUMERIC');
INSERT INTO `help_keyword` VALUES (251, 'EXPANSION');
INSERT INTO `help_keyword` VALUES (252, 'CURSOR');
INSERT INTO `help_keyword` VALUES (253, 'CODE');
INSERT INTO `help_keyword` VALUES (254, 'GEOMETRYCOLLECTIONFROMTEXT');
INSERT INTO `help_keyword` VALUES (255, 'CHAIN');
INSERT INTO `help_keyword` VALUES (256, 'FLUSH');
INSERT INTO `help_keyword` VALUES (257, 'CREATE');
INSERT INTO `help_keyword` VALUES (258, 'DESCRIBE');
INSERT INTO `help_keyword` VALUES (259, 'MAX_UPDATES_PER_HOUR');
INSERT INTO `help_keyword` VALUES (260, 'INT2');
INSERT INTO `help_keyword` VALUES (261, 'ENDS');
INSERT INTO `help_keyword` VALUES (262, 'PROCESSLIST');
INSERT INTO `help_keyword` VALUES (263, 'LOGS');
INSERT INTO `help_keyword` VALUES (264, 'DISCARD');
INSERT INTO `help_keyword` VALUES (265, 'HEAP');
INSERT INTO `help_keyword` VALUES (266, 'SOUNDS');
INSERT INTO `help_keyword` VALUES (267, 'BETWEEN');
INSERT INTO `help_keyword` VALUES (268, 'MULTILINESTRINGFROMTEXT');
INSERT INTO `help_keyword` VALUES (269, 'REPAIR');
INSERT INTO `help_keyword` VALUES (270, 'PACK_KEYS');
INSERT INTO `help_keyword` VALUES (271, 'CALL');
INSERT INTO `help_keyword` VALUES (272, 'FAST');
INSERT INTO `help_keyword` VALUES (273, 'VALUES');
INSERT INTO `help_keyword` VALUES (274, 'LOOP');
INSERT INTO `help_keyword` VALUES (275, 'VARCHARACTER');
INSERT INTO `help_keyword` VALUES (276, 'BEFORE');
INSERT INTO `help_keyword` VALUES (277, 'TRUNCATE');
INSERT INTO `help_keyword` VALUES (278, 'SHOW');
INSERT INTO `help_keyword` VALUES (279, 'REDUNDANT');
INSERT INTO `help_keyword` VALUES (280, 'ALL');
INSERT INTO `help_keyword` VALUES (281, 'USER_RESOURCES');
INSERT INTO `help_keyword` VALUES (282, 'PARTIAL');
INSERT INTO `help_keyword` VALUES (283, 'BINLOG');
INSERT INTO `help_keyword` VALUES (284, 'END');
INSERT INTO `help_keyword` VALUES (285, 'SECOND');
INSERT INTO `help_keyword` VALUES (286, 'AND');
INSERT INTO `help_keyword` VALUES (287, 'FLOAT8');
INSERT INTO `help_keyword` VALUES (288, 'PREV');
INSERT INTO `help_keyword` VALUES (289, 'HOUR');
INSERT INTO `help_keyword` VALUES (290, 'SELECT');
INSERT INTO `help_keyword` VALUES (291, 'DATABASES');
INSERT INTO `help_keyword` VALUES (292, 'OR');
INSERT INTO `help_keyword` VALUES (293, 'IDENTIFIED');
INSERT INTO `help_keyword` VALUES (294, 'WRAPPER');
INSERT INTO `help_keyword` VALUES (295, 'MASTER_SSL_CIPHER');
INSERT INTO `help_keyword` VALUES (296, 'SQL_SLAVE_SKIP_COUNTER');
INSERT INTO `help_keyword` VALUES (297, 'BOTH');
INSERT INTO `help_keyword` VALUES (298, 'BOOL');
INSERT INTO `help_keyword` VALUES (299, 'YEAR');
INSERT INTO `help_keyword` VALUES (300, 'MASTER_PORT');
INSERT INTO `help_keyword` VALUES (301, 'CONCURRENT');
INSERT INTO `help_keyword` VALUES (302, 'HELP');
INSERT INTO `help_keyword` VALUES (303, 'UNIQUE');
INSERT INTO `help_keyword` VALUES (304, 'TRIGGERS');
INSERT INTO `help_keyword` VALUES (305, 'PROCESS');
INSERT INTO `help_keyword` VALUES (306, 'OPTIONS');
INSERT INTO `help_keyword` VALUES (307, 'CONSISTENT');
INSERT INTO `help_keyword` VALUES (308, 'MASTER_SSL');
INSERT INTO `help_keyword` VALUES (309, 'DATE_ADD');
INSERT INTO `help_keyword` VALUES (310, 'MAX_CONNECTIONS_PER_HOUR');
INSERT INTO `help_keyword` VALUES (311, 'LIKE');
INSERT INTO `help_keyword` VALUES (312, 'PLUGIN');
INSERT INTO `help_keyword` VALUES (313, 'FETCH');
INSERT INTO `help_keyword` VALUES (314, 'IN');
INSERT INTO `help_keyword` VALUES (315, 'COLUMN');
INSERT INTO `help_keyword` VALUES (316, 'DUMPFILE');
INSERT INTO `help_keyword` VALUES (317, 'USAGE');
INSERT INTO `help_keyword` VALUES (318, 'EXECUTE');
INSERT INTO `help_keyword` VALUES (319, 'MEMORY');
INSERT INTO `help_keyword` VALUES (320, 'CEIL');
INSERT INTO `help_keyword` VALUES (321, 'QUERY');
INSERT INTO `help_keyword` VALUES (322, 'MASTER_HOST');
INSERT INTO `help_keyword` VALUES (323, 'LINES');
INSERT INTO `help_keyword` VALUES (324, 'SQL_THREAD');
INSERT INTO `help_keyword` VALUES (325, 'SERVER');
INSERT INTO `help_keyword` VALUES (326, 'MAX_QUERIES_PER_HOUR');
INSERT INTO `help_keyword` VALUES (327, 'MULTIPOLYGONFROMWKB');
INSERT INTO `help_keyword` VALUES (328, 'MASTER_SSL_CERT');
INSERT INTO `help_keyword` VALUES (329, 'TRANSACTION');
INSERT INTO `help_keyword` VALUES (330, 'DAY_MINUTE');
INSERT INTO `help_keyword` VALUES (331, 'STDDEV');
INSERT INTO `help_keyword` VALUES (332, 'DATE_SUB');
INSERT INTO `help_keyword` VALUES (333, 'REBUILD');
INSERT INTO `help_keyword` VALUES (334, 'GEOMETRYFROMWKB');
INSERT INTO `help_keyword` VALUES (335, 'INT1');
INSERT INTO `help_keyword` VALUES (336, 'RENAME');
INSERT INTO `help_keyword` VALUES (337, 'PARSER');
INSERT INTO `help_keyword` VALUES (338, 'RIGHT');
INSERT INTO `help_keyword` VALUES (339, 'ALTER');
INSERT INTO `help_keyword` VALUES (340, 'MAX_ROWS');
INSERT INTO `help_keyword` VALUES (341, 'SOCKET');
INSERT INTO `help_keyword` VALUES (342, 'STRAIGHT_JOIN');
INSERT INTO `help_keyword` VALUES (343, 'NATURAL');
INSERT INTO `help_keyword` VALUES (344, 'VARIABLES');
INSERT INTO `help_keyword` VALUES (345, 'ESCAPED');
INSERT INTO `help_keyword` VALUES (346, 'SHA1');
INSERT INTO `help_keyword` VALUES (347, 'KEY_BLOCK_SIZE');
INSERT INTO `help_keyword` VALUES (348, 'PASSWORD');
INSERT INTO `help_keyword` VALUES (349, 'CHAR');
INSERT INTO `help_keyword` VALUES (350, 'OFFSET');
INSERT INTO `help_keyword` VALUES (351, 'NEXT');
INSERT INTO `help_keyword` VALUES (352, 'SQL_LOG_BIN');
INSERT INTO `help_keyword` VALUES (353, 'ERRORS');
INSERT INTO `help_keyword` VALUES (354, 'TEMPORARY');
INSERT INTO `help_keyword` VALUES (355, 'COMMITTED');
INSERT INTO `help_keyword` VALUES (356, 'SQL_SMALL_RESULT');
INSERT INTO `help_keyword` VALUES (357, 'UPGRADE');
INSERT INTO `help_keyword` VALUES (358, 'BEGIN');
INSERT INTO `help_keyword` VALUES (359, 'DELAY_KEY_WRITE');
INSERT INTO `help_keyword` VALUES (360, 'MEDIUM');
INSERT INTO `help_keyword` VALUES (361, 'INTERVAL');
INSERT INTO `help_keyword` VALUES (362, 'SSL');
INSERT INTO `help_keyword` VALUES (363, 'NAME');
INSERT INTO `help_keyword` VALUES (364, 'DAY_HOUR');
INSERT INTO `help_keyword` VALUES (365, 'REFERENCES');
INSERT INTO `help_keyword` VALUES (366, 'AES_ENCRYPT');
INSERT INTO `help_keyword` VALUES (367, 'EVERY');
INSERT INTO `help_keyword` VALUES (368, 'STORAGE');
INSERT INTO `help_keyword` VALUES (369, 'ISOLATION');
INSERT INTO `help_keyword` VALUES (370, 'CEILING');
INSERT INTO `help_keyword` VALUES (371, 'INT8');
INSERT INTO `help_keyword` VALUES (372, 'AUTHORS');
INSERT INTO `help_keyword` VALUES (373, 'RESTRICT');
INSERT INTO `help_keyword` VALUES (374, 'LINESTRINGFROMTEXT');
INSERT INTO `help_keyword` VALUES (375, 'UNCOMMITTED');
INSERT INTO `help_keyword` VALUES (376, 'IS');
INSERT INTO `help_keyword` VALUES (377, 'NOT');
INSERT INTO `help_keyword` VALUES (378, 'ANALYSE');
INSERT INTO `help_keyword` VALUES (379, 'DES_KEY_FILE');
INSERT INTO `help_keyword` VALUES (380, 'COMPRESSED');
INSERT INTO `help_keyword` VALUES (381, 'START');
INSERT INTO `help_keyword` VALUES (382, 'PLUGINS');
INSERT INTO `help_keyword` VALUES (383, 'SAVEPOINT');
INSERT INTO `help_keyword` VALUES (384, 'IF');
INSERT INTO `help_keyword` VALUES (385, 'PRIMARY');
INSERT INTO `help_keyword` VALUES (386, 'PURGE');
INSERT INTO `help_keyword` VALUES (387, 'USER');
INSERT INTO `help_keyword` VALUES (388, 'INNOBASE');
INSERT INTO `help_keyword` VALUES (389, 'LAST');
INSERT INTO `help_keyword` VALUES (390, 'EXIT');
INSERT INTO `help_keyword` VALUES (391, 'KEYS');
INSERT INTO `help_keyword` VALUES (392, 'LIMIT');
INSERT INTO `help_keyword` VALUES (393, 'KEY');
INSERT INTO `help_keyword` VALUES (394, 'MERGE');
INSERT INTO `help_keyword` VALUES (395, 'UNTIL');
INSERT INTO `help_keyword` VALUES (396, 'SQL_NO_CACHE');
INSERT INTO `help_keyword` VALUES (397, 'DELAYED');
INSERT INTO `help_keyword` VALUES (398, 'ANALYZE');
INSERT INTO `help_keyword` VALUES (399, 'CONSTRAINT');
INSERT INTO `help_keyword` VALUES (400, 'SERIAL');
INSERT INTO `help_keyword` VALUES (401, 'ACTION');
INSERT INTO `help_keyword` VALUES (402, 'WRITE');
INSERT INTO `help_keyword` VALUES (403, 'SESSION');
INSERT INTO `help_keyword` VALUES (404, 'DATABASE');
INSERT INTO `help_keyword` VALUES (405, 'NULL');
INSERT INTO `help_keyword` VALUES (406, 'POWER');
INSERT INTO `help_keyword` VALUES (407, 'USE_FRM');
INSERT INTO `help_keyword` VALUES (408, 'SLAVE');
INSERT INTO `help_keyword` VALUES (409, 'TERMINATED');
INSERT INTO `help_keyword` VALUES (410, 'NVARCHAR');
INSERT INTO `help_keyword` VALUES (411, 'ASC');
INSERT INTO `help_keyword` VALUES (412, 'ENABLE');
INSERT INTO `help_keyword` VALUES (413, 'OPTIONALLY');
INSERT INTO `help_keyword` VALUES (414, 'DIRECTORY');
INSERT INTO `help_keyword` VALUES (415, 'WHILE');
INSERT INTO `help_keyword` VALUES (416, 'MAX_USER_CONNECTIONS');
INSERT INTO `help_keyword` VALUES (417, 'DISTINCT');
INSERT INTO `help_keyword` VALUES (418, 'AES_DECRYPT');
INSERT INTO `help_keyword` VALUES (419, 'LOCAL');
INSERT INTO `help_keyword` VALUES (420, 'MASTER_SSL_KEY');
INSERT INTO `help_keyword` VALUES (421, 'NONE');
INSERT INTO `help_keyword` VALUES (422, 'TABLES');
INSERT INTO `help_keyword` VALUES (423, '<>');
INSERT INTO `help_keyword` VALUES (424, 'RLIKE');
INSERT INTO `help_keyword` VALUES (425, 'TRIGGER');
INSERT INTO `help_keyword` VALUES (426, 'COLLATION');
INSERT INTO `help_keyword` VALUES (427, 'SHUTDOWN');
INSERT INTO `help_keyword` VALUES (428, 'HIGH_PRIORITY');
INSERT INTO `help_keyword` VALUES (429, 'BTREE');
INSERT INTO `help_keyword` VALUES (430, 'FIRST');
INSERT INTO `help_keyword` VALUES (431, 'COALESCE');
INSERT INTO `help_keyword` VALUES (432, 'TYPES');
INSERT INTO `help_keyword` VALUES (433, 'MASTER');
INSERT INTO `help_keyword` VALUES (434, 'FIXED');
INSERT INTO `help_keyword` VALUES (435, 'MULTIPOLYGONFROMTEXT');
INSERT INTO `help_keyword` VALUES (436, 'ROW_FORMAT');

-- --------------------------------------------------------

-- 
-- Table structure for table `help_relation`
-- 

CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

-- 
-- Dumping data for table `help_relation`
-- 

INSERT INTO `help_relation` VALUES (1, 0);
INSERT INTO `help_relation` VALUES (342, 0);
INSERT INTO `help_relation` VALUES (456, 1);
INSERT INTO `help_relation` VALUES (221, 2);
INSERT INTO `help_relation` VALUES (431, 3);
INSERT INTO `help_relation` VALUES (43, 4);
INSERT INTO `help_relation` VALUES (407, 4);
INSERT INTO `help_relation` VALUES (84, 5);
INSERT INTO `help_relation` VALUES (84, 6);
INSERT INTO `help_relation` VALUES (393, 6);
INSERT INTO `help_relation` VALUES (201, 7);
INSERT INTO `help_relation` VALUES (84, 8);
INSERT INTO `help_relation` VALUES (180, 9);
INSERT INTO `help_relation` VALUES (414, 10);
INSERT INTO `help_relation` VALUES (84, 11);
INSERT INTO `help_relation` VALUES (393, 11);
INSERT INTO `help_relation` VALUES (22, 12);
INSERT INTO `help_relation` VALUES (334, 12);
INSERT INTO `help_relation` VALUES (139, 13);
INSERT INTO `help_relation` VALUES (219, 14);
INSERT INTO `help_relation` VALUES (83, 15);
INSERT INTO `help_relation` VALUES (342, 15);
INSERT INTO `help_relation` VALUES (16, 16);
INSERT INTO `help_relation` VALUES (100, 16);
INSERT INTO `help_relation` VALUES (126, 16);
INSERT INTO `help_relation` VALUES (334, 16);
INSERT INTO `help_relation` VALUES (201, 17);
INSERT INTO `help_relation` VALUES (480, 17);
INSERT INTO `help_relation` VALUES (367, 18);
INSERT INTO `help_relation` VALUES (231, 19);
INSERT INTO `help_relation` VALUES (102, 20);
INSERT INTO `help_relation` VALUES (180, 21);
INSERT INTO `help_relation` VALUES (342, 22);
INSERT INTO `help_relation` VALUES (9, 23);
INSERT INTO `help_relation` VALUES (30, 23);
INSERT INTO `help_relation` VALUES (82, 23);
INSERT INTO `help_relation` VALUES (181, 23);
INSERT INTO `help_relation` VALUES (226, 23);
INSERT INTO `help_relation` VALUES (252, 23);
INSERT INTO `help_relation` VALUES (264, 23);
INSERT INTO `help_relation` VALUES (288, 23);
INSERT INTO `help_relation` VALUES (319, 23);
INSERT INTO `help_relation` VALUES (392, 23);
INSERT INTO `help_relation` VALUES (401, 23);
INSERT INTO `help_relation` VALUES (446, 23);
INSERT INTO `help_relation` VALUES (116, 24);
INSERT INTO `help_relation` VALUES (363, 25);
INSERT INTO `help_relation` VALUES (248, 26);
INSERT INTO `help_relation` VALUES (98, 27);
INSERT INTO `help_relation` VALUES (192, 28);
INSERT INTO `help_relation` VALUES (334, 29);
INSERT INTO `help_relation` VALUES (387, 29);
INSERT INTO `help_relation` VALUES (451, 29);
INSERT INTO `help_relation` VALUES (363, 30);
INSERT INTO `help_relation` VALUES (192, 31);
INSERT INTO `help_relation` VALUES (34, 32);
INSERT INTO `help_relation` VALUES (226, 32);
INSERT INTO `help_relation` VALUES (35, 33);
INSERT INTO `help_relation` VALUES (342, 33);
INSERT INTO `help_relation` VALUES (451, 34);
INSERT INTO `help_relation` VALUES (402, 35);
INSERT INTO `help_relation` VALUES (446, 35);
INSERT INTO `help_relation` VALUES (451, 35);
INSERT INTO `help_relation` VALUES (22, 36);
INSERT INTO `help_relation` VALUES (282, 36);
INSERT INTO `help_relation` VALUES (334, 36);
INSERT INTO `help_relation` VALUES (436, 36);
INSERT INTO `help_relation` VALUES (451, 36);
INSERT INTO `help_relation` VALUES (480, 37);
INSERT INTO `help_relation` VALUES (48, 38);
INSERT INTO `help_relation` VALUES (73, 38);
INSERT INTO `help_relation` VALUES (78, 38);
INSERT INTO `help_relation` VALUES (192, 38);
INSERT INTO `help_relation` VALUES (342, 38);
INSERT INTO `help_relation` VALUES (349, 38);
INSERT INTO `help_relation` VALUES (407, 38);
INSERT INTO `help_relation` VALUES (446, 38);
INSERT INTO `help_relation` VALUES (451, 38);
INSERT INTO `help_relation` VALUES (451, 39);
INSERT INTO `help_relation` VALUES (455, 39);
INSERT INTO `help_relation` VALUES (363, 40);
INSERT INTO `help_relation` VALUES (446, 41);
INSERT INTO `help_relation` VALUES (451, 41);
INSERT INTO `help_relation` VALUES (111, 42);
INSERT INTO `help_relation` VALUES (204, 42);
INSERT INTO `help_relation` VALUES (407, 42);
INSERT INTO `help_relation` VALUES (451, 42);
INSERT INTO `help_relation` VALUES (456, 42);
INSERT INTO `help_relation` VALUES (363, 43);
INSERT INTO `help_relation` VALUES (342, 44);
INSERT INTO `help_relation` VALUES (201, 45);
INSERT INTO `help_relation` VALUES (302, 45);
INSERT INTO `help_relation` VALUES (349, 46);
INSERT INTO `help_relation` VALUES (180, 47);
INSERT INTO `help_relation` VALUES (48, 48);
INSERT INTO `help_relation` VALUES (451, 48);
INSERT INTO `help_relation` VALUES (455, 48);
INSERT INTO `help_relation` VALUES (1, 49);
INSERT INTO `help_relation` VALUES (84, 49);
INSERT INTO `help_relation` VALUES (393, 49);
INSERT INTO `help_relation` VALUES (455, 49);
INSERT INTO `help_relation` VALUES (169, 50);
INSERT INTO `help_relation` VALUES (451, 50);
INSERT INTO `help_relation` VALUES (51, 51);
INSERT INTO `help_relation` VALUES (100, 51);
INSERT INTO `help_relation` VALUES (192, 52);
INSERT INTO `help_relation` VALUES (1, 53);
INSERT INTO `help_relation` VALUES (55, 53);
INSERT INTO `help_relation` VALUES (48, 54);
INSERT INTO `help_relation` VALUES (78, 54);
INSERT INTO `help_relation` VALUES (100, 54);
INSERT INTO `help_relation` VALUES (185, 55);
INSERT INTO `help_relation` VALUES (192, 55);
INSERT INTO `help_relation` VALUES (237, 55);
INSERT INTO `help_relation` VALUES (84, 56);
INSERT INTO `help_relation` VALUES (288, 56);
INSERT INTO `help_relation` VALUES (344, 56);
INSERT INTO `help_relation` VALUES (393, 56);
INSERT INTO `help_relation` VALUES (203, 57);
INSERT INTO `help_relation` VALUES (446, 57);
INSERT INTO `help_relation` VALUES (192, 58);
INSERT INTO `help_relation` VALUES (342, 59);
INSERT INTO `help_relation` VALUES (1, 60);
INSERT INTO `help_relation` VALUES (78, 60);
INSERT INTO `help_relation` VALUES (98, 60);
INSERT INTO `help_relation` VALUES (342, 60);
INSERT INTO `help_relation` VALUES (407, 60);
INSERT INTO `help_relation` VALUES (446, 60);
INSERT INTO `help_relation` VALUES (48, 61);
INSERT INTO `help_relation` VALUES (402, 61);
INSERT INTO `help_relation` VALUES (449, 61);
INSERT INTO `help_relation` VALUES (219, 62);
INSERT INTO `help_relation` VALUES (82, 63);
INSERT INTO `help_relation` VALUES (203, 63);
INSERT INTO `help_relation` VALUES (446, 63);
INSERT INTO `help_relation` VALUES (192, 64);
INSERT INTO `help_relation` VALUES (86, 65);
INSERT INTO `help_relation` VALUES (464, 65);
INSERT INTO `help_relation` VALUES (451, 66);
INSERT INTO `help_relation` VALUES (372, 67);
INSERT INTO `help_relation` VALUES (431, 68);
INSERT INTO `help_relation` VALUES (1, 69);
INSERT INTO `help_relation` VALUES (38, 70);
INSERT INTO `help_relation` VALUES (219, 70);
INSERT INTO `help_relation` VALUES (180, 71);
INSERT INTO `help_relation` VALUES (443, 71);
INSERT INTO `help_relation` VALUES (447, 71);
INSERT INTO `help_relation` VALUES (180, 72);
INSERT INTO `help_relation` VALUES (446, 72);
INSERT INTO `help_relation` VALUES (84, 73);
INSERT INTO `help_relation` VALUES (393, 73);
INSERT INTO `help_relation` VALUES (363, 74);
INSERT INTO `help_relation` VALUES (84, 75);
INSERT INTO `help_relation` VALUES (393, 75);
INSERT INTO `help_relation` VALUES (78, 76);
INSERT INTO `help_relation` VALUES (98, 76);
INSERT INTO `help_relation` VALUES (342, 76);
INSERT INTO `help_relation` VALUES (455, 76);
INSERT INTO `help_relation` VALUES (43, 77);
INSERT INTO `help_relation` VALUES (98, 77);
INSERT INTO `help_relation` VALUES (292, 77);
INSERT INTO `help_relation` VALUES (342, 77);
INSERT INTO `help_relation` VALUES (451, 78);
INSERT INTO `help_relation` VALUES (245, 79);
INSERT INTO `help_relation` VALUES (363, 80);
INSERT INTO `help_relation` VALUES (123, 81);
INSERT INTO `help_relation` VALUES (139, 82);
INSERT INTO `help_relation` VALUES (443, 82);
INSERT INTO `help_relation` VALUES (18, 83);
INSERT INTO `help_relation` VALUES (178, 83);
INSERT INTO `help_relation` VALUES (289, 83);
INSERT INTO `help_relation` VALUES (316, 83);
INSERT INTO `help_relation` VALUES (334, 83);
INSERT INTO `help_relation` VALUES (342, 83);
INSERT INTO `help_relation` VALUES (401, 83);
INSERT INTO `help_relation` VALUES (423, 83);
INSERT INTO `help_relation` VALUES (469, 83);
INSERT INTO `help_relation` VALUES (203, 84);
INSERT INTO `help_relation` VALUES (93, 85);
INSERT INTO `help_relation` VALUES (182, 85);
INSERT INTO `help_relation` VALUES (407, 86);
INSERT INTO `help_relation` VALUES (446, 86);
INSERT INTO `help_relation` VALUES (83, 87);
INSERT INTO `help_relation` VALUES (388, 88);
INSERT INTO `help_relation` VALUES (451, 88);
INSERT INTO `help_relation` VALUES (65, 89);
INSERT INTO `help_relation` VALUES (317, 89);
INSERT INTO `help_relation` VALUES (417, 89);
INSERT INTO `help_relation` VALUES (273, 90);
INSERT INTO `help_relation` VALUES (28, 91);
INSERT INTO `help_relation` VALUES (56, 91);
INSERT INTO `help_relation` VALUES (80, 91);
INSERT INTO `help_relation` VALUES (98, 92);
INSERT INTO `help_relation` VALUES (186, 92);
INSERT INTO `help_relation` VALUES (290, 92);
INSERT INTO `help_relation` VALUES (468, 92);
INSERT INTO `help_relation` VALUES (270, 93);
INSERT INTO `help_relation` VALUES (334, 93);
INSERT INTO `help_relation` VALUES (100, 94);
INSERT INTO `help_relation` VALUES (301, 94);
INSERT INTO `help_relation` VALUES (456, 95);
INSERT INTO `help_relation` VALUES (363, 96);
INSERT INTO `help_relation` VALUES (9, 97);
INSERT INTO `help_relation` VALUES (30, 97);
INSERT INTO `help_relation` VALUES (84, 97);
INSERT INTO `help_relation` VALUES (148, 97);
INSERT INTO `help_relation` VALUES (181, 97);
INSERT INTO `help_relation` VALUES (264, 97);
INSERT INTO `help_relation` VALUES (288, 97);
INSERT INTO `help_relation` VALUES (334, 98);
INSERT INTO `help_relation` VALUES (353, 98);
INSERT INTO `help_relation` VALUES (139, 99);
INSERT INTO `help_relation` VALUES (443, 99);
INSERT INTO `help_relation` VALUES (24, 100);
INSERT INTO `help_relation` VALUES (83, 100);
INSERT INTO `help_relation` VALUES (106, 101);
INSERT INTO `help_relation` VALUES (167, 101);
INSERT INTO `help_relation` VALUES (43, 102);
INSERT INTO `help_relation` VALUES (98, 102);
INSERT INTO `help_relation` VALUES (148, 102);
INSERT INTO `help_relation` VALUES (190, 102);
INSERT INTO `help_relation` VALUES (204, 102);
INSERT INTO `help_relation` VALUES (231, 102);
INSERT INTO `help_relation` VALUES (446, 102);
INSERT INTO `help_relation` VALUES (451, 102);
INSERT INTO `help_relation` VALUES (446, 103);
INSERT INTO `help_relation` VALUES (108, 104);
INSERT INTO `help_relation` VALUES (315, 104);
INSERT INTO `help_relation` VALUES (449, 104);
INSERT INTO `help_relation` VALUES (453, 104);
INSERT INTO `help_relation` VALUES (108, 105);
INSERT INTO `help_relation` VALUES (446, 105);
INSERT INTO `help_relation` VALUES (37, 106);
INSERT INTO `help_relation` VALUES (112, 106);
INSERT INTO `help_relation` VALUES (144, 106);
INSERT INTO `help_relation` VALUES (253, 106);
INSERT INTO `help_relation` VALUES (404, 107);
INSERT INTO `help_relation` VALUES (118, 108);
INSERT INTO `help_relation` VALUES (84, 109);
INSERT INTO `help_relation` VALUES (119, 109);
INSERT INTO `help_relation` VALUES (393, 109);
INSERT INTO `help_relation` VALUES (476, 109);
INSERT INTO `help_relation` VALUES (212, 110);
INSERT INTO `help_relation` VALUES (43, 111);
INSERT INTO `help_relation` VALUES (78, 111);
INSERT INTO `help_relation` VALUES (123, 111);
INSERT INTO `help_relation` VALUES (132, 111);
INSERT INTO `help_relation` VALUES (139, 111);
INSERT INTO `help_relation` VALUES (148, 111);
INSERT INTO `help_relation` VALUES (176, 111);
INSERT INTO `help_relation` VALUES (204, 111);
INSERT INTO `help_relation` VALUES (321, 111);
INSERT INTO `help_relation` VALUES (334, 111);
INSERT INTO `help_relation` VALUES (407, 111);
INSERT INTO `help_relation` VALUES (446, 111);
INSERT INTO `help_relation` VALUES (451, 111);
INSERT INTO `help_relation` VALUES (455, 111);
INSERT INTO `help_relation` VALUES (460, 111);
INSERT INTO `help_relation` VALUES (474, 111);
INSERT INTO `help_relation` VALUES (192, 112);
INSERT INTO `help_relation` VALUES (125, 113);
INSERT INTO `help_relation` VALUES (219, 113);
INSERT INTO `help_relation` VALUES (251, 113);
INSERT INTO `help_relation` VALUES (363, 113);
INSERT INTO `help_relation` VALUES (57, 114);
INSERT INTO `help_relation` VALUES (129, 114);
INSERT INTO `help_relation` VALUES (206, 114);
INSERT INTO `help_relation` VALUES (214, 114);
INSERT INTO `help_relation` VALUES (316, 114);
INSERT INTO `help_relation` VALUES (334, 114);
INSERT INTO `help_relation` VALUES (353, 114);
INSERT INTO `help_relation` VALUES (387, 114);
INSERT INTO `help_relation` VALUES (203, 115);
INSERT INTO `help_relation` VALUES (446, 115);
INSERT INTO `help_relation` VALUES (451, 115);
INSERT INTO `help_relation` VALUES (84, 116);
INSERT INTO `help_relation` VALUES (393, 116);
INSERT INTO `help_relation` VALUES (451, 116);
INSERT INTO `help_relation` VALUES (180, 117);
INSERT INTO `help_relation` VALUES (1, 118);
INSERT INTO `help_relation` VALUES (52, 119);
INSERT INTO `help_relation` VALUES (180, 120);
INSERT INTO `help_relation` VALUES (451, 121);
INSERT INTO `help_relation` VALUES (302, 122);
INSERT INTO `help_relation` VALUES (192, 123);
INSERT INTO `help_relation` VALUES (439, 124);
INSERT INTO `help_relation` VALUES (243, 125);
INSERT INTO `help_relation` VALUES (273, 126);
INSERT INTO `help_relation` VALUES (192, 127);
INSERT INTO `help_relation` VALUES (237, 127);
INSERT INTO `help_relation` VALUES (446, 128);
INSERT INTO `help_relation` VALUES (56, 129);
INSERT INTO `help_relation` VALUES (80, 129);
INSERT INTO `help_relation` VALUES (226, 130);
INSERT INTO `help_relation` VALUES (52, 131);
INSERT INTO `help_relation` VALUES (313, 131);
INSERT INTO `help_relation` VALUES (56, 132);
INSERT INTO `help_relation` VALUES (80, 132);
INSERT INTO `help_relation` VALUES (192, 133);
INSERT INTO `help_relation` VALUES (301, 134);
INSERT INTO `help_relation` VALUES (48, 135);
INSERT INTO `help_relation` VALUES (111, 135);
INSERT INTO `help_relation` VALUES (116, 135);
INSERT INTO `help_relation` VALUES (334, 135);
INSERT INTO `help_relation` VALUES (342, 135);
INSERT INTO `help_relation` VALUES (348, 135);
INSERT INTO `help_relation` VALUES (439, 135);
INSERT INTO `help_relation` VALUES (35, 136);
INSERT INTO `help_relation` VALUES (100, 136);
INSERT INTO `help_relation` VALUES (431, 136);
INSERT INTO `help_relation` VALUES (1, 137);
INSERT INTO `help_relation` VALUES (28, 138);
INSERT INTO `help_relation` VALUES (363, 139);
INSERT INTO `help_relation` VALUES (451, 140);
INSERT INTO `help_relation` VALUES (172, 141);
INSERT INTO `help_relation` VALUES (200, 142);
INSERT INTO `help_relation` VALUES (173, 143);
INSERT INTO `help_relation` VALUES (301, 143);
INSERT INTO `help_relation` VALUES (334, 143);
INSERT INTO `help_relation` VALUES (342, 143);
INSERT INTO `help_relation` VALUES (405, 143);
INSERT INTO `help_relation` VALUES (317, 144);
INSERT INTO `help_relation` VALUES (334, 144);
INSERT INTO `help_relation` VALUES (451, 145);
INSERT INTO `help_relation` VALUES (201, 146);
INSERT INTO `help_relation` VALUES (173, 147);
INSERT INTO `help_relation` VALUES (18, 148);
INSERT INTO `help_relation` VALUES (201, 148);
INSERT INTO `help_relation` VALUES (289, 148);
INSERT INTO `help_relation` VALUES (316, 148);
INSERT INTO `help_relation` VALUES (334, 148);
INSERT INTO `help_relation` VALUES (392, 148);
INSERT INTO `help_relation` VALUES (401, 148);
INSERT INTO `help_relation` VALUES (423, 148);
INSERT INTO `help_relation` VALUES (469, 148);
INSERT INTO `help_relation` VALUES (407, 149);
INSERT INTO `help_relation` VALUES (201, 150);
INSERT INTO `help_relation` VALUES (334, 151);
INSERT INTO `help_relation` VALUES (407, 151);
INSERT INTO `help_relation` VALUES (240, 152);
INSERT INTO `help_relation` VALUES (451, 153);
INSERT INTO `help_relation` VALUES (59, 154);
INSERT INTO `help_relation` VALUES (446, 154);
INSERT INTO `help_relation` VALUES (446, 155);
INSERT INTO `help_relation` VALUES (451, 155);
INSERT INTO `help_relation` VALUES (169, 156);
INSERT INTO `help_relation` VALUES (161, 157);
INSERT INTO `help_relation` VALUES (446, 158);
INSERT INTO `help_relation` VALUES (30, 159);
INSERT INTO `help_relation` VALUES (152, 159);
INSERT INTO `help_relation` VALUES (438, 159);
INSERT INTO `help_relation` VALUES (431, 160);
INSERT INTO `help_relation` VALUES (407, 161);
INSERT INTO `help_relation` VALUES (48, 162);
INSERT INTO `help_relation` VALUES (78, 162);
INSERT INTO `help_relation` VALUES (342, 162);
INSERT INTO `help_relation` VALUES (349, 162);
INSERT INTO `help_relation` VALUES (446, 162);
INSERT INTO `help_relation` VALUES (1, 163);
INSERT INTO `help_relation` VALUES (48, 163);
INSERT INTO `help_relation` VALUES (81, 163);
INSERT INTO `help_relation` VALUES (240, 164);
INSERT INTO `help_relation` VALUES (192, 165);
INSERT INTO `help_relation` VALUES (237, 165);
INSERT INTO `help_relation` VALUES (24, 166);
INSERT INTO `help_relation` VALUES (122, 166);
INSERT INTO `help_relation` VALUES (161, 166);
INSERT INTO `help_relation` VALUES (200, 166);
INSERT INTO `help_relation` VALUES (219, 166);
INSERT INTO `help_relation` VALUES (302, 166);
INSERT INTO `help_relation` VALUES (480, 166);
INSERT INTO `help_relation` VALUES (149, 167);
INSERT INTO `help_relation` VALUES (201, 167);
INSERT INTO `help_relation` VALUES (398, 168);
INSERT INTO `help_relation` VALUES (334, 169);
INSERT INTO `help_relation` VALUES (446, 170);
INSERT INTO `help_relation` VALUES (451, 170);
INSERT INTO `help_relation` VALUES (455, 170);
INSERT INTO `help_relation` VALUES (456, 170);
INSERT INTO `help_relation` VALUES (96, 171);
INSERT INTO `help_relation` VALUES (144, 171);
INSERT INTO `help_relation` VALUES (292, 171);
INSERT INTO `help_relation` VALUES (138, 172);
INSERT INTO `help_relation` VALUES (334, 172);
INSERT INTO `help_relation` VALUES (139, 173);
INSERT INTO `help_relation` VALUES (153, 174);
INSERT INTO `help_relation` VALUES (334, 174);
INSERT INTO `help_relation` VALUES (439, 175);
INSERT INTO `help_relation` VALUES (139, 176);
INSERT INTO `help_relation` VALUES (173, 177);
INSERT INTO `help_relation` VALUES (190, 177);
INSERT INTO `help_relation` VALUES (301, 177);
INSERT INTO `help_relation` VALUES (405, 177);
INSERT INTO `help_relation` VALUES (111, 178);
INSERT INTO `help_relation` VALUES (292, 178);
INSERT INTO `help_relation` VALUES (348, 178);
INSERT INTO `help_relation` VALUES (407, 178);
INSERT INTO `help_relation` VALUES (342, 179);
INSERT INTO `help_relation` VALUES (219, 180);
INSERT INTO `help_relation` VALUES (364, 180);
INSERT INTO `help_relation` VALUES (451, 181);
INSERT INTO `help_relation` VALUES (381, 182);
INSERT INTO `help_relation` VALUES (148, 183);
INSERT INTO `help_relation` VALUES (204, 183);
INSERT INTO `help_relation` VALUES (451, 183);
INSERT INTO `help_relation` VALUES (448, 184);
INSERT INTO `help_relation` VALUES (435, 185);
INSERT INTO `help_relation` VALUES (123, 186);
INSERT INTO `help_relation` VALUES (129, 186);
INSERT INTO `help_relation` VALUES (176, 186);
INSERT INTO `help_relation` VALUES (336, 186);
INSERT INTO `help_relation` VALUES (431, 186);
INSERT INTO `help_relation` VALUES (56, 187);
INSERT INTO `help_relation` VALUES (80, 187);
INSERT INTO `help_relation` VALUES (342, 188);
INSERT INTO `help_relation` VALUES (1, 189);
INSERT INTO `help_relation` VALUES (35, 189);
INSERT INTO `help_relation` VALUES (342, 189);
INSERT INTO `help_relation` VALUES (407, 190);
INSERT INTO `help_relation` VALUES (192, 191);
INSERT INTO `help_relation` VALUES (139, 192);
INSERT INTO `help_relation` VALUES (237, 193);
INSERT INTO `help_relation` VALUES (184, 194);
INSERT INTO `help_relation` VALUES (334, 194);
INSERT INTO `help_relation` VALUES (1, 195);
INSERT INTO `help_relation` VALUES (212, 196);
INSERT INTO `help_relation` VALUES (243, 197);
INSERT INTO `help_relation` VALUES (83, 198);
INSERT INTO `help_relation` VALUES (192, 198);
INSERT INTO `help_relation` VALUES (203, 198);
INSERT INTO `help_relation` VALUES (446, 198);
INSERT INTO `help_relation` VALUES (451, 198);
INSERT INTO `help_relation` VALUES (249, 199);
INSERT INTO `help_relation` VALUES (446, 200);
INSERT INTO `help_relation` VALUES (407, 201);
INSERT INTO `help_relation` VALUES (451, 201);
INSERT INTO `help_relation` VALUES (84, 202);
INSERT INTO `help_relation` VALUES (393, 202);
INSERT INTO `help_relation` VALUES (446, 202);
INSERT INTO `help_relation` VALUES (279, 203);
INSERT INTO `help_relation` VALUES (342, 204);
INSERT INTO `help_relation` VALUES (35, 205);
INSERT INTO `help_relation` VALUES (43, 205);
INSERT INTO `help_relation` VALUES (48, 205);
INSERT INTO `help_relation` VALUES (78, 205);
INSERT INTO `help_relation` VALUES (98, 205);
INSERT INTO `help_relation` VALUES (407, 205);
INSERT INTO `help_relation` VALUES (192, 206);
INSERT INTO `help_relation` VALUES (148, 207);
INSERT INTO `help_relation` VALUES (181, 207);
INSERT INTO `help_relation` VALUES (204, 207);
INSERT INTO `help_relation` VALUES (297, 207);
INSERT INTO `help_relation` VALUES (334, 207);
INSERT INTO `help_relation` VALUES (201, 208);
INSERT INTO `help_relation` VALUES (265, 209);
INSERT INTO `help_relation` VALUES (445, 210);
INSERT INTO `help_relation` VALUES (267, 211);
INSERT INTO `help_relation` VALUES (1, 212);
INSERT INTO `help_relation` VALUES (59, 212);
INSERT INTO `help_relation` VALUES (82, 212);
INSERT INTO `help_relation` VALUES (96, 212);
INSERT INTO `help_relation` VALUES (203, 212);
INSERT INTO `help_relation` VALUES (292, 212);
INSERT INTO `help_relation` VALUES (296, 212);
INSERT INTO `help_relation` VALUES (334, 212);
INSERT INTO `help_relation` VALUES (446, 212);
INSERT INTO `help_relation` VALUES (451, 212);
INSERT INTO `help_relation` VALUES (84, 213);
INSERT INTO `help_relation` VALUES (393, 213);
INSERT INTO `help_relation` VALUES (409, 214);
INSERT INTO `help_relation` VALUES (345, 215);
INSERT INTO `help_relation` VALUES (180, 216);
INSERT INTO `help_relation` VALUES (446, 217);
INSERT INTO `help_relation` VALUES (260, 218);
INSERT INTO `help_relation` VALUES (243, 219);
INSERT INTO `help_relation` VALUES (449, 219);
INSERT INTO `help_relation` VALUES (1, 220);
INSERT INTO `help_relation` VALUES (7, 221);
INSERT INTO `help_relation` VALUES (334, 221);
INSERT INTO `help_relation` VALUES (245, 222);
INSERT INTO `help_relation` VALUES (414, 222);
INSERT INTO `help_relation` VALUES (342, 223);
INSERT INTO `help_relation` VALUES (411, 224);
INSERT INTO `help_relation` VALUES (82, 225);
INSERT INTO `help_relation` VALUES (203, 225);
INSERT INTO `help_relation` VALUES (446, 225);
INSERT INTO `help_relation` VALUES (301, 226);
INSERT INTO `help_relation` VALUES (24, 227);
INSERT INTO `help_relation` VALUES (122, 227);
INSERT INTO `help_relation` VALUES (161, 227);
INSERT INTO `help_relation` VALUES (200, 227);
INSERT INTO `help_relation` VALUES (302, 227);
INSERT INTO `help_relation` VALUES (480, 227);
INSERT INTO `help_relation` VALUES (192, 228);
INSERT INTO `help_relation` VALUES (180, 229);
INSERT INTO `help_relation` VALUES (456, 230);
INSERT INTO `help_relation` VALUES (180, 231);
INSERT INTO `help_relation` VALUES (372, 232);
INSERT INTO `help_relation` VALUES (148, 233);
INSERT INTO `help_relation` VALUES (204, 233);
INSERT INTO `help_relation` VALUES (245, 233);
INSERT INTO `help_relation` VALUES (321, 233);
INSERT INTO `help_relation` VALUES (334, 233);
INSERT INTO `help_relation` VALUES (407, 233);
INSERT INTO `help_relation` VALUES (414, 233);
INSERT INTO `help_relation` VALUES (451, 233);
INSERT INTO `help_relation` VALUES (180, 234);
INSERT INTO `help_relation` VALUES (59, 235);
INSERT INTO `help_relation` VALUES (103, 235);
INSERT INTO `help_relation` VALUES (108, 235);
INSERT INTO `help_relation` VALUES (172, 235);
INSERT INTO `help_relation` VALUES (206, 235);
INSERT INTO `help_relation` VALUES (264, 235);
INSERT INTO `help_relation` VALUES (266, 235);
INSERT INTO `help_relation` VALUES (309, 235);
INSERT INTO `help_relation` VALUES (334, 235);
INSERT INTO `help_relation` VALUES (345, 235);
INSERT INTO `help_relation` VALUES (348, 235);
INSERT INTO `help_relation` VALUES (388, 235);
INSERT INTO `help_relation` VALUES (402, 235);
INSERT INTO `help_relation` VALUES (446, 235);
INSERT INTO `help_relation` VALUES (449, 235);
INSERT INTO `help_relation` VALUES (451, 235);
INSERT INTO `help_relation` VALUES (453, 235);
INSERT INTO `help_relation` VALUES (334, 236);
INSERT INTO `help_relation` VALUES (353, 236);
INSERT INTO `help_relation` VALUES (446, 236);
INSERT INTO `help_relation` VALUES (451, 236);
INSERT INTO `help_relation` VALUES (451, 237);
INSERT INTO `help_relation` VALUES (30, 238);
INSERT INTO `help_relation` VALUES (264, 238);
INSERT INTO `help_relation` VALUES (451, 238);
INSERT INTO `help_relation` VALUES (455, 238);
INSERT INTO `help_relation` VALUES (180, 239);
INSERT INTO `help_relation` VALUES (342, 240);
INSERT INTO `help_relation` VALUES (293, 241);
INSERT INTO `help_relation` VALUES (451, 242);
INSERT INTO `help_relation` VALUES (298, 243);
INSERT INTO `help_relation` VALUES (446, 244);
INSERT INTO `help_relation` VALUES (83, 245);
INSERT INTO `help_relation` VALUES (180, 246);
INSERT INTO `help_relation` VALUES (318, 247);
INSERT INTO `help_relation` VALUES (342, 247);
INSERT INTO `help_relation` VALUES (349, 247);
INSERT INTO `help_relation` VALUES (342, 248);
INSERT INTO `help_relation` VALUES (219, 249);
INSERT INTO `help_relation` VALUES (303, 249);
INSERT INTO `help_relation` VALUES (362, 249);
INSERT INTO `help_relation` VALUES (200, 250);
INSERT INTO `help_relation` VALUES (83, 251);
INSERT INTO `help_relation` VALUES (405, 252);
INSERT INTO `help_relation` VALUES (469, 253);
INSERT INTO `help_relation` VALUES (234, 254);
INSERT INTO `help_relation` VALUES (139, 255);
INSERT INTO `help_relation` VALUES (144, 256);
INSERT INTO `help_relation` VALUES (315, 256);
INSERT INTO `help_relation` VALUES (18, 257);
INSERT INTO `help_relation` VALUES (21, 257);
INSERT INTO `help_relation` VALUES (59, 257);
INSERT INTO `help_relation` VALUES (73, 257);
INSERT INTO `help_relation` VALUES (84, 257);
INSERT INTO `help_relation` VALUES (148, 257);
INSERT INTO `help_relation` VALUES (201, 257);
INSERT INTO `help_relation` VALUES (203, 257);
INSERT INTO `help_relation` VALUES (266, 257);
INSERT INTO `help_relation` VALUES (289, 257);
INSERT INTO `help_relation` VALUES (297, 257);
INSERT INTO `help_relation` VALUES (334, 257);
INSERT INTO `help_relation` VALUES (344, 257);
INSERT INTO `help_relation` VALUES (438, 257);
INSERT INTO `help_relation` VALUES (451, 257);
INSERT INTO `help_relation` VALUES (456, 257);
INSERT INTO `help_relation` VALUES (318, 258);
INSERT INTO `help_relation` VALUES (192, 259);
INSERT INTO `help_relation` VALUES (222, 260);
INSERT INTO `help_relation` VALUES (84, 261);
INSERT INTO `help_relation` VALUES (334, 262);
INSERT INTO `help_relation` VALUES (436, 262);
INSERT INTO `help_relation` VALUES (38, 263);
INSERT INTO `help_relation` VALUES (334, 263);
INSERT INTO `help_relation` VALUES (447, 263);
INSERT INTO `help_relation` VALUES (446, 264);
INSERT INTO `help_relation` VALUES (451, 265);
INSERT INTO `help_relation` VALUES (365, 266);
INSERT INTO `help_relation` VALUES (140, 267);
INSERT INTO `help_relation` VALUES (101, 268);
INSERT INTO `help_relation` VALUES (446, 269);
INSERT INTO `help_relation` VALUES (449, 269);
INSERT INTO `help_relation` VALUES (451, 270);
INSERT INTO `help_relation` VALUES (326, 271);
INSERT INTO `help_relation` VALUES (402, 272);
INSERT INTO `help_relation` VALUES (43, 273);
INSERT INTO `help_relation` VALUES (331, 274);
INSERT INTO `help_relation` VALUES (245, 275);
INSERT INTO `help_relation` VALUES (447, 276);
INSERT INTO `help_relation` VALUES (309, 277);
INSERT INTO `help_relation` VALUES (7, 278);
INSERT INTO `help_relation` VALUES (10, 278);
INSERT INTO `help_relation` VALUES (18, 278);
INSERT INTO `help_relation` VALUES (22, 278);
INSERT INTO `help_relation` VALUES (25, 278);
INSERT INTO `help_relation` VALUES (33, 278);
INSERT INTO `help_relation` VALUES (38, 278);
INSERT INTO `help_relation` VALUES (57, 278);
INSERT INTO `help_relation` VALUES (65, 278);
INSERT INTO `help_relation` VALUES (116, 278);
INSERT INTO `help_relation` VALUES (126, 278);
INSERT INTO `help_relation` VALUES (129, 278);
INSERT INTO `help_relation` VALUES (138, 278);
INSERT INTO `help_relation` VALUES (153, 278);
INSERT INTO `help_relation` VALUES (184, 278);
INSERT INTO `help_relation` VALUES (185, 278);
INSERT INTO `help_relation` VALUES (206, 278);
INSERT INTO `help_relation` VALUES (214, 278);
INSERT INTO `help_relation` VALUES (266, 278);
INSERT INTO `help_relation` VALUES (270, 278);
INSERT INTO `help_relation` VALUES (282, 278);
INSERT INTO `help_relation` VALUES (296, 278);
INSERT INTO `help_relation` VALUES (297, 278);
INSERT INTO `help_relation` VALUES (316, 278);
INSERT INTO `help_relation` VALUES (317, 278);
INSERT INTO `help_relation` VALUES (321, 278);
INSERT INTO `help_relation` VALUES (334, 278);
INSERT INTO `help_relation` VALUES (336, 278);
INSERT INTO `help_relation` VALUES (344, 278);
INSERT INTO `help_relation` VALUES (353, 278);
INSERT INTO `help_relation` VALUES (387, 278);
INSERT INTO `help_relation` VALUES (436, 278);
INSERT INTO `help_relation` VALUES (469, 278);
INSERT INTO `help_relation` VALUES (472, 278);
INSERT INTO `help_relation` VALUES (451, 279);
INSERT INTO `help_relation` VALUES (192, 280);
INSERT INTO `help_relation` VALUES (237, 280);
INSERT INTO `help_relation` VALUES (293, 280);
INSERT INTO `help_relation` VALUES (342, 280);
INSERT INTO `help_relation` VALUES (315, 281);
INSERT INTO `help_relation` VALUES (451, 282);
INSERT INTO `help_relation` VALUES (116, 283);
INSERT INTO `help_relation` VALUES (28, 284);
INSERT INTO `help_relation` VALUES (56, 284);
INSERT INTO `help_relation` VALUES (80, 284);
INSERT INTO `help_relation` VALUES (221, 284);
INSERT INTO `help_relation` VALUES (314, 284);
INSERT INTO `help_relation` VALUES (331, 284);
INSERT INTO `help_relation` VALUES (476, 284);
INSERT INTO `help_relation` VALUES (363, 285);
INSERT INTO `help_relation` VALUES (140, 286);
INSERT INTO `help_relation` VALUES (304, 286);
INSERT INTO `help_relation` VALUES (302, 287);
INSERT INTO `help_relation` VALUES (100, 288);
INSERT INTO `help_relation` VALUES (363, 289);
INSERT INTO `help_relation` VALUES (43, 290);
INSERT INTO `help_relation` VALUES (243, 290);
INSERT INTO `help_relation` VALUES (248, 290);
INSERT INTO `help_relation` VALUES (290, 290);
INSERT INTO `help_relation` VALUES (342, 290);
INSERT INTO `help_relation` VALUES (153, 291);
INSERT INTO `help_relation` VALUES (334, 291);
INSERT INTO `help_relation` VALUES (134, 292);
INSERT INTO `help_relation` VALUES (73, 293);
INSERT INTO `help_relation` VALUES (192, 293);
INSERT INTO `help_relation` VALUES (456, 294);
INSERT INTO `help_relation` VALUES (180, 295);
INSERT INTO `help_relation` VALUES (176, 296);
INSERT INTO `help_relation` VALUES (439, 297);
INSERT INTO `help_relation` VALUES (24, 298);
INSERT INTO `help_relation` VALUES (104, 298);
INSERT INTO `help_relation` VALUES (363, 299);
INSERT INTO `help_relation` VALUES (180, 300);
INSERT INTO `help_relation` VALUES (407, 301);
INSERT INTO `help_relation` VALUES (113, 302);
INSERT INTO `help_relation` VALUES (377, 302);
INSERT INTO `help_relation` VALUES (446, 303);
INSERT INTO `help_relation` VALUES (25, 304);
INSERT INTO `help_relation` VALUES (334, 304);
INSERT INTO `help_relation` VALUES (192, 305);
INSERT INTO `help_relation` VALUES (361, 306);
INSERT INTO `help_relation` VALUES (456, 306);
INSERT INTO `help_relation` VALUES (139, 307);
INSERT INTO `help_relation` VALUES (180, 308);
INSERT INTO `help_relation` VALUES (363, 309);
INSERT INTO `help_relation` VALUES (192, 310);
INSERT INTO `help_relation` VALUES (334, 311);
INSERT INTO `help_relation` VALUES (365, 311);
INSERT INTO `help_relation` VALUES (279, 312);
INSERT INTO `help_relation` VALUES (334, 312);
INSERT INTO `help_relation` VALUES (404, 312);
INSERT INTO `help_relation` VALUES (370, 313);
INSERT INTO `help_relation` VALUES (83, 314);
INSERT INTO `help_relation` VALUES (116, 314);
INSERT INTO `help_relation` VALUES (342, 314);
INSERT INTO `help_relation` VALUES (446, 315);
INSERT INTO `help_relation` VALUES (342, 316);
INSERT INTO `help_relation` VALUES (192, 317);
INSERT INTO `help_relation` VALUES (81, 318);
INSERT INTO `help_relation` VALUES (192, 318);
INSERT INTO `help_relation` VALUES (342, 319);
INSERT INTO `help_relation` VALUES (383, 320);
INSERT INTO `help_relation` VALUES (83, 321);
INSERT INTO `help_relation` VALUES (144, 321);
INSERT INTO `help_relation` VALUES (169, 321);
INSERT INTO `help_relation` VALUES (180, 322);
INSERT INTO `help_relation` VALUES (407, 323);
INSERT INTO `help_relation` VALUES (52, 324);
INSERT INTO `help_relation` VALUES (313, 324);
INSERT INTO `help_relation` VALUES (9, 325);
INSERT INTO `help_relation` VALUES (361, 325);
INSERT INTO `help_relation` VALUES (456, 325);
INSERT INTO `help_relation` VALUES (192, 326);
INSERT INTO `help_relation` VALUES (117, 327);
INSERT INTO `help_relation` VALUES (180, 328);
INSERT INTO `help_relation` VALUES (139, 329);
INSERT INTO `help_relation` VALUES (431, 329);
INSERT INTO `help_relation` VALUES (363, 330);
INSERT INTO `help_relation` VALUES (394, 331);
INSERT INTO `help_relation` VALUES (363, 332);
INSERT INTO `help_relation` VALUES (446, 333);
INSERT INTO `help_relation` VALUES (137, 334);
INSERT INTO `help_relation` VALUES (24, 335);
INSERT INTO `help_relation` VALUES (103, 336);
INSERT INTO `help_relation` VALUES (213, 336);
INSERT INTO `help_relation` VALUES (393, 336);
INSERT INTO `help_relation` VALUES (446, 336);
INSERT INTO `help_relation` VALUES (203, 337);
INSERT INTO `help_relation` VALUES (446, 337);
INSERT INTO `help_relation` VALUES (451, 337);
INSERT INTO `help_relation` VALUES (1, 338);
INSERT INTO `help_relation` VALUES (59, 339);
INSERT INTO `help_relation` VALUES (152, 339);
INSERT INTO `help_relation` VALUES (192, 339);
INSERT INTO `help_relation` VALUES (204, 339);
INSERT INTO `help_relation` VALUES (361, 339);
INSERT INTO `help_relation` VALUES (393, 339);
INSERT INTO `help_relation` VALUES (423, 339);
INSERT INTO `help_relation` VALUES (446, 339);
INSERT INTO `help_relation` VALUES (451, 340);
INSERT INTO `help_relation` VALUES (456, 341);
INSERT INTO `help_relation` VALUES (1, 342);
INSERT INTO `help_relation` VALUES (342, 342);
INSERT INTO `help_relation` VALUES (1, 343);
INSERT INTO `help_relation` VALUES (334, 344);
INSERT INTO `help_relation` VALUES (336, 344);
INSERT INTO `help_relation` VALUES (407, 345);
INSERT INTO `help_relation` VALUES (411, 346);
INSERT INTO `help_relation` VALUES (451, 347);
INSERT INTO `help_relation` VALUES (73, 348);
INSERT INTO `help_relation` VALUES (192, 348);
INSERT INTO `help_relation` VALUES (456, 348);
INSERT INTO `help_relation` VALUES (460, 348);
INSERT INTO `help_relation` VALUES (219, 349);
INSERT INTO `help_relation` VALUES (448, 349);
INSERT INTO `help_relation` VALUES (342, 350);
INSERT INTO `help_relation` VALUES (100, 351);
INSERT INTO `help_relation` VALUES (474, 352);
INSERT INTO `help_relation` VALUES (65, 353);
INSERT INTO `help_relation` VALUES (334, 353);
INSERT INTO `help_relation` VALUES (264, 354);
INSERT INTO `help_relation` VALUES (431, 355);
INSERT INTO `help_relation` VALUES (342, 356);
INSERT INTO `help_relation` VALUES (204, 357);
INSERT INTO `help_relation` VALUES (402, 357);
INSERT INTO `help_relation` VALUES (139, 358);
INSERT INTO `help_relation` VALUES (314, 358);
INSERT INTO `help_relation` VALUES (451, 359);
INSERT INTO `help_relation` VALUES (402, 360);
INSERT INTO `help_relation` VALUES (84, 361);
INSERT INTO `help_relation` VALUES (363, 361);
INSERT INTO `help_relation` VALUES (192, 362);
INSERT INTO `help_relation` VALUES (204, 363);
INSERT INTO `help_relation` VALUES (363, 364);
INSERT INTO `help_relation` VALUES (192, 365);
INSERT INTO `help_relation` VALUES (451, 365);
INSERT INTO `help_relation` VALUES (455, 365);
INSERT INTO `help_relation` VALUES (427, 366);
INSERT INTO `help_relation` VALUES (84, 367);
INSERT INTO `help_relation` VALUES (270, 368);
INSERT INTO `help_relation` VALUES (431, 369);
INSERT INTO `help_relation` VALUES (432, 370);
INSERT INTO `help_relation` VALUES (122, 371);
INSERT INTO `help_relation` VALUES (10, 372);
INSERT INTO `help_relation` VALUES (334, 372);
INSERT INTO `help_relation` VALUES (30, 373);
INSERT INTO `help_relation` VALUES (264, 373);
INSERT INTO `help_relation` VALUES (455, 373);
INSERT INTO `help_relation` VALUES (54, 374);
INSERT INTO `help_relation` VALUES (431, 375);
INSERT INTO `help_relation` VALUES (79, 376);
INSERT INTO `help_relation` VALUES (197, 376);
INSERT INTO `help_relation` VALUES (356, 376);
INSERT INTO `help_relation` VALUES (440, 376);
INSERT INTO `help_relation` VALUES (79, 377);
INSERT INTO `help_relation` VALUES (84, 377);
INSERT INTO `help_relation` VALUES (148, 377);
INSERT INTO `help_relation` VALUES (197, 377);
INSERT INTO `help_relation` VALUES (300, 377);
INSERT INTO `help_relation` VALUES (178, 378);
INSERT INTO `help_relation` VALUES (315, 379);
INSERT INTO `help_relation` VALUES (451, 380);
INSERT INTO `help_relation` VALUES (139, 381);
INSERT INTO `help_relation` VALUES (313, 381);
INSERT INTO `help_relation` VALUES (33, 382);
INSERT INTO `help_relation` VALUES (443, 383);
INSERT INTO `help_relation` VALUES (9, 384);
INSERT INTO `help_relation` VALUES (28, 384);
INSERT INTO `help_relation` VALUES (30, 384);
INSERT INTO `help_relation` VALUES (84, 384);
INSERT INTO `help_relation` VALUES (148, 384);
INSERT INTO `help_relation` VALUES (181, 384);
INSERT INTO `help_relation` VALUES (264, 384);
INSERT INTO `help_relation` VALUES (288, 384);
INSERT INTO `help_relation` VALUES (462, 384);
INSERT INTO `help_relation` VALUES (446, 385);
INSERT INTO `help_relation` VALUES (447, 386);
INSERT INTO `help_relation` VALUES (73, 387);
INSERT INTO `help_relation` VALUES (213, 387);
INSERT INTO `help_relation` VALUES (319, 387);
INSERT INTO `help_relation` VALUES (456, 387);
INSERT INTO `help_relation` VALUES (451, 388);
INSERT INTO `help_relation` VALUES (100, 389);
INSERT INTO `help_relation` VALUES (301, 390);
INSERT INTO `help_relation` VALUES (296, 391);
INSERT INTO `help_relation` VALUES (334, 391);
INSERT INTO `help_relation` VALUES (446, 391);
INSERT INTO `help_relation` VALUES (48, 392);
INSERT INTO `help_relation` VALUES (78, 392);
INSERT INTO `help_relation` VALUES (100, 392);
INSERT INTO `help_relation` VALUES (116, 392);
INSERT INTO `help_relation` VALUES (342, 392);
INSERT INTO `help_relation` VALUES (59, 393);
INSERT INTO `help_relation` VALUES (98, 393);
INSERT INTO `help_relation` VALUES (446, 393);
INSERT INTO `help_relation` VALUES (451, 393);
INSERT INTO `help_relation` VALUES (455, 393);
INSERT INTO `help_relation` VALUES (451, 394);
INSERT INTO `help_relation` VALUES (221, 395);
INSERT INTO `help_relation` VALUES (342, 396);
INSERT INTO `help_relation` VALUES (43, 397);
INSERT INTO `help_relation` VALUES (98, 397);
INSERT INTO `help_relation` VALUES (468, 397);
INSERT INTO `help_relation` VALUES (446, 398);
INSERT INTO `help_relation` VALUES (453, 398);
INSERT INTO `help_relation` VALUES (446, 399);
INSERT INTO `help_relation` VALUES (451, 399);
INSERT INTO `help_relation` VALUES (231, 400);
INSERT INTO `help_relation` VALUES (451, 400);
INSERT INTO `help_relation` VALUES (451, 401);
INSERT INTO `help_relation` VALUES (455, 401);
INSERT INTO `help_relation` VALUES (35, 402);
INSERT INTO `help_relation` VALUES (123, 403);
INSERT INTO `help_relation` VALUES (129, 403);
INSERT INTO `help_relation` VALUES (336, 403);
INSERT INTO `help_relation` VALUES (431, 403);
INSERT INTO `help_relation` VALUES (148, 404);
INSERT INTO `help_relation` VALUES (181, 404);
INSERT INTO `help_relation` VALUES (204, 404);
INSERT INTO `help_relation` VALUES (297, 404);
INSERT INTO `help_relation` VALUES (334, 404);
INSERT INTO `help_relation` VALUES (456, 404);
INSERT INTO `help_relation` VALUES (79, 405);
INSERT INTO `help_relation` VALUES (356, 405);
INSERT INTO `help_relation` VALUES (455, 405);
INSERT INTO `help_relation` VALUES (465, 406);
INSERT INTO `help_relation` VALUES (449, 407);
INSERT INTO `help_relation` VALUES (37, 408);
INSERT INTO `help_relation` VALUES (52, 408);
INSERT INTO `help_relation` VALUES (84, 408);
INSERT INTO `help_relation` VALUES (138, 408);
INSERT INTO `help_relation` VALUES (214, 408);
INSERT INTO `help_relation` VALUES (313, 408);
INSERT INTO `help_relation` VALUES (393, 408);
INSERT INTO `help_relation` VALUES (407, 409);
INSERT INTO `help_relation` VALUES (245, 410);
INSERT INTO `help_relation` VALUES (342, 411);
INSERT INTO `help_relation` VALUES (349, 411);
INSERT INTO `help_relation` VALUES (84, 412);
INSERT INTO `help_relation` VALUES (393, 412);
INSERT INTO `help_relation` VALUES (446, 412);
INSERT INTO `help_relation` VALUES (407, 413);
INSERT INTO `help_relation` VALUES (204, 414);
INSERT INTO `help_relation` VALUES (451, 414);
INSERT INTO `help_relation` VALUES (476, 415);
INSERT INTO `help_relation` VALUES (192, 416);
INSERT INTO `help_relation` VALUES (0, 417);
INSERT INTO `help_relation` VALUES (91, 417);
INSERT INTO `help_relation` VALUES (276, 417);
INSERT INTO `help_relation` VALUES (293, 417);
INSERT INTO `help_relation` VALUES (342, 417);
INSERT INTO `help_relation` VALUES (349, 417);
INSERT INTO `help_relation` VALUES (371, 417);
INSERT INTO `help_relation` VALUES (417, 417);
INSERT INTO `help_relation` VALUES (477, 418);
INSERT INTO `help_relation` VALUES (35, 419);
INSERT INTO `help_relation` VALUES (108, 419);
INSERT INTO `help_relation` VALUES (315, 419);
INSERT INTO `help_relation` VALUES (407, 419);
INSERT INTO `help_relation` VALUES (449, 419);
INSERT INTO `help_relation` VALUES (453, 419);
INSERT INTO `help_relation` VALUES (180, 420);
INSERT INTO `help_relation` VALUES (192, 421);
INSERT INTO `help_relation` VALUES (35, 422);
INSERT INTO `help_relation` VALUES (126, 422);
INSERT INTO `help_relation` VALUES (282, 422);
INSERT INTO `help_relation` VALUES (334, 422);
INSERT INTO `help_relation` VALUES (475, 423);
INSERT INTO `help_relation` VALUES (27, 424);
INSERT INTO `help_relation` VALUES (21, 425);
INSERT INTO `help_relation` VALUES (252, 425);
INSERT INTO `help_relation` VALUES (334, 425);
INSERT INTO `help_relation` VALUES (334, 426);
INSERT INTO `help_relation` VALUES (472, 426);
INSERT INTO `help_relation` VALUES (192, 427);
INSERT INTO `help_relation` VALUES (98, 428);
INSERT INTO `help_relation` VALUES (342, 428);
INSERT INTO `help_relation` VALUES (203, 429);
INSERT INTO `help_relation` VALUES (100, 430);
INSERT INTO `help_relation` VALUES (446, 430);
INSERT INTO `help_relation` VALUES (451, 430);
INSERT INTO `help_relation` VALUES (446, 431);
INSERT INTO `help_relation` VALUES (334, 432);
INSERT INTO `help_relation` VALUES (38, 433);
INSERT INTO `help_relation` VALUES (57, 433);
INSERT INTO `help_relation` VALUES (111, 433);
INSERT INTO `help_relation` VALUES (180, 433);
INSERT INTO `help_relation` VALUES (253, 433);
INSERT INTO `help_relation` VALUES (348, 433);
INSERT INTO `help_relation` VALUES (447, 433);
INSERT INTO `help_relation` VALUES (200, 434);
INSERT INTO `help_relation` VALUES (451, 434);
INSERT INTO `help_relation` VALUES (191, 435);
INSERT INTO `help_relation` VALUES (451, 436);

-- --------------------------------------------------------

-- 
-- Table structure for table `help_topic`
-- 

CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

-- 
-- Dumping data for table `help_topic`
-- 

INSERT INTO `help_topic` VALUES (0, 'MIN', 16, 'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (1, 'JOIN', 26, 'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint_list]\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON condition\n  | table_reference LEFT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [LEFT [OUTER]] JOIN table_factor\n  | table_reference RIGHT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [RIGHT [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint_list:\n    index_hint [, index_hint] ...\n\nindex_hint:\n    USE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n  | IGNORE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n  | FORCE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER\nJOIN is used with an ON clause, CROSS JOIN is used otherwise.\n\nIn general, parentheses can be ignored in join expressions containing\nonly inner join operations. MySQL also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.1/en/nested-joins.html).\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.1/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/join.html\n\n', 'SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n', 'http://dev.mysql.com/doc/refman/5.1/en/join.html');
INSERT INTO `help_topic` VALUES (2, 'HEX', 35, 'Syntax:\nHEX(N_or_S)\n\nIf N_or_S is a number, returns a string representation of the\nhexadecimal value of N, where N is a longlong (BIGINT) number. This is\nequivalent to CONV(N,10,16).\n\nIf N_or_S is a string, returns a hexadecimal string representation of\nN_or_S where each character in N_or_S is converted to two hexadecimal\ndigits. The inverse of this operation is performed by the UNHEX()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT HEX(255);\n        -> ''FF''\nmysql> SELECT 0x616263;\n        -> ''abc''\nmysql> SELECT HEX(''abc'');\n        -> 616263\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (3, 'REPLACE', 35, 'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPLACE(''www.mysql.com'', ''w'', ''Ww'');\n        -> ''WwWwWw.mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (4, 'CONTAINS', 28, 'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (5, 'SRID', 34, 'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT SRID(GeomFromText(''LineString(1 1,2 2)'',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(''LineString(1 1,2 2)'',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (6, 'CURRENT_TIMESTAMP', 30, 'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (7, 'SHOW CONTRIBUTORS', 26, 'Syntax:\nSHOW CONTRIBUTORS\n\nThe SHOW CONTRIBUTORS statement displays information about the people\nwho contribute to MySQL source or to causes that MySQL AB supports. For\neach contributor, it displays Name, Location, and Comment values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html');
INSERT INTO `help_topic` VALUES (8, 'VARIANCE', 16, 'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. The standard SQL function VAR_POP() can be used\ninstead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (9, 'DROP SERVER', 38, 'Syntax:\nDROP SERVER [ IF EXISTS ] server_name\n\nDrops the server definition for the server named server_name. The\ncorresponding row within the mysql.servers table will be deleted. This\nstatement requires the SUPER privilege.\n\nDropping a server for a table does not affect any FEDERATED tables that\nused this connection information when they were created. See [HELP\nCREATE SERVER].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-server.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-server.html');
INSERT INTO `help_topic` VALUES (10, 'SHOW AUTHORS', 26, 'Syntax:\nSHOW AUTHORS\n\nThe SHOW AUTHORS statement displays information about the people who\nwork on MySQL. For each author, it displays Name, Location, and Comment\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-authors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-authors.html');
INSERT INTO `help_topic` VALUES (11, 'VAR_SAMP', 16, 'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (12, 'CONCAT', 35, 'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are non-binary strings,\nthe result is a non-binary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent binary string form; if you want to avoid that, you\ncan use an explicit type cast, as in this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT(''My'', ''S'', ''QL'');\n        -> ''MySQL''\nmysql> SELECT CONCAT(''My'', NULL, ''QL'');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> ''14.3''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (13, 'GEOMETRY HIERARCHY', 32, 'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnon-instantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html');
INSERT INTO `help_topic` VALUES (14, 'CHAR FUNCTION', 35, 'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CHAR(77,121,83,81,''76'');\n        -> ''MySQL''\nmysql> SELECT CHAR(77,77.3,''77.3'');\n        -> ''MMM''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (15, 'DATETIME', 21, 'DATETIME\n\nA date and time combination. The supported range is ''1000-01-01\n00:00:00'' to ''9999-12-31 23:59:59''. MySQL displays DATETIME values in\n''YYYY-MM-DD HH:MM:SS'' format, but allows assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` VALUES (16, 'OPEN', 37, 'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/open.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/open.html');
INSERT INTO `help_topic` VALUES (17, 'SHOW CREATE TRIGGER', 26, 'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html');
INSERT INTO `help_topic` VALUES (18, 'SHOW CREATE PROCEDURE', 26, 'Syntax:\nSHOW CREATE {PROCEDURE | FUNCTION} sp_name\n\nThese statements are MySQL extensions. Similar to SHOW CREATE TABLE,\nthey return the exact string that can be used to re-create the named\nroutine. The statements require that you be the owner of the routine or\nhave SELECT access to the mysql.proc table. If you do not have\nprivileges for the routine itself, the value displayed for the Create\nProcedure or Create Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html\n\n', 'mysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode:\n     Create Function: CREATE FUNCTION `test`.`hello`(s CHAR(20)) »\n                      RETURNS CHAR(50)\n                      RETURN CONCAT(''Hello, '',s,''!'')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html');
INSERT INTO `help_topic` VALUES (19, 'INTEGER', 21, 'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (20, 'LOWER', 35, 'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LOWER(''QUADRATICALLY'');\n        -> ''quadratically''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (21, 'CREATE TRIGGER', 22, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_stmt\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. Currently, CREATE TRIGGER\nrequires the TRIGGER privilege for the table associated with the\ntrigger. (This statement requires the SUPER privilege prior to MySQL\n5.1.6.)\n\nThe trigger becomes associated with the table named tbl_name, which\nmust refer to a permanent table. You cannot associate a trigger with a\nTEMPORARY table or a view.\n\nWhen the trigger is activated, the DEFINER clause determines the\nprivileges that apply, as described later in this section.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after the statement that\nactivated it.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE statements on the table do not activate this\n  trigger, because they do not use DELETE. Dropping a partition does\n  not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html');
INSERT INTO `help_topic` VALUES (22, 'SHOW COLUMNS', 26, 'Syntax:\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. The LIKE clause, if present, indicates which\ncolumn names to match. The WHERE clause can be given to select rows\nusing more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThe FULL keyword causes the output to include the privileges you have\nas well as any per-column comments for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table''s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee [HELP DESCRIBE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-columns.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-columns.html');
INSERT INTO `help_topic` VALUES (23, 'MONTH', 30, 'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as ''0000-00-00'' or ''2008-00-00'' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTH(''1998-02-03'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (24, 'TINYINT', 21, 'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (25, 'SHOW TRIGGERS', 26, 'Syntax:\nSHOW TRIGGERS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined on the MySQL server.\nThis statement requires the TRIGGER privilege (prior to MySQL 5.1.22,\nit requires the SUPER privilege). The LIKE clause, if present,\nindicates which trigger names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.1/en/using-triggers.html, the output\nof this statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE ''acc%''\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: NULL\n            sql_mode:\n             Definer: myname@localhost\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\ncharacter_set_client is the session value of the character_set_client\nsystem variable when the trigger was created. collation_connection is\nthe session value of the collation_connection system variable when the\ntrigger was created. Database Collation is the collation of the\ndatabase with which the trigger is associated. These columns were added\nin MySQL 5.1.21.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html');
INSERT INTO `help_topic` VALUES (26, 'MASTER_POS_WAIT', 14, 'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave''s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (27, 'REGEXP', 35, 'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n"\\n" to represent the newline character), you must double any "\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''Monty!'' REGEXP ''m%y%%'';\n        -> 0\nmysql> SELECT ''Monty!'' REGEXP ''.*'';\n        -> 1\nmysql> SELECT ''new*\\n*line'' REGEXP ''new\\\\*.\\\\*line'';\n        -> 1\nmysql> SELECT ''a'' REGEXP ''A'', ''a'' REGEXP BINARY ''A'';\n        -> 1  0\nmysql> SELECT ''a'' REGEXP ''^[a-d]'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html');
INSERT INTO `help_topic` VALUES (28, 'IF STATEMENT', 37, 'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nIF implements a basic conditional construct. If the search_condition\nevaluates to true, the corresponding SQL statement list is executed. If\nno search_condition matches, the statement list in the ELSE clause is\nexecuted. Each statement_list consists of one or more statements.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See [HELP CASE operator].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/if-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/if-statement.html');
INSERT INTO `help_topic` VALUES (29, '^', 19, 'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (30, 'DROP VIEW', 38, 'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which non-existing\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon''t exist. When this clause is given, a NOTE is generated for each\nnon-existent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-view.html');
INSERT INTO `help_topic` VALUES (31, 'WITHIN', 28, 'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (32, 'WEEK', 30, 'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() allows you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEK(''1998-02-20'');\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',0);\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',1);\n        -> 8\nmysql> SELECT WEEK(''1998-12-31'',1);\n        -> 53\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (33, 'SHOW PLUGINS', 26, 'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about known plugins.\n\nmysql> SHOW PLUGINS;\n+------------+--------+----------------+---------+\n| Name       | Status | Type           | Library |\n+------------+--------+----------------+---------+\n| MEMORY     | ACTIVE | STORAGE ENGINE | NULL    |\n| MyISAM     | ACTIVE | STORAGE ENGINE | NULL    |\n| InnoDB     | ACTIVE | STORAGE ENGINE | NULL    |\n| ARCHIVE    | ACTIVE | STORAGE ENGINE | NULL    |\n| CSV        | ACTIVE | STORAGE ENGINE | NULL    |\n| BLACKHOLE  | ACTIVE | STORAGE ENGINE | NULL    |\n| FEDERATED  | ACTIVE | STORAGE ENGINE | NULL    |\n| MRG_MYISAM | ACTIVE | STORAGE ENGINE | NULL    |\n+------------+--------+----------------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html');
INSERT INTO `help_topic` VALUES (34, 'PREPARE', 26, 'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a statement and assigns it a name,\nstmt_name, by which to refer to the statement later. Statement names\nare not case sensitive. preparable_stmt is either a string literal or a\nuser variable that contains the text of the statement. The text must\nrepresent a single SQL statement, not multiple statements. Within the\nstatement, "?" characters can be used as parameter markers to indicate\nwhere data values are to be bound to the query later when you execute\nit. The "?" characters should not be enclosed within quotes, even if\nyou intend to bind them to string values. Parameter markers can be used\nonly where data values should appear, not for SQL keywords,\nidentifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the client session within which it\nis created. Other clients cannot see it.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html');
INSERT INTO `help_topic` VALUES (35, 'LOCK', 8, 'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nLOCK TABLES acquires table locks for the current thread. It locks base\ntables but not views. To use LOCK TABLES, you must have the LOCK TABLES\nprivilege, and the SELECT privilege for each table to be locked.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nthread. Another use for UNLOCK TABLES is to release the global read\nlock acquired with FLUSH TABLES WITH READ LOCK. (You can lock all\ntables in all databases with read locks with the FLUSH TABLES WITH READ\nLOCK statement. See [HELP FLUSH]. This is a very convenient way to get\nbackups if you have a filesystem such as Veritas that can take\nsnapshots in time.)\n\nThe following general rules apply to acquisition and release of locks\nby a given thread:\n\no Table locks are acquired with LOCK TABLES.\n\no If the LOCK TABLES statement must wait due to locks held by other\n  threads on any of the tables, it blocks until all locks can be\n  acquired.\n\no Table locks are released explicitly with UNLOCK TABLES.\n\no Table locks are released implicitly under these conditions:\n\n  o LOCK TABLES releases any table locks currently held by the thread\n    before acquiring new locks.\n\n  o Beginning a transaction (for example, with START TRANSACTION)\n    implicitly performs an UNLOCK TABLES. (Additional information about\n    the interaction between table locking and transactions is given\n    later in the section.)\n\n  o If a client connection drops, the server releases table locks held\n    by the client. If the client reconnects, the locks will no longer\n    be in effect. For this reason, clients may wish to disable\n    auto-reconnect. With auto-reconnect in effect, the client is not\n    notified if reconnect occurs but any table locks will have been\n    lost. With auto-reconnect disabled, if the connection drops, an\n    error occurs for the next statement issued. The client can detect\n    the error and take appropriate action such as reacquiring the\n    locks. See\n    http://dev.mysql.com/doc/refman/5.1/en/auto-reconnect.html.\n\no One thread cannot release locks held by another thread.\n\n*Note*: If you use ALTER TABLE on a locked table, it may become\nunlocked. See\nhttp://dev.mysql.com/doc/refman/5.1/en/alter-table-problems.html.\n\nThe main reasons to use LOCK TABLES are to emulate transactions or to\nget more speed when updating tables. This is explained in more detail\nlater in this section.\n\nA table lock protects only against inappropriate reads or writes by\nother clients. The client holding the lock, even a read lock, can\nperform table-level operations such as DROP TABLE. Truncate operations\nare not transaction-safe, so an error occurs if the client attempts one\nduring an active transaction or while holding a table lock.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html');
INSERT INTO `help_topic` VALUES (36, 'UPDATEXML', 35, 'Syntax:\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nThis function replaces a single portion of a given fragment of XML\nmarkup xml_target with a new XML fragment new_xml, and then returns the\nchanged XML. The portion of xml_target that is replaced matches an\nXPath expression xpath_expr supplied by the user. If no expression\nmatching xpath_expr is found, or if multiple matches are found, the\nfunction returns the original xml_target XML fragment. All three\narguments must be strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a'', ''<e>fff</e>'') AS val1,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/b'', ''<e>fff</e>'') AS val2,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''//b'', ''<e>fff</e>'') AS val3,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val4,\n    ->   UpdateXML(''<a><d></d><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val5\n    -> \\G\n\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html');
INSERT INTO `help_topic` VALUES (37, 'RESET SLAVE', 26, 'Syntax:\nRESET SLAVE\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster''s binary logs. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay logs, and starts a new relay log.\n\n*Note*: All relay logs are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nConnection information stored in the master.info file is immediately\nreset using any values specified in the corresponding startup options.\nThis information includes values such as master host, master port,\nmaster user, and master password. If the slave SQL thread was in the\nmiddle of replicating temporary tables when it was stopped, and RESET\nSLAVE is issued, these replicated temporary tables are deleted on the\nslave.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html');
INSERT INTO `help_topic` VALUES (38, 'SHOW BINARY LOGS', 26, 'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE MASTER LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html');
INSERT INTO `help_topic` VALUES (39, 'POLYGON', 23, 'Polygon(ls1,ls2,...)\n\nConstructs a WKB Polygon value from a number of WKB LineString\narguments. If any argument does not represent the WKB of a LinearRing\n(that is, not a closed and simple LineString) the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (40, 'MINUTE', 30, 'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MINUTE(''98-02-03 10:05:03'');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (41, 'DAY', 30, 'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (42, 'MID', 35, 'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (43, 'REPLACE INTO', 26, 'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL ---\nthat either inserts or updates --- see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/replace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/replace.html');
INSERT INTO `help_topic` VALUES (44, 'UUID', 14, 'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n"DCE 1.1: Remote Procedure Call" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a utf8 string of five\nhexadecimal numbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID();\n        -> ''6ccd780c-baba-1026-9564-0040f4311e29''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (45, 'LINESTRING', 23, 'LineString(pt1,pt2,...)\n\nConstructs a WKB LineString value from a number of WKB Point arguments.\nIf any argument is not a WKB Point, the return value is NULL. If the\nnumber of Point arguments is less than two, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (46, 'SLEEP', 14, 'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part given in microseconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (47, 'CONNECTION_ID', 15, 'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CONNECTION_ID();\n        -> 23786\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (48, 'DELETE', 26, 'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name. The number of rows deleted is returned by the ROW_COUNT()\nfunction (see [HELP BENCHMARK]). The WHERE clause, if given, specifies\nthe conditions that identify which rows to delete. With no WHERE\nclause, all rows are deleted. If the ORDER BY clause is specified, the\nrows are deleted in the order that is specified. The LIMIT clause\nplaces a limit on the number of rows that can be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in [HELP SELECT].\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not want to know the number of\ndeleted rows, is to use TRUNCATE TABLE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/delete.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/delete.html');
INSERT INTO `help_topic` VALUES (49, 'ROUND', 4, 'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (50, 'NULLIF', 7, 'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html');
INSERT INTO `help_topic` VALUES (51, 'CLOSE', 37, 'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor.\n\nIf not closed explicitly, a cursor is closed at the end of the compound\nstatement in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/close.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/close.html');
INSERT INTO `help_topic` VALUES (52, 'STOP SLAVE', 26, 'Syntax:\nSTOP SLAVE [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html');
INSERT INTO `help_topic` VALUES (53, 'TIMEDIFF', 30, 'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMEDIFF(''2000:01:01 00:00:00'',\n    ->                 ''2000:01:01 00:00:00.000001'');\n        -> ''-00:00:00.000001''\nmysql> SELECT TIMEDIFF(''1997-12-31 23:59:59.000001'',\n    ->                 ''1997-12-30 01:01:01.000002'');\n        -> ''46:58:57.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (54, 'LINEFROMTEXT', 3, 'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (55, 'USE', 27, 'Syntax:\nUSE db_name\n\nThe USE db_name statement tells MySQL to use the db_name database as\nthe default (current) database for subsequent statements. The database\nremains the default until the end of the session or another USE\nstatement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/use.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/use.html');
INSERT INTO `help_topic` VALUES (56, 'CASE OPERATOR', 7, 'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT CASE 1 WHEN 1 THEN ''one''\n    ->     WHEN 2 THEN ''two'' ELSE ''more'' END;\n        -> ''one''\nmysql> SELECT CASE WHEN 1>0 THEN ''true'' ELSE ''false'' END;\n        -> ''true''\nmysql> SELECT CASE BINARY ''B''\n    ->     WHEN ''a'' THEN 1 WHEN ''b'' THEN 2 END;\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html');
INSERT INTO `help_topic` VALUES (57, 'SHOW MASTER STATUS', 26, 'Syntax:\nSHOW MASTER STATUS\n\nProvides status information about the binary log files of the master.\nExample:\n\nmysql > SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html');
INSERT INTO `help_topic` VALUES (58, 'ADDTIME', 30, 'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDTIME(''1997-12-31 23:59:59.999999'',\n    ->                ''1 1:1:1.000002'');\n        -> ''1998-01-02 01:01:01.000001''\nmysql> SELECT ADDTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''03:00:01.999997''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (59, 'SPATIAL', 32, 'MySQL can create spatial indexes using syntax similar to that for\ncreating regular indexes, but extended with the SPATIAL keyword.\nCurrently, columns in spatial indexes must be declared NOT NULL. The\nfollowing examples demonstrate how to create spatial indexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g));\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support non-spatial indexing of spatial columns, the\nengine creates a B-tree index. A B-tree index on spatial values will be\nuseful for exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html');
INSERT INTO `help_topic` VALUES (60, 'TIMESTAMPDIFF', 30, 'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns the integer difference between the date or datetime expressions\ndatetime_expr1 and datetime_expr2. The unit for the result is given by\nthe unit argument. The legal values for unit are the same as those\nlisted in the description of the TIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPDIFF(MONTH,''2003-02-01'',''2003-05-01'');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,''2002-05-01'',''2001-01-01'');\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (61, 'UPPER', 35, 'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT UPPER(''Hej'');\n        -> ''HEJ''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (62, 'FROM_UNIXTIME', 30, 'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n''YYYY-MM-DD HH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on\nwhether the function is used in a string or numeric context. The value\nis expressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> ''2007-11-30 10:30:19''\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      ''%Y %D %M %h:%i:%s %x'');\n        -> ''2007 30th November 10:30:59 2007''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (63, 'MEDIUMBLOB', 21, 'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a three-byte length prefix that\nindicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (64, 'IFNULL', 7, 'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,''yes'');\n        -> ''yes''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html');
INSERT INTO `help_topic` VALUES (65, 'SHOW ERRORS', 26, 'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that instead of\ndisplaying errors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-errors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-errors.html');
INSERT INTO `help_topic` VALUES (66, 'LEAST', 18, 'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If any argument is a case-sensitive string, the arguments are\n  compared as case-sensitive strings.\n\no In all other cases, the arguments are compared as case-insensitive\n  strings.\n\nLEAST() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(''B'',''A'',''C'');\n        -> ''A''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (67, '=', 18, '=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT ''0'' = 0;\n        -> 1\nmysql> SELECT ''0.0'' = 0;\n        -> 1\nmysql> SELECT ''0.01'' = 0;\n        -> 0\nmysql> SELECT ''.01'' = 0.01;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (68, 'REVERSE', 35, 'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REVERSE(''abc'');\n        -> ''cba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (69, 'ISNULL', 18, 'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (70, 'BINARY', 21, 'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than non-binary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (71, 'BLOB DATA TYPE', 21, 'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.1/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/blob.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/blob.html');
INSERT INTO `help_topic` VALUES (72, 'BOUNDARY', 34, 'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (73, 'CREATE USER', 9, 'Syntax:\nCREATE USER user [IDENTIFIED BY [PASSWORD] ''password'']\n    [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n\nThe CREATE USER statement creates new MySQL accounts. To use it, you\nmust have the global CREATE USER privilege or the INSERT privilege for\nthe mysql database. For each account, CREATE USER creates a new row in\nthe mysql.user table that has no privileges. An error occurs if the\naccount already exists. Each account is named using the same format as\nfor the GRANT statement; for example, ''jeffrey''@''localhost''. If you\nspecify only the username part of the account name, a hostname part of\n''%'' is used. For additional information about specifying account names,\nsee [HELP GRANT].\n\nThe account can be given a password with the optional IDENTIFIED BY\nclause. The user value and the password are given the same way as for\nthe GRANT statement. In particular, to specify the password in plain\ntext, omit the PASSWORD keyword. To specify the password as the hashed\nvalue as returned by the PASSWORD() function, include the PASSWORD\nkeyword. See [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-user.html');
INSERT INTO `help_topic` VALUES (74, 'POINT', 23, 'Point(x,y)\n\nConstructs a WKB Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (75, 'CURRENT_USER', 15, 'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the username and hostname combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. Within a stored routine that is\ndefined with the SQL SECURITY DEFINER characteristic, CURRENT_USER()\nreturns the creator of the routine. The return value is a string in the\nutf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user ''''@''localhost'' to\ndatabase ''mysql''\nmysql> SELECT CURRENT_USER();\n        -> ''@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (76, 'LCASE', 35, 'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (77, '<=', 18, 'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 0.1 <= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (78, 'UPDATE', 26, 'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] tbl_name\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in tbl_name with new values. The SET clause indicates\nwhich columns to modify and the values they should be given. The WHERE\nclause, if given, specifies the conditions that identify which rows to\nupdate. With no WHERE clause, all rows are updated. If the ORDER BY\nclause is specified, the rows are updated in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. It is specified as described in [HELP SELECT].\n\nThe UPDATE statement supports the following modifiers:\n\no If you use the LOW_PRIORITY keyword, execution of the UPDATE is\n  delayed until no other clients are reading from the table. This\n  affects only storage engines that use only table-level locking\n  (MyISAM, MEMORY, MERGE).\n\no If you use the IGNORE keyword, the update statement does not abort\n  even if errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/update.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/update.html');
INSERT INTO `help_topic` VALUES (79, 'IS NOT NULL', 18, 'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (80, 'CASE STATEMENT', 37, 'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored routines implements a complex conditional\nconstruct. If a search_condition evaluates to true, the corresponding\nSQL statement list is executed. If no search condition matches, the\nstatement list in the ELSE clause is executed. Each statement_list\nconsists of one or more statements.\n\n*Note*: If no search condition matches the value tested, and the CASE\nstatement contains no ELSE clause, a Case not found for CASE statement\nerror results.\n\nEach statement_list consists of one or more statements; an empty\nstatement_list is not allowed. To handle situations where no value is\nmatched by any WHEN clause, use an ELSE containing an empty BEGIN ...\nEND block, as shown in this example: DELIMITER | CREATE PROCEDURE p()\nBEGIN DECLARE v INT DEFAULT 1; CASE v WHEN 2 THEN SELECT v; WHEN 3 THEN\nSELECT 0; ELSE BEGIN END; END CASE; END; | (The indentation used here\nin the ELSE clause is for purposes of clarity only, and is not\notherwise significant.)\n\nThe syntax of the CASE statement used inside stored routines differs\nslightly from that of the SQL CASE expression described in [HELP CASE\noperator]. The CASE statement cannot have an ELSE NULL clause, and it\nis terminated with END CASE instead of END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/case-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/case-statement.html');
INSERT INTO `help_topic` VALUES (81, 'EXECUTE STATEMENT', 26, 'Syntax:\nEXECUTE stmt_name [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement, you execute it with an EXECUTE statement\nthat refers to the prepared statement name. If the prepared statement\ncontains any parameter markers, you must supply a USING clause that\nlists user variables containing the values to be bound to the\nparameters. Parameter values can be supplied only by user variables,\nand the USING clause must name exactly as many variables as the number\nof parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html');
INSERT INTO `help_topic` VALUES (82, 'DROP INDEX', 38, 'Syntax:\nDROP [ONLINE|OFFLINE] INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-index.html');
INSERT INTO `help_topic` VALUES (83, 'MATCH AGAINST', 35, 'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables, and can be\n  created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a literal string, not a variable or a column name. There\nare three types of full-text searches:\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as "some" or\n  "then" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-boolean.html.\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in 50% or more of the rows are considered common and do not\n  match. Full-text searches are natural language searches if the IN\n  NATURAL LANGUAGE MODE modifier is given or if no modifier is given.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The IN NATURAL\n  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier\n  specifies a query expansion search. For more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-query-expansion.html.\n\nThe IN NATURAL LANGUAGE MODE and IN NATURAL LANGUAGE MODE WITH QUERY\nEXPANSION modifiers were added in MySQL 5.1.7.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html\n\n', 'mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE) AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE);\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html');
INSERT INTO `help_topic` VALUES (84, 'CREATE EVENT', 38, 'Syntax:\nCREATE \n    [DEFINER = { user | CURRENT_USER }]\n    EVENT \n    [IF NOT EXISTS]\n    event_name    \n    ON SCHEDULE schedule\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    DO sql_statement;\n\nschedule:\n    AT timestamp [+ INTERVAL interval]\n  | EVERY interval \n    [STARTS timestamp [+ INTERVAL interval]] \n    [ENDS timestamp [+ INTERVAL interval]]\n\ninterval:\n    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nThis statement creates and schedules a new event. The minimum\nrequirements for a valid CREATE EVENT statement are as follows:\n\no The keywords CREATE EVENT plus an event name, which uniquely\n  identifies the event in the current schema.\n\n  (Prior to MySQL 5.1.12, the event name needed to be unique only among\n  events created by the same user on a given database.)\n\no An ON SCHEDULE clause, which determines when and how often the event\n  executes.\n\no A DO clause, which contains the SQL statement to be executed by an\n  event.\n\nThis is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n    DO\n      UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event\nexecutes once --- one hour following its creation --- by running an SQL\nstatement that increments the value of the myschema.mytable table''s\nmycol column by 1.\n\nThe event_name must be a valid MySQL identifier with a maximum length\nof 64 characters. It may be delimited using back ticks, and may be\nqualified with the name of a database schema. An event is associated\nwith both a MySQL user (the definer) and a schema, and its name must be\nunique among names of events within that schema. In general, the rules\ngoverning event names are the same as those for names of stored\nroutines. See http://dev.mysql.com/doc/refman/5.1/en/identifiers.html.\n\nIf no schema is indicated as part of event_name, then the default\n(current) schema is assumed. The definer is always the current MySQL\nuser.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-event.html');
INSERT INTO `help_topic` VALUES (85, 'ABS', 4, 'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (86, 'POLYFROMWKB', 31, 'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (87, 'NOT LIKE', 35, 'Syntax:\nexpr NOT LIKE pat [ESCAPE ''escape_char'']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE ''escape_char'']).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html');
INSERT INTO `help_topic` VALUES (88, 'SPACE', 35, 'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SPACE(6);\n        -> ''      ''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (89, 'MBR DEFINITION', 6, 'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html\n\n', '((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n', 'http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html');
INSERT INTO `help_topic` VALUES (90, 'GEOMETRYCOLLECTION', 23, 'GeometryCollection(g1,g2,...)\n\nConstructs a WKB GeometryCollection. If any argument is not a\nwell-formed WKB representation of a geometry, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (91, 'MAX', 16, 'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (92, '*', 4, 'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (93, 'TIMESTAMP', 21, 'TIMESTAMP\n\nA timestamp. The range is ''1970-01-01 00:00:01'' UTC to partway through\nthe year 2038. TIMESTAMP values are stored as the number of seconds\nsince the epoch (''1970-01-01 00:00:00'' UTC). A TIMESTAMP cannot\nrepresent the value ''1970-01-01 00:00:00'' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n''0000-00-00 00:00:00'', the "zero" TIMESTAMP value.\n\nA TIMESTAMP column is useful for recording the date and time of an\nINSERT or UPDATE operation. By default, the first TIMESTAMP column in a\ntable is automatically set to the date and time of the most recent\noperation if you do not assign it a value yourself. You can also set\nany TIMESTAMP column to the current date and time by assigning it a\nNULL value. Variations on automatic initialization and update\nproperties are described in\nhttp://dev.mysql.com/doc/refman/5.1/en/timestamp.html.\n\nA TIMESTAMP value is returned as a string in the format ''YYYY-MM-DD\nHH:MM:SS'' with a display width fixed at 19 characters. To obtain the\nvalue as a number, you should add +0 to the timestamp column.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.1; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` VALUES (94, 'DES_DECRYPT', 11, 'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.1/en/secure-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (95, 'ENDPOINT', 12, 'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html');
INSERT INTO `help_topic` VALUES (96, 'CACHE INDEX', 26, 'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cache-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/cache-index.html');
INSERT INTO `help_topic` VALUES (97, 'COMPRESS', 11, 'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(''''));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(''a''));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',16)));\n        -> 15\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (98, 'INSERT', 26, 'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert.html');
INSERT INTO `help_topic` VALUES (99, 'COUNT', 16, 'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (100, 'HANDLER', 26, 'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\nHANDLER tbl_name READ index_name { = | >= | <= | < } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for MyISAM and InnoDB tables.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/handler.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/handler.html');
INSERT INTO `help_topic` VALUES (101, 'MLINEFROMTEXT', 3, 'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (102, 'GEOMCOLLFROMWKB', 31, 'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (103, 'RENAME TABLE', 38, 'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nthread can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-table.html\n\n', 'CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n', 'http://dev.mysql.com/doc/refman/5.1/en/rename-table.html');
INSERT INTO `help_topic` VALUES (104, 'BOOLEAN', 21, 'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Non-zero values are considered true:\n\nmysql> SELECT IF(0, ''true'', ''false'');\n+------------------------+\n| IF(0, ''true'', ''false'') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, ''true'', ''false'');\n+------------------------+\n| IF(1, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, ''true'', ''false'');\n+------------------------+\n| IF(2, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(0 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(1 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(2 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(2 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nWe intend to implement full boolean type handling, in accordance with\nstandard SQL, in a future MySQL release.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (105, 'DEFAULT', 14, 'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. An error results if the\ncolumn has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (106, 'MOD', 4, 'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (107, 'TINYTEXT', 21, 'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a one-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (108, 'OPTIMIZE TABLE', 20, 'Syntax:\nOPTIMIZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nOPTIMIZE TABLE should be used if you have deleted a large part of a\ntable or if you have made many changes to a table with variable-length\nrows (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns).\nDeleted rows are maintained in a linked list and subsequent INSERT\noperations reuse old row positions. You can use OPTIMIZE TABLE to\nreclaim the unused space and to defragment the data file.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html');
INSERT INTO `help_topic` VALUES (109, 'DECODE', 11, 'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (110, '<=>', 18, 'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (111, 'LOAD DATA FROM MASTER', 26, 'Syntax:\nLOAD DATA FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nThis statement takes a snapshot of the master and copies it to the\nslave. It updates the values of MASTER_LOG_FILE and MASTER_LOG_POS so\nthat the slave starts replicating from the correct position. Any table\nand database exclusion rules specified with the --replicate-*-do-* and\n--replicate-*-ignore-* options are honored. --replicate-rewrite-db is\nnot taken into account because a user could use this option to set up a\nnon-unique mapping such as --replicate-rewrite-db="db1->db3" and\n--replicate-rewrite-db="db2->db3", which would confuse the slave when\nloading tables from the master.\n\nUse of this statement is subject to the following conditions:\n\no It works only for MyISAM tables. Attempting to load a non-MyISAM\n  table results in the following error:\n\nERROR 1189 (08S01): Net error reading from master\n\no It acquires a global read lock on the master while taking the\n  snapshot, which prevents updates on the master during the load\n  operation.\n\nIf you are loading large tables, you might have to increase the values\nof net_read_timeout and net_write_timeout on both the master and slave\nservers. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nNote that LOAD DATA FROM MASTER does not copy any tables from the mysql\ndatabase. This makes it easy to have different users and privileges on\nthe master and the slave.\n\nTo use LOAD DATA FROM MASTER, the replication account that is used to\nconnect to the master must have the RELOAD and SUPER privileges on the\nmaster and the SELECT privilege for all master tables you want to load.\nAll master tables for which the user does not have the SELECT privilege\nare ignored by LOAD DATA FROM MASTER. This is because the master hides\nthem from the user: LOAD DATA FROM MASTER calls SHOW DATABASES to know\nthe master databases to load, but SHOW DATABASES returns only databases\nfor which the user has some privilege. See [HELP SHOW DATABASES]. On\nthe slave side, the user that issues LOAD DATA FROM MASTER must have\nprivileges for dropping and creating the databases and tables that are\ncopied.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html');
INSERT INTO `help_topic` VALUES (112, 'RESET', 26, 'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset.html');
INSERT INTO `help_topic` VALUES (113, 'HELP STATEMENT', 27, 'Syntax:\nHELP ''search_string''\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/help.html');
INSERT INTO `help_topic` VALUES (114, 'GET_LOCK', 14, 'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This allows clients that agree on\na given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also allows a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT GET_LOCK(''lock1'',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT GET_LOCK(''lock2'',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock1'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (115, 'UCASE', 35, 'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (116, 'SHOW BINLOG EVENTS', 26, 'Syntax:\nSHOW BINLOG EVENTS\n   [IN ''log_name''] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify ''log_name'',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html');
INSERT INTO `help_topic` VALUES (117, 'MPOLYFROMWKB', 31, 'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (118, 'ITERATE', 37, 'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means "do the loop again."\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html\n\n', 'CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND\n', 'http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html');
INSERT INTO `help_topic` VALUES (119, 'DO', 26, 'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/do.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/do.html');
INSERT INTO `help_topic` VALUES (120, 'CURTIME', 30, 'Syntax:\nCURTIME()\n\nReturns the current time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURTIME();\n        -> ''23:50:26''\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (121, 'CHAR_LENGTH', 35, 'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five two-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (122, 'BIGINT', 21, 'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (123, 'SET', 26, 'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-option.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-option.html');
INSERT INTO `help_topic` VALUES (124, 'CONV', 4, 'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CONV(''a'',16,2);\n        -> ''1010''\nmysql> SELECT CONV(''6E'',18,8);\n        -> ''172''\nmysql> SELECT CONV(-17,10,-18);\n        -> ''-H''\nmysql> SELECT CONV(10+''10''+''10''+0xa,10,10);\n        -> ''40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (125, 'DATE', 21, 'DATE\n\nA date. The supported range is ''1000-01-01'' to ''9999-12-31''. MySQL\ndisplays DATE values in ''YYYY-MM-DD'' format, but allows assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` VALUES (126, 'SHOW OPEN TABLES', 26, 'Syntax:\nSHOW OPEN TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.1/en/table-cache.html. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html');
INSERT INTO `help_topic` VALUES (127, 'EXTRACT', 30, 'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT EXTRACT(YEAR FROM ''1999-07-02'');\n       -> 1999\nmysql> SELECT EXTRACT(YEAR_MONTH FROM ''1999-07-02 01:02:03'');\n       -> 199907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM ''1999-07-02 01:02:03'');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM ''2003-01-02 10:30:00.000123'');\n        -> 123\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (128, 'ENCRYPT', 11, 'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument should be a string with at least two\ncharacters. If no salt argument is given, a random value is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT ENCRYPT(''hello'');\n        -> ''VxuFAJXVARROc''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (129, 'SHOW STATUS', 26, 'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE ''Key%'';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nWith the GLOBAL modifier, SHOW STATUS displays the status values for\nall connections to MySQL. With SESSION, it displays the status values\nfor the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.1/en/server-status-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-status.html');
INSERT INTO `help_topic` VALUES (130, 'EXTRACTVALUE', 35, 'Syntax:\nExtractValue(xml_frag, xpath_expr)\n\nExtractValue() takes two string arguments, a fragment of XML markup\nxml_frag and an XPath expression xpath_expr (also known as a locator);\nit returns the text (CDATA) of the first text node which is a child of\nthe element(s) matched by the XPath expression. It is the equivalent of\nperforming a match using the xpath_expr after appending /text(). In\nother words, ExtractValue(''<a><b>Sakila</b></a>'', ''/a/b'') and\nExtractValue(''<a><b>Sakila</b></a>'', ''/a/b/text()'') produce the same\nresult.\n\nIf multiple matches are found, then the content of the first child text\nnode of each matching element is returned (in the order matched) as a\nsingle, space-delimited string.\n\nIf no matching text node is found for the (augmented) expression ---\nfor whatever reason, as long as xpth_expr is valid, and xml_frag is\nwell-formed --- an empty string is returned. No distinction is made\nbetween a match on an empty element and no match at all. This is by\ndesign.\n\nIf you need to determine whether no matching element was found in\nxml_frag or such an element was found but contained no child text\nnodes, you should test the result of an expression that uses the XPath\ncount() function. For example, both of these statements return an empty\nstring, as shown here:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nHowever, you can determine whether there was actually a matching\nelement using the following:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 1                                   |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 0                                   |\n+-------------------------------------+\n1 row in set (0.01 sec)\n\n*Important*: ExtractValue() returns only CDATA, and does not return any\ntags that might be contained within a matching tag, nor any of their\ncontent (see the result returned as val1 in the following example).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a'') AS val1,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a/b'') AS val2,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''//b'') AS val3,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/b'') AS val4,\n    ->   ExtractValue(''<a>ccc<b>ddd</b><b>eee</b></a>'', ''//b'') AS val5;\n\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html');
INSERT INTO `help_topic` VALUES (131, 'OLD_PASSWORD', 11, 'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added to MySQL when the implementation of PASSWORD()\nwas changed to improve security. OLD_PASSWORD() returns the value of\nthe old (pre-4.1) implementation of PASSWORD() as a binary string, and\nis intended to permit you to reset passwords for any pre-4.1 clients\nthat need to connect to your version 5.1 MySQL server without locking\nthem out. See\nhttp://dev.mysql.com/doc/refman/5.1/en/password-hashing.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (132, 'SET VARIABLE', 37, 'Syntax:\nSET var_name = expr [, var_name = expr] ...\n\nThe SET statement in stored routines is an extended version of the\ngeneral SET statement. Referenced variables may be ones declared inside\na routine, or global system variables.\n\nThe SET statement in stored routines is implemented as part of the\npre-existing SET syntax. This allows an extended syntax of SET a=x,\nb=y, ... where different variable types (locally declared variables and\nglobal and session server variables) can be mixed. This also allows\ncombinations of local variables and some options that make sense only\nfor system variables; in that case, the options are recognized but\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-statement.html');
INSERT INTO `help_topic` VALUES (133, 'FORMAT', 35, 'Syntax:\nFORMAT(X,D)\n\nFormats the number X to a format like ''#,###,###.##'', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FORMAT(12332.123456, 4);\n        -> ''12,332.1235''\nmysql> SELECT FORMAT(12332.1,4);\n        -> ''12,332.1000''\nmysql> SELECT FORMAT(12332.2,0);\n        -> ''12,332''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (134, '||', 13, 'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is non-zero, and 0 otherwise. With a NULL operand, the result\nis 1 if the other operand is non-zero, and NULL otherwise. If both\noperands are NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html');
INSERT INTO `help_topic` VALUES (135, 'BIT_LENGTH', 35, 'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIT_LENGTH(''text'');\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (136, 'EXTERIORRING', 2, 'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html');
INSERT INTO `help_topic` VALUES (137, 'GEOMFROMWKB', 31, 'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (138, 'SHOW SLAVE HOSTS', 26, 'Syntax:\nSHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. Only slaves started with the --report-host=slave_name option\nare visible in this list.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this: mysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+ | Server_id | Host | Port\n| Master_id | +------------+-----------+------+-----------+ | 192168010\n| iconnect2 | 3306 | 192168011 | | 1921680101 | athena | 3306 |\n192168011 | +------------+-----------+------+-----------+ Server_id:\nThe unique server ID of the slave server, as configured in the server''s\noption file, or on the command line with --server-id=value . Host: The\nhost name of the slave server, as configured in the server''s option\nfile, or on the command line with --report-host=value. Note that this\ncan differ from the machine name as configured in the operating system.\nPort: The port the slave server is listening on. Master_id: The unique\nserver ID of the master server that the slave server is replicating\nfrom. Some MySQL versions report another variable, Rpl_recovery_rank.\nThis variable was never used, and was eventually removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html');
INSERT INTO `help_topic` VALUES (139, 'START TRANSACTION', 8, 'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT] | BEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET AUTOCOMMIT = {0 | 1}\n\nThe START TRANSACTION and BEGIN statement begin a new transaction.\nCOMMIT commits the current transaction, making its changes permanent.\nROLLBACK rolls back the current transaction, canceling its changes. The\nSET AUTOCOMMIT statement disables or enables the default autocommit\nmode for the current connection.\n\nThe optional WORK keyword is supported for COMMIT and ROLLBACK, as are\nthe CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for\nadditional control over transaction completion. The value of the\ncompletion_type system variable determines the default completion\nbehavior. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client connection after terminating\nthe current transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk.\n\nIf you are using a transaction-safe storage engine (such as InnoDB, or\nNDB Cluster), you can disable autocommit mode with the following\nstatement:\n\nSET AUTOCOMMIT=0;\n\nAfter disabling autocommit mode by setting the AUTOCOMMIT variable to\nzero, you must use COMMIT to store your changes to disk or ROLLBACK if\nyou want to ignore the changes you have made since the beginning of\nyour transaction.\n\nTo disable autocommit mode for a single series of statements, use the\nSTART TRANSACTION statement:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/commit.html\n\n', 'START TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n', 'http://dev.mysql.com/doc/refman/5.1/en/commit.html');
INSERT INTO `help_topic` VALUES (140, 'BETWEEN AND', 18, 'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT ''b'' BETWEEN ''a'' AND ''c'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''3'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''x-3'';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (141, 'MULTIPOLYGON', 23, 'MultiPolygon(poly1,poly2,...)\n\nConstructs a WKB MultiPolygon value from a set of WKB Polygon\narguments. If any argument is not a WKB Polygon, the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (142, 'TIME_FORMAT', 30, 'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, and seconds. Other\nspecifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_FORMAT(''100:00:00'', ''%H %k %h %I %l'');\n        -> ''100 100 04 04 4''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (143, 'LEFT', 35, 'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LEFT(''foobarbar'', 5);\n        -> ''fooba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (144, 'FLUSH QUERY CACHE', 25, 'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html');
INSERT INTO `help_topic` VALUES (145, 'SET DATA TYPE', 21, 'SET(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values ''value1'', ''value2'', ... A SET\ncolumn can have a maximum of 64 members. SET values are represented\ninternally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (146, 'RAND', 4, 'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT RAND();\n        -> 0.9233482386203\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND();\n        -> 0.63553050033332\nmysql> SELECT RAND();\n        -> 0.70100469486881\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (147, 'RPAD', 35, 'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RPAD(''hi'',5,''?'');\n        -> ''hi???''\nmysql> SELECT RPAD(''hi'',1,''?'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (148, 'CREATE DATABASE', 38, 'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification ...]\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-database.html');
INSERT INTO `help_topic` VALUES (149, 'DEC', 21, 'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (150, 'VAR_POP', 16, 'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. You can also use VARIANCE(), which is equivalent but\nis not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (151, 'ELT', 35, 'Syntax:\nELT(N,str1,str2,str3,...)\n\nReturns str1 if N = 1, str2 if N = 2, and so on. Returns NULL if N is\nless than 1 or greater than the number of arguments. ELT() is the\ncomplement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ELT(1, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''ej''\nmysql> SELECT ELT(4, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''foo''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (152, 'ALTER VIEW', 38, 'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. As of\nMySQL 5.1.23, ALTER VIEW is allowed only to the original definer or\nusers with the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-view.html');
INSERT INTO `help_topic` VALUES (153, 'SHOW DATABASES', 26, 'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nSHOW SCHEMAS can also be used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-databases.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-databases.html');
INSERT INTO `help_topic` VALUES (154, '~', 19, 'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 5 & ~1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (155, 'TEXT', 21, 'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a two-byte length prefix\nthat indicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (156, 'CONCAT_WS', 35, 'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT_WS('','',''First name'',''Second name'',''Last Name'');\n        -> ''First name,Second name,Last Name''\nmysql> SELECT CONCAT_WS('','',''First name'',NULL,''Last Name'');\n        -> ''First name,Last Name''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (157, 'ROW_COUNT', 15, 'Syntax:\nROW_COUNT()\n\nROW_COUNT() returns the number of rows updated, inserted, or deleted by\nthe preceding statement. This is the same as the row count that the\nmysql client displays and the value from the mysql_affected_rows() C\nAPI function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (158, 'ASIN', 4, 'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(''foo'');\n\n+-------------+\n| ASIN(''foo'') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: ''foo'' |\n+---------+------+-----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (159, 'SIGN', 4, 'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (160, 'SEC_TO_TIME', 30, 'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SEC_TO_TIME(2378);\n        -> ''00:39:38''\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (161, 'FLOAT', 21, 'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Allowable values are\n-3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.1/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (162, 'LOCATE', 35, 'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LOCATE(''bar'', ''foobarbar'');\n        -> 4\nmysql> SELECT LOCATE(''xbar'', ''foobar'');\n        -> 0\nmysql> SELECT LOCATE(''bar'', ''foobarbar'', 5);\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (163, 'CHARSET', 15, 'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CHARSET(''abc'');\n        -> ''latin1''\nmysql> SELECT CHARSET(CONVERT(''abc'' USING utf8));\n        -> ''utf8''\nmysql> SELECT CHARSET(USER());\n        -> ''utf8''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (164, 'SUBDATE', 30, 'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT SUBDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\n\nThe second form allows the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(''1998-01-02 12:00:00'', 31);\n        -> ''1997-12-02 12:00:00''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (165, 'DAYOFYEAR', 30, 'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFYEAR(''1998-02-03'');\n        -> 34\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (166, 'LONGTEXT', 21, 'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\nfour-byte length prefix that indicates the number of bytes in the\nvalue.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (167, '%', 4, 'Syntax:\nN % M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in [HELP ABS].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (168, 'DISJOINT', 28, 'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (169, 'KILL', 26, 'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nKILL allows the optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library,\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/kill.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/kill.html');
INSERT INTO `help_topic` VALUES (170, 'ASTEXT', 3, 'AsText(g), AsWKT(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'mysql> SET @g = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html');
INSERT INTO `help_topic` VALUES (171, 'LPAD', 35, 'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LPAD(''hi'',4,''??'');\n        -> ''??hi''\nmysql> SELECT LPAD(''hi'',1,''??'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (172, 'RESTORE TABLE', 20, 'Syntax:\nRESTORE TABLE tbl_name [, tbl_name] ... FROM ''/path/to/backup/directory''\n\nRESTORE TABLE restores the table or tables from a backup that was made\nwith BACKUP TABLE. The directory should be specified as a full\npathname.\n\nExisting tables are not overwritten; if you try to restore over an\nexisting table, an error occurs. Just as for BACKUP TABLE, RESTORE\nTABLE currently works only for MyISAM tables. Restored tables are not\nreplicated from master to slave.\n\nThe backup for each table consists of its .frm format file and .MYD\ndata file. The restore operation restores those files, and then uses\nthem to rebuild the .MYI index file. Restoring takes longer than\nbacking up due to the need to rebuild the indexes. The more indexes the\ntable has, the longer it takes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/restore-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/restore-table.html');
INSERT INTO `help_topic` VALUES (173, 'DECLARE CONDITION', 37, 'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | mysql_error_code\n\nThis statement specifies conditions that need specific handling. It\nassociates a name with a specified error condition. The name can\nsubsequently be used in a DECLARE HANDLER statement. See [HELP DECLARE\nHANDLER].\n\nA condition_value can be an SQLSTATE value or a MySQL error code.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-conditions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-conditions.html');
INSERT INTO `help_topic` VALUES (174, 'OVERLAPS', 28, 'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (175, 'NUMGEOMETRIES', 24, 'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html');
INSERT INTO `help_topic` VALUES (176, 'SET GLOBAL SQL_SLAVE_SKIP_COUNTER', 26, 'Syntax:\nSET GLOBAL SQL_SLAVE_SKIP_COUNTER = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave thread is not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html');
INSERT INTO `help_topic` VALUES (177, 'MONTHNAME', 30, 'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTHNAME(''1998-02-05'');\n        -> ''February''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (178, 'PROCEDURE ANALYSE', 36, 'Syntax:\nanalyse([max_elements[,max_memory]])\n\nThis procedure is defined in the sql/sql_analyse.cc file. It examines\nthe result from a query and returns an analysis of the results that\nsuggests optimal data types for each column. To obtain this analysis,\nappend PROCEDURE ANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that analyse notices per column. This is used by analyse to check\n  whether the optimal data type should be of type ENUM.\n\no max_memory (default 8192) is the maximum amount of memory that\n  analyse should allocate per column while trying to find all distinct\n  values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html');
INSERT INTO `help_topic` VALUES (179, 'MBREQUAL', 6, 'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (180, 'CHANGE MASTER TO', 26, 'Syntax:\nCHANGE MASTER TO master_def [, master_def] ...\n\nmaster_def:\n    MASTER_BIND = ''interface_name''\n  | MASTER_HOST = ''host_name''\n  | MASTER_USER = ''user_name''\n  | MASTER_PASSWORD = ''password''\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = count\n  | MASTER_HEARTBEAT_PERIOD = interval\n  | MASTER_LOG_FILE = ''master_log_name''\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = ''relay_log_name''\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = ''ca_file_name''\n  | MASTER_SSL_CAPATH = ''ca_directory_name''\n  | MASTER_SSL_CERT = ''cert_file_name''\n  | MASTER_SSL_KEY = ''key_file_name''\n  | MASTER_SSL_CIPHER = ''cipher_list''\n  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to and communicating with the master server. It also updates\nthe contents of the master.info and relay-log.info files.\n\nMASTER_USER, MASTER_PASSWORD, MASTER_SSL, MASTER_SSL_CA,\nMASTER_SSL_CAPATH, MASTER_SSL_CERT, MASTER_SSL_KEY, MASTER_SSL_CIPHER,\nand MASTER_SSL_VERIFY_SERVER_CERT provide information to the slave\nabout how to connect to its master. MASTER_SSL_VERIFY_SERVER_CERT was\nadded in MySQL 5.1.18. It is used as described for the\n--ssl-verify-server-cert option in\nhttp://dev.mysql.com/doc/refman/5.1/en/ssl-options.html.\n\nThe SSL options (MASTER_SSL, MASTER_SSL_CA, MASTER_SSL_CAPATH,\nMASTER_SSL_CERT, MASTER_SSL_KEY, MASTER_SSL_CIPHER), and\nMASTER_SSL_VERIFY_SERVER_CERT can be changed even on slaves that are\ncompiled without SSL support. They are saved to the master.info file,\nbut are ignored unless you use a server that has SSL support enabled.\n\nIf you don''t specify a given parameter, it keeps its old value, except\nas indicated in the following discussion. For example, if the password\nto connect to your MySQL master has changed, you just need to issue\nthese statements to tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=''new3cret'';\nSTART SLAVE; -- if you want to restart replication\n\nThere is no need to specify the parameters that do not change (host,\nport, user, and so forth).\n\nMASTER_HOST and MASTER_PORT are the hostname (or IP address) of the\nmaster host and its TCP/IP port. Note that if MASTER_HOST is equal to\nlocalhost, then, like in other parts of MySQL, the port number might be\nignored.\n\nMySQL Cluster 5.1 Carrier Grade EditionThe following information\napplies to users of MySQL Cluster 5.1 Carrier Grade Edition only. For\nmore information about MySQL Cluster 5.1 Carrier Grade Edition, see\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-cluster-cge.html.\n\nMASTER_BIND is for use on replication slaves having multiple network\ninterfaces, and determines which of the slave''s network interfaces is\nchosen for connecting to the master. It is also possible to determine\nwhich network interface is to be used in such cases by starting the\nslave mysqld process with the --master-bind option.\n\nThe ability to bind a replication slave to specific network interface\nwas added in MySQL 5.1.22-ndb-6.3.4.\n\nMASTER_HEARTBEAT_PERIOD is used to set the interval in seconds between\nreplication heartbeats. Whenever the master''s binlog is updated with an\nevent, the waiting period for the next heartbeat is reset. interval is\na decimal value having the range 0 to 4294967 seconds and a resolution\nto hundredths of a second; the smallest nonzero value is 0.001.\nHeartbeats are sent by the master only if there are no unsent events in\nthe binlog file for a period longer than interval.\n\nSetting interval to 0 disables heartbeats altogether. The default value\nfor interval is equal to the value of slave_net_timeout divided by 2.\n\n*Note*: Setting @@global.slave_net_timeout to a value less than that of\nthe current heartbeat interval results in a warning being issued.\n\nIssuing RESET SLAVE resets the hearbeat interval to the default.\n\nMASTER_HEARTBEAT_PERIOD was added in MySQL 5.1.22-ndb-6.3.4.\n\nThe following information applies to all MySQL users.\n\n*Note*: Replication cannot use Unix socket files. You must be able to\nconnect to the master MySQL server using TCP/IP.\n\nIf you specify MASTER_HOST or MASTER_PORT, the slave assumes that the\nmaster server is different from before (even if you specify a host or\nport value that is the same as the current value.) In this case, the\nold values for the master binary log name and position are considered\nno longer applicable, so if you do not specify MASTER_LOG_FILE and\nMASTER_LOG_POS in the statement, MASTER_LOG_FILE='''' and\nMASTER_LOG_POS=4 are silently appended to it.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. If you specify either of them, you cannot specify\nRELAY_LOG_FILE or RELAY_LOG_POS. If neither of MASTER_LOG_FILE or\nMASTER_LOG_POS are specified, the slave uses the last coordinates of\nthe slave SQL thread before CHANGE MASTER was issued. This ensures that\nthere is no discontinuity in replication, even if the slave SQL thread\nwas late compared to the slave I/O thread, when you merely want to\nchange, say, the password to use.\n\nCHANGE MASTER deletes all relay log files and starts a new one, unless\nyou specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay logs\nare kept; the relay_log_purge global variable is set silently to 0.\n\nCHANGE MASTER is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the log and the offset\ncorresponding to it. After loading the snapshot into the slave, you can\nrun CHANGE MASTER TO MASTER_LOG_FILE=''log_name_on_master'',\nMASTER_LOG_POS=log_offset_on_master on the slave.\n\nThe following example changes the master and master''s binary log\ncoordinates. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=''master2.mycompany.com'',\n  MASTER_USER=''replication'',\n  MASTER_PASSWORD=''bigs3cret'',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=''master2-bin.001'',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay logs that you want it to execute\nagain for some reason. To do this, the master need not be reachable.\nYou need only use CHANGE MASTER TO and start the SQL thread (START\nSLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=''slave-relay-bin.006'',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html');
INSERT INTO `help_topic` VALUES (181, 'DROP DATABASE', 38, 'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-database.html');
INSERT INTO `help_topic` VALUES (182, 'TIMESTAMP FUNCTION', 30, 'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMP(''2003-12-31'');\n        -> ''2003-12-31 00:00:00''\nmysql> SELECT TIMESTAMP(''2003-12-31 12:00:00'',''12:00:00'');\n        -> ''2004-01-01 00:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (183, 'CHARACTER_LENGTH', 35, 'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (184, 'SHOW GRANTS', 26, 'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, ''jeffrey''@''localhost''. If you specify only the\nusername part of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR ''root''@''localhost'';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO ''root''@''localhost'' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nAs of MySQL 5.1.12, if SHOW GRANTS FOR CURRENT_USER (or any of the\nequivalent syntaxes) is used in DEFINER context, such as within a\nstored procedure that is defined with SQL SECURITY DEFINER), the grants\ndisplayed are those of the definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-grants.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-grants.html');
INSERT INTO `help_topic` VALUES (185, 'SHOW PRIVILEGES', 26, 'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html');
INSERT INTO `help_topic` VALUES (186, 'INSERT FUNCTION', 35, 'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSERT(''Quadratic'', 3, 4, ''What'');\n        -> ''QuWhattic''\nmysql> SELECT INSERT(''Quadratic'', -1, 4, ''What'');\n        -> ''Quadratic''\nmysql> SELECT INSERT(''Quadratic'', 3, 100, ''What'');\n        -> ''QuWhat''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (187, 'CRC32', 4, 'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CRC32(''MySQL'');\n        -> 3259397556\nmysql> SELECT CRC32(''mysql'');\n        -> 2501908538\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (188, 'XOR', 13, 'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is non-zero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html');
INSERT INTO `help_topic` VALUES (189, 'STARTPOINT', 12, 'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html');
INSERT INTO `help_topic` VALUES (190, 'DECLARE VARIABLE', 37, 'Syntax:\nDECLARE var_name[,...] type [DEFAULT value]\n\nThis statement is used to declare local variables. To provide a default\nvalue for the variable, include a DEFAULT clause. The value can be\nspecified as an expression; it need not be a constant. If the DEFAULT\nclause is missing, the initial value is NULL.\n\nLocal variables are treated like routine parameters with respect to\ndata type and overflow checking. See [HELP CREATE PROCEDURE].\n\nThe scope of a local variable is within the BEGIN ... END block where\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-local-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-local-variables.html');
INSERT INTO `help_topic` VALUES (191, 'MPOLYFROMTEXT', 3, 'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (192, 'GRANT', 9, 'Syntax:\nGRANT priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type]\n        {tbl_name | * | *.* | db_name.* | db_name.routine_name}\n    TO user [IDENTIFIED BY [PASSWORD] ''password'']\n        [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n    [REQUIRE\n        NONE |\n        [{SSL| X509}]\n        [CIPHER ''cipher'' [AND]]\n        [ISSUER ''issuer'' [AND]]\n        [SUBJECT ''subject'']]\n    [WITH with_option [with_option] ...]\n\nobject_type =\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\nwith_option =\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement enables system administrators to create MySQL user\naccounts and to grant rights to from accounts. To use GRANT, you must\nhave the GRANT OPTION privilege, and you must have the privileges that\nyou are granting. The REVOKE statement is related and enables\nadministrators to remove account privileges. See [HELP REVOKE].\n\nMySQL account information is stored in the tables of the mysql\ndatabase. This database and the access control system are discussed\nextensively in\nhttp://dev.mysql.com/doc/refman/5.1/en/server-administration.html,\nwhich you should consult for additional details.\n\n*Important*: Some releases of MySQL introduce changes to the structure\nof the grant tables to add new privileges or features. Whenever you\nupdate to a new version of MySQL, you should update your grant tables\nto make sure that they have the current structure so that you can take\nadvantage of any new capabilities. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-upgrade.html.\n\nIf the grant tables hold privilege rows that contain mixed-case\ndatabase or table names and the lower_case_table_names system variable\nis set to a non-zero value, REVOKE cannot be used to revoke these\nprivileges. It will be necessary to manipulate the grant tables\ndirectly. (GRANT will not create such rows when lower_case_table_names\nis set, but such rows might have been created prior to setting the\nvariable.)\n\nPrivileges can be granted at several levels. The examples shown here\ninclude no IDENTIFIED BY ''password'' clause for brevity, but you should\ninclude one if the account does not already exist to avoid creating an\naccount with no password.\n\no Global level\n\n  Global privileges apply to all databases on a given server. These\n  privileges are stored in the mysql.user table. GRANT ALL ON *.* and\n  REVOKE ALL ON *.* grant and revoke only global privileges.\n\nGRANT ALL ON *.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON *.* TO ''someuser''@''somehost'';\n\no Database level\n\n  Database privileges apply to all objects in a given database. These\n  privileges are stored in the mysql.db and mysql.host tables. GRANT\n  ALL ON db_name.* and REVOKE ALL ON db_name.* grant and revoke only\n  database privileges.\n\nGRANT ALL ON mydb.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.* TO ''someuser''@''somehost'';\n\no Table level\n\n  Table privileges apply to all columns in a given table. These\n  privileges are stored in the mysql.tables_priv table. GRANT ALL ON\n  db_name.tbl_name and REVOKE ALL ON db_name.tbl_name grant and revoke\n  only table privileges.\n\nGRANT ALL ON mydb.mytbl TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Column level\n\n  Column privileges apply to single columns in a given table. These\n  privileges are stored in the mysql.columns_priv table. When using\n  REVOKE, you must specify the same columns that were granted. The\n  column or columns for which the privileges are to be granted must be\n  enclosed within parentheses.\n\nGRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Routine level\n\n  The CREATE ROUTINE, ALTER ROUTINE, EXECUTE, and GRANT privileges\n  apply to stored routines (functions and procedures). They can be\n  granted at the global and database levels. Also, except for CREATE\n  ROUTINE, these privileges can be granted at the routine level for\n  individual routines and are stored in the mysql.procs_priv table.\n\nGRANT CREATE ROUTINE ON mydb.* TO ''someuser''@''somehost'';\nGRANT EXECUTE ON PROCEDURE mydb.myproc TO ''someuser''@''somehost'';\n\nThe object_type clause should be specified as TABLE, FUNCTION, or\nPROCEDURE when the following object is a table, a stored function, or a\nstored procedure.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/grant.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/grant.html');
INSERT INTO `help_topic` VALUES (193, 'MBRINTERSECTS', 6, 'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (194, 'BIT_OR', 16, 'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (195, 'YEARWEEK', 30, 'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEARWEEK(''1987-01-01'');\n        -> 198653\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (196, 'NOT BETWEEN', 18, 'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (197, 'IS NOT', 18, 'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (198, 'LOG10', 4, 'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (199, 'SQRT', 4, 'Syntax:\nSQRT(X)\n\nReturns the square root of a non-negative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL        \n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (200, 'DECIMAL', 21, 'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed "exact" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the "-" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (201, 'CREATE FUNCTION', 36, 'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction''s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable.\n\n*Note*: This is a change in MySQL 5.1. For earlier versions of MySQL,\nthe shared object can be located in any directory that is searched by\nyour system''s dynamic linker.\n\nTo create a function, you must have the INSERT and privilege for the\nmysql database. This is necessary because CREATE FUNCTION adds a row to\nthe mysql.func system table that records the function''s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-function.html');
INSERT INTO `help_topic` VALUES (202, 'GEOMETRYN', 24, 'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometrycollection-property-functions.html');
INSERT INTO `help_topic` VALUES (203, 'CREATE INDEX', 38, 'Syntax:\nCREATE [ONLINE|OFFLINE] [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n    [index_option ...]\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nindex_option:\n    KEY_BLOCK_SIZE value\n  | index_type\n  | WITH PARSER parser_name\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-index.html');
INSERT INTO `help_topic` VALUES (204, 'ALTER DATABASE', 38, 'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\nALTER {DATABASE | SCHEMA} db_name\n    UPGRADE DATA DIRECTORY NAME\n\nalter_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.1/en/charset.html, discusses\ncharacter set and collation names.\n\nThe database name can be omitted from the first syntax, in which case\nthe statement applies to the default database.\n\nThe syntax that includes the UPGRADE DATA DIRECTORY NAME clause was\nadded in MySQL 5.1.23. It updates the name of the directory associated\nwith the database to use the encoding implemented in MySQL 5.1 for\nmapping database names to database directory names (see\nhttp://dev.mysql.com/doc/refman/5.1/en/identifier-mapping.html). This\nclause is for use under these conditions:\n\no It is intended when upgrading MySQL to 5.1 or later from older\n  versions.\n\no It is intended to update a database directory name to the current\n  encoding format if the name contains special characters that need\n  encoding.\n\no The statement is used by mysqlcheck (as invoked by mysql_upgrade).\n\nFor example,if a database in MySQL 5.0 has a name of a-b-c, the name\ncontains instance of the `-'' character. In 5.0, the database directory\nis also named a-b-c, which is not necessarily safe for all filesystems.\nIn MySQL 5.1 and up, the same database name is encoded as a@002db@002dc\nto produce a filesystem-neutral directory name.\n\nWhen a MySQL installation is upgraded to MySQL 5.1 or later from an\nolder version,the server displays a name such as a-b-c (which is in the\nold format) as #mysql50#a-b-c, and you must refer to the name using the\n#mysql50# prefix. Use UPGRADE DATA DIRECTORY NAME in this case to\nexplicitly tell the server to re-encode the database directory name to\nthe current encoding format:\n\nALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;\n\nAfter executing this statement, you can refer to the database as a-b-c\nwithout the special #mysql50# prefix.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-database.html');
INSERT INTO `help_topic` VALUES (205, '<<', 19, 'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 << 2;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (206, 'SHOW TABLE STATUS', 26, 'Syntax:\nSHOW TABLE STATUS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each table. You can also get this list using the\nmysqlshow --status db_name command. The LIKE clause, if present,\nindicates which table names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html');
INSERT INTO `help_topic` VALUES (207, 'MD5', 11, 'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a binary string of 32 hex digits, or NULL if the argument\nwas NULL. The return value can, for example, be used as a hash key.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT MD5(''testing'');\n        -> ''ae2b1fca515949e5d54fb22b8ed95575''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (208, '<', 18, 'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 < 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (209, 'UNIX_TIMESTAMP', 30, 'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n''1970-01-01 00:00:00'' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since ''1970-01-01 00:00:00'' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(''2007-11-30 10:30:19'');\n        -> 1196440219\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (210, 'DAYOFMONTH', 30, 'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as ''0000-00-00'' or ''2008-00-00'' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFMONTH(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (211, 'ASCII', 35, 'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ASCII(''2'');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(''dx'');\n        -> 100\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (212, 'DIV', 4, 'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 5 DIV 2;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (213, 'RENAME USER', 9, 'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account is named using the same\nformat as for the GRANT statement; for example, ''jeffrey''@''localhost''.\nIf you specify only the username part of the account name, a hostname\npart of ''%'' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/rename-user.html');
INSERT INTO `help_topic` VALUES (214, 'SHOW SLAVE STATUS', 26, 'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. If you issue this statement using the mysql client,\nyou can use a \\G statement terminator rather than a semicolon to obtain\na more readable vertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n               Slave_IO_State: Waiting for master to send event\n                  Master_Host: localhost\n                  Master_User: root\n                  Master_Port: 3306\n                Connect_Retry: 3\n              Master_Log_File: gbichot-bin.005\n          Read_Master_Log_Pos: 79\n               Relay_Log_File: gbichot-relay-bin.005\n                Relay_Log_Pos: 548\n        Relay_Master_Log_File: gbichot-bin.005\n             Slave_IO_Running: Yes\n            Slave_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Master_Log_Pos: 79\n              Relay_Log_Space: 552\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Master_SSL_Allowed: No\n           Master_SSL_CA_File:\n           Master_SSL_CA_Path:\n              Master_SSL_Cert:\n            Master_SSL_Cipher:\n               Master_SSL_Key:\n        Seconds_Behind_Master: 8\nMaster_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html');
INSERT INTO `help_topic` VALUES (215, 'GEOMETRY', 32, 'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, and ARCHIVE\ntables. See also the annotations about spatial indexes under [HELP\nSPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html\n\n', 'CREATE TABLE geom (g GEOMETRY);\n', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html');
INSERT INTO `help_topic` VALUES (216, 'NUMPOINTS', 12, 'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html');
INSERT INTO `help_topic` VALUES (217, '&', 19, 'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 & 15;\n        -> 13\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (218, 'LOCALTIMESTAMP', 30, 'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (219, 'CONVERT', 35, 'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take a value of one type and produce\na value of another type.\n\nThe type can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.1/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. Values shorter than N bytes are padded with 0x00 bytes to a\nlength of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string ''abc'' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(''abc'' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html');
INSERT INTO `help_topic` VALUES (220, 'ADDDATE', 30, 'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\nmysql> SELECT ADDDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDDATE(''1998-01-02'', 31);\n        -> ''1998-02-02''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (221, 'REPEAT LOOP', 37, 'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition is true. Thus, a REPEAT always enters the loop at\nleast once. statement_list consists of one or more statements.\n\nA REPEAT statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html');
INSERT INTO `help_topic` VALUES (222, 'SMALLINT', 21, 'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (223, 'DOUBLE PRECISION', 21, 'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (224, 'ORD', 35, 'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code x 256)\n+ (3rd byte code x 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ORD(''2'');\n        -> 50\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (225, 'ENVELOPE', 34, 'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT AsText(Envelope(GeomFromText(''LineString(1 1,2 2)'')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(''LineString(1 1,2 2)''))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (226, 'DEALLOCATE PREPARE', 26, 'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement, use the DEALLOCATE PREPARE\nstatement. Attempting to execute a prepared statement after\ndeallocating it results in an error.\n\nIf you terminate a client session without deallocating a previously\nprepared statement, the server deallocates it automatically.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/sqlps.html');
INSERT INTO `help_topic` VALUES (227, 'IS_FREE_LOCK', 14, 'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (228, 'TOUCHES', 28, 'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (229, 'INET_ATON', 14, 'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of a network address as a string,\nreturns an integer that represents the numeric value of the address.\nAddresses may be 4- or 8-byte addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_ATON(''209.207.224.40'');\n        -> 3520061480\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (230, 'UNCOMPRESS', 11, 'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESS(COMPRESS(''any string''));\n        -> ''any string''\nmysql> SELECT UNCOMPRESS(''any string'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (231, 'AUTO_INCREMENT', 21, 'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html\n\n', 'CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n );\n\nINSERT INTO animals (name) VALUES \n    (''dog''),(''cat''),(''penguin''),\n    (''lax''),(''whale''),(''ostrich'');\n\nSELECT * FROM animals;\n', 'http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html');
INSERT INTO `help_topic` VALUES (232, 'ISSIMPLE', 34, 'IsSimple(g)\n\nCurrently, this function is a placeholder and should not be used. If\nimplemented, its behavior will be as described in the next paragraph.\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and -1 if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (233, '- BINARY', 4, 'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3-5;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (234, 'GEOMCOLLFROMTEXT', 3, 'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (235, 'WKT DEFINITION', 3, 'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html');
INSERT INTO `help_topic` VALUES (236, 'CURRENT_TIME', 30, 'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (237, 'REVOKE', 9, 'Syntax:\nREVOKE priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    ON [object_type]\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. To use REVOKE, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nEach account is named using the same format as for the GRANT statement;\nfor example, ''jeffrey''@''localhost''. If you specify only the username\npart of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nFor details on the levels at which privileges exist, the allowable\npriv_type values, and the syntax for specifying users and passwords,\nsee [HELP GRANT]\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/revoke.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/revoke.html');
INSERT INTO `help_topic` VALUES (238, 'LAST_INSERT_ID', 15, 'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nFor MySQL 5.1.12 and later, LAST_INSERT_ID() (no arguments) returns the\nfirst automatically generated value successfully inserted for an\nAUTO_INCREMENT column as a result of the most recently executed INSERT\nstatement. The value of LAST_INSERT_ID() remains unchanged if no rows\nare successfully inserted.\n\nFor example, after inserting a row that generates an AUTO_INCREMENT\nvalue, you can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nIn MySQL 5.1.11 and earlier, LAST_INSERT_ID() (no arguments) returns\nthe first automatically generated value if any rows were successfully\ninserted or updated. This means that the returned value could be a\nvalue that was not successfully inserted into the table. If no rows\nwere successfully inserted, LAST_INSERT_ID() returns 0.\n\nThe value of LAST_INSERT_ID() will be consistent across all versions if\nall rows in the INSERT or UPDATE statement were successful.\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value will be seen by statements that\n  follow the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (239, 'LAST_DAY', 30, 'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT LAST_DAY(''2003-02-05'');\n        -> ''2003-02-28''\nmysql> SELECT LAST_DAY(''2004-02-05'');\n        -> ''2004-02-29''\nmysql> SELECT LAST_DAY(''2004-01-01 01:01:01'');\n        -> ''2004-01-31''\nmysql> SELECT LAST_DAY(''2003-03-32'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (240, 'MEDIUMINT', 21, 'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (241, 'FLOOR', 4, 'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (242, 'RTRIM', 35, 'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RTRIM(''barbar   '');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (243, 'EXPLAIN', 27, 'Syntax:\nEXPLAIN tbl_name\n\nOr:\n\nEXPLAIN [EXTENDED | PARTITIONS] SELECT select_options\n\nThe EXPLAIN statement can be used either as a synonym for DESCRIBE or\nas a way to obtain information about how MySQL executes a SELECT\nstatement:\n\no EXPLAIN tbl_name is synonymous with DESCRIBE tbl_name or SHOW COLUMNS\n  FROM tbl_name.\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the SELECT,\n  including information about how tables are joined and in which order.\n\no EXPLAIN PARTITIONS is available beginning with MySQL 5.1.5. It is\n  useful only when examining queries involving partitioned tables. For\n  details, see\n  http://dev.mysql.com/doc/refman/5.1/en/partitioning-info.html.\n\nFor information regarding the second use of EXPLAIN (for obtaining\nquery execution plan information), see\nhttp://dev.mysql.com/doc/refman/5.1/en/using-explain.html. For a\ndescription of the DESCRIBE and SHOW COLUMNS statements, see [HELP\nDESCRIBE], and [HELP SHOW COLUMNS].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/explain.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/explain.html');
INSERT INTO `help_topic` VALUES (244, 'DEGREES', 4, 'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (245, 'VARCHAR', 21, '[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. The range of M is 0 to 65,535. The effective maximum length\nof a VARCHAR is subject to the maximum row size (65,535 bytes, which is\nshared among all columns) and the character set used. For example, utf8\ncharacters can require up to three bytes per character, so a VARCHAR\ncolumn that uses the utf8 character set can be declared to be a maximum\nof 21,844 characters.\n\nMySQL stores VARCHAR values as a one-byte or two-byte length prefix\nplus data. The length prefix indicates the number of bytes in the\nvalue. A VARCHAR column uses one length byte if values require no more\nthan 255 bytes, two length bytes if values may require more than 255\nbytes.\n\n*Note*: MySQL 5.1 follows the standard SQL specification, and does not\nremove trailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.1/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (246, 'UNHEX', 35, 'Syntax:\n\nUNHEX(str)\n\nPerforms the inverse operation of HEX(str). That is, it interprets each\npair of hexadecimal digits in the argument as a number and converts it\nto the character represented by the number. The resulting characters\nare returned as a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT UNHEX(''4D7953514C'');\n        -> ''MySQL''\nmysql> SELECT 0x4D7953514C;\n        -> ''MySQL''\nmysql> SELECT UNHEX(HEX(''string''));\n        -> ''string''\nmysql> SELECT HEX(UNHEX(''1267''));\n        -> ''1267''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (247, '- UNARY', 4, 'Syntax:\n-\n\nUnary minus. This operator changes the sign of the argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT - 2;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (248, 'SELECT INTO', 37, 'Syntax:\nSELECT col_name[,...] INTO var_name[,...] table_expr\n\nThis SELECT syntax stores selected columns directly into variables.\nTherefore, only a single row may be retrieved.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html\n\n', 'SELECT id,data INTO x,y FROM test.t1 LIMIT 1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html');
INSERT INTO `help_topic` VALUES (249, 'STD', 16, 'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. The standard SQL function STDDEV_POP() can be used\ninstead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (250, 'COS', 4, 'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COS(PI());\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (251, 'DATE FUNCTION', 30, 'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE(''2003-12-31 01:02:03'');\n        -> ''2003-12-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (252, 'DROP TRIGGER', 22, 'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER was added in MySQL 5.0.2. Its use requires the\nTRIGGER privilege for the table associated with the trigger. (This\nstatement requires the SUPER privilege prior to MySQL 5.1.6.)\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a non-existent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS]. The IF EXISTS clause was\nadded in MySQL 5.1.14.\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html');
INSERT INTO `help_topic` VALUES (253, 'RESET MASTER', 26, 'Syntax:\nRESET MASTER\n\nDeletes all binary logs listed in the index file, resets the binary log\nindex file to be empty, and creates a new binary log file.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-master.html');
INSERT INTO `help_topic` VALUES (254, 'TAN', 4, 'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (255, 'PI', 4, 'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (256, 'WEEKOFYEAR', 30, 'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKOFYEAR(''1998-02-20'');\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (257, '/', 4, 'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3/5;\n        -> 0.60\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (258, 'STDDEV_SAMP', 16, 'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP().\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (259, 'SCHEMA', 15, 'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (260, 'MLINEFROMWKB', 31, 'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (261, 'LOG2', 4, 'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (262, 'SUBTIME', 30, 'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SUBTIME(''1997-12-31 23:59:59.999999'',''1 1:1:1.000002'');\n        -> ''1997-12-30 22:58:58.999997''\nmysql> SELECT SUBTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''-00:59:59.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (263, 'UNCOMPRESSED_LENGTH', 11, 'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(''a'',30)));\n        -> 30\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (264, 'DROP TABLE', 38, 'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich non-existing tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nNote that for a partitioned table, DROP TABLE permanently removes the\ntable definition, all of its partitions, and all of the data which was\nstored in those partitions. It also removes the partitioning definition\n(.par) file associated with the dropped table.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each non-existent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are allowed to make porting easier. In MySQL 5.1,\nthey do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-table.html');
INSERT INTO `help_topic` VALUES (265, 'POW', 4, 'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (266, 'SHOW CREATE TABLE', 26, 'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. This\nstatement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the SQL_QUOTE_SHOW_CREATE option. See [HELP SET].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html\n\n', 'mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html');
INSERT INTO `help_topic` VALUES (267, 'DUAL', 26, 'You are allowed to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html');
INSERT INTO `help_topic` VALUES (268, 'INSTR', 35, 'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSTR(''foobarbar'', ''bar'');\n        -> 4\nmysql> SELECT INSTR(''xbar'', ''foobar'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (269, 'NOW', 30, 'Syntax:\nNOW()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context. The value is expressed in the\ncurrent time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT NOW();\n        -> ''2007-12-15 23:50:26''\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (270, 'SHOW ENGINES', 26, 'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server''s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is. SHOW TABLE\nTYPES is a deprecated synonym.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engines.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engines.html');
INSERT INTO `help_topic` VALUES (271, '>=', 18, 'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 >= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (272, 'EXP', 4, 'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (273, 'LONGBLOB', 21, 'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a four-byte\nlength prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (274, 'POINTN', 12, 'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html');
INSERT INTO `help_topic` VALUES (275, 'YEAR DATA TYPE', 21, 'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. In four-digit format, the allowable values are 1901 to 2155,\nand 0000. In two-digit format, the allowable values are 70 to 69,\nrepresenting years from 1970 to 2069. MySQL displays YEAR values in\nYYYY format, but allows you to assign values to YEAR columns using\neither strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` VALUES (276, 'SUM', 16, 'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used in MySQL 5.1 to sum only the\ndistinct values of expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (277, 'OCT', 4, 'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT OCT(12);\n        -> ''14''\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (278, 'SYSDATE', 30, 'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the\ntime at which the statement began to execute. (Within a stored routine\nor trigger, NOW() returns the time at which the routine or triggering\nstatement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is\nnon-deterministic and therefore unsafe for replication if\nstatement-based binary logging is used. If that is a problem, you can\nuse row-based logging, or start the server with the --sysdate-is-now\noption to cause SYSDATE() to be an alias for NOW(). The\nnon-deterministic nature of SYSDATE() also means that indexes cannot be\nused for evaluating expressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (279, 'UNINSTALL PLUGIN', 5, 'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed plugin. You cannot uninstall a\nplugin if any table that uses it is open.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin''s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\ntable, so that subsequent server restarts will not load and initialize\nthe plugin. UNINSTALL PLUGIN does not remove the plugin''s shared\nlibrary file.\n\nTo use UNINSTALL PLUGIN, you must have the DELETE privilege for the\nmysql.plugin table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html');
INSERT INTO `help_topic` VALUES (280, 'ASBINARY', 31, 'AsBinary(g), AsWKB(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'SELECT AsBinary(g) FROM geom;\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html');
INSERT INTO `help_topic` VALUES (281, 'REPEAT FUNCTION', 35, 'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPEAT(''MySQL'', 3);\n        -> ''MySQLMySQLMySQL''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (282, 'SHOW TABLES', 26, 'Syntax:\nSHOW [FULL] TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThis statement also lists any views in the database. The FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\n*Note*: If you have no privileges for a base table or view, it does not\nshow up in the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-tables.html');
INSERT INTO `help_topic` VALUES (283, 'MAKEDATE', 30, 'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKEDATE(2001,31), MAKEDATE(2001,32);\n        -> ''2001-01-31'', ''2001-02-01''\nmysql> SELECT MAKEDATE(2001,365), MAKEDATE(2004,365);\n        -> ''2001-12-31'', ''2004-12-30''\nmysql> SELECT MAKEDATE(2001,0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (284, 'BINARY OPERATOR', 35, 'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column isn''t defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'mysql> SELECT ''a'' = ''A'';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''A'';\n        -> 0\nmysql> SELECT ''a'' = ''a '';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''a '';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html');
INSERT INTO `help_topic` VALUES (285, 'MBROVERLAPS', 6, 'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (286, 'SOUNDEX', 35, 'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All non-alphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See\n  Bug#22638 (http://bugs.mysql.com/22638) for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SOUNDEX(''Hello'');\n        -> ''H400''\nmysql> SELECT SOUNDEX(''Quadratically'');\n        -> ''Q36324''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (287, 'MBRTOUCHES', 6, 'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (288, 'DROP EVENT', 38, 'Syntax:\nDROP EVENT [IF EXISTS] event_name\n\nThis statement drops the event named event_name. The event immediately\nceases being active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown\nevent ''event_name'' results. You can override this and cause the\nstatement to fail silently by using IF EXISTS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-event.html');
INSERT INTO `help_topic` VALUES (289, 'CREATE PROCEDURE', 37, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n    \nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n    \nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nroutine_body:\n    Valid SQL procedure statement\n\nThese statements create stored routines. To execute these statements,\nit is necessary to have the CREATE ROUTINE privilege. If binary logging\nis enabled, the CREATE FUNCTION statement might also require the SUPER\nprivilege, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-procedure-logging.html.\nMySQL automatically grants the ALTER ROUTINE and EXECUTE privileges to\nthe routine creator.\n\nBy default, the routine is associated with the default database. To\nassociate the routine explicitly with a given database, specify the\nname as db_name.sp_name when you create it.\n\nIf the routine name is the same as the name of a built-in SQL function,\nyou must use a space between the name and the following parenthesis\nwhen defining the routine, or a syntax error occurs. This is also true\nwhen you invoke the routine later. For this reason, we suggest that it\nis better to avoid re-using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always allowable to have spaces after a routine name,\nregardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused.\n\nEach parameter can be declared to use any valid data type, except that\nthe COLLATE attribute cannot be used.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. (FUNCTION parameters are always regarded as IN parameters.)\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable so that\nyou can obtain its value when the procedure returns. (For an example,\nsee [HELP CALL].) If you are calling the procedure from within another\nstored procedure or function, you can also pass a routine parameter or\nlocal routine variable as an IN or INOUT parameter.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe routine_body consists of a valid SQL procedure statement. This can\nbe a simple statement such as SELECT or INSERT, or it can be a compound\nstatement written using BEGIN and END. Compound statement syntax is\ndescribed in [HELP BEGIN END]. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described later in this chapter. See, for\nexample, http://dev.mysql.com/doc/refman/5.1/en/declare.html, and [HELP\nIF statement]. Some statements are not allowed in stored routines; see\nhttp://dev.mysql.com/doc/refman/5.1/en/routine-restrictions.html.\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the current server SQL mode.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html');
INSERT INTO `help_topic` VALUES (290, 'INSERT SELECT', 26, 'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-select.html');
INSERT INTO `help_topic` VALUES (291, 'VARBINARY', 21, 'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than non-binary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (292, 'LOAD INDEX', 26, 'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise. LOAD INDEX INTO\nCACHE is used only for MyISAM tables. It is not supported for tables\nhaving user-defined partitioning (see\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-limitations.html.)\n\nThe IGNORE LEAVES modifier causes only blocks for the non-leaf nodes of\nthe index to be preloaded.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-index.html');
INSERT INTO `help_topic` VALUES (293, 'UNION', 26, 'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/union.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/union.html');
INSERT INTO `help_topic` VALUES (294, 'TO_DAYS', 30, 'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(''1997-10-07'');\n        -> 729669\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (295, 'NOT REGEXP', 35, 'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html');
INSERT INTO `help_topic` VALUES (296, 'SHOW INDEX', 26, 'Syntax:\nSHOW INDEX FROM tbl_name [FROM db_name]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC.\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nSHOW KEYS is a synonym for SHOW INDEX. You can also list a table''s\nindexes with the mysqlshow -k db_name tbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-index.html');
INSERT INTO `help_topic` VALUES (297, 'SHOW CREATE DATABASE', 26, 'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nShows the CREATE DATABASE statement that creates the given database.\nSHOW CREATE SCHEMA is a synonym for SHOW CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html\n\n', 'mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html');
INSERT INTO `help_topic` VALUES (298, 'LEAVE', 37, 'Syntax:\nLEAVE label\n\nThis statement is used to exit any labeled flow control construct. It\ncan be used within BEGIN ... END or loop constructs (LOOP, REPEAT,\nWHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html');
INSERT INTO `help_topic` VALUES (299, 'NOT IN', 18, 'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (300, '!', 13, 'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnon-zero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html');
INSERT INTO `help_topic` VALUES (301, 'DECLARE HANDLER', 37, 'Syntax:\nDECLARE handler_type HANDLER FOR condition_value[,...] statement\n\nhandler_type:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n  | mysql_error_code\n\nThe DECLARE ... HANDLER statement specifies handlers that each may deal\nwith one or more conditions. If one of these conditions occurs, the\nspecified statement is executed. statement can be a simple statement\n(for example, SET var_name = value), or it can be a compound statement\nwritten using BEGIN and END (see [HELP BEGIN END]).\n\nFor a CONTINUE handler, execution of the current routine continues\nafter execution of the handler statement. For an EXIT handler,\nexecution terminates for the BEGIN ... END compound statement in which\nthe handler is declared. (This is true even if the condition occurs in\nan inner block.) The UNDO handler type statement is not yet supported.\n\nIf a condition occurs for which no handler has been declared, the\ndefault action is EXIT.\n\nA condition_value can be any of the following values:\n\no An SQLSTATE value or a MySQL error code.\n\no A condition name previously specified with DECLARE ... CONDITION. See\n  [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for all SQLSTATE codes that begin with 01.\n\no NOT FOUND is shorthand for all SQLSTATE codes that begin with 02.\n  This is relevant only within the context of cursors and is used to\n  control what happens when a cursor reaches the end of a data set.\n\no SQLEXCEPTION is shorthand for all SQLSTATE codes not caught by\n  SQLWARNING or NOT FOUND.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-handlers.html\n\n', 'mysql> CREATE TABLE test.t (s1 int,primary key (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE ''23000'' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/declare-handlers.html');
INSERT INTO `help_topic` VALUES (302, 'DOUBLE', 21, 'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Allowable\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (303, 'TIME', 21, 'TIME\n\nA time. The range is ''-838:59:59'' to ''838:59:59''. MySQL displays TIME\nvalues in ''HH:MM:SS'' format, but allows assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html');
INSERT INTO `help_topic` VALUES (304, '&&', 13, 'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are non-zero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html');
INSERT INTO `help_topic` VALUES (305, 'X', 10, 'X(p)\n\nReturns the X-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT X(GeomFromText(@pt));\n+----------------------+\n| X(GeomFromText(@pt)) |\n+----------------------+\n|                 56.7 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html');
INSERT INTO `help_topic` VALUES (306, 'FOUND_ROWS', 15, 'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (307, 'SYSTEM_USER', 15, 'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (308, 'CROSSES', 28, 'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (309, 'TRUNCATE TABLE', 26, 'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. Logically, this is\nequivalent to a DELETE statement that deletes all rows, but there are\npractical differences under some circumstances.\n\nFor InnoDB tables, TRUNCATE TABLE is mapped to DELETE if there are\nforeign key constraints that reference the table; otherwise fast\ntruncation (dropping and re-creating the table) is used. The\nAUTO_INCREMENT counter is reset by TRUNCATE TABLE, regardless of\nwhether there is a foreign key constraint.\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the\nfollowing ways in MySQL 5.1:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one.\n\no Truncate operations are not transaction-safe; an error occurs when\n  attempting one in the course of an active transaction or active table\n  lock.\n\no The number of deleted rows is not returned.\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no The table handler does not remember the last used AUTO_INCREMENT\n  value, but starts counting from the beginning. This is true even for\n  MyISAM and InnoDB, which normally do not reuse sequence values.\n\no When used with partitioned tables, TRUNCATE TABLE preserves the\n  partitioning; that is, the data and index files are dropped and\n  re-created, while the partition definitions (.par) file is\n  unaffected.\n\no Since truncation of a table does not make any use of DELETE, the\n  TRUNCATE statement does not invoke ON DELETE triggers.\n\nTRUNCATE TABLE requires the DROP privilege as of MySQL 5.1.16. (Before\n5.1.16, it requires the DELETE privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/truncate.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/truncate.html');
INSERT INTO `help_topic` VALUES (310, 'BIT_XOR', 16, 'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (311, 'CURRENT_DATE', 30, 'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (312, 'AREA', 2, 'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly = ''Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))'';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html');
INSERT INTO `help_topic` VALUES (313, 'START SLAVE', 26, 'Syntax:\nSTART SLAVE [thread_type [, thread_type] ... ]\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = ''log_name'', MASTER_LOG_POS = log_pos\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = ''log_name'', RELAY_LOG_POS = log_pos\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads queries from the master server and stores\nthem in the relay log. The SQL thread reads the relay log and executes\nthe queries. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary logs, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave''s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/start-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/start-slave.html');
INSERT INTO `help_topic` VALUES (314, 'BEGIN END', 37, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored routines and triggers. A compound statement can\ncontain multiple statements, enclosed by the BEGIN and END keywords.\nstatement_list represents a list of one or more statements. Each\nstatement within statement_list must be terminated by a semicolon (;)\nstatement delimiter. Note that statement_list is optional, which means\nthat the empty compound statement (BEGIN END) is legal.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. This is handled\nin the mysql command-line client with the delimiter command. Changing\nthe ; end-of-statement delimiter (for example, to //) allows ; to be\nused in a routine body. For an example, see [HELP CREATE PROCEDURE].\n\nA compound statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/begin-end.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/begin-end.html');
INSERT INTO `help_topic` VALUES (315, 'FLUSH', 26, 'Syntax:\nFLUSH [LOCAL | NO_WRITE_TO_BINLOG]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement clears or reloads various internal caches used by\nMySQL. To execute FLUSH, you must have the RELOAD privilege.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/flush.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/flush.html');
INSERT INTO `help_topic` VALUES (316, 'SHOW PROCEDURE STATUS', 26, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nThese statements are MySQL extensions. They return characteristics of\nroutines, such as the database, name, type, creator, creation and\nmodification dates, and character set information. The LIKE clause, if\npresent, indicates which procedure or function names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html\n\n', 'mysql> SHOW FUNCTION STATUS LIKE ''hello''\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: hello\n                Type: FUNCTION\n             Definer: testuser@localhost\n            Modified: 2004-08-03 15:29:37\n             Created: 2004-08-03 15:29:37\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html');
INSERT INTO `help_topic` VALUES (317, 'SHOW WARNINGS', 26, 'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted\nfrom the last statement that generated messages, or nothing if the last\nstatement that used a table generated no messages. A related statement,\nSHOW ERRORS, shows only the errors. See [HELP SHOW ERRORS].\n\nThe list of messages is reset for each new statement that uses a table.\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is\nset so low that not all messages are stored. An example shown later in\nthis section demonstrates how this can happen.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html');
INSERT INTO `help_topic` VALUES (318, 'DESCRIBE', 27, 'Syntax:\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. These statements also display\ninformation for views. (See [HELP SHOW COLUMNS].)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/describe.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/describe.html');
INSERT INTO `help_topic` VALUES (319, 'DROP USER', 9, 'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts. It removes\nprivilege rows for the account from all grant tables. To use this\nstatement, you must have the global CREATE USER privilege or the DELETE\nprivilege for the mysql database. Each account is named using the same\nformat as for the GRANT statement; for example, ''jeffrey''@''localhost''.\nIf you specify only the username part of the account name, a hostname\npart of ''%'' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nWith DROP USER, you can remove an account and its privileges as\nfollows:\n\nDROP USER user;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-user.html');
INSERT INTO `help_topic` VALUES (320, 'STDDEV_POP', 16, 'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). You can also use STD() or STDDEV(), which are equivalent\nbut not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (321, 'SHOW CHARACTER SET', 26, 'Syntax:\nSHOW CHARACTER SET\n    [LIKE ''pattern'' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE ''latin%'';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html');
INSERT INTO `help_topic` VALUES (322, 'SUBSTRING', 35, 'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING(''Quadratically'',5);\n        -> ''ratically''\nmysql> SELECT SUBSTRING(''foobarbar'' FROM 4);\n        -> ''barbar''\nmysql> SELECT SUBSTRING(''Quadratically'',5,6);\n        -> ''ratica''        \nmysql> SELECT SUBSTRING(''Sakila'', -3);\n        -> ''ila''        \nmysql> SELECT SUBSTRING(''Sakila'', -5, 3);\n        -> ''aki''\nmysql> SELECT SUBSTRING(''Sakila'' FROM -4 FOR 2);\n        -> ''ki''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (323, 'ISEMPTY', 34, 'IsEmpty(g)\n\nReturns 1 if the geometry value g is the empty geometry, 0 if it is not\nempty, and -1 if the argument is NULL. If the geometry is empty, it\nrepresents the empty point set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (324, 'LTRIM', 35, 'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LTRIM(''  barbar'');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (325, 'INTERSECTS', 28, 'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (326, 'CALL', 37, 'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a procedure that was defined previously with\nCREATE PROCEDURE.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. It also "returns" the number of\nrows affected, which a client program can obtain at the SQL level by\ncalling the ROW_COUNT() function and from C by calling the\nmysql_affected_rows() C API function.\n\nAs of MySQL 5.1.13, stored procedures that take no arguments now can be\ninvoked without parentheses. That is, CALL p() and CALL p are\nequivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/call.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/call.html');
INSERT INTO `help_topic` VALUES (327, 'MBRDISJOINT', 6, 'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (328, 'VALUES', 14, 'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in INSERT ... ON DUPLICATE KEY UPDATE\nstatements and returns NULL otherwise.\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (329, 'SUBSTRING_INDEX', 35, 'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', 2);\n        -> ''www.mysql''\nmysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', -2);\n        -> ''mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (330, 'ENCODE', 11, 'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (331, 'LOOP', 37, 'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements. The\nstatements within the loop are repeated until the loop is exited;\nusually this is accomplished with a LEAVE statement.\n\nA LOOP statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html');
INSERT INTO `help_topic` VALUES (332, 'TRUNCATE', 4, 'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (333, 'TIMESTAMPADD', 30, 'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: FRAC_SECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPADD(MINUTE,1,''2003-01-02'');\n        -> ''2003-01-02 00:01:00''\nmysql> SELECT TIMESTAMPADD(WEEK,1,''2003-01-02'');\n        -> ''2003-01-09''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (334, 'SHOW', 26, 'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW AUTHORS\nSHOW CHARACTER SET [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CONTRIBUTORS\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION funcname\nSHOW CREATE PROCEDURE procname\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW [FULL] EVENTS\nSHOW FUNCTION CODE sp_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW INNODB STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE sp_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW SCHEDULER STATUS\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE ''pattern''\n  | WHERE expr\n\nThe SHOW statement also has forms that provide information about\nreplication master and slave servers and are described in [HELP PURGE\nMASTER LOGS]:\n\nSHOW BINARY LOGS\nSHOW BINLOG EVENTS\nSHOW MASTER STATUS\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\n\nIf the syntax for a given SHOW statement includes a LIKE ''pattern''\npart, ''pattern'' is a string that can contain the SQL "%" and "_"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show.html');
INSERT INTO `help_topic` VALUES (335, 'GREATEST', 18, 'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(''B'',''A'',''C'');\n        -> ''C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (336, 'SHOW VARIABLES', 26, 'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. With SESSION, it displays the values\nthat are in effect for the current connection. If no modifier is\npresent, the default is SESSION. LOCAL is a synonym for SESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE ''max_join_size'';\nSHOW SESSION VARIABLES LIKE ''max_join_size'';\n\nTo get a list of variables whose name match a pattern, use the "%"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE ''%size%'';\nSHOW GLOBAL VARIABLES LIKE ''%size%'';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because "_" is a wildcard that matches\nany single character, you should escape it as "\\_" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-variables.html');
INSERT INTO `help_topic` VALUES (337, 'BIT_AND', 16, 'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (338, 'SECOND', 30, 'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SECOND(''10:05:03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (339, 'ATAN2', 4, 'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (340, 'MBRCONTAINS', 6, 'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Point(1 1)'');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (341, 'HOUR', 30, 'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT HOUR(''10:05:03'');\n        -> 10\nmysql> SELECT HOUR(''272:59:59'');\n        -> 272\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (342, 'SELECT', 26, 'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr, ...\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE ''file_name'' export_options\n      | INTO DUMPFILE ''file_name''\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.1/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE clause, you can use any of the functions and operators\n  that MySQL supports, except for aggregate (summary) functions. See\n  [HELP =].\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html');
INSERT INTO `help_topic` VALUES (343, 'COT', 4, 'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (344, 'SHOW CREATE EVENT', 26, 'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. For example (using the same event e_daily defined and\nthen altered in\nhttp://dev.mysql.com/doc/refman/5.1/en/show-events.html):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html\n\n', 'mysql> SHOW CREATE EVENT test.e_daily\\G\n\n*************************** 1. row ***************************\n               Event: e_daily\n        Create Event: CREATE EVENT e_daily\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ENABLE\n                        COMMENT ''Saves total number of sessions and\n                                 clears the table once per day.''\n                        DO\n                          BEGIN\n                            INSERT INTO site_activity.totals (when, total)\n                              SELECT CURRENT_TIMESTAMP, COUNT(*) \n                              FROM site_activity.sessions;\n                            DELETE FROM site_activity.sessions;\n                          END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html');
INSERT INTO `help_topic` VALUES (345, 'BACKUP TABLE', 20, 'Syntax:\nBACKUP TABLE tbl_name [, tbl_name] ... TO ''/path/to/backup/directory''\n\n*Note*: This statement is deprecated. We are working on a better\nreplacement for it that will provide online backup capabilities. In the\nmeantime, the mysqlhotcopy script can be used instead.\n\nBACKUP TABLE copies to the backup directory the minimum number of table\nfiles needed to restore the table, after flushing any buffered changes\nto disk. The statement works only for MyISAM tables. It copies the .frm\ndefinition and .MYD data files. The .MYI index file can be rebuilt from\nthose two files. The directory should be specified as a full pathname.\nTo restore the table, use RESTORE TABLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/backup-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/backup-table.html');
INSERT INTO `help_topic` VALUES (346, 'LOAD_FILE', 35, 'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full pathname to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols interpretation of filenames that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> UPDATE t\n            SET blob_col=LOAD_FILE(''/tmp/picture'')\n            WHERE id=1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (347, 'POINTFROMTEXT', 3, 'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (348, 'LOAD TABLE FROM MASTER', 26, 'Syntax:\nLOAD TABLE tbl_name FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nTransfers a copy of the table from the master to the slave. This\nstatement is implemented mainly debugging LOAD DATA FROM MASTER\noperations. To use LOAD TABLE, the account used for connecting to the\nmaster server must have the RELOAD and SUPER privileges on the master\nand the SELECT privilege for the master table to load. On the slave\nside, the user that issues LOAD TABLE FROM MASTER must have privileges\nfor dropping and creating the table.\n\nThe conditions for LOAD DATA FROM MASTER apply here as well. For\nexample, LOAD TABLE FROM MASTER works only for MyISAM tables. The\ntimeout notes for LOAD DATA FROM MASTER apply as well.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html');
INSERT INTO `help_topic` VALUES (349, 'GROUP_CONCAT', 16, 'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (350, 'DATE_FORMAT', 30, 'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%W %M %Y'');\n        -> ''Saturday October 1997''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%H:%i:%s'');\n        -> ''22:23:00''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%D %y %a %d %m %b %j'');\n        -> ''4th 97 Sat 04 10 Oct 277''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%H %k %I %r %T %S %w'');\n        -> ''22 22 10 10:23:00 PM 22:23:00 00 6''\nmysql> SELECT DATE_FORMAT(''1999-01-01'', ''%X %V'');\n        -> ''1998 52''\nmysql> SELECT DATE_FORMAT(''2006-06-00'', ''%d'');\n        -> ''00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (351, 'BENCHMARK', 15, 'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT BENCHMARK(1000000,ENCODE(''hello'',''goodbye''));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(''hello'',''goodbye'')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (352, 'YEAR', 30, 'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n"zero" date.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEAR(''98-02-03'');\n        -> 1998\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (353, 'SHOW ENGINE', 26, 'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE {NDB | NDBCLUSTER} STATUS\n\nOlder (and now deprecated) synonyms are SHOW INNODB STATUS for SHOW\nENGINE INNODB STATUS and SHOW MUTEX STATUS for SHOW ENGINE INNODB\nMUTEX.\n\nIn MySQL 5.0, SHOW ENGINE INNODB MUTEX is invoked as SHOW MUTEX STATUS.\nThe latter statement displays similar information but in a somewhat\ndifferent output format.\n\nSHOW ENGINE BDB LOGS formerly displayed status information about BDB\nlog files. As of MySQL 5.1.12, the BDB storage engine is not supported,\nand this statement produces a warning.\n\nSHOW ENGINE INNODB STATUS displays extensive information about the\nstate of the InnoDB storage engine.\n\nThe InnoDB Monitors provide additional information about InnoDB\nprocessing. See\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-monitor.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. From MySQL\n5.1.2 to 5.1.14, the statement displays the following output fields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The mutex name and the source file where it is implemented. Example:\n  &pool->mutex:mem0pool.c\n\n  The mutex name indicates its purpose. For example, the log_sys mutex\n  is used by the InnoDB logging subsystem and indicates how intensive\n  logging activity is. The buf_pool mutex protects the InnoDB buffer\n  pool.\n\no Status\n\n  The mutex status. The fields contains several values:\n\n  o count indicates how many times the mutex was requested.\n\n  o spin_waits indicates how many times the spinlock had to run.\n\n  o spin_rounds indicates the number of spinlock rounds. (spin_rounds\n    divided by spin_waits provides the average round count.)\n\n  o os_waits indicates the number of operating system waits. This\n    occurs when the spinlock did not work (the mutex was not locked\n    during the spinlock and it was necessary to yield to the operating\n    system and wait).\n\n  o os_yields indicates the number of times a the thread trying to lock\n    a mutex gave up its timeslice and yielded to the operating system\n    (on the presumption that allowing other threads to run will free\n    the mutex so that it can be locked).\n\n  o os_wait_times indicates the amount of time (in ms) spent in\n    operating system waits, if the timed_mutexes system variable is 1\n    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so\n    os_wait_times is 0. timed_mutexes is off by default.\n\nFrom MySQL 5.1.15 on, the statement displays the following output\nfields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The source file where the mutex is implemented, and the line number\n  in the file where the mutex is created. The line number may change\n  depending on your version of MySQL.\n\no Status\n\n  This field displays the same values as previously described (count,\n  spin_waits, spin_rounds, os_waits, os_yields, os_wait_times), but\n  only if UNIV_DEBUG was defined at MySQL compilation time (for\n  example, in include/univ.h in the InnoDB part of the MySQL source\n  tree). If UNIV_DEBUG was not defined, the statement displays only the\n  os_waits value. In the latter case (without UNIV_DEBUG), the\n  information on which the output is based is insufficient to\n  distinguish regular mutexes and mutexes that protect rw-locks (which\n  allow multiple readers or a single writer). Consequently, the output\n  may appear to contain multiple rows for the same mutex.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nIf the server has the NDBCLUSTER storage engine enabled, SHOW ENGINE\nNDB STATUS displays cluster status information such as the number of\nconnected data nodes, the cluster connectstring, and cluster binlog\nepochs, as well as counts of various Cluster API objects created by the\nMySQL Server when connected to the cluster. Sample output from this\nstatement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7, \n  connected_host=192.168.0.103, connected_port=1186, number_of_data_nodes=4, \n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126, \n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0, \n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe rows with connection and binlog in the Name column were added to\nthe output of this statement in MySQL 5.1. The Status column in each of\nthese rows provides information about the MySQL server''s connection to\nthe cluster and about the cluster binary log''s status, respectively.\nThe Status information is in the form of comma-delimited set of\nname/value pairs.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engine.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engine.html');
INSERT INTO `help_topic` VALUES (354, 'NAME_CONST', 14, 'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(''myname'', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (355, 'RELEASE_LOCK', 14, 'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (356, 'IS NULL', 18, 'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (357, 'CONVERT_TZ', 30, 'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''GMT'',''MET'');\n        -> ''2004-01-01 13:00:00''\nmysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''+00:00'',''+10:00'');\n        -> ''2004-01-01 22:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (358, 'TIME_TO_SEC', 30, 'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_TO_SEC(''22:23:00'');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(''00:39:38'');\n        -> 2378\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (359, 'WEEKDAY', 30, 'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKDAY(''1998-02-03 22:23:00'');\n        -> 1\nmysql> SELECT WEEKDAY(''1997-11-05'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (360, 'EXPORT_SET', 35, 'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter ","). The number of bits examined is given by number_of_bits\n(defaults to 64).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT EXPORT_SET(5,''Y'',''N'','','',4);\n        -> ''Y,N,Y,N''\nmysql> SELECT EXPORT_SET(6,''1'',''0'','','',10);\n        -> ''0,1,1,0,0,0,0,0,0,0''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (361, 'ALTER SERVER', 38, 'Syntax:\nALTER SERVER  server_name\n    OPTIONS (option [, option] ...)\n\nAlters the server information for server_name, adjusting the specified\noptions as per the CREATE SERVER command. See [HELP CREATE SERVER]. The\ncorresponding fields in the mysql.servers table are updated\naccordingly. This statement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-server.html\n\n', 'ALTER SERVER s OPTIONS (USER ''sally'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/alter-server.html');
INSERT INTO `help_topic` VALUES (362, 'TIME FUNCTION', 30, 'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME(''2003-12-31 01:02:03'');\n        -> ''01:02:03''\nmysql> SELECT TIME(''2003-12-31 01:02:03.000123'');\n        -> ''01:02:03.000123''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (363, 'DATE_ADD', 30, 'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. date is a DATETIME or DATE\nvalue specifying the starting date. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a "-" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ''1997-12-31 23:59:59'' + INTERVAL 1 SECOND;\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT INTERVAL 1 DAY + ''1997-12-31'';\n        -> ''1998-01-01''\nmysql> SELECT ''1998-01-01'' - INTERVAL 1 SECOND;\n        -> ''1997-12-31 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 SECOND);\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 DAY);\n        -> ''1998-01-01 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL ''1:1'' MINUTE_SECOND);\n        -> ''1998-01-01 00:01:00''\nmysql> SELECT DATE_SUB(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''1 1:1:1'' DAY_SECOND);\n        -> ''1997-12-30 22:58:59''\nmysql> SELECT DATE_ADD(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''-1 10'' DAY_HOUR);\n        -> ''1997-12-30 14:00:00''\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT DATE_ADD(''1992-12-31 23:59:59.000002'',\n    ->            INTERVAL ''1.999999'' SECOND_MICROSECOND);\n        -> ''1993-01-01 00:00:01.000001''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (364, 'CAST', 35, 'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes a value of one type and produce a value of\nanother type, similar to CONVERT(). See the description of CONVERT()\nfor more information.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html');
INSERT INTO `help_topic` VALUES (365, 'SOUNDS LIKE', 35, 'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (366, 'PERIOD_DIFF', 30, 'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_DIFF(9802,199703);\n        -> 11\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (367, 'LIKE', 35, 'Syntax:\nexpr LIKE pat [ESCAPE ''escape_char'']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''David!'' LIKE ''David_'';\n        -> 1\nmysql> SELECT ''David!'' LIKE ''%D%v%'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html');
INSERT INTO `help_topic` VALUES (368, 'MULTIPOINT', 23, 'MultiPoint(pt1,pt2,...)\n\nConstructs a WKB MultiPoint value using WKB Point arguments. If any\nargument is not a WKB Point, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (369, '>>', 19, 'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 4 >> 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (370, 'FETCH', 37, 'Syntax:\nFETCH cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row (if a row exists) using the\nspecified open cursor, and advances the cursor pointer.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue 02000. To detect this condition, you can set up a handler for it\n(or for a NOT FOUND condition). An example is shown in [HELP DECLARE\nCURSOR].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fetch.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/fetch.html');
INSERT INTO `help_topic` VALUES (371, 'AVG', 16, 'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used to\nreturn the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (372, 'TRUE FALSE', 29, 'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html');
INSERT INTO `help_topic` VALUES (373, 'MBRWITHIN', 6, 'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Polygon((0 0,0 5,5 5,5 0,0 0))'');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` VALUES (374, 'IN', 18, 'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT ''wefwf'' IN (''wee'',''wefwf'',''weg'');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (375, 'QUOTE', 35, 'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotes and with each instance of single quote ("''"),\nbackslash ("\\"), ASCII NUL, and Control-Z preceded by a backslash. If\nthe argument is NULL, the return value is the word "NULL" without\nenclosing single quotes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT QUOTE(''Don\\''t!'');\n        -> ''Don\\''t!''\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (376, 'SESSION_USER', 15, 'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (377, 'HELP COMMAND', 25, 'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run ''help contents'' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: "Contents"\nFor more information, type ''help <item>'', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type ''help <item>'',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: ''SHOW BINARY LOGS''\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-master-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html');
INSERT INTO `help_topic` VALUES (378, 'QUARTER', 30, 'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT QUARTER(''98-04-01'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (379, 'POSITION', 35, 'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (380, 'IS_USED_LOCK', 14, 'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (381, 'POLYFROMTEXT', 3, 'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (382, 'DES_ENCRYPT', 11, 'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.1/en/secure-connections.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'key_num des_key_str\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (383, 'CEIL', 4, 'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (384, 'LENGTH', 35, 'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LENGTH(''text'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (385, 'STR_TO_DATE', 30, 'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts.\n\nThe date, time, or datetime values contained in str should be given in\nthe format indicated by format. For the specifiers that can be used in\nformat, see the DATE_FORMAT() function description. If str contains an\nillegal date, time, or datetime value, STR_TO_DATE() returns NULL. An\nillegal value also produces a warning.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (386, 'Y', 10, 'Y(p)\n\nReturns the Y-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT Y(GeomFromText(@pt));\n+----------------------+\n| Y(GeomFromText(@pt)) |\n+----------------------+\n|                53.34 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/point-property-functions.html');
INSERT INTO `help_topic` VALUES (387, 'SHOW INNODB STATUS', 26, 'Syntax:\nSHOW INNODB STATUS\n\nIn MySQL 5.1, this is a deprecated synonym for SHOW ENGINE INNODB\nSTATUS. See [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html');
INSERT INTO `help_topic` VALUES (388, 'CHECKSUM TABLE', 20, 'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a non-existent table, CHECKSUM TABLE returns NULL and generates a\nwarning.\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum also changes. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html');
INSERT INTO `help_topic` VALUES (389, 'NUMINTERIORRINGS', 2, 'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html');
INSERT INTO `help_topic` VALUES (390, 'INTERIORRINGN', 2, 'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/polygon-property-functions.html');
INSERT INTO `help_topic` VALUES (391, 'UTC_TIME', 30, 'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> ''18:07:53'', 180753.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (392, 'DROP FUNCTION', 36, 'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function''s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-function.html');
INSERT INTO `help_topic` VALUES (393, 'ALTER EVENT', 38, 'Syntax:\nALTER EVENT\n    [DEFINER = { user | CURRENT_USER }]\n    event_name\n    [ON SCHEDULE schedule]\n    [ON COMPLETION [NOT] PRESERVE]\n    [RENAME TO new_event_name]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    [DO sql_statement]\n\nThe ALTER EVENT statement is used to change one or more of the\ncharacteristics of an existing event without the need to drop and\nrecreate it. The syntax for each of the DEFINER, ON SCHEDULE, ON\nCOMPLETION, COMMENT, ENABLE / DISABLE, and DO clauses is exactly the\nsame as when used with CREATE EVENT. (See [HELP CREATE EVENT].)\n\nSupport for the DEFINER clause was added in MySQL 5.1.17.\n\nBeginning with MySQL 5.1.12, any user can alter an event defined on a\ndatabase for which that user has the EVENT privilege. When a user\nexecutes a successful ALTER EVENT statement, that user becomes the\ndefiner for the affected event.\n\n(In MySQL 5.1.11 and earlier, an event could be altered only by its\ndefiner, or by a user having the SUPER privilege.)\n\nALTER EVENT works only with an existing event:\n\nmysql> ALTER EVENT no_such_event \n     >     ON SCHEDULE \n     >       EVERY ''2:3'' DAY_HOUR;\nERROR 1517 (HY000): Unknown event ''no_such_event''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-event.html');
INSERT INTO `help_topic` VALUES (394, 'STDDEV', 16, 'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. The standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (395, 'DATE_SUB', 30, 'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (396, 'PERIOD_ADD', 30, 'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_ADD(9801,2);\n        -> 199803\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (397, '|', 19, 'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 | 15;\n        -> 31\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (398, 'GEOMFROMTEXT', 3, 'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (399, 'RIGHT', 35, 'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RIGHT(''foobarbar'', 4);\n        -> ''rbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (400, 'DATEDIFF', 30, 'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATEDIFF(''1997-12-31 23:59:59'',''1997-12-30'');\n        -> 1\nmysql> SELECT DATEDIFF(''1997-11-30 23:59:59'',''1997-12-31'');\n        -> -31\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (401, 'DROP PROCEDURE', 37, 'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. You must have the\nALTER ROUTINE privilege for the routine. (That privilege is granted\nautomatically to the routine creator.)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html');
INSERT INTO `help_topic` VALUES (402, 'CHECK TABLE', 20, 'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nMyISAM, InnoDB, and ARCHIVE tables. Starting with MySQL 5.1.9, CHECK is\nalso valid for CSV tables, see\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html. For\nMyISAM tables, the key statistics are updated as well.\n\nCHECK TABLE can also check views for problems, such as tables that are\nreferenced in the view definition that no longer exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/check-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/check-table.html');
INSERT INTO `help_topic` VALUES (403, 'BIN', 35, 'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIN(12);\n        -> ''1100''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (404, 'INSTALL PLUGIN', 5, 'Syntax:\nINSTALL PLUGIN plugin_name SONAME ''plugin_library''\n\nThis statement installs a plugin.\n\nplugin_name is the name of the plugin as defined in the plugin\ndeclaration structure contained in the library file. Plugin name case\nsensitivity is determined by the host system filename semantics.\n\nplugin_library is the name of the shared library that contains the\nplugin code. The name includes the filename extension (for example,\nlibmyplugin.so or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (that is,\nthe directory named by the plugin_dir system variable). The library\nmust be in the plugin directory itself, not in a subdirectory. By\ndefault, plugin_dir is the directory named by the pkglibdir\nconfiguration variable, but it can be changed by setting the value of\nplugin_dir at server startup. For example, set its value in a my.cnf\nfile:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative pathname, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN adds a line to the mysql.plugin table that describes the\nplugin. This table contains the plugin name and library filename.\n\nINSTALL PLUGIN also loads and initializes the plugin code to make the\nplugin available for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used.\n\nTo use INSTALL PLUGIN, you must have the INSERT privilege for the\nmysql.plugin table.\n\nAt server startup, the server loads and initializes any plugin that is\nlisted in the mysql.plugin table. This means that a plugin is installed\nwith INSTALL PLUGIN only once, not every time the server starts. Plugin\nloading at startup does not occur if the server is started with the\n--skip-grant-tables option.\n\nWhen the server shuts down, it executes the deinitialization function\nfor each plugin that is loaded so that the plugin has a change to\nperform any final cleanup.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html');
INSERT INTO `help_topic` VALUES (405, 'DECLARE CURSOR', 37, 'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor. Multiple cursors may be declared in a\nroutine, but each cursor in a given block must have a unique name.\n\nThe SELECT statement cannot have an INTO clause.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-cursors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-cursors.html');
INSERT INTO `help_topic` VALUES (406, 'MULTILINESTRING', 23, 'MultiLineString(ls1,ls2,...)\n\nConstructs a WKB MultiLineString value using WKB LineString arguments.\nIf any argument is not a WKB LineString, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-mysql-specific-functions.html');
INSERT INTO `help_topic` VALUES (407, 'LOAD DATA', 26, 'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE ''file_name''\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [FIELDS\n        [TERMINATED BY ''string'']\n        [[OPTIONALLY] ENCLOSED BY ''char'']\n        [ESCAPED BY ''char'']\n    ]\n    [LINES\n        [STARTING BY ''string'']\n        [TERMINATED BY ''string'']\n    ]\n    [IGNORE number LINES]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The filename must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\n[HELP SELECT].) To write data from a table to a file, use SELECT ...\nINTO OUTFILE. To read the file back into a table, use LOAD DATA INFILE.\nThe syntax of the FIELDS and LINES clauses is the same for both\nstatements. Both clauses are optional, but FIELDS must precede LINES if\nboth are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. Beginning with MySQL 5.1.17, if the contents of the input file\nuse a character set that differs from the default, it is possible (and\nusually preferable) to use the CHARACTER SET clause to specify the\ncharacter set of the file.\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\nNote that it is currently not possible to load data files that use the\nucs2 character set.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols the interpretation of the filename.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.1/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (MyISAM, MEMORY,\nMERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\n*Note*: Prior to MySQL 5.1.23, LOAD DATA performed very poorly when\nimporting into partitioned tables. The statement now uses buffering to\nimprove performance; however, the buffer uses 130 KB memory per\npartition to achieve this. (Bug#26527 (http://bugs.mysql.com/26527))\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  pathname to specify its exact location. If given as a relative\n  pathname, the name is interpreted relative to the directory in which\n  the client program was started.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the filename is an absolute pathname, the server uses it as\n    given.\n\n  o If the filename is a relative pathname with one or more leading\n    components, the server searches for the file relative to the\n    server''s data directory.\n\n  o If a filename with no leading components is given, the server looks\n    for the file in the database directory of the default database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server''s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE ''data.txt'' INTO TABLE db2.my_table;\n\nWindows pathnames are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.1/en/privileges-provided.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data.html');
INSERT INTO `help_topic` VALUES (408, 'LOCALTIME', 30, 'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (409, 'MPOINTFROMTEXT', 3, 'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-functions.html');
INSERT INTO `help_topic` VALUES (410, 'BLOB', 21, 'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a two-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (411, 'SHA1', 11, 'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a binary\nstring of 40 hex digits, or NULL if the argument was NULL. One of the\npossible uses for this function is as a hash key. You can also use it\nas a cryptographic function for storing passwords. SHA() is synonymous\nwith SHA1().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT SHA1(''abc'');\n        -> ''a9993e364706816aba3e25717850c26c9cd0d89d''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (412, 'SUBSTR', 35, 'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (413, 'PASSWORD', 11, 'Syntax:\nPASSWORD(str)\n\nCalculates and returns a password string from the plaintext password\nstr and returns a binary string, or NULL if the argument was NULL. This\nis the function that is used for encrypting MySQL passwords for storage\nin the Password column of the user grant table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT PASSWORD(''badpwd'');\n        -> ''*AAB3E285149C0135D51A520E1940DD3263DC008C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (414, 'CHAR', 21, '[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (415, 'UTC_DATE', 30, 'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in ''YYYY-MM-DD'' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> ''2003-08-14'', 20030814\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (416, 'DIMENSION', 34, 'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in [HELP MBR\ndefinition].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT Dimension(GeomFromText(''LineString(1 1,2 2)''));\n+------------------------------------------------+\n| Dimension(GeomFromText(''LineString(1 1,2 2)'')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (417, 'COUNT DISTINCT', 16, 'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of different non-NULL values.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT COUNT(DISTINCT results) FROM student;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html');
INSERT INTO `help_topic` VALUES (418, 'BIT', 21, 'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (419, 'EQUALS', 28, 'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html');
INSERT INTO `help_topic` VALUES (420, 'SHOW CREATE VIEW', 26, 'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html');
INSERT INTO `help_topic` VALUES (421, 'INTERVAL', 18, 'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (422, 'FROM_DAYS', 30, 'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_DAYS(729669);\n        -> ''1997-10-07''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (423, 'ALTER PROCEDURE', 37, 'Syntax:\nALTER {PROCEDURE | FUNCTION} sp_name [characteristic ...]\n\ncharacteristic:\n    { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nThis statement can be used to change the characteristics of a stored\nprocedure or function. You must have the ALTER ROUTINE privilege for\nthe routine. (That privilege is granted automatically to the routine\ncreator.) If binary logging is enabled, the ALTER FUNCTION statement\nmight also require the SUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-procedure-logging.html.\n\nMore than one change may be specified in an ALTER PROCEDURE or ALTER\nFUNCTION statement.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html');
INSERT INTO `help_topic` VALUES (424, 'BIT_COUNT', 19, 'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT BIT_COUNT(29), BIT_COUNT(b''101010'');\n        -> 4, 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html');
INSERT INTO `help_topic` VALUES (425, 'OCTET_LENGTH', 35, 'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (426, 'UTC_TIMESTAMP', 30, 'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in ''YYYY-MM-DD\nHH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on whether the\nfunction is used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> ''2003-08-14 18:08:04'', 20030814180804.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (427, 'AES_ENCRYPT', 11, 'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() allow encryption and decryption of data\nusing the official AES (Advanced Encryption Standard) algorithm,\npreviously known as "Rijndael." Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 x (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'INSERT INTO t VALUES (1,AES_ENCRYPT(''text'',''password''));\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (428, '+', 4, 'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3+5;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` VALUES (429, 'INET_NTOA', 14, 'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric network address (4 or 8 byte), returns the dotted-quad\nrepresentation of the address as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_NTOA(3520061480);\n        -> ''209.207.224.40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html');
INSERT INTO `help_topic` VALUES (430, 'ACOS', 4, 'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (431, 'ISOLATION', 8, 'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n{ READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE }\n\nThis statement sets the transaction isolation level for the next\ntransaction, globally, or for the current session.\n\nThe default behavior of SET TRANSACTION is to set the isolation level\nfor the next (not yet started) transaction. If you use the GLOBAL\nkeyword, the statement sets the default transaction level globally for\nall new connections created from that point on. Existing connections\nare unaffected. You need the SUPER privilege to do this. Using the\nSESSION keyword sets the default transaction level for all future\ntransactions performed on the current connection.\n\nFor descriptions of each InnoDB transaction isolation level, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-transaction-isolation.htm\nl. InnoDB supports each of these levels in MySQL 5.1. The default level\nis REPEATABLE READ.\n\nIn MySQL 5.1, if the READ COMMITTED isolation level is used or the\ninnodb_locks_unsafe_for_binlog system variable is enabled, there is no\nInnoDB gap locking except in constraint checking. Also, record locks\nfor non-matching rows are released after MySQL has evaluated the WHERE\ncondition.\n\nTo set the initial default global isolation level for mysqld, use the\n--transaction-isolation option. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-options.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html');
INSERT INTO `help_topic` VALUES (432, 'CEILING', 4, 'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (433, 'SIN', 4, 'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (434, 'DAYOFWEEK', 30, 'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFWEEK(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (435, 'LINEFROMWKB', 31, 'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (436, 'SHOW PROCESSLIST', 26, 'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information from the INFORMATION_SCHEMA PROCESSLIST table or the\nmysqladmin processlist command. If you have the PROCESS privilege, you\ncan see all threads. Otherwise, you can see only your own threads (that\nis, threads associated with the MySQL account that you are using). If\nyou do not use the FULL keyword, only the first 100 characters of each\nstatement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html');
INSERT INTO `help_topic` VALUES (437, 'GEOMETRYTYPE', 34, 'GeometryType(g)\n\nReturns as a string the name of the geometry type of which the geometry\ninstance g is a member. The name corresponds to one of the instantiable\nGeometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT GeometryType(GeomFromText(''POINT(1 1)''));\n+------------------------------------------+\n| GeometryType(GeomFromText(''POINT(1 1)'')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/general-geometry-property-functions.html');
INSERT INTO `help_topic` VALUES (438, 'CREATE VIEW', 38, 'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. If the view does not exist,\nCREATE OR REPLACE VIEW is the same as CREATE VIEW. If the view does\nexist, CREATE OR REPLACE VIEW is the same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is "frozen" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it.\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nBase tables and views share the same namespace within a database, so a\ndatabase cannot contain a base table and a view that have the same\nname.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nWhen you modify an existing view, the current view definition is backed\nup and saved. It is stored in that table''s database directory, in a\nsub-folder named arc. The backup file will be named\nview_name.frm-00001. If you alter the view again, the next backup will\nbe named view_name.frm-00002. The three latest view backup definitions\nwill be stored.\n\n*Note*: Backed up view definitions will not be preserved by mysqldump,\nor any other such programs, but you could retain it from a file copy.\nHowever, they are not needed for anything, but to provide you with a\nbackup of your previous view definition.\n\nAlso note that while it is safe to remove these, it is not safe to do\nso while mysqld is running. If you delete this folder (or sub-files)\nwhile mysqld is running, you will receive an error the next time you\ntry to alter that view:\n\nmysql> ALTER VIEW v AS SELECT * FROM t;\nERROR 6 (HY000): Error on delete of ''.\\test\\arc/v.frm-0004'' (Errcode:\n2)\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Within a stored routine, the definition cannot refer to routine\n  parameters or local variables.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no The tables named in the view definition must already exist.\n\no You cannot associate a trigger with a view.\n\nORDER BY is allowed in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT ''abc'';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = '''';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol | \n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = ''ANSI_QUOTES'';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   | \n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at view invocation time. They were\naddded in MySQL 5.1.2.\n\nThe default DEFINER value is the user who executes the CREATE VIEW\nstatement. This is the same as specifying DEFINER = CURRENT_USER\nexplicitly. CURRENT_USER also can be given as CURRENT_USER(). If a user\nvalue is given, it should be a MySQL account in ''user_name''@''host_name''\nformat (the same format used in the GRANT statement). The user_name and\nhost_name values both are required.\n\nIf you specify the DEFINER clause, you cannot set the value to any user\nbut your own unless you have the SUPER privilege. These rules determine\nthe legal DEFINER user values:\n\no If you do not have the SUPER privilege, the only legal user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  legal account name. If the account does not actually exist, a warning\n  is generated.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine creator. This also\naffects a view defined within such a routine, if the view definition\ncontains a DEFINER value of CURRENT_USER.\n\nThe SQL SECURITY characteristic determines which MySQL account to use\nwhen checking access privileges for the view when a statement is\nexecuted that references the view. The legal characteristic values are\nDEFINER and INVOKER. These indicate that the required privileges must\nbe held by the user who defined or invoked the view, respectively. The\ndefault SQL SECURITY value is DEFINER. If the value is DEFINER but the\ndefiner account does not exist when the view is referenced, an error\noccurs.\n\nAs of MySQL 5.1.2 (when the DEFINER and SQL SECURITY clauses were\nimplemented), view privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have privileges for the columns, as described previously. If the\n  definition refers to a stored function, only the privileges needed to\n  invoke the function can be checked. The privileges required when the\n  function runs can be checked only as it executes: For different\n  invocations of the function, different execution paths within the\n  function might be taken.\n\no When a view is referenced, privileges for objects accessed by the\n  view are checked against the privileges held by the view creator or\n  invoker, depending on whether the SQL SECURITY characteristic is\n  DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function is defined with a SQL SECURITY characteristic\n  of DEFINER or INVOKER. If the security characteristic is DEFINER, the\n  function runs with the privileges of its creator. If the\n  characteristic is INVOKER, the function runs with the privileges\n  determined by the view''s SQL SECURITY characteristic.\n\nPrior to MySQL 5.1.2 (before the DEFINER and SQL SECURITY clauses were\nimplemented), privileges required for objects used in a view are\nchecked at view creation time.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY INVOKER.\n\nIf you invoke a view that was created before MySQL 5.1.2, it is treated\nas though it was created with a SQL SECURITY DEFINER clause and with a\nDEFINER value that is the same as your account. However, because the\nactual definer is unknown, MySQL issues a warning. To make the warning\ngo away, it is sufficient to re-create the view so that the view\ndefinition includes a DEFINER clause.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present.\n\nFor MERGE, the text of a statement that refers to the view and the view\ndefinition are merged such that parts of the view definition replace\ncorresponding parts of the statement.\n\nFor TEMPTABLE, the results from the view are retrieved into a temporary\ntable, which then is used to execute the statement.\n\nFor UNDEFINED, MySQL chooses which algorithm to use. It prefers MERGE\nover TEMPTABLE if possible, because MERGE is usually more efficient and\nbecause a view cannot be updatable if a temporary table is used.\n\nA reason to choose TEMPTABLE explicitly is that locks can be released\non underlying tables after the temporary table has been created and\nbefore it is used to finish processing the statement. This might result\nin quicker lock release than the MERGE algorithm so that other clients\nthat use the view are not blocked as long.\n\nA view algorithm can be UNDEFINED for three reasons:\n\no No ALGORITHM clause is present in the CREATE VIEW statement.\n\no The CREATE VIEW statement has an explicit ALGORITHM = UNDEFINED\n  clause.\n\no ALGORITHM = MERGE is specified for a view that can be processed only\n  with a temporary table. In this case, MySQL generates a warning and\n  sets the algorithm to UNDEFINED.\n\nAs mentioned earlier, MERGE is handled by merging corresponding parts\nof a view definition into the statement that refers to the view. The\nfollowing examples briefly illustrate how the MERGE algorithm works.\nThe examples assume that there is a view v_merge that has this\ndefinition:\n\nCREATE ALGORITHM = MERGE VIEW v_merge (vc1, vc2) AS\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 1: Suppose that we issue this statement:\n\nSELECT * FROM v_merge;\n\nMySQL handles the statement as follows:\n\no v_merge becomes t\n\no * becomes vc1, vc2, which corresponds to c1, c2\n\no The view WHERE clause is added\n\nThe resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 2: Suppose that we issue this statement:\n\nSELECT * FROM v_merge WHERE vc1 < 100;\n\nThis statement is handled similarly to the previous one, except that\nvc1 < 100 becomes c1 < 100 and the view WHERE clause is added to the\nstatement WHERE clause using an AND connective (and parentheses are\nadded to make sure the parts of the clause are executed with correct\nprecedence). The resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE (c3 > 100) AND (c1 < 100);\n\nEffectively, the statement to be executed has a WHERE clause of this\nform:\n\nWHERE (select WHERE) AND (view WHERE)\n\nThe MERGE algorithm requires a one-to-one relationship between the rows\nin the view and the rows in the underlying table. If this relationship\ndoes not hold, a temporary table must be used instead. Lack of a\none-to-one relationship occurs if the view contains any of a number of\nconstructs:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Refers only to literal values (in this case, there is no underlying\n  table)\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview non-updatable. To be more specific, a view is not updatable if it\ncontains any of the following:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Certain joins (see additional join discussion later in this section)\n\no Non-updatable view in the FROM clause\n\no A subquery in the WHERE clause that refers to a table in the FROM\n  clause\n\no Refers only to literal values (in this case, there is no underlying\n  table to update)\n\no ALGORITHM = TEMPTABLE (use of a temporary table always makes a view\n  non-updatable)\n\nWith respect to insertability (being updatable with INSERT statements),\nan updatable view is insertable if it also satisfies these additional\nrequirements for the view columns:\n\no There must be no duplicate view column names.\n\no The view must contain all columns in the base table that do not have\n  a default value.\n\no The view columns must be simple column references and not derived\n  columns. A derived column is one that is not a simple column\n  reference but is derived from an expression. These are examples of\n  derived columns:\n\n3.14159\ncol1 + 3\nUPPER(col2)\ncol3 / col4\n(subquery)\n\nA view that has a mix of simple column references and derived columns\nis not insertable, but it can be updatable if you update only those\ncolumns that are not derived. Consider this view:\n\nCREATE VIEW v AS SELECT col1, 1 AS col2 FROM t;\n\nThis view is not insertable because col2 is derived from an expression.\nBut it is updatable if the update does not try to update col2. This\nupdate is allowable:\n\nUPDATE v SET col1 = 0;\n\nThis update is not allowable because it attempts to update a derived\ncolumn:\n\nUPDATE v SET col2 = 0;\n\nIt is sometimes possible for a multiple-table view to be updatable,\nassuming that it can be processed with the MERGE algorithm. For this to\nwork, the view must use an inner join (not an outer join or a UNION).\nAlso, only a single table in the view definition can be updated, so the\nSET clause must name only columns from one of the tables in the view.\nViews that use UNION ALL are disallowed even though they might be\ntheoretically updatable, because the implementation uses temporary\ntables to process them.\n\nFor a multiple-table updatable view, INSERT can work if it inserts into\na single table. DELETE is not supported.\n\nINSERT DELAYED is not supported for views.\n\nIf a table contains an AUTO_INCREMENT column, inserting into an\ninsertable view on the table that does not include the AUTO_INCREMENT\ncolumn does not change the value of LAST_INSERT_ID(), because the side\neffects of inserting default values into columns not part of the view\nshould not be visible.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-view.html');
INSERT INTO `help_topic` VALUES (439, 'TRIM', 35, 'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT TRIM(''  bar   '');\n        -> ''bar''\nmysql> SELECT TRIM(LEADING ''x'' FROM ''xxxbarxxx'');\n        -> ''barxxx''\nmysql> SELECT TRIM(BOTH ''x'' FROM ''xxxbarxxx'');\n        -> ''bar''\nmysql> SELECT TRIM(TRAILING ''xyz'' FROM ''barxxyz'');\n        -> ''barx''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (440, 'IS', 18, 'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (441, 'GET_FORMAT', 30, 'Syntax:\nGET_FORMAT(DATE|TIME|DATETIME, ''EUR''|''USA''|''JIS''|''ISO''|''INTERNAL'')\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''2003-10-03'',GET_FORMAT(DATE,''EUR''));\n        -> ''03.10.2003''\nmysql> SELECT STR_TO_DATE(''10.31.2003'',GET_FORMAT(DATE,''USA''));\n        -> ''2003-10-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (442, 'TINYBLOB', 21, 'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a one-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (443, 'SAVEPOINT', 8, 'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO SAVEPOINT identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,\nRELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/savepoints.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/savepoints.html');
INSERT INTO `help_topic` VALUES (444, 'USER', 15, 'Syntax:\nUSER()\n\nReturns the current MySQL username and hostname as a string in the utf8\ncharacter set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (445, 'MPOINTFROMWKB', 31, 'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (446, 'ALTER TABLE', 38, 'Syntax:\nALTER [ONLINE | OFFLINE] [IGNORE] TABLE tbl_name\n    alter_specification [, alter_specification] ...\n\nalter_specification:\n    table_option ...\n  | ADD [COLUMN] col_name column_definition [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        PRIMARY KEY [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name] [index_type] (index_col_name,...)\n  | ADD FULLTEXT [INDEX|KEY] [index_name] (index_col_name,...)\n      [WITH PARSER parser_name]\n  | ADD SPATIAL [INDEX|KEY] [index_name] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] col_name column_definition [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET charset_name [COLLATE collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n  | PARTITION BY partition_options\n  | ADD PARTITION (partition_definition)\n  | DROP PARTITION partition_names\n  | COALESCE PARTITION number\n  | REORGANIZE PARTITION partition_names INTO (partition_definitions)\n  | ANALYZE PARTITION partition_names\n  | CHECK PARTITION partition_names\n  | OPTIMIZE PARTITION partition_names\n  | REBUILD PARTITION partition_names\n  | REPAIR PARTITION partition_names\n  | REMOVE PARTITIONING\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nALTER TABLE enables you to change the structure of an existing table.\nFor example, you can add or delete columns, create or destroy indexes,\nchange the type of existing columns, or rename columns or the table\nitself. You can also change the comment for the table and type of the\ntable.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-table.html');
INSERT INTO `help_topic` VALUES (447, 'PURGE MASTER LOGS', 26, 'Syntax:\nPURGE {MASTER | BINARY} LOGS TO ''log_name''\nPURGE {MASTER | BINARY} LOGS BEFORE ''date''\n\nDeletes all the binary logs listed in the log index prior to the\nspecified log or date. The logs also are removed from the list recorded\nin the log index file, so that the given log becomes the first.\n\nThis statement has no effect if the --log-bin option has not been\nenabled.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/purge-master-logs.html\n\n', 'PURGE MASTER LOGS TO ''mysql-bin.010'';\nPURGE MASTER LOGS BEFORE ''2003-04-02 22:46:26'';\n', 'http://dev.mysql.com/doc/refman/5.1/en/purge-master-logs.html');
INSERT INTO `help_topic` VALUES (448, 'CHAR BYTE', 21, 'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (449, 'REPAIR TABLE', 20, 'Syntax:\nREPAIR [LOCAL | NO_WRITE_TO_BINLOG] TABLE\n    tbl_name [, tbl_name] ... [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM and for ARCHIVE tables. Starting with MySQL 5.1.9, REPAIR is\nalso valid for CSV tables. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repair-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/repair-table.html');
INSERT INTO `help_topic` VALUES (450, 'MERGE', 38, 'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n"Identical" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html\n\n', 'mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (''Testing''),(''table''),(''t1'');\nmysql> INSERT INTO t2 (message) VALUES (''Testing''),(''table''),(''t2'');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n', 'http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html');
INSERT INTO `help_topic` VALUES (451, 'CREATE TABLE', 38, 'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_option ...]\n    [partition_options]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_option ...]\n    [PARTITION BY partition_options]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n      [index_option ...]\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n      [index_option ...]\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n      [index_option ...]\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n      [index_option ...]\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT ''string''] [reference_definition]\n      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]\n      [STORAGE {DISK|MEMORY}]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL]\n  | NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY(length)\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nindex_option:\n    KEY_BLOCK_SIZE value\n  | index_type\n  | WITH PARSER parser_name\n\nreference_definition:\n    REFERENCES tbl_name [(index_col_name,...)]\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_option:\n    [TABLESPACE tablespace_name STORAGE DISK]\n    ENGINE [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET charset_name\n  | CHECKSUM [=] {0 | 1}\n  | COLLATE collation_name\n  | COMMENT [=] ''string''\n  | CONNECTION [=] ''connect_string''\n  | DATA DIRECTORY [=] ''absolute path to directory''\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] ''absolute path to directory''\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | KEY_BLOCK_SIZE [=] value\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] ''string''\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | UNION [=] (tbl_name[,tbl_name]...)\n\npartition_options:\n          [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list)\n        | RANGE(expr)\n        | LIST(expr)\n    [PARTITIONS num]\n    [SUBPARTITION BY\n          [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list)\n      [SUBPARTITIONS num]\n    ]\n    [(partition_definition [, partition_definition] ...)]\n\npartition_definition:\n    PARTITION partition_name\n        [VALUES {LESS THAN (expr) | MAXVALUE | IN (value_list)}]\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] (tablespace_name)]\n        [NODEGROUP [=] node_group_id]\n        [(subpartition_definition [, subpartition_definition] ...)]\n\nsubpartition_definition:\n    SUBPARTITION logical_name\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] (tablespace_name)]\n        [NODEGROUP [=] node_group_id]\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for allowable table names are given in\nhttp://dev.mysql.com/doc/refman/5.1/en/identifiers.html. By default,\nthe table is created in the default database. An error occurs if the\ntable exists, if there is no default database, or if the database does\nnot exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-table.html');
INSERT INTO `help_topic` VALUES (452, '>', 18, 'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 > 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (453, 'ANALYZE TABLE', 20, 'Syntax:\nANALYZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for MyISAM.\nFor InnoDB the table is locked with a write lock. This statement works\nwith MyISAM, and InnoDB tables. For MyISAM tables, this statement is\nequivalent to using myisamchk --analyze.\n\nFor more information on how the analysis works withinInnoDB, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html');
INSERT INTO `help_topic` VALUES (454, 'MICROSECOND', 30, 'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MICROSECOND(''12:00:00.123456'');\n        -> 123456\nmysql> SELECT MICROSECOND(''1997-12-31 23:59:59.000010'');\n        -> 10\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (455, 'CONSTRAINT', 38, 'InnoDB also supports foreign key constraints. The syntax for a foreign\nkey constraint definition in InnoDB looks like this:\n\n[CONSTRAINT symbol] FOREIGN KEY [id] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name, ...)\n    [ON DELETE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n    [ON UPDATE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html\n\n', 'CREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n                      price DECIMAL,\n                      PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n                       PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n                            product_category INT NOT NULL,\n                            product_id INT NOT NULL,\n                            customer_id INT NOT NULL,\n                            PRIMARY KEY(no),\n                            INDEX (product_category, product_id),\n                            FOREIGN KEY (product_category, product_id)\n                              REFERENCES product(category, id)\n                              ON UPDATE CASCADE ON DELETE RESTRICT,\n                            INDEX (customer_id),\n                            FOREIGN KEY (customer_id)\n                              REFERENCES customer(id)) ENGINE=INNODB;\n', 'http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html');
INSERT INTO `help_topic` VALUES (456, 'CREATE SERVER', 38, 'Syntax:\nCREATE SERVER server_name\n    FOREIGN DATA WRAPPER wrapper_name\n    OPTIONS (option [, option] ...)\n\noption:\n  { HOST character-literal\n  | DATABASE character-literal\n  | USER character-literal\n  | PASSWORD character-literal\n  | SOCKET character-literal\n  | OWNER character-literal\n  | PORT numeric-literal }\n\nThis statement creates the definition of a server for use with the\nFEDERATED storage engine. The CREATE SERVER statement creates a new row\nwithin the servers table within the mysql database. This statement\nrequires the SUPER privilege.\n\nThe server_name should be a unique reference to the server. Server\ndefinitions are global within the scope of the server, it is not\npossible to qualify the server definition to a specific database.\nserver_name has a maximum length of 63 characters (names longer than 63\ncharacters are silently truncated), and is case insensitive. You may\nspecify the name using single quotes.\n\nThe wrapper_name should be mysql, and may be quoted with single quotes.\nOther values for wrapper_name are not currently supported.\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF-8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are\nsilently truncated to 64 characters. Numeric literals must be a number\nbetween 0 and 9999, default value is 0.\n\nThe CREATE SERVER statement creates an entry in the mysql.server table\nthat can later be used with the CREATE TABLE statement when creating a\nFEDERATED table. The options that you specify will be used to populate\nthe columns in the mysql.server table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-server.html\n\n', 'CREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER ''Remote'', HOST ''192.168.1.106'', DATABASE ''test'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/create-server.html');
INSERT INTO `help_topic` VALUES (457, 'FIELD', 35, 'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIELD(''ej'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 2\nmysql> SELECT FIELD(''fo'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (458, 'MAKETIME', 30, 'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKETIME(12,15,30);\n        -> ''12:15:30''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (459, 'CURDATE', 30, 'Syntax:\nCURDATE()\n\nReturns the current date as a value in ''YYYY-MM-DD'' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURDATE();\n        -> ''1997-12-15''\nmysql> SELECT CURDATE() + 0;\n        -> 19971215\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (460, 'SET PASSWORD', 9, 'Syntax:\nSET PASSWORD [FOR user] = PASSWORD(''some password'')\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount.\n\nWith no FOR clause, this statement sets the password for the current\nuser. Any client that has connected to the server using a non-anonymous\naccount can change the password for that account.\n\nWith a FOR clause, this statement sets the password for a specific\naccount on the current server host. Only clients that have the UPDATE\nprivilege for the mysql database can do this. The user value should be\ngiven in user_name@host_name format, where user_name and host_name are\nexactly as they are listed in the User and Host columns of the\nmysql.user table entry. For example, if you had an entry with User and\nHost column values of ''bob'' and ''%.loc.gov'', you would write the\nstatement like this:\n\nSET PASSWORD FOR ''bob''@''%.loc.gov'' = PASSWORD(''newpass'');\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-password.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-password.html');
INSERT INTO `help_topic` VALUES (461, 'ENUM', 21, 'ENUM(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values ''value1'', ''value2'', ..., NULL or the special ''''\nerror value. An ENUM column can have a maximum of 65,535 distinct\nvalues. ENUM values are represented internally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (462, 'IF FUNCTION', 7, 'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,''yes'',''no'');\n        -> ''yes''\nmysql> SELECT IF(STRCMP(''test'',''test1''),''no'',''yes'');\n        -> ''no''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html');
INSERT INTO `help_topic` VALUES (463, 'DATABASE', 15, 'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT DATABASE();\n        -> ''test''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (464, 'POINTFROMWKB', 31, 'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkb-functions.html');
INSERT INTO `help_topic` VALUES (465, 'POWER', 4, 'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (466, 'ATAN', 4, 'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (467, 'STRCMP', 35, 'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT STRCMP(''text'', ''text2'');\n        -> -1\nmysql> SELECT STRCMP(''text2'', ''text'');\n        -> 1\nmysql> SELECT STRCMP(''text'', ''text'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html');
INSERT INTO `help_topic` VALUES (468, 'INSERT DELAYED', 26, 'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and (as of\n  MySQL 5.1.19) BLACKHOLE tables. See\n  http://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.1/en/memory-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html,\n  and\n  http://dev.mysql.com/doc/refman/5.1/en/blackhole-storage-engine.html.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no DELAYED is ignored on slave replication servers because it could\n  cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html');
INSERT INTO `help_topic` VALUES (469, 'SHOW PROCEDURE CODE', 26, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} CODE sp_name\n\nThese statements are MySQL extensions that are available only for\nservers that have been built with debugging support. They display a\nrepresentation of the internal implementation of the named routine. The\nstatements require that you be the owner of the routine or have SELECT\naccess to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one "instruction" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html\n\n', 'mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 "DROP TABLE t2"                 |\n|   2 | stmt 5 "INSERT INTO t3 VALUES (fanta)" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html');
INSERT INTO `help_topic` VALUES (470, 'MEDIUMTEXT', 21, 'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a three-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html');
INSERT INTO `help_topic` VALUES (471, 'LN', 4, 'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (472, 'SHOW COLLATION', 26, 'Syntax:\nSHOW COLLATION\n    [LIKE ''pattern'' | WHERE expr]\n\nThe output from SHOW COLLATION includes all available character sets.\nThe LIKE clause, if present, indicates which collation names to match.\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE ''latin1%'';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-collation.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-collation.html');
INSERT INTO `help_topic` VALUES (473, 'LOG', 4, 'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (474, 'SET SQL_LOG_BIN', 26, 'Syntax:\nSET SQL_LOG_BIN = {0|1}\n\nDisables or enables binary logging for the current connection\n(SQL_LOG_BIN is a session variable) if the client has the SUPER\nprivilege. The statement is refused with an error if the client does\nnot have that privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html');
INSERT INTO `help_topic` VALUES (475, '!=', 18, 'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ''.01'' <> ''0.01'';\n        -> 1\nmysql> SELECT .01 <> ''0.01'';\n        -> 0\nmysql> SELECT ''zapp'' <> ''zappp'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (476, 'WHILE', 37, 'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition is true. statement_list consists of one or more\nstatements.\n\nA WHILE statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/while-statement.html\n\n', 'CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND\n', 'http://dev.mysql.com/doc/refman/5.1/en/while-statement.html');
INSERT INTO `help_topic` VALUES (477, 'AES_DECRYPT', 11, 'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function allows decryption of data using the official AES\n(Advanced Encryption Standard) algorithm. For more information, see the\ndescription of AES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html');
INSERT INTO `help_topic` VALUES (478, 'DAYNAME', 30, 'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYNAME(''1998-02-05'');\n        -> ''Thursday''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` VALUES (479, 'COERCIBILITY', 15, 'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COERCIBILITY(''abc'' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(''abc'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (480, 'INT', 21, 'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html');
INSERT INTO `help_topic` VALUES (481, 'GLENGTH', 12, 'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/linestring-property-functions.html');
INSERT INTO `help_topic` VALUES (482, 'RADIANS', 4, 'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` VALUES (483, 'COLLATION', 15, 'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COLLATION(''abc'');\n        -> ''latin1_swedish_ci''\nmysql> SELECT COLLATION(_utf8''abc'');\n        -> ''utf8_general_ci''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (484, 'COALESCE', 18, 'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html');
INSERT INTO `help_topic` VALUES (485, 'VERSION', 15, 'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT VERSION();\n        -> ''5.1.23-rc-standard''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html');
INSERT INTO `help_topic` VALUES (486, 'MAKE_SET', 35, 'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by ","\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT MAKE_SET(1,''a'',''b'',''c'');\n        -> ''a''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',''world'');\n        -> ''hello,world''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',NULL,''world'');\n        -> ''hello''\nmysql> SELECT MAKE_SET(0,''a'',''b'',''c'');\n        -> ''''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');
INSERT INTO `help_topic` VALUES (487, 'FIND_IN_SET', 35, 'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by "," characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (",") character.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIND_IN_SET(''b'',''a,b,c,d'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');

-- --------------------------------------------------------

-- 
-- Table structure for table `host`
-- 

CREATE TABLE `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

-- 
-- Dumping data for table `host`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `ndb_binlog_index`
-- 

CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` int(10) unsigned NOT NULL,
  `updates` int(10) unsigned NOT NULL,
  `deletes` int(10) unsigned NOT NULL,
  `schemaops` int(10) unsigned NOT NULL,
  `orig_server_id` int(10) unsigned NOT NULL,
  `orig_epoch` bigint(20) unsigned NOT NULL,
  `gci` int(10) unsigned NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `ndb_binlog_index`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `plugin`
-- 

CREATE TABLE `plugin` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='MySQL plugins';

-- 
-- Dumping data for table `plugin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `proc`
-- 

CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

-- 
-- Dumping data for table `proc`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `procs_priv`
-- 

CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

-- 
-- Dumping data for table `procs_priv`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `servers`
-- 

CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';

-- 
-- Dumping data for table `servers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `slow_log`
-- 

CREATE TABLE `slow_log` (
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `query_time` time NOT NULL,
  `lock_time` time NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `sql_text` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

-- 
-- Dumping data for table `slow_log`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tables_priv`
-- 

CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

-- 
-- Dumping data for table `tables_priv`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `time_zone`
-- 

CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `time_zone`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `time_zone_leap_second`
-- 

CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

-- 
-- Dumping data for table `time_zone_leap_second`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `time_zone_name`
-- 

CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

-- 
-- Dumping data for table `time_zone_name`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `time_zone_transition`
-- 

CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

-- 
-- Dumping data for table `time_zone_transition`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `time_zone_transition_type`
-- 

CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

-- 
-- Dumping data for table `time_zone_transition_type`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (0x6c6f63616c686f7374, 0x726f6f74, 0x2a38433933303733393333323938333934414442444243314433463442313837423141364634443142, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (0x3132372e302e302e31, 0x726f6f74, '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0);
INSERT INTO `user` VALUES (0x6c6f63616c686f7374, '', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0);
-- 
-- Database: `phpmyadmin`
-- 
DROP DATABASE `phpmyadmin`;
CREATE DATABASE `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

-- 
-- Table structure for table `pma_bookmark`
-- 

CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pma_bookmark`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_column_info`
-- 

CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pma_column_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_history`
-- 

CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pma_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_pdf_pages`
-- 

CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pma_pdf_pages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_relation`
-- 

CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- 
-- Dumping data for table `pma_relation`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_table_coords`
-- 

CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- 
-- Dumping data for table `pma_table_coords`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pma_table_info`
-- 

CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- 
-- Dumping data for table `pma_table_info`
-- 

