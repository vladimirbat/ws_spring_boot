-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema datos
--

CREATE DATABASE IF NOT EXISTS datos;
USE datos;

--
-- Definition of table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `ID` int(11) NOT NULL auto_increment,
  `NOMBRE` varchar(40) default NULL,
  `TELEFONO` varchar(15) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` (`ID`,`NOMBRE`,`TELEFONO`) VALUES 
 (1,'Vicente','648301806'),
 (2,'Antonio','648303579'),
 (3,'Toni','648305352'),
 (4,'Javi','648307125'),
 (5,'Daniel','648308898'),
 (6,'Luis','648310671'),
 (7,'Alicia','648312444'),
 (8,'Marta','648314216'),
 (9,'Rocio','648315989'),
 (10,'Raquel','648317762'),
 (11,'Lucas','648319535'),
 (12,'Inmaculada','648321308'),
 (13,'oscar','648323081'),
 (14,'Gabriel','648324854'),
 (15,'Manuel','648326627'),
 (16,'Diego','648328400'),
 (17,'Xavi','648330172'),
 (18,'Angel','648331945'),
 (19,'Enrique','648333718'),
 (20,'Iñaki','648339037'),
 (21,'pepe','648342583'),
 (22,'Pepe','648344356'),
 (23,'alvaro','648346128'),
 (24,'Felipe','648347901'),
 (25,'paco,paquito','648360312'),
 (26,'jojo','648397542'),
 (27,'jaja','648454275'),
 (28,'Eduardo','648477322'),
 (29,'Sergio','648654611'),
 (30,'Lidia','648831900'),
 (31,'Lidia2','648833673'),
 (32,'Anxo','649009189'),
 (33,'Juan Fco','649186478'),
 (34,'pablo','649363767'),
 (35,'juanito','649480778'),
 (36,'Yolanda','649541056'),
 (37,'toni','649718345'),
 (38,'Alberto','649895634'),
 (39,'Andres','650072923'),
 (40,'MARIA','650250212'),
 (41,'Diego','650427501'),
 (42,'Mónica','650782079'),
 (43,'Vladimir','651313946'),
 (44,'Lorenzo','654072563'),
 (45,'JOSE','654856181'),
 (46,'Kiko','656178756'),
 (47,'pepe','658148437'),
 (48,'Pepito','662919548');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;


--
-- Definition of table `calculadora`
--

DROP TABLE IF EXISTS `calculadora`;
CREATE TABLE `calculadora` (
  `t` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `metodo` varchar(20) NOT NULL,
  `operacion` varchar(30) NOT NULL,
  PRIMARY KEY  (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calculadora`
--

