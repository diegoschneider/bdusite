-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 12-08-2014 a las 11:34:34
-- Versión del servidor: 6.0.4
-- Versión de PHP: 6.0.0-dev

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `bdu`
-- 
CREATE DATABASE `bdu` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `bdu`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alumnos`
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
-- Volcar la base de datos para la tabla `alumnos`
-- 

INSERT INTO `alumnos` VALUES (2, '050605', 3, 1, 65, 1, 'iop', 'iop', 3, '0000-00-00', 591, 2812, 21, 387, 456, NULL, NULL, NULL, 8, 2812, '2801', '567845323123', NULL, '456', '465', '456', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '456786', 'dfsdfdsfsdf@sdfmsdf.com', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `barrios`
-- 

CREATE TABLE `barrios` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- 
-- Volcar la base de datos para la tabla `barrios`
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
-- Estructura de tabla para la tabla `calles`
-- 

CREATE TABLE `calles` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=503 ;

-- 
-- Volcar la base de datos para la tabla `calles`
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
-- Estructura de tabla para la tabla `cargo`
-- 

CREATE TABLE `cargo` (
  `doc` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`cargo`),
  KEY `cargo` (`cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `cargo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cargos`
-- 

CREATE TABLE `cargos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `cargos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `catedras`
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
-- Volcar la base de datos para la tabla `catedras`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `condactividad`
-- 

CREATE TABLE `condactividad` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `condactividad`
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
-- Estructura de tabla para la tabla `condinscripcion`
-- 

CREATE TABLE `condinscripcion` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `condicion` varchar(40) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `condinscripcion`
-- 

INSERT INTO `condinscripcion` VALUES (1, 'Repitente');
INSERT INTO `condinscripcion` VALUES (2, 'Reinscripto');
INSERT INTO `condinscripcion` VALUES (3, 'Ingresante');
INSERT INTO `condinscripcion` VALUES (4, 'Promovido');
INSERT INTO `condinscripcion` VALUES (5, 'En compensación');
INSERT INTO `condinscripcion` VALUES (6, 'Proveniente del ciclo lectivo anterior');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cursos`
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
-- Volcar la base de datos para la tabla `cursos`
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
-- Estructura de tabla para la tabla `dia`
-- 

CREATE TABLE `dia` (
  `cod` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `dia`
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
-- Estructura de tabla para la tabla `errorlog`
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
-- Volcar la base de datos para la tabla `errorlog`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `escuelas`
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
-- Volcar la base de datos para la tabla `escuelas`
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
-- Estructura de tabla para la tabla `especialidades`
-- 

CREATE TABLE `especialidades` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `especialidades`
-- 

INSERT INTO `especialidades` VALUES (1, 'Básico');
INSERT INTO `especialidades` VALUES (2, 'Electromecánica');
INSERT INTO `especialidades` VALUES (3, 'Química');
INSERT INTO `especialidades` VALUES (4, 'Electrónica');
INSERT INTO `especialidades` VALUES (5, 'Informática');
INSERT INTO `especialidades` VALUES (6, 'Adultos');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estadodocumento`
-- 

CREATE TABLE `estadodocumento` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `estadodocumento`
-- 

INSERT INTO `estadodocumento` VALUES (1, 'Bueno');
INSERT INTO `estadodocumento` VALUES (2, 'Malo');
INSERT INTO `estadodocumento` VALUES (3, 'En trámite');
INSERT INTO `estadodocumento` VALUES (4, 'No posee');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `familiares`
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
-- Volcar la base de datos para la tabla `familiares`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `fichasalud`
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
-- Volcar la base de datos para la tabla `fichasalud`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `gremio`
-- 

CREATE TABLE `gremio` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `gremio`
-- 

