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
-- Dumping data for table `barrios`
--

LOCK TABLES `barrios` WRITE;
/*!40000 ALTER TABLE `barrios` DISABLE KEYS */;
INSERT INTO `barrios` VALUES (1,'9 DE JULIO'),(2,'ALBERDI'),(3,'ALBIZOLA'),(4,'ARIEL DEL PLATA'),(5,'BALNEARIO'),(6,'Villanueva'),(7,'CATEMA'),(8,'CENTRO'),(9,'DALLERA'),(10,'DEL PINO'),(11,'DON FRANCISCO'),(12,'DON MANUEL'),(13,'FERRERO'),(14,'HEROES DE MALVNAS I'),(15,'HEROES DE MALVINAS II'),(16,'ISLAS'),(17,'LA ARGENTINA'),(18,'LA ESPERANZA'),(19,'LA JOSEFA'),(20,'LAS ACACIAS'),(21,'LAS CAMPANAS'),(22,'LAS PRADERAS'),(23,'LOS PIONEROS'),(24,'LUBO'),(25,'OTAMENDI'),(26,'PERDRIEL'),(27,'RIO LUJAN'),(28,'ROMANO'),(29,'RURAL'),(30,'SAN CAYETANO'),(31,'SAN FELIPE'),(32,'SAN JACINTO'),(33,'SAN LUCIANO'),(34,'SANTA FLORENTINA'),(35,'SANTA LUCIA'),(36,'SARMIENTO'),(37,'SIDERCA'),(38,'TABLITAS'),(39,'TALITAS'),(40,'URQUIZA'),(41,'VITRAMU I'),(42,'VITRAMU II'),(43,'EL DESTINO'),(44,'LOS NOGALES'),(45,'GENERAL SAN MARTIN'),(46,'NO ES DE CAMPANA'),(47,'NUEVO DALMINE'),(48,'NO INDICADO'),(49,'LA LUCILA'),(50,'DIGNIDAD');
/*!40000 ALTER TABLE `barrios` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `calles`
--

LOCK TABLES `calles` WRITE;
/*!40000 ALTER TABLE `calles` DISABLE KEYS */;
INSERT INTO `calles` VALUES (1,'2 DE ABRIL'),(2,'25 DE MAYO'),(3,'26 DE NOVIEMBRE'),(4,'9 DE JULIO'),(5,'AGUIAR'),(6,'AHUMADA'),(7,'ALBERDI'),(8,'ALBERTI'),(9,'ALBO LUIS'),(10,'ALEM'),(11,'ALFERI ROBERTO'),(12,'ALIGHIERI'),(13,'ALSINA  (PASAJE)  INT. 4'),(14,'ALVEAR'),(15,'AMEGHINO'),(16,'ANDRES DEL PINO'),(17,'ANGELET'),(18,'ANTARTIDA ARGENTINA'),(19,'ARENALES'),(20,'ARENAZA'),(21,'ARGUI'),(22,'ARMESTO'),(23,'ARRIBE'),(24,'ASCASUBI'),(25,'ASTELARRA'),(26,'AYOS'),(27,'BALBIN'),(28,'BALCARCE'),(29,'BALDRICH'),(30,'BALOSSINO ABEL'),(31,'BARCA'),(32,'BARLARO'),(33,'BARLETTA NICOLAS'),(34,'BARLETTA SAVERIO'),(35,'BARNETCHE'),(36,'BARRIOLA'),(37,'BARTHEBORDE'),(38,'BAYLEY'),(39,'BECERRA'),(40,'BEGUE'),(41,'BEHOCARAY'),(42,'BELELLI'),(43,'BELGRANO'),(44,'BELLOMO'),(45,'BELTRAME'),(46,'BELTRAN'),(47,'BENTANCOURT PLACIDO'),(48,'BENTANCOURT TELLESFORO'),(49,'BERGAMO'),(50,'BERNATENE'),(51,'BERNI'),(52,'BERON HONORIO'),(53,'BERTO'),(54,'BERTOLINI'),(55,'BERUTI'),(56,'BESASSO'),(57,'BIDEGAIN'),(58,'BLANCO'),(59,'BOLIVIA'),(60,'BOLZAN'),(61,'BOMBEROS VOLUNTARIOS'),(62,'BRAVO'),(63,'BREGLIA'),(64,'BRID'),(65,'BROWN'),(66,'BRUNI'),(67,'BUENOS AIRES'),(68,'BUONARROTTI'),(69,'BURGOS'),(70,'BUSSO DR. JOSE'),(71,'BUSSO JORDAN'),(72,'BUTTLER'),(73,'CABRERA SALVADOR'),(74,'CACERES'),(75,'CALLE S/N'),(76,'CAMEZANA'),(77,'CAMINO SEC. RED PROVL.014-02'),(78,'CANAL ALEM'),(79,'CANAL IRIGOYEN'),(80,'CANDIDO CABRERA'),(81,'CAPILLA DEL SE'),(82,'CARCOBA'),(83,'CARHUE'),(84,'CARLOS PELLEGRINI'),(85,'CARMONA'),(86,'CAROSSA'),(87,'CARRETO'),(88,'CASAUX'),(89,'CASSUSA PEDRO'),(90,'CASTA'),(91,'CASTA'),(92,'CASTELLI'),(93,'CASTILLA'),(94,'CASTRO'),(95,'CATAMARCA'),(96,'CAVALLI'),(97,'CE'),(98,'CHACABUCO'),(99,'CHACO'),(100,'CHAPUIS CLAUDIO'),(101,'CHAPUIS LUIS'),(102,'CHAPUIS SUSANA'),(103,'CHICLANA'),(104,'CHIFFLET'),(105,'CHILAVERT'),(106,'CHILE'),(107,'CHUBUT'),(108,'CHURRINCHE'),(109,'CINTAS'),(110,'COLECTORA NORTE RUTA NAC. N'),(111,'COLECTORA SUR RUTA NAC. N'),(112,'COLETTA ANTONIO'),(113,'COLETTA CASILDO'),(114,'COLETTA JOSE'),(115,'COLOMBIA'),(116,'COLON'),(117,'COLTELLI'),(118,'COMBATIENTES DE MALVINAS'),(119,'COMELLI'),(120,'CONTI'),(121,'CORDERO'),(122,'CORDEU ANGEL'),(123,'CORDEU MANUEL'),(124,'CORDOBA'),(125,'CORRIENTES'),(126,'COSTA  LUIS'),(127,'COSTA RICA'),(128,'CROCCIO'),(129,'CUBA'),(130,'CUELI'),(131,'DA VINCI'),(132,'DALLERA PABLO'),(133,'DALLERA PEDRO'),(134,'DASSO'),(135,'DE AMICIS'),(136,'DE DOMINICIS'),(137,'DE GARAY'),(138,'DE LA CARCOVA'),(139,'DE LA PE'),(140,'DE LA TORRE'),(141,'DE LOS INMIGRANTES'),(142,'DE LOS TRABAJADORES'),(143,'DE PAOLI RUTHV*'),(144,'DE PAOLI SANTIAGO'),(145,'DE PEON'),(146,'DE PETO'),(147,'DEL CASTILLO'),(148,'DEL GRECO'),(149,'DELLEPIANE ANGEL'),(150,'DELLEPIANE INT. JUAN'),(151,'DELLEPIANE SANTIAGO'),(152,'DEMARCO OSVALDO'),(153,'DEMARCO VICENTE'),(154,'DEVOTO'),(155,'DI LUCA'),(156,'DOLCI'),(157,'DONIZETTI'),(158,'DORIA'),(159,'DORREGO'),(160,'DRAGONE'),(161,'DULCE'),(162,'ECHEVERRIA'),(163,'ECHEVERRIA JOSE MARIA'),(164,'ECHEVERRIA LORENZO'),(165,'ECUADOR'),(166,'EDISSON'),(167,'EL ALAZAN'),(168,'EL APERO'),(169,'EL ARRIERO'),(170,'EL BOYERO'),(171,'EL CEIBO'),(172,'EL FOGON'),(173,'EL GORRION'),(174,'EL JACARANDA'),(175,'EL LAZO'),(176,'EL OMBU'),(177,'EL PALENQUE'),(178,'EL PORTEZUELO'),(179,'EL POTRO'),(180,'EL QUINCHO'),(181,'EL RESERO'),(182,'EL SALVADOR'),(183,'EL TALA'),(184,'EL ZORZAL'),(185,'ENTRE RIOS'),(186,'ERRECART'),(187,'ESCOLA CAPT.'),(188,'ESQUIU'),(189,'ESTANISLAO DEL CAMPO'),(190,'ESTRADA'),(191,'ETCHALUZ'),(192,'FABRIS'),(193,'FADER'),(194,'FALUCHO'),(195,'FARELO'),(196,'FELIX FERNANDEZ'),(197,'FORLANI'),(198,'FORMOSA'),(199,'FRANCISCO FERNANDEZ'),(200,'FRANTIELLI'),(201,'FREMY'),(202,'FRENCH'),(203,'FUCHS'),(204,'FUMIERE'),(205,'GANDHI'),(206,'GARAY'),(207,'GARCIA'),(208,'GARIBALDI'),(209,'GATTI'),(210,'GAVAZZI'),(211,'GAYA'),(212,'GENOVA'),(213,'GENTA'),(214,'GIACHINO'),(215,'GIGENA'),(216,'GIL CASTRO'),(217,'GIL GOMEZ'),(218,'GIOBELLINI'),(219,'GISMUNDI'),(220,'GONZALEZ ELPIDIO'),(221,'GOUJON'),(222,'GRACIANI'),(223,'GRANADEROS'),(224,'GRASSI ANGEL'),(225,'GRASSI CONCEJAL LUIS'),(226,'GUANELLA'),(227,'GUATEMALA'),(228,'GUEMES'),(229,'GURREA'),(230,'HARRICHABALET'),(231,'HIPOLITO IRIGOYEN'),(232,'HONDURAS'),(233,'HOUSSAY'),(234,'HUERGO'),(235,'IBARRA'),(236,'IGLESIAS'),(237,'IGUAZU'),(238,'ILLARRAMENDI'),(239,'ILLIA'),(240,'INTERNO 1'),(241,'INTERNO 2'),(242,'INTERNO 3'),(243,'IRIART'),(244,'ISLAS MALVINAS'),(245,'ITALIA'),(246,'ITURRIAGA'),(247,'IZZETA'),(248,'JACINTO FERNANDEZ'),(249,'JACOB'),(250,'JACONET'),(251,'JEAN JAURES'),(252,'JOSE HERNANDEZ'),(253,'JOSE INGENIEROS'),(254,'JUAN XXIII'),(255,'JUJUY'),(256,'JUSTO'),(257,'KELLY'),(258,'KUPERMAN'),(259,'LA CALANDRIA'),(260,'LA CARRETA'),(261,'LA CUMBRECITA'),(262,'LA MADRINA'),(263,'LA PAMPA'),(264,'LA RIOJA'),(265,'LAGO ARGENTINO'),(266,'LAGUINGE ESTEBAN'),(267,'LAPLUME'),(268,'LAPRIDA'),(269,'LARRABURE'),(270,'LARRALDE'),(271,'LAS ACACIAS'),(272,'LAS ACHIRAS'),(273,'LAS AGUILAS'),(274,'LAS AMAPOLAS'),(275,'LAS AZALEAS'),(276,'LAS CALANDRIAS'),(277,'LAS CALENDULAS'),(278,'LAS DALIAS'),(279,'LAS GARDENIAS'),(280,'LAS GLICINAS'),(281,'LAS HERAS'),(282,'LAS HORTENCIAS'),(283,'LAS MARTINETAS'),(284,'LAS ORQUIDEAS'),(285,'LAS PETUNIAS'),(286,'LAS PRIMULAS'),(287,'LAS ROSAS'),(288,'LAS TIJERETAS'),(289,'LAS TORCAZAS'),(290,'LAS VERBENAS'),(291,'LAS VIOLETAS'),(292,'LAVALLE'),(293,'LAVEZZARI AV. FRANCISCO'),(294,'LAVEZZARI JUAN'),(295,'LEDESMA'),(296,'LELOIR'),(297,'LEPORE'),(298,'LEVALLE'),(299,'LINIERS'),(300,'LLAO LLAO'),(301,'LOPEZ PI'),(302,'LOPEZ Y PLANES'),(303,'LOS ABEDULES'),(304,'LOS ALAMOS'),(305,'LOS ARCES'),(306,'LOS AROMOS'),(307,'LOS CARDENALES'),(308,'LOS CARPINTEROS'),(309,'LOS CASTA'),(310,'LOS CHAJAS'),(311,'LOS COCOS'),(312,'LOS CONDORES'),(313,'LOS FLAMENCOS'),(314,'LOS GAUCHOS'),(315,'LOS HORNEROS'),(316,'LOS JACINTOS'),(317,'LOS JAZMINES'),(318,'LOS JILGUEROS'),(319,'LOS NOGALES'),(320,'LOS PARAISOS'),(321,'LOS PINOS'),(322,'LOS ROBLES'),(323,'LOS RUISE'),(324,'LOS SAUCES'),(325,'LOS TEROS'),(326,'LOS TULIPANES'),(327,'LOZANO DE OLIVERA'),(328,'LURASCHI'),(329,'M DE OLIVERA'),(330,'MACHINANDIARENA'),(331,'MAFFEIS'),(332,'MAGALDI AGUSTIN'),(333,'MAGARI'),(334,'MAGGIO'),(335,'MAIPU'),(336,'MANCICIDOR'),(337,'MANSILLA'),(338,'MARCELO T.DE ALVEAR'),(339,'MARCONI'),(340,'MARMOL'),(341,'MARTELLI'),(342,'MARTINEZ LUCIO'),(343,'MARTINOLI HERCULES'),(344,'MATHEU'),(345,'MATTI GUILLERMO'),(346,'MAUTONE JOSE MARIA'),(347,'MELGAR GERVASIO'),(348,'MELO JULIO ARMANDO'),(349,'MENDOZA'),(350,'MEXICO'),(351,'MIRACCA ALFREDO'),(352,'MISIONES'),(353,'MITRE'),(354,'MODARELLI PEDRO'),(355,'MOLINA MATIAS'),(356,'MOLLO'),(357,'MOLLO CAMILO'),(358,'MOLLO FRANCISCO'),(359,'MONSE'),(360,'MORENO'),(361,'MORENO PERITO'),(362,'MORIXE FRANCISCO'),(363,'MOSCONI'),(364,'MOYA PEDRO'),(365,'MOZO SADI'),(366,'NAMUNCURA'),(367,'NARDO JUAN'),(368,'NASH SANTIAGO'),(369,'NECOCHEA'),(370,'NEGRETE TOMAS EDGAR'),(371,'NEUQUEN'),(372,'NO INDICADO'),(373,'OCHOA FERNANDO'),(374,'OMAR PEDRO'),(375,'OTAMENDI ROMULO'),(376,'PADRE VICTORIO MARTINO'),(377,'PAGANI MIGUEL'),(378,'PALACIOS ALFREDO'),(379,'PALLET EMILIO'),(380,'PAMPARRANA BASILIO'),(381,'PARANA DE LAS PALMAS KM'),(382,'PARDELLAS RICARDO'),(383,'PASAJE 1'),(384,'PASAJE 2'),(385,'PASAJE EDISON'),(386,'PASO'),(387,'PASTEUR'),(388,'PECORENA'),(389,'PEDROZA HONORIO'),(390,'PELIET'),(391,'PEREZ LEDESMA MANUEL'),(392,'PERON'),(393,'PERRONE BARTOLOME'),(394,'PETTITI CARLOS'),(395,'PIEDRA BLANCA'),(396,'PONCE DE LEON'),(397,'PORTO AVELINO'),(398,'POSATTI JOSEFINA'),(399,'POSSE FRANCISCO'),(400,'POSSE MANUEL'),(401,'POTRERO DE LAS BURRAS'),(402,'PUCCINI'),(403,'PUERTO ARGENTINO'),(404,'PUEYRREDON'),(405,'PUJALET JUAN'),(406,'QUINQUELA MARTIN'),(407,'QUIROGA JUAN'),(408,'RAWSON'),(409,'REPETTO NICOLAS'),(410,'REYES LUCIANO'),(411,'RIGOLI'),(412,'RIGOLI  ANTONIO'),(413,'RIO CARABELAS'),(414,'RIO NEGRO'),(415,'RIO PARANA DE LAS PALMAS'),(416,'RIPPA FRANCISCO'),(417,'RIVADAVIA'),(418,'RIVES ERNESTO'),(419,'ROBLEDO MIGUEL'),(420,'ROCA GENERAL'),(421,'ROCCA AGUSTIN'),(422,'ROCCA ENRIQUE'),(423,'RODRIGUEZ JOSE MARIA'),(424,'RODRIGUEZ MARTIN'),(425,'ROJAS RICARDO'),(426,'ROMANO FELIPE'),(427,'ROSARIO'),(428,'ROSSINI'),(429,'ROSSITER CARLOS'),(430,'ROZA PADRE LUIS'),(431,'RUCCI GREGORIO'),(432,'RUTA NACIONAL 12'),(433,'RUTA NACIONAL 12 KM'),(434,'RUTA NACIONAL 9'),(435,'RUTA PROVINCIAL 4 RIO LUJAN'),(436,'RUTA PROVINCIAL 6'),(437,'SAAVEDRA'),(438,'SAAVEDRA ORFELIO'),(439,'SABATTINI AMADEO'),(440,'SAENZ PE'),(441,'SALK JONAS EDUARD'),(442,'SALMINI JULIO CELESTINO'),(443,'SALTA'),(444,'SAN JUAN'),(445,'SAN LORENZO'),(446,'SAN LUIS'),(447,'SAN MARTIN'),(448,'SANCHEZ JOSE MARIA'),(449,'SANTA CRUZ'),(450,'SANTA FE'),(451,'SANTA MARIA DE ORO'),(452,'SANTIAGO DEL ESTERO'),(453,'SAPORITI VICENTE'),(454,'SARDI NICOLAS'),(455,'SARMIENTO'),(456,'SARRATEA'),(457,'SAUBABER GERMAN'),(458,'SAUTON'),(459,'SAVIO GENERAL'),(460,'SCHINONI ANGEL'),(461,'SCHINONI JUAN'),(462,'SIERRA JOSE'),(463,'SIRI PEDRO'),(464,'SIVORI'),(465,'STORNI ALFONSINA'),(466,'SWEITZER'),(467,'TIERRA DEL FUEGO'),(468,'TOBAL IGNACIO'),(469,'TOMAS MURRAY'),(470,'TORRES ULISES'),(471,'TRENQUE LAUQUEN'),(472,'TRISTAN GONZALEZ'),(473,'TROFELI JOSE MARIA'),(474,'TUCUMAN'),(475,'UGARTE MENDIA'),(476,'URDANIZ FERMIN'),(477,'URQUIZA'),(478,'URREA'),(479,'URUGUAY'),(480,'URUGUAY Y SWITZER'),(481,'VELEZ SARFIELD'),(482,'VERDI'),(483,'VERDI PABLO'),(484,'VERDIER'),(485,'VIALE FRANCISCO'),(486,'VIALE MANUEL'),(487,'VIALE SANTIAGO'),(488,'VIAMONTE'),(489,'VIBOUD FILIBERTO'),(490,'VICENTE LOPEZ'),(491,'VIGALONDO JUSTO'),(492,'VIGNA JUAN'),(493,'VILLEGAS GENERAL'),(494,'VIÑAS CEFERINO'),(495,'VIOLA ALFREDO'),(496,'VIOLA FRANCISCO'),(497,'VIOLA PEDRO'),(498,'VIOLA RAFAEL'),(499,'WINTER PASAJE'),(500,'ZARATE BERNABELA'),(501,'ZAVALIA ANTONIO'),(502,'ZAVALLO ANTENOR F.');
/*!40000 ALTER TABLE `calles` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `condactividad`
--

LOCK TABLES `condactividad` WRITE;
/*!40000 ALTER TABLE `condactividad` DISABLE KEYS */;
INSERT INTO `condactividad` VALUES (1,'Trabajo Permanente'),(2,'Trabajo Temporario'),(3,'Changas/Jornalero'),(4,'No trabaja y busca'),(5,'Ama de Casa'),(6,'Estudiante'),(7,'Jubilado/Pensionado'),(8,'Rentista'),(9,'Discapacitado'),(10,'Otros');
/*!40000 ALTER TABLE `condactividad` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `condinscripcion`
--

LOCK TABLES `condinscripcion` WRITE;
/*!40000 ALTER TABLE `condinscripcion` DISABLE KEYS */;
INSERT INTO `condinscripcion` VALUES (1,'Repitente'),(2,'Reinscripto'),(3,'Ingresante'),(4,'Promovido'),(5,'En compensación'),(6,'Proveniente del ciclo lectivo anterior');
/*!40000 ALTER TABLE `condinscripcion` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'Lunes'),(2,'Martes'),(3,'Miércoles'),(4,'Jueves'),(5,'Viernes'),(6,'Sábado'),(7,'Domingo');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `escuelas`
--

LOCK TABLES `escuelas` WRITE;
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` VALUES (1,'E.E.S. N° 1',2804,2,1),(2,'E.E.S. N° 2',2804,2,1),(3,'E.E.S. N° 3',2804,2,1),(4,'E.E.S. N° 6',2804,2,1),(5,'E.E.S. N° 8',2804,2,1),(6,'E.E.S. N° 9',2804,2,1),(7,'E.E.S. N° 10',2804,2,1),(8,'E.E.S. N° 11',2804,2,1),(9,'E.E.S. N° 12',2804,2,1),(10,'E.E.S. N° 13',2804,2,1),(11,'E.E.S. N° 14',2804,2,1),(12,'E.E.S. N° 15',2804,2,1),(13,'E.E.S. N° 16',2804,2,1),(14,'E.E.S. N° 17',2804,2,1),(15,'E.E.S. N° 18',2804,2,1),(16,'E.E.S. N° 2010',2804,2,1),(17,'E.E.S. N° 3141',2804,2,1),(18,'E.E.S. N° 3181',2804,2,1),(19,'E.E.S. N° 3465',2804,2,2),(20,'E.E.S. N° 4147',2804,2,2),(21,'E.E.S. N° 4148',2804,2,2),(22,'E.E.S. N° 4374',2804,2,2),(23,'E.E.S. N° 5134',2804,2,2),(24,'E.E.S. N° 5772',2804,2,2),(25,'E.E.S. N° 7892',2804,2,2),(26,'E.E.M. N°1',2804,2,1),(27,'E.E.M N°2',2804,2,1),(28,'E.E.M. N°3',2804,2,1),(29,'E.E.M N°6',2804,2,1),(30,'E.E.M. N°7',2804,2,1),(31,'E.E.M N°41',2804,2,1),(32,'E.E.M. N°2070',2804,2,1),(33,'E.E.M N°3031',2804,2,1),(34,'E.E.M. N°3465',2804,2,2),(35,'E.E.M N°4147',2804,2,2),(36,'E.E.M. N°4148',2804,2,2),(37,'E.E.M N°4374',2804,2,2),(38,'E.E.M. N°5134',2804,2,2),(39,'E.E.M N°5772',2804,2,2),(40,'E.E.M. N°6062',2804,2,2),(41,'E.E. N°501',2804,2,1),(42,'E.E. N° 502',2804,2,1),(43,'E.E. N°5905',2804,2,2),(44,'E.E.S.A. N°1',2804,2,1),(45,'E.E.S.A. N°2',2804,2,1),(46,'E.E.S.T N°1',2804,2,1),(47,'E.S.B. N°1',2804,2,1),(48,'E.S.B. N°2',2804,2,1),(49,'E.S.B. N°3',2804,2,1),(50,'E.S.B. N°4',2804,2,1),(51,'E.S.B. N°5',2804,2,1),(52,'E.S.B. N°6',2804,2,1),(53,'E.S.B. N°7',2804,2,1),(54,'E.S.B. N°8',2804,2,1),(55,'E.S.B. N°9',2804,2,1),(56,'E.S.B. N°11',2804,2,1),(57,'E.S.B N°12',2804,2,1),(58,'E.S.B. N°14',2804,2,1),(59,'E.S.B. N°15',2804,2,1),(60,'E.S.B. N°16',2804,2,1),(61,'E.S.B N°18',2804,2,1),(62,'E.S.B. N°19',2804,2,1),(63,'E.S.B N°20',2804,2,1),(64,'E.S.B. N°21',2804,2,1),(65,'E.S.B N°22',2804,2,1),(66,'E.S.B. N°24',2804,2,1),(67,'E.S.B. N°2210',2804,2,1),(68,'E.S.B. N°7124',2804,2,2),(69,'E.S.B. N°7305',2804,2,2),(70,'E.P.B. N°1',2804,1,1),(71,'E.P.B. N°2',2804,1,1),(72,'E.P.B. N°3',2804,1,1),(73,'E.P.B. N°4',2804,1,1),(74,'E.P.B. N°5',2804,1,1),(75,'E.P.B. N°6',2804,1,1),(76,'E.P.B. N°7',2804,1,1),(77,'E.P.B. N°8',2804,1,1),(78,'E.P.B. N°9',2804,1,1),(79,'E.P.B. N°10',2804,1,1),(80,'E.P.B. N°11',2804,1,1),(82,'E.P.B. N°12',2804,1,1),(83,'E.P.B. N°13',2804,1,1),(84,'E.P.B. N°14',2804,1,1),(85,'E.P.B. N°15',2804,1,1),(86,'E.P.B. N°16',2804,1,1),(87,'E.P.B. N°17',2804,1,1),(88,'E.P.B. N°18',2804,1,1),(89,'E.P.B. N°19',2804,1,1),(90,'E.P.B. N°20',2804,1,1),(91,'E.P.B. N°21',2804,1,1),(92,'E.P.B. N°22',2804,1,1),(93,'E.P.B. N°23',2804,1,1),(94,'E.P.B. N°24',2804,1,1),(95,'E.P.B. N°25',2804,1,1),(96,'E.P.B. N°26',2804,1,1),(97,'E.P.B. N°27',2804,1,1),(98,'E.P.B. N°28',2804,1,1),(99,'E.P.B. N°29',2804,1,1),(100,'E.P.B. N°30',2804,1,1),(101,'E.P.B. Nº847',2804,1,2),(102,'E.P.B. Nº1206',2804,1,2),(103,'E.P.B. Nº2499',2804,1,2),(104,'E.P.B. Nº2506',2804,1,2),(105,'E.P.B. Nº3139',2804,1,2),(106,'E.P.B. Nº3954',2804,1,2),(107,'E.P.B. Nº5791',2804,1,2),(108,'E.P.B. Nº7324',2804,1,2);
/*!40000 ALTER TABLE `escuelas` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'Básico'),(2,'Electromecánica'),(3,'Química'),(4,'Electrónica'),(5,'Informática'),(6,'Adultos');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `estadodocumento`
--

LOCK TABLES `estadodocumento` WRITE;
/*!40000 ALTER TABLE `estadodocumento` DISABLE KEYS */;
INSERT INTO `estadodocumento` VALUES (1,'Bueno'),(2,'Malo'),(3,'En trámite'),(4,'No posee');
/*!40000 ALTER TABLE `estadodocumento` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `gremio`
--

LOCK TABLES `gremio` WRITE;
/*!40000 ALTER TABLE `gremio` DISABLE KEYS */;
INSERT INTO `gremio` VALUES (1,'SUTEBA'),(2,'UDOGBA'),(3,'FED'),(4,'');
/*!40000 ALTER TABLE `gremio` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1621,'Benavídez',3327,1),(1625,'Escobar',348,1),(1648,'Tigre',11,1),(1744,'Moreno',237,1),(2800,'Zárate',3487,1),(2804,'Campana',3489,1),(2806,'Lima',3487,1),(2812,'Exaltación De La Cruz',2322,1),(6700,'Luján',2323,1);
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `nivelescolar`
--

LOCK TABLES `nivelescolar` WRITE;
/*!40000 ALTER TABLE `nivelescolar` DISABLE KEYS */;
INSERT INTO `nivelescolar` VALUES (1,'Primario'),(2,'Secundario');
/*!40000 ALTER TABLE `nivelescolar` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `nivelinstruccion`
--

LOCK TABLES `nivelinstruccion` WRITE;
/*!40000 ALTER TABLE `nivelinstruccion` DISABLE KEYS */;
INSERT INTO `nivelinstruccion` VALUES (1,'Ninguno'),(2,'Primario Incompleto'),(3,'Primario Completo'),(4,'Secundario incompleto'),(5,'Secundario Completo'),(6,'Terciario Incompleto'),(7,'Terciario Completo'),(8,'Universitario Incompleto'),(9,'Universitario Completo'),(10,'Posgrado Incompleto'),(11,'Posgrado Completo'),(99,'Sin datos');
/*!40000 ALTER TABLE `nivelinstruccion` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (0,'Otros',''),(51,'Perú','Peruano/a'),(53,'Cuba','Cubano/a'),(54,'Argentina','Argentino/a'),(55,'Brasil','Brasilero/a'),(56,'Chile','Chileno/a'),(57,'Colombia','Colombiano/a'),(58,'Venezuela','Venezolano/a'),(591,'Bolivia','Boliviano/a'),(592,'Guyana','Guyanes'),(593,'Ecuador','Ecuatoriano/a'),(595,'Paraguay','Paraguayo/a'),(598,'Uruguay','Uruguayo/a');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires'),(2,'Capital Federal'),(3,'Catamarca'),(4,'Córdoba'),(5,'Corrientes '),(6,'Entre Ríos'),(7,'Jujuy '),(8,'La Rioja'),(9,'Mendoza'),(10,'Salta'),(11,'San Juan '),(12,'San Luis'),(13,'Santa Fe'),(14,'Santiago Del Estereo'),(15,'Tucumán '),(16,'Chaco'),(17,'Chubut'),(18,'Formosa'),(19,'La Pampa'),(20,'Misiones'),(21,'Neuquén'),(22,'Río Negro'),(23,'Santa Cruz'),(24,'Tierra Del Fuego');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino'),(2,'Femenino'),(3,'No especifica');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'DU'),(2,'LE'),(3,'LC'),(4,'CI'),(5,'ET');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `tipoescuela`
--

LOCK TABLES `tipoescuela` WRITE;
/*!40000 ALTER TABLE `tipoescuela` DISABLE KEYS */;
INSERT INTO `tipoescuela` VALUES (1,'Estatal'),(2,'Privada');
/*!40000 ALTER TABLE `tipoescuela` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'Mañana'),(2,'Tarde'),(3,'Vespertino');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-08  3:41:12