/*!40000 ALTER TABLE `calculadora` DISABLE KEYS */;
INSERT INTO `calculadora` (`t`,`metodo`,`operacion`) VALUES 
 ('2010-04-26 16:52:46','calcular','*'),
 ('2010-04-26 16:54:13','calcular','+'),
 ('2010-04-26 16:54:21','calcular','+'),
 ('2010-04-26 16:54:29','calcular','*'),
 ('2010-04-26 16:54:35','calcular','+'),
 ('2010-04-26 16:55:02','calcular','+'),
 ('2010-04-26 16:55:25','calcular','+'),
 ('2010-04-26 16:55:30','calcular','-'),
 ('2010-04-26 16:55:58','calcular','+'),
 ('2010-04-26 16:56:39','calcular','+'),
 ('2010-04-26 16:57:55','calcular','35.0 / 7.0'),
 ('2010-04-26 16:58:14','calcular','4.0 + 4.0'),
 ('2010-04-26 16:58:53','calcular','123.4 + 456.9'),
 ('2010-04-26 17:00:36','calcular','1.0 / 2.4'),
 ('2010-04-26 17:02:05','calcular','/'),
 ('2010-04-26 17:02:31','calcular','*'),
 ('2010-04-26 17:03:58','calcular','25.0 * 6.0'),
 ('2010-04-26 17:04:36','calcular','4.0 + 5.0'),
 ('2010-04-26 17:04:55','calcular','125.0 + 325.0'),
 ('2010-04-26 17:05:30','calcular','.2 / 2.4'),
 ('2010-04-26 17:06:16','calcular','5.0 * 12.0'),
 ('2010-04-26 17:06:51','calcular','33.0 * 1.0'),
 ('2010-04-26 17:06:56','calcular','23.7 * 4546.0'),
 ('2010-04-26 17:07:04','calcular','+'),
 ('2010-04-26 17:07:38','calcular','*'),
 ('2010-04-26 17:07:55','calcular','35.0 * 8.0'),
 ('2010-04-26 17:08:55','calcular','*'),
 ('2010-04-26 17:09:05','calcular','2.0 * 2.0'),
 ('2010-04-26 17:09:26','calcular','+'),
 ('2010-04-26 17:09:40','calcular','454652135487845.0 * 2.0'),
 ('2010-04-27 09:03:49','calcular','5.3 + 2.2'),
 ('2010-04-27 09:09:25','calcular','1.2 / 6.2'),
 ('2010-04-27 09:11:08','calcular','1.2 / 1.9'),
 ('2010-04-27 09:12:38','calcular','1.2 / 6.6'),
 ('2010-04-27 09:15:37','calcular','2.1 * 3.2'),
 ('2010-04-27 09:16:04','calcular','1.2 - 5.2'),
 ('2010-04-27 09:17:36','calcular','8.3 * 5.2'),
 ('2010-04-27 09:17:41','calcular','1.3 / 2.4'),
 ('2010-04-27 09:26:43','calcular','5.3 + 4.6'),
 ('2010-04-27 09:27:57','calcular','5.3 / 2.4'),
 ('2010-04-27 09:30:59','calcular','1.1 + 2.6');
/*!40000 ALTER TABLE `calculadora` ENABLE KEYS */;