INSERT INTO `gremio` VALUES (1, 'SUTEBA');
INSERT INTO `gremio` VALUES (2, 'UDOGBA');
INSERT INTO `gremio` VALUES (3, 'FED');
INSERT INTO `gremio` VALUES (4, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `instrecurrir`
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
-- Volcar la base de datos para la tabla `instrecurrir`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `localidades`
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
-- Volcar la base de datos para la tabla `localidades`
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
-- Estructura de tabla para la tabla `materias`
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
-- Volcar la base de datos para la tabla `materias`
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
-- Estructura de tabla para la tabla `medicos`
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
-- Volcar la base de datos para la tabla `medicos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nivelescolar`
-- 

CREATE TABLE `nivelescolar` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nivelescolar`
-- 

INSERT INTO `nivelescolar` VALUES (1, 'Primario');
INSERT INTO `nivelescolar` VALUES (2, 'Secundario');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nivelinstruccion`
-- 

CREATE TABLE `nivelinstruccion` (
  `cod` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `nivelinstruccion`
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
-- Estructura de tabla para la tabla `paises`
-- 

CREATE TABLE `paises` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `paises`
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
-- Estructura de tabla para la tabla `personal`
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
-- Volcar la base de datos para la tabla `personal`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `provincia`
-- 

CREATE TABLE `provincia` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- Volcar la base de datos para la tabla `provincia`
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
-- Estructura de tabla para la tabla `sexo`
-- 

CREATE TABLE `sexo` (
  `cod` int(11) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `sexo`
-- 

INSERT INTO `sexo` VALUES (1, 'Masculino');
INSERT INTO `sexo` VALUES (2, 'Femenino');
INSERT INTO `sexo` VALUES (3, 'No especifica');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipodocumento`
-- 

CREATE TABLE `tipodocumento` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(3) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tipodocumento`
-- 

INSERT INTO `tipodocumento` VALUES (1, 'DU');
INSERT INTO `tipodocumento` VALUES (2, 'LE');
INSERT INTO `tipodocumento` VALUES (3, 'LC');
INSERT INTO `tipodocumento` VALUES (4, 'CI');
INSERT INTO `tipodocumento` VALUES (5, 'ET');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipoescuela`
-- 

CREATE TABLE `tipoescuela` (
  `cod` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tipoescuela`
-- 

INSERT INTO `tipoescuela` VALUES (1, 'Estatal');
INSERT INTO `tipoescuela` VALUES (2, 'Privada');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `titulo`
-- 

CREATE TABLE `titulo` (
  `doc` int(11) NOT NULL,
  `titulo` int(11) NOT NULL,
  PRIMARY KEY (`doc`,`titulo`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `titulo`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `titulos`
-- 

CREATE TABLE `titulos` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `titulos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `turnos`
-- 

CREATE TABLE `turnos` (
  `cod` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `turnos`
-- 

INSERT INTO `turnos` VALUES (1, 'Mañana');
INSERT INTO `turnos` VALUES (2, 'Tarde');
INSERT INTO `turnos` VALUES (3, 'Vespertino');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `users`
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
-- Volcar la base de datos para la tabla `users`
-- 

INSERT INTO `users` VALUES (1, 'diego', 'diego', 0, 0);
INSERT INTO `users` VALUES (2, 'ariel', 'ariel', 0, 0);
INSERT INTO `users` VALUES (4, 'aaron', 'aaron', 0, 0);
INSERT INTO `users` VALUES (5, 'sebastian', 'sebastian', 0, 0);
INSERT INTO `users` VALUES (6, 'pupeishon', 'pupeishon', 0, 0);
INSERT INTO `users` VALUES (7, 'braian', 'braian', 0, 0);
INSERT INTO `users` VALUES (8, 'alan', 'alan', 0, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `vinculos`
-- 

CREATE TABLE `vinculos` (
  `cod` int(11) NOT NULL,
  `vinculo` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `vinculos`
-- 

INSERT INTO `vinculos` VALUES (1, 'Padre');
INSERT INTO `vinculos` VALUES (2, 'Madre');
INSERT INTO `vinculos` VALUES (3, 'Tutor');
INSERT INTO `vinculos` VALUES (4, 'Hermano/a');
INSERT INTO `vinculos` VALUES (5, 'Abuelo/a');
INSERT INTO `vinculos` VALUES (6, 'Tio/a');
INSERT INTO `vinculos` VALUES (7, 'Primo/a');

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `alumnos`
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
-- Filtros para la tabla `cargo`
-- 
ALTER TABLE `cargo`
  ADD CONSTRAINT `cargo_ibfk_1` FOREIGN KEY (`cargo`) REFERENCES `cargos` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `catedras`
-- 
ALTER TABLE `catedras`
  ADD CONSTRAINT `catedras_ibfk_13` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `catedras_ibfk_11` FOREIGN KEY (`materia`) REFERENCES `materias` (`cod`),
  ADD CONSTRAINT `catedras_ibfk_12` FOREIGN KEY (`docente`) REFERENCES `personal` (`doc`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `cursos`
-- 
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`preceptora`) REFERENCES `personal` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`turno`) REFERENCES `turnos` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_3` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `escuelas`
-- 
ALTER TABLE `escuelas`
  ADD CONSTRAINT `escuelas_ibfk_1` FOREIGN KEY (`jurisdiccion`) REFERENCES `localidades` (`cp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `escuelas_ibfk_2` FOREIGN KEY (`nivel`) REFERENCES `nivelescolar` (`cod`) ON UPDATE CASCADE,
  ADD CONSTRAINT `escuelas_ibfk_3` FOREIGN KEY (`tipo`) REFERENCES `tipoescuela` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `familiares`
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
-- Filtros para la tabla `instrecurrir`
-- 
ALTER TABLE `instrecurrir`
  ADD CONSTRAINT `instrecurrir_ibfk_1` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `localidades`
-- 
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`provincia`) REFERENCES `provincia` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `materias`
-- 
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`cod`);

-- 
-- Filtros para la tabla `medicos`
-- 
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`calle`) REFERENCES `calles` (`cod`) ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `personal`
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
-- Filtros para la tabla `titulo`
-- 
ALTER TABLE `titulo`
  ADD CONSTRAINT `titulo_ibfk_1` FOREIGN KEY (`titulo`) REFERENCES `titulos` (`cod`) ON UPDATE CASCADE;
-- 
-- Base de datos: `chat`
-- 
CREATE DATABASE `chat` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `chat`;

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `c_mensajes`
-- 

CREATE TABLE `c_mensajes` (
  `texto` text NOT NULL,
  `time` bigint(25) NOT NULL,
  `para` varchar(14) NOT NULL,
  `de` varchar(14) NOT NULL,
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `color` varchar(7) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `c_mensajes`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `c_usuarios`
-- 

CREATE TABLE `c_usuarios` (
  `nombre` varchar(20) NOT NULL,
  `cookie` int(12) NOT NULL,
  `time` bigint(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `c_usuarios`
-- 

INSERT INTO `c_usuarios` VALUES ('Diego', 891951, 1407853767);