--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `DNI` int(10) unsigned NOT NULL,
  `Nombre` varchar(45) NOT NULL default '',
  `Apellidos` varchar(45) NOT NULL default '',
  `Saldo` double NOT NULL default '0',
  `ID_PROVINCIA` int(10) unsigned default '28',
  PRIMARY KEY  (`DNI`),
  KEY `ID_PROVINCIA` (`ID_PROVINCIA`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`ID_PROVINCIA`) REFERENCES `provincias` (`ID_PROVINCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`DNI`,`Nombre`,`Apellidos`,`Saldo`,`ID_PROVINCIA`) VALUES 
 (1,'Victor','Blasco',68,46),
 (2,'Alicia','González',838,8),
 (3,'Antonio','Garcia',1586,33),
 (4,'Javi','Sobrín',17,8),
 (5,'Daniel','Valiente',326,11),
 (6,'Luis','Garcia',2579,25),
 (7,'Fernando','Gonzalez',1917,25),
 (8,'Marta','Gomez',1837,11),
 (9,'Rocio','Fernadez',92,11),
 (10,'Raquel','Gómez',1927,11),
 (11,'Lucas','Ruiz',4098,46),
 (12,'Pepe','González Garcia',4746,25),
 (19,'Iñaki','Mendez',1437,6),
 (20,'Pedro','Rodriguez',2944,8),
 (23,'Emma','Nems',410,28),
 (43,'Luis','García',4853,28),
 (55,'Chicho','Terremoto',4615,28),
 (67,'Armando','Casitas',3517,28),
 (69,'Felix','Cruza',3739,15),
 (77,'rosa','rosa',2896,11),
 (87,'amparo','lopez',4513,28),
 (91,'Armando','Guerra Constante',0,28),
 (99,'Nacho','lorene',999999,28),
 (100,'Vladimir','Bataller',988,NULL),
 (103,'Vladimir','Bataller',1000,28),
 (105,'aaa','bbb',23,28),
 (111,'Bea','Rincón',141414,28),
 (112,'Nuevo ','Nuevo',1000,NULL),
 (113,'aaa','bbbb',34,13),
 (115,'Pepito','Grillo',90000,28),
 (120,'Sara','Goza Bastante',78963,28),
 (121,'Roberto','Sanchez ',1500,28),
 (123,'Raul','Fernandez',7005,0),
 (125,'pepe','flores',2346,28),
 (135,'Ramon','Sanz',844,13),
 (139,'Roberto','Sanchez ',1500,28),
 (141,'Llanos','Ibáñez',5000.5,28),
 (145,'perico','perez',-56564556,28),
 (146,'Roberto','Sanchez ',1500,28),
 (147,'Andres','null',1500,28),
 (149,'Nuevo ','Nuevo',1000,NULL),
 (151,'Carlos','Perez',274,28),
 (152,'javie','Pascualito',56569868,28),
 (159,'Machu','Pichu',2759,28),
 (165,'Roberto','Sanchez ',1500,28),
 (167,'Maria Jose','No me borres',4605,28),
 (170,'Paco','Jonnes',78956,28),
 (172,'Vladimir','Bataller',1000,28),
 (173,'Pepito','perez',1.1,13),
 (176,'Julio','Perea',11111,28),
 (177,'Oscar','Menendez',5555,28),
 (178,'Luis','Torres',2091,28),
 (181,'hoad','hola',1005,13),
 (182,'Vladimir','Bataller',1000,28),
 (184,'Bea','Rincón',5000,28),
 (188,'Palo','Largo',1642,28),
 (191,'Roberto','Sánchez Chacón',2000,28),
 (194,'Bea','Rincón',1000,28),
 (197,'Jesús','Gallego',1900,28),
 (200,'Llanos','Ibáñez',5000.5,28),
 (202,'Paquito','Ochoa',0,13),
 (207,'Marcos','Gutierrez',3835,28),
 (208,'Juanito','Valderrama',321,13),
 (209,'María','Martínez',33,28),
 (210,'Llanos','Ibañez',1000,13),
 (211,'Juan','Marin',1111,13),
 (212,'hola','hola hola',321,28),
 (218,'Maribel','Oz',1937,28),
 (219,'a','a',1000,NULL),
 (234,'Carlos','Ruiz Sanz',3356,28),
 (241,'Jose ','Mourinho',123131,28),
 (242,'Nuevo ','Nuevo',1000,NULL),
 (245,'Pepe','Leches',2,13),
 (250,'Vladimir','Bataller',1000,28),
 (252,'Adolfo','Izquierdo',1430000,13),
 (258,'Llanos ','Ibáñez ',50554,28),
 (260,'Vladimir','Bataller',1000,28),
 (265,'Carlos','Mad',325,13),
 (268,'Jesús','Gallego',1900,28),
 (270,'Roberto','Sanchez ',1500,28),
 (271,'Capitan','Fanega',7896,28),
 (274,'654564','564564',54654,13),
 (276,'Bea','Rincón',5000,28),
 (277,'Martín','López',333,13),
 (279,'Jesús','Gallego',1900,28),
 (280,'Miguel','Sánchez Sánchez',0,28),
 (283,'jorge','Rodriguez',274,28),
 (308,'Roberto','Sanchez ',1500,28),
 (309,'Vladimir','Bataller',1000,28),
 (314,'Llanos','Ibáñez',5000.5,28),
 (319,'Jesús','Gallego',1900,28),
 (322,'Pepe','Garcia',1157,28),
 (323,'rosa','rosa',2511,39),
 (324,'Jesús','Gallego',1900,28),
 (331,'Bea','Rincón',5000,28),
 (332,'sfd','asdf',555,28),
 (335,'Torcuato','Martinez',870,28),
 (337,'Roberto','Sanchez ',1500,28),
 (339,'Bea','Rincón',5000,28),
 (340,'Alfonso','Franco',7777,28),
 (350,'Nuevo ','Nuevo',1000,NULL),
 (388,'Vladimir 30','Gómez',1111,28),
 (393,'Vladimir','Bataller',1000,28),
 (396,'Llanos ','Pérez',5000,13),
 (407,'Luis','Arias',1300,28),
 (432,'Pepe','Garcia',4082,28),
 (439,'Vladimir','Bataller',1000,28),
 (447,'Esther','Colero',643,28),
 (448,'Elena','Nito',2877,28),
 (451,'Alfonso','Franco',7777,28),
 (452,'Alfonso','Franco',7777,28),
 (454,'Benji','Price',2715,28),
 (456,'David','Santeodoro Camisón',2140,28),
 (458,'Antonio','Martín',4263,28),
 (466,'Martín','Blasco',1211,28),
 (494,'Antonio','Romero',4384,28),
 (495,'Pepito2','Grillo',90000,28),
 (511,'Fco. Javier','Sevillano',527,NULL),
 (529,'Hector','GArcía',964,28),
 (540,'javier','tontas',1678,28),
 (543,'Juan','Lopez',2067,28),
 (550,'Pepito','Perez',818,28),
 (551,'Antoñito','Antúnez',3118,28),
 (552,'Juanito','Juarez',3137,28),
 (560,'Susana','De Jesus',3358,28),
 (561,'David','Santeodoro Camisón',496,28),
 (564,'Antonio Manuel','Pozuelo Arenas',249,13),
 (565,'Carlos','Madrigal',912,13),
 (566,'Jose Luis','Ortega',795,13),
 (567,'Ruben','Simarro',668,13),
 (568,'Roberto','Mancebo',246,13),
 (570,'Rubén','Canal Fernández',4168,13),
 (571,'Adolfo','Izquierdo',556,13),
 (572,'Fco Javier','Garrido',1000000,13),
 (573,'Eva','Moreno',447,13),
 (574,'Fco. Javier','Sevillano',970,13),
 (583,'Maria Jose','La vane',4133,28),
 (587,'Pepe','Garcia',3916,28),
 (588,'Julian','Gomez',3378,28),
 (595,'Esther','Colero',4697,28),
 (601,'Pepe','Garcia',681,28),
 (613,'Pablo','Marquez',2892,28),
 (626,'Tom','Baker',448,28),
 (643,'Samuel','Tomitío',2515,28),
 (656,'Angel','Garzia',143,28),
 (666,'maria','lopez',583,28),
 (694,'Carlos','Ruiz',173,28),
 (698,'Juanito','Garcia',3993,28),
 (703,'Ines','Román',4485,28),
 (704,'Roberto','Mancebo',593,NULL),
 (713,'Edmundo','Dantes',2484,28),
 (715,'Pepe','Fernandez',2324,28),
 (716,'Toni','Gol',4319,28),
 (718,'Margarita','Fernandez',908,28),
 (722,'Ana','Forteza',2231,28),
 (729,'Pedro','Puerta',771,28),
 (730,'José Luis','Ruiz',4102,28),
 (732,'Antonio','Romero',177,28),
 (734,'Raul','Sanchez',2172,28),
 (744,'David','Santeodoro Camisón',3624,28),
 (745,'Roberto','Mancebo',593,NULL),
 (761,'Hommer','Simpsom',4539,28),
 (769,'pepe','perez',4504,28),
 (773,'Marta','null',78956,28),
 (778,'sara','sara',2445,28),
 (784,'javie','Pascualifsds',2840,28),
 (786,'José','Ruiz',2566,28),
 (788,'amparo','lopez',672,28),
 (793,'Dani','Garcia',3221,28),
 (794,'saritisima','aa',737,28),
 (797,'Edmundo','Dantes',4094,28),
 (815,'Vicente','Martorell',719,28),
 (819,'Carlton','Banks',2351,28),
 (824,'Carlos','Madrigal',21329321,13),
 (828,'sara','galan ',3320,28),
 (831,'Igor','Dito',4167,28),
 (835,'Raul','Sevilla',108,28),
 (843,'Julio','Marco',3864,28),
 (853,'Antonio','Temprano',3571,28),
 (854,'Marcos','Hernandez',1081,28),
 (863,'perico','los palotes',2337,28),
 (870,'perico','palotes',1140,28),
 (890,'Alicuencamo','Gamusino',2511,28),
 (911,'Juanma','Pamundi',4827,28),
 (922,'Ramón','Rodríguez',3300,28),
 (925,'Dulce Maria','Sanz',789,28),
 (930,'Marta','Tirado',784512,28),
 (932,'Aitor','Tillas',909,28),
 (937,'Fernado','Ramirez',717,28),
 (949,'javie','Pascualifsds',4447,28),
 (970,'Abraham','la Puerta ',2897,28),
 (974,'Juanito','Vera',3929,28),
 (978,'Eduardo','Warner',3463,28),
 (983,'Alejandro','Medario',1350,28),
 (984,'Daniel','Gomez',2490,28),
 (993,'Gema','Garcia Martín',3644,28),
 (996,'Jesús','Gallego',1900,28),
 (997,'Ana','López',3342,28),
 (999,'Rosa','Escorial',2529,28);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
CREATE TABLE `cuentas` (
  `ID_CUENTA` int(10) unsigned NOT NULL auto_increment,
  `SALDO` double NOT NULL default '100',
  PRIMARY KEY  USING BTREE (`ID_CUENTA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuentas`
--

/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` (`ID_CUENTA`,`SALDO`) VALUES 
 (1,100),
 (2,0),
 (3,300),
 (4,400),
 (5,500),
 (6,600),
 (7,700),
 (8,800),
 (9,900),
 (10,1000);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;


--
-- Definition of table `cuentas_clientes`
--

DROP TABLE IF EXISTS `cuentas_clientes`;
CREATE TABLE `cuentas_clientes` (
  `dni` int(11) NOT NULL,
  `ID_CUENTA` int(11) NOT NULL,
  PRIMARY KEY  (`dni`,`ID_CUENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuentas_clientes`
--

/*!40000 ALTER TABLE `cuentas_clientes` DISABLE KEYS */;
INSERT INTO `cuentas_clientes` (`dni`,`ID_CUENTA`) VALUES 
 (1,1),
 (1,6),
 (1,7),
 (1,8),
 (1,9),
 (1,10),
 (2,2),
 (3,3),
 (4,4),
 (5,5),
 (10,1);
/*!40000 ALTER TABLE `cuentas_clientes` ENABLE KEYS */;


--
-- Definition of table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
  `ID_PROVINCIA` int(10) unsigned NOT NULL auto_increment,
  `PROVINCIA` varchar(45) NOT NULL,
  PRIMARY KEY  (`ID_PROVINCIA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincias`
--

/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` (`ID_PROVINCIA`,`PROVINCIA`) VALUES 
 (0,'(Sin provincia)'),
 (6,'Badajoz'),
 (8,'Barcelona'),
 (11,'Cádiz'),
 (13,'Ciudad Real'),
 (15,'A Coruña'),
 (25,'Lleida'),
 (28,'Madrid'),
 (33,'Asturias'),
 (39,'Cantabria'),
 (46,'Valencia'),
 (48,'Vizcaya'),
 (50,'Zaragoza');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;


--
-- Definition of table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE `tarjetas` (
  `NUM_TARJETA` int(10) unsigned NOT NULL auto_increment,
  `TIPO` varchar(45) NOT NULL,
  `DNI_TITULAR` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`NUM_TARJETA`),
  KEY `FK_TARJETAS_CLIENTES` (`DNI_TITULAR`),
  CONSTRAINT `FK_TARJETAS_CLIENTES` FOREIGN KEY (`DNI_TITULAR`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarjetas`
--

/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` (`NUM_TARJETA`,`TIPO`,`DNI_TITULAR`) VALUES 
 (1,'Credito',1),
 (2,'Debito',1),
 (3,'Credito',2),
 (4,'Visa oro',2);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;


--
-- Definition of table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
CREATE TABLE `telefonos` (
  `DNI` int(10) unsigned NOT NULL,
  `Telefono` varchar(15) NOT NULL default '',
  `Descripcion` varchar(45) NOT NULL default '',
  PRIMARY KEY  USING BTREE (`Telefono`),
  KEY `DNI` (`DNI`),
  CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `clientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefonos`
--

/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` (`DNI`,`Telefono`,`Descripcion`) VALUES 
 (10,'121816075','Movil'),
 (3,'123','321'),
 (5,'123321123','Casa'),
 (3,'123456','tlf1'),
 (11,'123456789','casa'),
 (7,'1234567890','Casa'),
 (3,'123654789','movil'),
 (3,'132','365'),
 (8,'141176345','Casa'),
 (11,'142346449','Casa'),
 (4,'237230761','Movil'),
 (5,'268152899','Movil'),
 (9,'325223565','Casa'),
 (4,'328572579','Movil'),
 (3,'330490735','Movil'),
 (6,'333444555','Casa'),
 (5,'343453636','Movil'),
 (3,'344123','movil'),
 (10,'345345356','Casa'),
 (1,'349971789','Movil'),
 (8,'352028919','Movil'),
 (3,'383548460','Movil'),
 (7,'403188077','Movil'),
 (4,'403895534','Casa'),
 (2,'409143455','Movil'),
 (10,'4142434445','Casa'),
 (10,'436464634','Casa'),
 (10,'453747439','Casa'),
 (10,'463463644','Casa'),
 (9,'468437549','Movil'),
 (10,'520683391','Movil'),
 (6,'534645792','Movil'),
 (3,'55555444','casa'),
 (4,'611249645','Casa'),
 (1,'616548473','Movil'),
 (6,'624748487','Movil'),
 (2,'625656544','Movil'),
 (4,'628384643','Casa'),
 (3,'636362626','Movil Trabajo'),
 (2,'65551234','Movil'),
 (3,'665646436','Movil'),
 (3,'666664444555','adad'),
 (3,'677777444','Movil trabajo'),
 (3,'685958224','Tipo Listo'),
 (3,'696814543','movil de empresa'),
 (6,'69696969','Movil'),
 (11,'754654533','casa'),
 (1,'768019724','Movil'),
 (7,'783412551','Movil'),
 (11,'799574940','Movil'),
 (11,'804227998','Movil'),
 (9,'827182282','Movil'),
 (7,'871052444','Movil'),
 (2,'890093377','Movil'),
 (5,'905999466','Movil'),
 (1,'915274587','Casa'),
 (3,'918478474','Casa'),
 (3,'926555444','Fijo casa'),
 (3,'9283903870','Casa'),
 (9,'93186581','Casa'),
 (8,'9338021139','Casa'),
 (6,'9340838723','Casa'),
 (4,'934343434','Trabajo'),
 (7,'9383734915','Casa'),
 (2,'963254553','Casa'),
 (4,'9647024017','Casa'),
 (5,'966464633','Casa'),
 (2,'9749790143','Casa'),
 (8,'975674889','Movil'),
 (5,'9861911580','Casa'),
 (3,'987654321','movil2'),
 (1,'9881560815','Casa'),
 (11,'9920912108','Casa'),
 (10,'9977725076','Casa'),
 (3,'999999999','movil raro');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;


--
-- Definition of table `traductor`
--

DROP TABLE IF EXISTS `traductor`;
CREATE TABLE `traductor` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ingles` varchar(150) NOT NULL,
  `espanol` varchar(150) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traductor`
--

/*!40000 ALTER TABLE `traductor` DISABLE KEYS */;
INSERT INTO `traductor` (`id`,`ingles`,`espanol`) VALUES 
 (1,'alligator','caiman'),
 (2,'cat','gato'),
 (3,'dog','perro'),
 (4,'bear','oso'),
 (5,'bird','pajaro'),
 (6,'cow','vaca'),
 (7,'donkey','burro'),
 (8,'fox','zorro'),
 (9,'frog','rana'),
 (10,'goat','cabra'),
 (11,'lizard','lagartija'),
 (12,'monkey','mono'),
 (13,'rabbit','conejo'),
 (14,'rat','rata'),
 (15,'snake','serpiente'),
 (16,'tiger','tigre'),
 (17,'bison','bisonte'),
 (18,'dolphin','delfin'),
 (19,'gorilla','gorila'),
 (20,'ox','buey'),
 (21,'panther ','pantera'),
 (22,'penguin','pingüino'),
 (23,'shark','tiburon'),
 (24,'toad','sapo'),
 (25,'whale','ballena'),
 (26,'ewe','oveja'),
 (27,'ship','oveja'),
 (28,'jellyfish','medusa'),
 (29,'swordfish','pez espada'),
 (30,'house','casa');
/*!40000 ALTER TABLE `traductor` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
