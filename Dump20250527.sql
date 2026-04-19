-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: progetto_2024_2025
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anagrafica_persona`
--

DROP TABLE IF EXISTS `anagrafica_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anagrafica_persona` (
  `codice_fiscale` char(16) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `sesso` enum('M','F') NOT NULL,
  `data di nascita` date NOT NULL,
  `indirizzo` varchar(25) NOT NULL,
  `numero_di_telefono` varchar(25) NOT NULL,
  PRIMARY KEY (`codice_fiscale`),
  UNIQUE KEY `numero_di_telefono_UNIQUE` (`numero_di_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica_persona`
--

LOCK TABLES `anagrafica_persona` WRITE;
/*!40000 ALTER TABLE `anagrafica_persona` DISABLE KEYS */;
INSERT INTO `anagrafica_persona` VALUES ('p1','n1','c1','M','2023-10-29','i1','1'),('p2','Mario','Rossi','F','2000-01-06','i2','2'),('p3','n3','c3','M','2000-01-06','i3','3'),('p4','n4','c4','M','2000-01-06','i4','4');
/*!40000 ALTER TABLE `anagrafica_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `anni_medico_mario_rossi_almeno_100_visite`
--

DROP TABLE IF EXISTS `anni_medico_mario_rossi_almeno_100_visite`;
/*!50001 DROP VIEW IF EXISTS `anni_medico_mario_rossi_almeno_100_visite`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `anni_medico_mario_rossi_almeno_100_visite` AS SELECT 
 1 AS `year(vtm.data)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `anno_e_num_visite_maggior_num_visite_mario_rossi`
--

DROP TABLE IF EXISTS `anno_e_num_visite_maggior_num_visite_mario_rossi`;
/*!50001 DROP VIEW IF EXISTS `anno_e_num_visite_maggior_num_visite_mario_rossi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `anno_e_num_visite_maggior_num_visite_mario_rossi` AS SELECT 
 1 AS `year(vtm.data)`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf pazienti con almeno 2 vpr`
--

DROP TABLE IF EXISTS `cf pazienti con almeno 2 vpr`;
/*!50001 DROP VIEW IF EXISTS `cf pazienti con almeno 2 vpr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf pazienti con almeno 2 vpr` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf pazienti con almeno una rata non pagata`
--

DROP TABLE IF EXISTS `cf pazienti con almeno una rata non pagata`;
/*!50001 DROP VIEW IF EXISTS `cf pazienti con almeno una rata non pagata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf pazienti con almeno una rata non pagata` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_assistenti_maggior_numero_visite`
--

DROP TABLE IF EXISTS `cf_assistenti_maggior_numero_visite`;
/*!50001 DROP VIEW IF EXISTS `cf_assistenti_maggior_numero_visite`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_assistenti_maggior_numero_visite` AS SELECT 
 1 AS `assistente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_assistenti_maggior_numero_visite_ultimo_mese`
--

DROP TABLE IF EXISTS `cf_assistenti_maggior_numero_visite_ultimo_mese`;
/*!50001 DROP VIEW IF EXISTS `cf_assistenti_maggior_numero_visite_ultimo_mese`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_assistenti_maggior_numero_visite_ultimo_mese` AS SELECT 
 1 AS `assistente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi`
--

DROP TABLE IF EXISTS `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi`;
/*!50001 DROP VIEW IF EXISTS `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi` AS SELECT 
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_medici_maggior_numero_visite`
--

DROP TABLE IF EXISTS `cf_medici_maggior_numero_visite`;
/*!50001 DROP VIEW IF EXISTS `cf_medici_maggior_numero_visite`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_medici_maggior_numero_visite` AS SELECT 
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_nome_cognome_pazienti_piu_redditizi`
--

DROP TABLE IF EXISTS `cf_nome_cognome_pazienti_piu_redditizi`;
/*!50001 DROP VIEW IF EXISTS `cf_nome_cognome_pazienti_piu_redditizi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_nome_cognome_pazienti_piu_redditizi` AS SELECT 
 1 AS `codice_fiscale`,
 1 AS `nome`,
 1 AS `cognome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_pazienti_con_massimo_2_vpr`
--

DROP TABLE IF EXISTS `cf_pazienti_con_massimo_2_vpr`;
/*!50001 DROP VIEW IF EXISTS `cf_pazienti_con_massimo_2_vpr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_pazienti_con_massimo_2_vpr` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_pazienti_mai_spostato_una_visita`
--

DROP TABLE IF EXISTS `cf_pazienti_mai_spostato_una_visita`;
/*!50001 DROP VIEW IF EXISTS `cf_pazienti_mai_spostato_una_visita`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_pazienti_mai_spostato_una_visita` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_pazienti_minimo_1_vpr_e_nessuna_vpi`
--

DROP TABLE IF EXISTS `cf_pazienti_minimo_1_vpr_e_nessuna_vpi`;
/*!50001 DROP VIEW IF EXISTS `cf_pazienti_minimo_1_vpr_e_nessuna_vpi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_pazienti_minimo_1_vpr_e_nessuna_vpi` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_pazienti_piu_redditizi_media`
--

DROP TABLE IF EXISTS `cf_pazienti_piu_redditizi_media`;
/*!50001 DROP VIEW IF EXISTS `cf_pazienti_piu_redditizi_media`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_pazienti_piu_redditizi_media` AS SELECT 
 1 AS `codice_fiscale`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cf_pazienti_piu_visite_cancellate`
--

DROP TABLE IF EXISTS `cf_pazienti_piu_visite_cancellate`;
/*!50001 DROP VIEW IF EXISTS `cf_pazienti_piu_visite_cancellate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cf_pazienti_piu_visite_cancellate` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `costi_visite_pazienti`
--

DROP TABLE IF EXISTS `costi_visite_pazienti`;
/*!50001 DROP VIEW IF EXISTS `costi_visite_pazienti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `costi_visite_pazienti` AS SELECT 
 1 AS `paziente`,
 1 AS `costo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `diario_somministrazione_farmaco`
--

DROP TABLE IF EXISTS `diario_somministrazione_farmaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diario_somministrazione_farmaco` (
  `id_diario` int NOT NULL AUTO_INCREMENT,
  `terapia` int NOT NULL,
  `paziente` char(16) NOT NULL,
  `data_ora` datetime NOT NULL,
  `eseguito` tinyint NOT NULL,
  PRIMARY KEY (`id_diario`),
  KEY `paziente_idx` (`paziente`),
  KEY `terapia_farmaco_paziente_dsf_idx` (`terapia`),
  CONSTRAINT `paziente_ds` FOREIGN KEY (`paziente`) REFERENCES `anagrafica_persona` (`codice_fiscale`),
  CONSTRAINT `terapia_farmaco_paziente_dsf` FOREIGN KEY (`terapia`) REFERENCES `terapia_farmaco_paziente` (`id_terapia_farmaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diario_somministrazione_farmaco`
--

LOCK TABLES `diario_somministrazione_farmaco` WRITE;
/*!40000 ALTER TABLE `diario_somministrazione_farmaco` DISABLE KEYS */;
/*!40000 ALTER TABLE `diario_somministrazione_farmaco` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `diario_somministrazione_farmaco_BEFORE_INSERT` BEFORE INSERT ON `diario_somministrazione_farmaco` FOR EACH ROW BEGIN
if not exists(select *
			  from visita_pianificata as vp
              where new.paziente=vp.paziente)
	then signal sqlstate '45000' set message_text='Il paziente non corrisponde';
end if;

if (new.eseguito = TRUE AND NOW() < NEW.data_ora)
THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non puoi eseguire una somministrazione prima dell\'orario previsto.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `diario_somministrazione_farmaco_BEFORE_UPDATE` BEFORE UPDATE ON `diario_somministrazione_farmaco` FOR EACH ROW BEGIN
if not exists(select *
			  from visita_pianificata as vp
              where new.paziente=vp.paziente)
	then signal sqlstate '45000' set message_text='Il paziente non corrisponde';
end if;
if (new.eseguito = TRUE AND NOW() < NEW.data_ora)
THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non puoi eseguire una somministrazione prima dell\'orario previsto.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dipendente`
--

DROP TABLE IF EXISTS `dipendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dipendente` (
  `persona` char(16) NOT NULL,
  `ruolo` varchar(20) NOT NULL,
  PRIMARY KEY (`persona`),
  CONSTRAINT `dipendente` FOREIGN KEY (`persona`) REFERENCES `anagrafica_persona` (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dipendente`
--

LOCK TABLES `dipendente` WRITE;
/*!40000 ALTER TABLE `dipendente` DISABLE KEYS */;
INSERT INTO `dipendente` VALUES ('p2','Medico'),('p4','Medico');
/*!40000 ALTER TABLE `dipendente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `dipendente_BEFORE_INSERT` BEFORE INSERT ON `dipendente` FOR EACH ROW BEGIN
if (new.ruolo != "Medico" and new.ruolo != "Assistente") then
	signal sqlstate '45000' set message_text='Scegli tra Medico e Assistente';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `dipendente_BEFORE_UPDATE` BEFORE UPDATE ON `dipendente` FOR EACH ROW BEGIN
if new.ruolo != "Medico" and new.ruolo != "Assistente" then
	signal sqlstate '45000' set message_text='Scegli tra Medico e Assistente';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `dottore_visitato_paziente_2_volte_la_stessa_settimana`
--

DROP TABLE IF EXISTS `dottore_visitato_paziente_2_volte_la_stessa_settimana`;
/*!50001 DROP VIEW IF EXISTS `dottore_visitato_paziente_2_volte_la_stessa_settimana`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dottore_visitato_paziente_2_volte_la_stessa_settimana` AS SELECT 
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `farmaco`
--

DROP TABLE IF EXISTS `farmaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmaco` (
  `id_farmaco` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`id_farmaco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmaco`
--

LOCK TABLES `farmaco` WRITE;
/*!40000 ALTER TABLE `farmaco` DISABLE KEYS */;
/*!40000 ALTER TABLE `farmaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `giorni_con_meno_vpi`
--

DROP TABLE IF EXISTS `giorni_con_meno_vpi`;
/*!50001 DROP VIEW IF EXISTS `giorni_con_meno_vpi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `giorni_con_meno_vpi` AS SELECT 
 1 AS `data`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ha_specializzazione`
--

DROP TABLE IF EXISTS `ha_specializzazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ha_specializzazione` (
  `dipendente` char(16) NOT NULL,
  `specializzazione` int NOT NULL,
  PRIMARY KEY (`dipendente`,`specializzazione`),
  KEY `specializzazione_hs_idx` (`specializzazione`),
  CONSTRAINT `dipendente_` FOREIGN KEY (`dipendente`) REFERENCES `dipendente` (`persona`),
  CONSTRAINT `specializzazione_hs` FOREIGN KEY (`specializzazione`) REFERENCES `specializzazione` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ha_specializzazione`
--

LOCK TABLES `ha_specializzazione` WRITE;
/*!40000 ALTER TABLE `ha_specializzazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `ha_specializzazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interventi_mese`
--

DROP TABLE IF EXISTS `interventi_mese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interventi_mese` (
  `id` int NOT NULL AUTO_INCREMENT,
  `percentuale_da_saldare` int NOT NULL,
  `somma_interventi` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interventi_mese`
--

LOCK TABLES `interventi_mese` WRITE;
/*!40000 ALTER TABLE `interventi_mese` DISABLE KEYS */;
/*!40000 ALTER TABLE `interventi_mese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervento`
--

DROP TABLE IF EXISTS `intervento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervento` (
  `id_intervento` int NOT NULL AUTO_INCREMENT,
  `costo` double NOT NULL,
  `tipo_intervento` varchar(25) NOT NULL,
  `visita_preliminare` int NOT NULL,
  PRIMARY KEY (`id_intervento`),
  KEY `tipo_intervento_idx` (`tipo_intervento`),
  KEY `visita_preliminare_intervento_idx` (`visita_preliminare`),
  CONSTRAINT `tipo_intervento` FOREIGN KEY (`tipo_intervento`) REFERENCES `tipo_intervento` (`nome`),
  CONSTRAINT `visita_preliminare_intervento` FOREIGN KEY (`visita_preliminare`) REFERENCES `visita_preliminare` (`id_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervento`
--

LOCK TABLES `intervento` WRITE;
/*!40000 ALTER TABLE `intervento` DISABLE KEYS */;
INSERT INTO `intervento` VALUES (1,100,'n1',1),(2,100,'n1',2),(3,100,'n1',2),(4,100,'n1',4);
/*!40000 ALTER TABLE `intervento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `intervento_BEFORE_INSERT` BEFORE INSERT ON `intervento` FOR EACH ROW BEGIN
declare costo_li double;

select ti.costo_listino into costo_li
from tipo_intervento as ti
where new.tipo_intervento = ti.nome;
if(new.costo > costo_li)
	then 
    signal sqlstate '45000' set message_text='Il costo dell intervento non puo superare il costo di listino';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `intervento_BEFORE_UPDATE` BEFORE UPDATE ON `intervento` FOR EACH ROW BEGIN
declare costo_li double;

select ti.costo_listino into costo_li
from tipo_intervento as ti
where new.tipo_intervento = ti.nome;
if(new.costo > costo_li)
	then 
    signal sqlstate '45000' set message_text='Il costo dell intervento non puo superare il costo di listino';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `nome_cognome_pazienti_visite_stesso_medico`
--

DROP TABLE IF EXISTS `nome_cognome_pazienti_visite_stesso_medico`;
/*!50001 DROP VIEW IF EXISTS `nome_cognome_pazienti_visite_stesso_medico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nome_cognome_pazienti_visite_stesso_medico` AS SELECT 
 1 AS `nome`,
 1 AS `cognome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza`
--

DROP TABLE IF EXISTS `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza`;
/*!50001 DROP VIEW IF EXISTS `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza` AS SELECT 
 1 AS `nome`,
 1 AS `cognome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `num_max_visite_fatte_in_un_giorno_per_ogni_medico`
--

DROP TABLE IF EXISTS `num_max_visite_fatte_in_un_giorno_per_ogni_medico`;
/*!50001 DROP VIEW IF EXISTS `num_max_visite_fatte_in_un_giorno_per_ogni_medico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `num_max_visite_fatte_in_un_giorno_per_ogni_medico` AS SELECT 
 1 AS `medico`,
 1 AS `max_visite_giornaliere`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numero_visite_per_ogni_dottore_per_ogni_mese`
--

DROP TABLE IF EXISTS `numero_visite_per_ogni_dottore_per_ogni_mese`;
/*!50001 DROP VIEW IF EXISTS `numero_visite_per_ogni_dottore_per_ogni_mese`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numero_visite_per_ogni_dottore_per_ogni_mese` AS SELECT 
 1 AS `medico`,
 1 AS `month(vtm.data)`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `paziente_speso_di_piu_per_1_sola_visita`
--

DROP TABLE IF EXISTS `paziente_speso_di_piu_per_1_sola_visita`;
/*!50001 DROP VIEW IF EXISTS `paziente_speso_di_piu_per_1_sola_visita`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paziente_speso_di_piu_per_1_sola_visita` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rata`
--

DROP TABLE IF EXISTS `rata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rata` (
  `num_rata` int NOT NULL,
  `intervento` int NOT NULL,
  `data_scadenza` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `importo` double NOT NULL,
  PRIMARY KEY (`num_rata`,`intervento`),
  KEY `intervento_r_idx` (`intervento`),
  CONSTRAINT `intervento_r` FOREIGN KEY (`intervento`) REFERENCES `intervento` (`id_intervento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rata`
--

LOCK TABLES `rata` WRITE;
/*!40000 ALTER TABLE `rata` DISABLE KEYS */;
INSERT INTO `rata` VALUES (1,1,'2024-10-10','2024-10-11',10),(1,2,'2024-10-10','2024-10-01',10);
/*!40000 ALTER TABLE `rata` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rata_BEFORE_INSERT` BEFORE INSERT ON `rata` FOR EACH ROW BEGIN
DECLARE data_precedente DATE;
DECLARE cf_paziente CHAR(16);
DECLARE num_rate INT;


if(select count(*)
	from rata
    where intervento=new.intervento)>=5
then
	 signal sqlstate '45000' set message_text='Numero di rate superato';
end if;
if(somma_rate_intervento(new.intervento)+new.importo < (
    select costo
    from intervento
    where id_intervento=new.intervento))
then 
	 signal sqlstate '01000' set message_text='Totale costo intervento non raggiunto';
end if;
if(somma_rate_intervento(new.intervento)+new.importo> (
    select costo
    from intervento
    where id_intervento=new.intervento))
then
	signal sqlstate '45000' set message_text='Costo dell intervento superato';
end if;
if((select count(*)
	from rata
    where intervento=new.intervento)=4 and
    (somma_rate_intervento(new.intervento)+new.importo< (
    select costo
    from intervento
    where id_intervento=new.intervento)))
then
	signal sqlstate '45000' set message_text='Costo dell intervento non raggiunto';
end if;
if ( new.data_scadenza < controllo_data_con_intervento(new.intervento))
then
	signal sqlstate '45000' set message_text='La rata non puo scadere prima della data della visita';
end if;

if exists(select *
		  from rata as r
          where (new.intervento = r.intervento) and (r.data_scadenza < new.data_scadenza) and (r.data_pagamento is null)
          )
then
	signal sqlstate '45000' set message_text='c è una rata precedente associata allo stesso intervento ancora da pagare';
end if;

SELECT MAX(data_scadenza) INTO data_precedente
FROM (rata r JOIN intervento i ON r.intervento=i.id_intervento) JOIN visita_preliminare vpr ON vpr.id_visita = i.visita_preliminare
WHERE intervento = NEW.intervento; 
if (data_precedente is not null)
then 
if(datediff(new.data_scadenza,data_precedente)<7 or datediff(new.data_scadenza,data_precedente)>14)
then
	signal sqlstate '45000' set message_text='La rata deve essere distante almeno 7 giorni e al massimo 14 giorni dall ultima inserita';
end if;
end if;

SELECT vp.paziente INTO cf_paziente
  FROM intervento i
  JOIN visita_preliminare vp ON i.visita_preliminare = vp.id_visita
  WHERE i.id_intervento = NEW.intervento;

SELECT COUNT(*) INTO num_rate
  FROM rata r
  JOIN intervento i2 ON r.intervento = i2.id_intervento
  JOIN visita_preliminare vp2 ON i2.visita_preliminare = vp2.id_visita
  WHERE vp2.paziente = cf_paziente
    AND r.data_pagamento IS NULL
    AND i2.id_intervento <> NEW.intervento;
if(num_rate>2)
then
	signal sqlstate '45000' set message_text='Il paziente ha già 2 rate non pagate su un altro intervento';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rata_BEFORE_UPDATE` BEFORE UPDATE ON `rata` FOR EACH ROW BEGIN
DECLARE data_precedente DATE;
DECLARE cf_paziente CHAR(16);
DECLARE num_rate INT;

if(somma_rate_intervento(new.intervento)-old.importo+new.importo < (
    select costo
    from intervento
    where id_intervento=new.intervento))
then 
	 signal sqlstate '01000' set message_text='Totale costo intervento non raggiunto';
end if;
if(somma_rate_intervento(new.intervento)-old.importo+new.importo> (
    select costo
    from intervento
    where id_intervento=new.intervento))
then
	signal sqlstate '45000' set message_text='Costo dell intervento superato';
end if;
if((select count(*)
	from rata
    where intervento=new.intervento)=5 and
    (somma_rate_intervento(new.intervento)-old.importo+new.importo< (
    select costo
    from intervento
    where id_intervento=new.intervento)))
then
	signal sqlstate '45000' set message_text='Costo dell intervento non raggiunto';
end if;
if ( new.data_scadenza < controllo_data_con_intervento(new.intervento))
then
	signal sqlstate '45000' set message_text='La rata non puo scadere prima della data della visita';
end if;
if exists(select *
		  from rata as r
          where (new.intervento = r.intervento) and (r.data_scadenza < new.data_scadenza) and (r.data_pagamento is null)
          )
then
	signal sqlstate '45000' set message_text='c è una rata precedente associata allo stesso intervento ancora da pagare';
end if;

SELECT MAX(data_scadenza) INTO data_precedente
FROM rata
WHERE intervento = NEW.intervento AND data_pagamento IS NULL; 
if (data_precedente is not null and old.data_pagamento is not null)
then 
if(datediff(new.data_scadenza,data_precedente)<7 or datediff(new.data_scadenza,data_precedente)>14)
then
	signal sqlstate '45000' set message_text='La rata deve essere distante almeno 7 giorni e al massimo 14 giorni dall ultima inserita';
end if;
end if;

SELECT vp.paziente INTO cf_paziente
  FROM intervento i
  JOIN visita_preliminare vp ON i.visita_preliminare = vp.id_visita
  WHERE i.id_intervento = NEW.intervento;

SELECT COUNT(*) INTO num_rate
  FROM rata r
  JOIN intervento i2 ON r.intervento = i2.id_intervento
  JOIN visita_preliminare vp2 ON i2.visita_preliminare = vp2.id_visita
  WHERE vp2.paziente = cf_paziente
    AND r.data_pagamento IS NULL
    AND i2.id_intervento <> NEW.intervento;
if(num_rate>2)
then
	signal sqlstate '45000' set message_text='Il paziente ha già 2 rate non pagate su un altro intervento';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `specializzazione`
--

DROP TABLE IF EXISTS `specializzazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specializzazione` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `descrizione` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializzazione`
--

LOCK TABLES `specializzazione` WRITE;
/*!40000 ALTER TABLE `specializzazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `specializzazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapia_farmaco_paziente`
--

DROP TABLE IF EXISTS `terapia_farmaco_paziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terapia_farmaco_paziente` (
  `id_terapia_farmaco` int NOT NULL AUTO_INCREMENT,
  `terapia` int NOT NULL,
  `farmaco` int NOT NULL,
  `frequenza` varchar(25) NOT NULL,
  `dose` double NOT NULL,
  PRIMARY KEY (`id_terapia_farmaco`),
  KEY `farmaco_tfp_idx` (`farmaco`),
  KEY `terapia_paziente_tfp_idx` (`terapia`),
  CONSTRAINT `farmaco_tfp` FOREIGN KEY (`farmaco`) REFERENCES `farmaco` (`id_farmaco`),
  CONSTRAINT `terapia_paziente_tfp` FOREIGN KEY (`terapia`) REFERENCES `terapia_paziente` (`id_terapia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia_farmaco_paziente`
--

LOCK TABLES `terapia_farmaco_paziente` WRITE;
/*!40000 ALTER TABLE `terapia_farmaco_paziente` DISABLE KEYS */;
/*!40000 ALTER TABLE `terapia_farmaco_paziente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapia_farmaco_standard`
--

DROP TABLE IF EXISTS `terapia_farmaco_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terapia_farmaco_standard` (
  `id_terapia_farmaco` int NOT NULL AUTO_INCREMENT,
  `eta_min` int NOT NULL,
  `eta_max` int NOT NULL,
  `sesso` enum('M','F') NOT NULL,
  `farmaco` int NOT NULL,
  `terapia` int NOT NULL,
  `frequenza` varchar(25) NOT NULL,
  `dose` double NOT NULL,
  PRIMARY KEY (`id_terapia_farmaco`,`sesso`,`eta_max`,`eta_min`),
  KEY `terapia_farmaco_standard_idx` (`terapia`),
  KEY `farmaco_tfs_idx` (`farmaco`),
  CONSTRAINT `farmaco_tfs` FOREIGN KEY (`farmaco`) REFERENCES `farmaco` (`id_farmaco`),
  CONSTRAINT `terapia_farmaco_standard` FOREIGN KEY (`terapia`) REFERENCES `terapia_standard` (`id_terapia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia_farmaco_standard`
--

LOCK TABLES `terapia_farmaco_standard` WRITE;
/*!40000 ALTER TABLE `terapia_farmaco_standard` DISABLE KEYS */;
/*!40000 ALTER TABLE `terapia_farmaco_standard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `terapia_farmaco_standard_BEFORE_INSERT` BEFORE INSERT ON `terapia_farmaco_standard` FOR EACH ROW BEGIN
if new.eta_max<=new.eta_min then signal sqlstate '45000' set message_text="Eta' non valida";
end if;
if exists (
	select *
    from terapia_farmaco_standard
    where id_terapia_farmaco=new.id_terapia_farmaco
    and sesso=new.sesso
    and new.eta_min<eta_max
    and new.eta_max>eta_min
    ) then 
		signal sqlstate '45000' set message_text="Sovrapposizione dell'eta'";
	end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `terapia_farmaco_standard_BEFORE_UPDATE` BEFORE UPDATE ON `terapia_farmaco_standard` FOR EACH ROW BEGIN
if new.eta_max<=new.eta_min then signal sqlstate '45000' set message_text="Eta' non valida";
end if;
if exists (
	select *
    from terapia_farmaco_standard
    where id_terapia_farmaco=new.id_terapia_farmaco
    and sesso=new.sesso
    and new.eta_min<eta_max
    and new.eta_max>eta_min
    ) then 
		signal sqlstate '45000' set message_text="Sovrapposizione dell'eta'";
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `terapia_paziente`
--

DROP TABLE IF EXISTS `terapia_paziente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terapia_paziente` (
  `id_terapia` int NOT NULL AUTO_INCREMENT,
  `intervento` int NOT NULL,
  `durata` time NOT NULL,
  PRIMARY KEY (`id_terapia`),
  KEY `intervento_tp_idx` (`intervento`),
  CONSTRAINT `intervento_tp` FOREIGN KEY (`intervento`) REFERENCES `intervento` (`id_intervento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia_paziente`
--

LOCK TABLES `terapia_paziente` WRITE;
/*!40000 ALTER TABLE `terapia_paziente` DISABLE KEYS */;
INSERT INTO `terapia_paziente` VALUES (1,1,'03:00:00'),(2,3,'02:00:00');
/*!40000 ALTER TABLE `terapia_paziente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terapia_standard`
--

DROP TABLE IF EXISTS `terapia_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terapia_standard` (
  `id_terapia` int NOT NULL AUTO_INCREMENT,
  `tipo_intervento` varchar(25) NOT NULL,
  `durata` time NOT NULL,
  PRIMARY KEY (`id_terapia`),
  KEY `tipo_intervento_ts_idx` (`tipo_intervento`),
  CONSTRAINT `tipo_intervento_ts` FOREIGN KEY (`tipo_intervento`) REFERENCES `tipo_intervento` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terapia_standard`
--

LOCK TABLES `terapia_standard` WRITE;
/*!40000 ALTER TABLE `terapia_standard` DISABLE KEYS */;
/*!40000 ALTER TABLE `terapia_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_intervento`
--

DROP TABLE IF EXISTS `tipo_intervento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_intervento` (
  `nome` varchar(25) NOT NULL,
  `costo_listino` double NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_intervento`
--

LOCK TABLES `tipo_intervento` WRITE;
/*!40000 ALTER TABLE `tipo_intervento` DISABLE KEYS */;
INSERT INTO `tipo_intervento` VALUES ('n1',1000);
/*!40000 ALTER TABLE `tipo_intervento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `unione_medici_pazienti`
--

DROP TABLE IF EXISTS `unione_medici_pazienti`;
/*!50001 DROP VIEW IF EXISTS `unione_medici_pazienti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_medici_pazienti` AS SELECT 
 1 AS `paziente`,
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_medico_paziente_data`
--

DROP TABLE IF EXISTS `unione_medico_paziente_data`;
/*!50001 DROP VIEW IF EXISTS `unione_medico_paziente_data`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_medico_paziente_data` AS SELECT 
 1 AS `medico`,
 1 AS `paziente`,
 1 AS `data`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_pazienti_visite_cancellate`
--

DROP TABLE IF EXISTS `unione_pazienti_visite_cancellate`;
/*!50001 DROP VIEW IF EXISTS `unione_pazienti_visite_cancellate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_pazienti_visite_cancellate` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_pazienti_visite_spostate`
--

DROP TABLE IF EXISTS `unione_pazienti_visite_spostate`;
/*!50001 DROP VIEW IF EXISTS `unione_pazienti_visite_spostate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_pazienti_visite_spostate` AS SELECT 
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_visite_assistenti`
--

DROP TABLE IF EXISTS `unione_visite_assistenti`;
/*!50001 DROP VIEW IF EXISTS `unione_visite_assistenti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_visite_assistenti` AS SELECT 
 1 AS `assistente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_visite_assistenti_ultimo_mese`
--

DROP TABLE IF EXISTS `unione_visite_assistenti_ultimo_mese`;
/*!50001 DROP VIEW IF EXISTS `unione_visite_assistenti_ultimo_mese`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_visite_assistenti_ultimo_mese` AS SELECT 
 1 AS `assistente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_visite_medici`
--

DROP TABLE IF EXISTS `unione_visite_medici`;
/*!50001 DROP VIEW IF EXISTS `unione_visite_medici`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_visite_medici` AS SELECT 
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `unione_visite_pazienti`
--

DROP TABLE IF EXISTS `unione_visite_pazienti`;
/*!50001 DROP VIEW IF EXISTS `unione_visite_pazienti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unione_visite_pazienti` AS SELECT 
 1 AS `id_visita`,
 1 AS `paziente`,
 1 AS `data`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `visita_pianificata`
--

DROP TABLE IF EXISTS `visita_pianificata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visita_pianificata` (
  `id_visita` int NOT NULL AUTO_INCREMENT,
  `intervento` int NOT NULL,
  `medico` char(16) NOT NULL,
  `paziente` char(16) NOT NULL,
  `data` date NOT NULL,
  `ora_inizio` timestamp NOT NULL,
  `ora_fine` timestamp NOT NULL,
  `costo` double NOT NULL,
  `cancellato` tinyint NOT NULL,
  `spostato_a` int DEFAULT NULL,
  PRIMARY KEY (`id_visita`),
  KEY `medico__idx` (`medico`),
  KEY `paziente_vp_idx` (`paziente`),
  KEY `intervento_vp_idx` (`intervento`),
  KEY `spostato_a_vp_idx` (`spostato_a`),
  CONSTRAINT `intervento_vp` FOREIGN KEY (`intervento`) REFERENCES `intervento` (`id_intervento`),
  CONSTRAINT `medico_vp` FOREIGN KEY (`medico`) REFERENCES `dipendente` (`persona`),
  CONSTRAINT `paziente_vp` FOREIGN KEY (`paziente`) REFERENCES `anagrafica_persona` (`codice_fiscale`),
  CONSTRAINT `spostato_a_vp` FOREIGN KEY (`spostato_a`) REFERENCES `visita_pianificata` (`id_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita_pianificata`
--

LOCK TABLES `visita_pianificata` WRITE;
/*!40000 ALTER TABLE `visita_pianificata` DISABLE KEYS */;
INSERT INTO `visita_pianificata` VALUES (1,1,'p2','p1','2016-12-15','2016-12-15 11:00:00','2016-12-15 15:00:00',100,0,NULL),(2,4,'p4','p3','2016-12-16','2016-12-16 11:00:00','2016-12-16 15:00:00',100,1,NULL),(3,2,'p2','p3','2017-12-16','2017-12-16 11:00:00','2017-12-16 15:00:00',100,0,NULL);
/*!40000 ALTER TABLE `visita_pianificata` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_pianificata_BEFORE_INSERT` BEFORE INSERT ON `visita_pianificata` FOR EACH ROW BEGIN
declare data_vpr date; 

if(select ruolo
	from dipendente
    where persona = new.medico)!="Medico"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
if not exists(select *
				from intervento as i, visita_preliminare as vp
                where (new.Intervento = i.id_intervento) and (vp.id_visita=i.visita_preliminare) and (new.paziente=vp.paziente)
			)
            then signal sqlstate '45000' set message_text='Il paziente non corrisponde';
end if;
if exists(select *
	from visita_pianificata
    where (TIMESTAMPDIFF(minute,new.ora_inizio,new.ora_fine))<30)
    then
    signal sqlstate '45000' set message_text='La durata minima deve essere di 30 minuti';
end if;
call sovrapposizione_paziente(new.paziente,new.data,new.ora_inizio,new.ora_fine);
call sovrapposizione_medico(new.medico,new.data,new.ora_inizio,new.ora_fine);
call ore_giornaliere_visite_medico(new.medico,new.data);

select vpr.data into data_vpr
from visita_preliminare as vpr JOIN intervento as i ON (vpr.id_visita = i.visita_preliminare)
where new.intervento = i.id_intervento and vpr.cancellato=false;
if (new.data < data_vpr)
then
	signal sqlstate '45000' set message_text='La visita pianificata non puo precedere quella preliminare';
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_pianificata_BEFORE_UPDATE` BEFORE UPDATE ON `visita_pianificata` FOR EACH ROW BEGIN
declare data_vpr date; 

if(select ruolo
	from dipendente
    where persona = new.medico)!="Medico"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
if not exists(select *
				from intervento as i, visita_preliminare as vp
                where (new.Intervento = i.id_intervento) and (vp.id_visita=i.visita_preliminare) and (new.paziente=vp.paziente)
			)
            then signal sqlstate '45000' set message_text='Il paziente non corrisponde';
end if;
if exists(select *
	from visita_pianificata as vp1,visita_pianificata as vp2
    where (new.spostato_a = vp2.id_visita) and (vp2.cancellato=true))
    then 
    signal sqlstate '45000' set message_text='Visita di destinaione cancellata';
end if;
if exists(select *
	from visita_pianificata
    where (TIMESTAMPDIFF(minute,new.ora_inizio,new.ora_fine))<30)
    then
    signal sqlstate '45000' set message_text='La durata minima deve essere di 30 minuti';
end if;
if exists(select *
			from visita_pianificata as vp
            where (vp.paziente=new.paziente) and (vp.data=new.data) and (new.ora_inizio<vp.ora_fine)and(new.ora_fine>vp.ora_inizio)and (new.cancellato=0))
	then
    signal sqlstate '45000' set message_text='Esiste già una visita in questo orario per questo paziente';
end if;
if((old.ora_inizio <> new.ora_inizio) and (old.ora_fine <> new.ora_fine))
then 
call sovrapposizione_paziente(new.paziente,new.data,new.ora_inizio,new.ora_fine);
call sovrapposizione_medico(new.medico,new.data,new.ora_inizio,new.ora_fine);
end if;
if(old.data <> new.data)
then
call ore_giornaliere_visite_medico(new.medico,new.data);
end if;

select vpr.data into data_vpr
from visita_preliminare as vpr JOIN intervento as i ON (vpr.id_visita = i.visita_preliminare)
where new.intervento = i.id_intervento and vpr.cancellato=false;
if (new.data < data_vpr)
then
	signal sqlstate '45000' set message_text='La visita pianificata non puo precedere quella preliminare';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visita_pianificata_assistente`
--

DROP TABLE IF EXISTS `visita_pianificata_assistente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visita_pianificata_assistente` (
  `id_visita` int NOT NULL,
  `assistente` char(16) NOT NULL,
  PRIMARY KEY (`id_visita`,`assistente`),
  KEY `assistente_vpa_idx` (`assistente`),
  CONSTRAINT `assistente_vpa` FOREIGN KEY (`assistente`) REFERENCES `dipendente` (`persona`),
  CONSTRAINT `id_visita_vpa` FOREIGN KEY (`id_visita`) REFERENCES `visita_pianificata` (`id_visita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita_pianificata_assistente`
--

LOCK TABLES `visita_pianificata_assistente` WRITE;
/*!40000 ALTER TABLE `visita_pianificata_assistente` DISABLE KEYS */;
/*!40000 ALTER TABLE `visita_pianificata_assistente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_pianificata_assistente_BEFORE_INSERT` BEFORE INSERT ON `visita_pianificata_assistente` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.assistente)!="Assistente"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
call sovrapposizione_assistente(new.id_visita,new.assistente);

call ore_giornaliere_visite_assistente(new.assistente,(select data from visita_pianificata as vp where vp.id_visita=new.id_visita));

if(select count(*)
   from visita_pianificata_assistente as vpa
   where new.id_visita = vpa.id_visita) >=3
then 
	signal sqlstate '45000' set message_text='Non possono esserci più di 3 assistenti per la visita selezionata';
end if;
	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_pianificata_assistente_BEFORE_UPDATE` BEFORE UPDATE ON `visita_pianificata_assistente` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.assistente)!="Assistente"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
call sovrapposizione_assistente(new.id_visita,new.assistente);

call ore_giornaliere_visite_assistente(new.assistente,(select data from visita_pianificata as vp where vp.id_visita=new.id_visita));

if(select count(*)
   from visita_pianificata_assistente as vpa
   where new.id_visita = vpa.id_visita) >=3
then 
	signal sqlstate '45000' set message_text='Non possono esserci più di 3 assistenti per la visita selezionata';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visita_preliminare`
--

DROP TABLE IF EXISTS `visita_preliminare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visita_preliminare` (
  `id_visita` int NOT NULL AUTO_INCREMENT,
  `paziente` char(16) NOT NULL,
  `medico` char(16) NOT NULL,
  `data` date NOT NULL,
  `ora_inizio` timestamp NOT NULL,
  `ora_fine` timestamp NOT NULL,
  `costo` double NOT NULL,
  `cancellato` tinyint NOT NULL,
  `spostato_a` int DEFAULT NULL,
  PRIMARY KEY (`id_visita`),
  KEY `paziente_idx` (`paziente`),
  KEY `medico_idx` (`medico`),
  KEY `spostato_a_vp_idx` (`spostato_a`),
  KEY `visita_preliminare.spostato_a_idx` (`spostato_a`),
  CONSTRAINT `medico` FOREIGN KEY (`medico`) REFERENCES `dipendente` (`persona`),
  CONSTRAINT `paziente` FOREIGN KEY (`paziente`) REFERENCES `anagrafica_persona` (`codice_fiscale`),
  CONSTRAINT `visita_preliminare.spostato_a` FOREIGN KEY (`spostato_a`) REFERENCES `visita_preliminare` (`id_visita`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita_preliminare`
--

LOCK TABLES `visita_preliminare` WRITE;
/*!40000 ALTER TABLE `visita_preliminare` DISABLE KEYS */;
INSERT INTO `visita_preliminare` VALUES (1,'p1','p2','2016-12-13','2016-12-13 16:00:00','2016-12-13 18:00:00',1,0,NULL),(2,'p3','p2','2017-12-13','2017-12-13 11:00:00','2017-12-13 15:00:00',1,1,NULL),(3,'p3','p4','2017-12-14','2017-12-14 11:00:00','2017-12-14 15:00:00',1,1,NULL),(4,'p3','p4','2016-12-13','2016-12-13 11:00:00','2016-12-13 15:00:00',1,0,NULL),(5,'p1','p2','2017-12-13','2017-12-13 16:00:00','2017-12-13 18:00:00',1,0,NULL);
/*!40000 ALTER TABLE `visita_preliminare` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_preliminare_BEFORE_INSERT` BEFORE INSERT ON `visita_preliminare` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.medico)!="Medico"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
if exists(select *
	from visita_preliminare
    where (TIMESTAMPDIFF(minute,new.ora_inizio,new.ora_fine))<30)
    then
    signal sqlstate '45000' set message_text='La durata minima deve essere di 30 minuti';
end if;
call sovrapposizione_paziente(new.paziente,new.data,new.ora_inizio,new.ora_fine);
call sovrapposizione_medico(new.medico,new.data,new.ora_inizio,new.ora_fine);
call ore_giornaliere_visite_medico(new.medico,new.data);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_preliminare_BEFORE_UPDATE` BEFORE UPDATE ON `visita_preliminare` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.medico)!="Medico"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
if exists(select *
	from visita_preliminare as vp1,visita_preliminare as vp2
    where (new.spostato_a = vp2.id_visita) and (vp2.cancellato=true))
    then 
    signal sqlstate '45000' set message_text='Visita di destinaione cancellata';
end if;
if exists(select *
	from visita_preliminare
    where (TIMESTAMPDIFF(minute,new.ora_inizio,new.ora_fine))<30)
    then
    signal sqlstate '45000' set message_text='La durata minima deve essere di 30 minuti';
end if;
if exists(select *
			from visita_preliminare as vpr
            where (vpr.paziente=new.paziente) and (vpr.data=new.data) and (new.ora_inizio<vpr.ora_fine)and(new.ora_fine>vpr.ora_inizio)and (new.cancellato=0))
	then
    signal sqlstate '45000' set message_text='Esiste già una visita in questo orario per questo paziente';
end if;
if((old.ora_inizio <> new.ora_inizio) and (old.ora_fine <> new.ora_fine))
then 
call sovrapposizione_paziente(new.paziente,new.data,new.ora_inizio,new.ora_fine);
call sovrapposizione_medico(new.medico,new.data,new.ora_inizio,new.ora_fine);
end if;
if(old.data <> new.data)
then
call ore_giornaliere_visite_medico(new.medico,new.data);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visita_preliminare_assistente`
--

DROP TABLE IF EXISTS `visita_preliminare_assistente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visita_preliminare_assistente` (
  `id_visita` int NOT NULL,
  `assistente` char(16) NOT NULL,
  PRIMARY KEY (`id_visita`,`assistente`),
  KEY `assistente_idx` (`assistente`),
  CONSTRAINT `assistente` FOREIGN KEY (`assistente`) REFERENCES `dipendente` (`persona`),
  CONSTRAINT `id_visita_assistente` FOREIGN KEY (`id_visita`) REFERENCES `visita_preliminare` (`id_visita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita_preliminare_assistente`
--

LOCK TABLES `visita_preliminare_assistente` WRITE;
/*!40000 ALTER TABLE `visita_preliminare_assistente` DISABLE KEYS */;
/*!40000 ALTER TABLE `visita_preliminare_assistente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_preliminare_assistente_BEFORE_INSERT` BEFORE INSERT ON `visita_preliminare_assistente` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.assistente)!="Assistente"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
call sovrapposizione_assistente(new.id_visita,new.assistente);

call ore_giornaliere_visite_assistente(new.assistente,(select data from visita_preliminare as vp where vp.id_visita=new.id_visita));

if(select count(*)
   from visita_preliminare_assistente as vpa
   where new.id_visita = vpa.id_visita) >=3
then 
	signal sqlstate '45000' set message_text='Non possono esserci più di 3 assistenti per la visita selezionata';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visita_preliminare_assistente_BEFORE_UPDATE` BEFORE UPDATE ON `visita_preliminare_assistente` FOR EACH ROW BEGIN
if(select ruolo
	from dipendente
    where persona = new.assistente)!="Assistente"
    then
    signal sqlstate '45000' set message_text='Ruolo non valido';
end if;
call sovrapposizione_assistente(new.id_visita,new.assistente);
call ore_giornaliere_visite_assistente(new.assistente,(select data from visita_preliminare as vp where vp.id_visita=new.id_visita));
if(select count(*)
   from visita_preliminare_assistente as vpa
   where new.id_visita = vpa.id_visita) >=3
then 
	signal sqlstate '45000' set message_text='Non possono esserci più di 3 assistenti per la visita selezionata';
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `visite_totali_medico`
--

DROP TABLE IF EXISTS `visite_totali_medico`;
/*!50001 DROP VIEW IF EXISTS `visite_totali_medico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `visite_totali_medico` AS SELECT 
 1 AS `data`,
 1 AS `medico`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpi_totale_per_ogni_anno`
--

DROP TABLE IF EXISTS `vpi_totale_per_ogni_anno`;
/*!50001 DROP VIEW IF EXISTS `vpi_totale_per_ogni_anno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpi_totale_per_ogni_anno` AS SELECT 
 1 AS `year(vpi.data)`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpr_giornaliere_medie_per_ogni_anno`
--

DROP TABLE IF EXISTS `vpr_giornaliere_medie_per_ogni_anno`;
/*!50001 DROP VIEW IF EXISTS `vpr_giornaliere_medie_per_ogni_anno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpr_giornaliere_medie_per_ogni_anno` AS SELECT 
 1 AS `anno`,
 1 AS `media_visite_giornaliere`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpr_unito_vpi`
--

DROP TABLE IF EXISTS `vpr_unito_vpi`;
/*!50001 DROP VIEW IF EXISTS `vpr_unito_vpi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpr_unito_vpi` AS SELECT 
 1 AS `medico`,
 1 AS `paziente`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'progetto_2024_2025'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `interventi_effettuati_nel_mese` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `interventi_effettuati_nel_mese` ON SCHEDULE EVERY 1 MONTH STARTS '2025-05-31 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN 
		declare importi_non_pagati DOUBLE;
		declare totale DOUBLE;
		select sum(i.costo) into totale
        from intervento i JOIN visita_preliminare vpr ON (i.visita_preliminare = vpr.id_visita)
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)<=30;
        
        select sum(r.importo) into importi_non_pagati
        from (rata r JOIN intervento i ON r.intervento=i.id_intervento) JOIN visita_preliminare vpr ON (i.visita_preliminare = vpr.id_visita)
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)<=30 and r.data_pagamento is null;
        
        insert into interventi_mese values (importi_non_pagati/totale*100,totale);
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `visite_non_eseguite_in_un_anno` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `visite_non_eseguite_in_un_anno` ON SCHEDULE EVERY 1 YEAR STARTS '2025-05-16 09:29:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN 
		delete
        from visita_prliminare vpr
        where TIMESTAMPDIFF(DAY, vpr.data, current_timestamp)>365 and vpr.id_visita not in ( select visita_preliminare
																							  from intervento i
                                                                                              );
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'progetto_2024_2025'
--
/*!50003 DROP FUNCTION IF EXISTS `controllo data con intervento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `controllo data con intervento`(interv int) RETURNS date
    DETERMINISTIC
BEGIN
declare data_vpr date; 
select vpr.data into data_vpr
from visita_preliminare as vpr JOIN intervento as i ON (vpr.id_visita = i.visita_preliminare)
where interv = i.id_intervento and vpr.cancellato=false;
RETURN data_vpr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `controllo_data_con_intervento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `controllo_data_con_intervento`(interv int) RETURNS date
    DETERMINISTIC
BEGIN
declare data_vpr date; 
select vpr.data into data_vpr
from visita_preliminare as vpr JOIN intervento as i ON (vpr.id_visita = i.visita_preliminare)
where interv = i.id_intervento and vpr.cancellato=false;
RETURN data_vpr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `somma_rate_intervento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `somma_rate_intervento`(intervento INT) RETURNS int
    DETERMINISTIC
BEGIN
	declare somma INT default 0;
	select sum(r.importo) into somma
	from rata as r
    where r.intervento=intervento;
RETURN somma;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InfoCuraPaziente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InfoCuraPaziente`(cf_paziente VARCHAR(16),id_terapia INT)
BEGIN
SELECT 
    tp.id_terapia,
    COUNT(DISTINCT vp_plan.id_visita) + 1 AS numero_visite,
    SUM(IF(vp_plan.costo IS NULL, 0, vp_plan.costo)) + vp.costo+i.costo AS parcella_totale
  FROM terapia_paziente tp
  JOIN intervento i ON tp.intervento = i.id_intervento
  JOIN visita_preliminare vp ON i.visita_preliminare = vp.id_visita
  LEFT JOIN visita_pianificata vp_plan ON vp_plan.intervento = i.id_intervento
  WHERE vp.paziente = cf_paziente
    AND tp.id_terapia = id_terapia
  GROUP BY tp.id_terapia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ore_giornaliere_visite_assistente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ore_giornaliere_visite_assistente`(ass char(16),data date)
BEGIN
if(select sum(timestampdiff(MINUTE,totale.ora_inizio,totale.ora_fine))
	from (select ora_inizio,ora_fine
			from visita_pianificata as vp join visita_pianificata_assistente as vpa ON(vp.id_visita=vpa.id_visita)
            where vpa.assistente=ass and data=vp.data
            UNION
            (select ora_inizio,ora_fine
			from visita_preliminare as vpr join visita_preliminare_assistente as vpra ON(vpr.id_visita=vpra.id_visita)
            where vpra.assistente=ass and data=vpr.data)) as totale)>240
then 
	signal sqlstate '45000' set message_text='Superate ore di visita giornaliere dell assistente';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ore_giornaliere_visite_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ore_giornaliere_visite_medico`(med char(16),data date)
BEGIN
if(select sum(timestampdiff(MINUTE,totale.ora_inizio,totale.ora_fine))
	from (select ora_inizio,ora_fine
			from visita_pianificata as vp
            where vp.medico=med and data=vp.data
            UNION
            (select ora_inizio,ora_fine
			from visita_preliminare as vpr
            where vpr.medico=med and data=vpr.data)) as totale)>240
then 
	signal sqlstate '45000' set message_text='Superate ore di visita giornaliere del medico';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sovrapposizione_assistente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sovrapposizione_assistente`(id_vis int,ass char(16))
BEGIN
if exists(select *
			from visita_preliminare_assistente as vpa JOIN visita_preliminare as vp ON (vpa.id_visita=vp.id_visita)
            where (vpa.assistente=ass) and (id_vis.data=vp.data) and (id_vis.ora_inizio<vp.ora_fine)and(id_vis.ora_fine>vp.ora_inizio)
		)
	or exists(select *
				from visita_pianificata_assistente as vpa JOIN visita_pianificata as vp ON (vpa.id_visita=vp.id_visita)
				where (vpa.assistente=ass) and (id_vis.data=vp.data) and (id_vis.ora_inizio<vp.ora_fine)and(id_vis.ora_fine>vp.ora_inizio)
			)
	then 
		signal sqlstate '45000' set message_text='Esiste già una visita in questo orario per questo assistente';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sovrapposizione_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sovrapposizione_medico`(med char(16),n_data date,n_ora_inizio timestamp,n_ora_fine timestamp)
BEGIN
if exists(select *
			from visita_pianificata as vp
            where (vp.medico=med) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	or exists(select*
				from visita_preliminare as vp
				where (vp.medico=med) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	then
    signal sqlstate '45000' set message_text='Esiste già una visita in questo orario per questo medico';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sovrapposizione_paziente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sovrapposizione_paziente`(paz char(16),n_data date,n_ora_inizio timestamp,n_ora_fine timestamp)
BEGIN
if exists(select *
			from visita_pianificata as vp
            where (vp.paziente=paz) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	or exists(select *
				from visita_preliminare as vp
				where (vp.paziente=paz) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	then
    signal sqlstate '45000' set message_text='visita esiste';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sovrapposizione_paziente_pianificata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sovrapposizione_paziente_pianificata`(paz char(16),n_data date,n_ora_inizio timestamp,n_ora_fine timestamp)
BEGIN
if exists(select *
			from visita_pianificata as vp
            where (vp.paziente=paz) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	or exists(select*
				from visita_preliminare as vp
				where (vp.paziente=paz) and (vp.data=n_data) and (n_ora_inizio<vp.ora_fine)and(n_ora_fine>vp.ora_inizio))
	then
    signal sqlstate '45000' set message_text='Esiste già una visita in questo orario per questo paziente';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `visite_pazienti_in_un_intervallo_in_ordine_cronologico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `visite_pazienti_in_un_intervallo_in_ordine_cronologico`(paz char(16), data_inizio date, data_fine date)
BEGIN
select uvp.id_visita
from unione_visite_pazienti uvp
where (uvp.paziente=paz) and (uvp.data >= data_inizio) and (uvp.data <= data_fine)
order by uvp.data;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `anni_medico_mario_rossi_almeno_100_visite`
--

/*!50001 DROP VIEW IF EXISTS `anni_medico_mario_rossi_almeno_100_visite`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `anni_medico_mario_rossi_almeno_100_visite` AS select year(`vtm`.`data`) AS `year(vtm.data)` from (`visite_totali_medico` `vtm` join `anagrafica_persona` `ap` on((`vtm`.`medico` = `ap`.`codice_fiscale`))) where ((`ap`.`nome` = 'Mario') and (`ap`.`cognome` = 'Rossi')) group by year(`vtm`.`data`) having (count(0) >= 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `anno_e_num_visite_maggior_num_visite_mario_rossi`
--

/*!50001 DROP VIEW IF EXISTS `anno_e_num_visite_maggior_num_visite_mario_rossi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `anno_e_num_visite_maggior_num_visite_mario_rossi` AS select year(`vtm`.`data`) AS `year(vtm.data)`,count(0) AS `count(*)` from (`visite_totali_medico` `vtm` join `anagrafica_persona` `ap` on((`vtm`.`medico` = `ap`.`codice_fiscale`))) where ((`ap`.`nome` = 'Mario') and (`ap`.`cognome` = 'Rossi')) group by year(`vtm`.`data`) having count(0) >= all (select count(0) from (`visite_totali_medico` `vtm2` join `anagrafica_persona` `ap2` on((`vtm2`.`medico` = `ap2`.`codice_fiscale`))) where ((`ap2`.`nome` = 'Mario') and (`ap2`.`cognome` = 'Rossi')) group by year(`vtm2`.`data`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf pazienti con almeno 2 vpr`
--

/*!50001 DROP VIEW IF EXISTS `cf pazienti con almeno 2 vpr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf pazienti con almeno 2 vpr` AS select distinct `vpr1`.`paziente` AS `paziente` from `visita_preliminare` `vpr1` where ((select count(0) from `visita_preliminare` `vpr2` where ((`vpr1`.`paziente` = `vpr2`.`paziente`) and (`vpr1`.`id_visita` <> `vpr2`.`id_visita`))) >= 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf pazienti con almeno una rata non pagata`
--

/*!50001 DROP VIEW IF EXISTS `cf pazienti con almeno una rata non pagata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf pazienti con almeno una rata non pagata` AS select `vpr`.`paziente` AS `paziente` from ((`visita_preliminare` `vpr` join `intervento` `i` on((`i`.`visita_preliminare` = `vpr`.`id_visita`))) join `rata` `r` on((`r`.`intervento` = `i`.`id_intervento`))) where (`r`.`data_pagamento` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_assistenti_maggior_numero_visite`
--

/*!50001 DROP VIEW IF EXISTS `cf_assistenti_maggior_numero_visite`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_assistenti_maggior_numero_visite` AS select `unione_visite_assistenti`.`assistente` AS `assistente` from `unione_visite_assistenti` group by `unione_visite_assistenti`.`assistente` having count(0) >= all (select count(0) from `unione_visite_assistenti` group by `unione_visite_assistenti`.`assistente`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_assistenti_maggior_numero_visite_ultimo_mese`
--

/*!50001 DROP VIEW IF EXISTS `cf_assistenti_maggior_numero_visite_ultimo_mese`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_assistenti_maggior_numero_visite_ultimo_mese` AS select `unione_visite_assistenti_ultimo_mese`.`assistente` AS `assistente` from `unione_visite_assistenti_ultimo_mese` group by `unione_visite_assistenti_ultimo_mese`.`assistente` having count(0) >= all (select count(0) from `unione_visite_assistenti_ultimo_mese` group by `unione_visite_assistenti_ultimo_mese`.`assistente`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi`
--

/*!50001 DROP VIEW IF EXISTS `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_medici_che_hanno_visitato_maggior_numero_pazienti_diversi` AS select `unione_medici_pazienti`.`medico` AS `medico` from `unione_medici_pazienti` group by `unione_medici_pazienti`.`medico` having count(0) >= all (select count(0) from `unione_medici_pazienti` group by `unione_medici_pazienti`.`medico`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_medici_maggior_numero_visite`
--

/*!50001 DROP VIEW IF EXISTS `cf_medici_maggior_numero_visite`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_medici_maggior_numero_visite` AS select `unione_visite_medici`.`medico` AS `medico` from `unione_visite_medici` group by `unione_visite_medici`.`medico` having count(0) >= all (select count(0) from `unione_visite_medici` group by `unione_visite_medici`.`medico`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_nome_cognome_pazienti_piu_redditizi`
--

/*!50001 DROP VIEW IF EXISTS `cf_nome_cognome_pazienti_piu_redditizi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_nome_cognome_pazienti_piu_redditizi` AS select `ap`.`codice_fiscale` AS `codice_fiscale`,`ap`.`nome` AS `nome`,`ap`.`cognome` AS `cognome` from `anagrafica_persona` `ap` where `ap`.`codice_fiscale` in (select `vpr`.`paziente` from (`visita_preliminare` `vpr` join `intervento` `i` on((`i`.`visita_preliminare` = `vpr`.`id_visita`))) group by `vpr`.`paziente` having sum(`i`.`costo`) >= all (select sum(`i2`.`costo`) from (`intervento` `i2` join `visita_preliminare` `vpr2` on((`i2`.`visita_preliminare` = `vpr2`.`id_visita`))) group by `vpr2`.`paziente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_pazienti_con_massimo_2_vpr`
--

/*!50001 DROP VIEW IF EXISTS `cf_pazienti_con_massimo_2_vpr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_pazienti_con_massimo_2_vpr` AS select distinct `vpr1`.`paziente` AS `paziente` from `visita_preliminare` `vpr1` where ((select count(0) from `visita_preliminare` `vpr2` where ((`vpr1`.`paziente` = `vpr2`.`paziente`) and (`vpr1`.`id_visita` <> `vpr2`.`id_visita`))) <= 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_pazienti_mai_spostato_una_visita`
--

/*!50001 DROP VIEW IF EXISTS `cf_pazienti_mai_spostato_una_visita`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_pazienti_mai_spostato_una_visita` AS select distinct `uvp`.`paziente` AS `paziente` from `unione_visite_pazienti` `uvp` where `uvp`.`paziente` in (select `upvs`.`paziente` from `unione_pazienti_visite_spostate` `upvs`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_pazienti_minimo_1_vpr_e_nessuna_vpi`
--

/*!50001 DROP VIEW IF EXISTS `cf_pazienti_minimo_1_vpr_e_nessuna_vpi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_pazienti_minimo_1_vpr_e_nessuna_vpi` AS select distinct `vpr`.`paziente` AS `paziente` from `visita_preliminare` `vpr` where `vpr`.`paziente` in (select `vpi`.`paziente` from `visita_pianificata` `vpi`) is false */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_pazienti_piu_redditizi_media`
--

/*!50001 DROP VIEW IF EXISTS `cf_pazienti_piu_redditizi_media`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_pazienti_piu_redditizi_media` AS select `ap`.`codice_fiscale` AS `codice_fiscale` from `anagrafica_persona` `ap` where `ap`.`codice_fiscale` in (select `vpr`.`paziente` from (`visita_preliminare` `vpr` join `intervento` `i` on((`i`.`visita_preliminare` = `vpr`.`id_visita`))) group by `vpr`.`paziente` having (sum(`i`.`costo`) >= avg((select sum(`i2`.`costo`) from (`intervento` `i2` join `visita_preliminare` `vpr2` on((`i2`.`visita_preliminare` = `vpr2`.`id_visita`))) group by `vpr2`.`paziente`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cf_pazienti_piu_visite_cancellate`
--

/*!50001 DROP VIEW IF EXISTS `cf_pazienti_piu_visite_cancellate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cf_pazienti_piu_visite_cancellate` AS select `upvc`.`paziente` AS `paziente` from `unione_pazienti_visite_cancellate` `upvc` group by `upvc`.`paziente` having count(0) >= all (select count(0) from `unione_pazienti_visite_cancellate` `upvc2` group by `upvc2`.`paziente`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `costi_visite_pazienti`
--

/*!50001 DROP VIEW IF EXISTS `costi_visite_pazienti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `costi_visite_pazienti` AS select `vpr`.`paziente` AS `paziente`,`vpr`.`costo` AS `costo` from `visita_preliminare` `vpr` union all select `vpi`.`paziente` AS `paziente`,`vpi`.`costo` AS `costo` from `visita_pianificata` `vpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dottore_visitato_paziente_2_volte_la_stessa_settimana`
--

/*!50001 DROP VIEW IF EXISTS `dottore_visitato_paziente_2_volte_la_stessa_settimana`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dottore_visitato_paziente_2_volte_la_stessa_settimana` AS select distinct `umpd`.`medico` AS `medico` from `unione_medico_paziente_data` `umpd` where ((select count(0) from `unione_medico_paziente_data` `umpd2` where ((year(`umpd2`.`data`) = year(`umpd`.`data`)) and (week(`umpd2`.`data`,0) = week(`umpd`.`data`,0)) and (`umpd`.`medico` = `umpd2`.`medico`) and (`umpd`.`paziente` = `umpd2`.`paziente`))) = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `giorni_con_meno_vpi`
--

/*!50001 DROP VIEW IF EXISTS `giorni_con_meno_vpi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `giorni_con_meno_vpi` AS select `vpi`.`data` AS `data` from `visita_pianificata` `vpi` group by `vpi`.`data` having (count(0) <= min((select count(0) from `visita_pianificata` `vpi2` group by `vpi`.`data`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nome_cognome_pazienti_visite_stesso_medico`
--

/*!50001 DROP VIEW IF EXISTS `nome_cognome_pazienti_visite_stesso_medico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nome_cognome_pazienti_visite_stesso_medico` AS select `ap`.`nome` AS `nome`,`ap`.`cognome` AS `cognome` from (`anagrafica_persona` `ap` join `vpr_unito_vpi`) where (`ap`.`codice_fiscale` = `vpr_unito_vpi`.`paziente`) group by `ap`.`codice_fiscale`,`ap`.`nome`,`ap`.`cognome` having (count(distinct `vpr_unito_vpi`.`medico`) <= 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza`
--

/*!50001 DROP VIEW IF EXISTS `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nome_e_cognome_pazienti_mai_pagato_dopo_scadenza` AS select distinct `ap`.`nome` AS `nome`,`ap`.`cognome` AS `cognome` from (((`anagrafica_persona` `ap` join `visita_preliminare` `vpr` on((`ap`.`codice_fiscale` = `vpr`.`paziente`))) join `intervento` `i` on((`i`.`visita_preliminare` = `vpr`.`id_visita`))) join `rata` `r` on((`r`.`intervento` = `i`.`id_intervento`))) where ((`r`.`data_pagamento` is not null) and `ap`.`codice_fiscale` in (select `vpr2`.`paziente` from ((`visita_preliminare` `vpr2` join `intervento` `i2` on((`i2`.`visita_preliminare` = `vpr2`.`id_visita`))) join `rata` `r2` on((`r2`.`intervento` = `i2`.`id_intervento`))) where (`r2`.`data_pagamento` > `r2`.`data_scadenza`)) is false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `num_max_visite_fatte_in_un_giorno_per_ogni_medico`
--

/*!50001 DROP VIEW IF EXISTS `num_max_visite_fatte_in_un_giorno_per_ogni_medico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `num_max_visite_fatte_in_un_giorno_per_ogni_medico` AS select `visite_per_giorno`.`medico` AS `medico`,max(`visite_per_giorno`.`visite_giornaliere`) AS `max_visite_giornaliere` from (select `visite_totali_medico`.`medico` AS `medico`,`visite_totali_medico`.`data` AS `data`,count(0) AS `visite_giornaliere` from `visite_totali_medico` group by `visite_totali_medico`.`medico`,`visite_totali_medico`.`data`) `visite_per_giorno` group by `visite_per_giorno`.`medico` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numero_visite_per_ogni_dottore_per_ogni_mese`
--

/*!50001 DROP VIEW IF EXISTS `numero_visite_per_ogni_dottore_per_ogni_mese`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_visite_per_ogni_dottore_per_ogni_mese` AS select `vtm`.`medico` AS `medico`,month(`vtm`.`data`) AS `month(vtm.data)`,count(0) AS `count(*)` from `visite_totali_medico` `vtm` group by `vtm`.`medico`,month(`vtm`.`data`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paziente_speso_di_piu_per_1_sola_visita`
--

/*!50001 DROP VIEW IF EXISTS `paziente_speso_di_piu_per_1_sola_visita`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paziente_speso_di_piu_per_1_sola_visita` AS select distinct `cvp`.`paziente` AS `paziente` from `costi_visite_pazienti` `cvp` where `cvp`.`costo` >= all (select `cvp2`.`costo` from `costi_visite_pazienti` `cvp2`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_medici_pazienti`
--

/*!50001 DROP VIEW IF EXISTS `unione_medici_pazienti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_medici_pazienti` AS select `vpr`.`paziente` AS `paziente`,`vpr`.`medico` AS `medico` from `visita_preliminare` `vpr` union select `vpi`.`paziente` AS `paziente`,`vpi`.`medico` AS `medico` from `visita_pianificata` `vpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_medico_paziente_data`
--

/*!50001 DROP VIEW IF EXISTS `unione_medico_paziente_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_medico_paziente_data` AS select `vpr`.`medico` AS `medico`,`vpr`.`paziente` AS `paziente`,`vpr`.`data` AS `data` from `visita_preliminare` `vpr` union all select `vpi`.`medico` AS `medico`,`vpi`.`paziente` AS `paziente`,`vpi`.`data` AS `data` from `visita_pianificata` `vpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_pazienti_visite_cancellate`
--

/*!50001 DROP VIEW IF EXISTS `unione_pazienti_visite_cancellate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_pazienti_visite_cancellate` AS select `vpr`.`paziente` AS `paziente` from `visita_preliminare` `vpr` where (`vpr`.`cancellato` = 1) union all select `vpi`.`paziente` AS `paziente` from `visita_pianificata` `vpi` where (`vpi`.`cancellato` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_pazienti_visite_spostate`
--

/*!50001 DROP VIEW IF EXISTS `unione_pazienti_visite_spostate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_pazienti_visite_spostate` AS select `vpr`.`paziente` AS `paziente` from `visita_preliminare` `vpr` where (`vpr`.`spostato_a` is not null) union select `vpi`.`paziente` AS `paziente` from `visita_pianificata` `vpi` where (`vpi`.`spostato_a` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_visite_assistenti`
--

/*!50001 DROP VIEW IF EXISTS `unione_visite_assistenti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_visite_assistenti` AS select `vpa`.`assistente` AS `assistente` from (`visita_pianificata_assistente` `vpa` join `visita_pianificata` `vp` on((`vpa`.`id_visita` = `vp`.`id_visita`))) union all select `vpra`.`assistente` AS `assistente` from (`visita_preliminare_assistente` `vpra` join `visita_preliminare` `vpr` on((`vpra`.`id_visita` = `vpr`.`id_visita`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_visite_assistenti_ultimo_mese`
--

/*!50001 DROP VIEW IF EXISTS `unione_visite_assistenti_ultimo_mese`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_visite_assistenti_ultimo_mese` AS select `vpa`.`assistente` AS `assistente` from (`visita_pianificata_assistente` `vpa` join `visita_pianificata` `vp` on((`vpa`.`id_visita` = `vp`.`id_visita`))) where (`vp`.`data` >= (curdate() - interval 1 month)) union all select `vpra`.`assistente` AS `assistente` from (`visita_preliminare_assistente` `vpra` join `visita_preliminare` `vpr` on((`vpra`.`id_visita` = `vpr`.`id_visita`))) where (`vpr`.`data` >= (curdate() - interval 1 month)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_visite_medici`
--

/*!50001 DROP VIEW IF EXISTS `unione_visite_medici`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_visite_medici` AS select `vpr`.`medico` AS `medico` from `visita_preliminare` `vpr` union all select `vpi`.`medico` AS `medico` from `visita_pianificata` `vpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unione_visite_pazienti`
--

/*!50001 DROP VIEW IF EXISTS `unione_visite_pazienti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unione_visite_pazienti` AS select `vpi`.`id_visita` AS `id_visita`,`vpi`.`paziente` AS `paziente`,`vpi`.`data` AS `data` from `visita_pianificata` `vpi` union all select `vpr`.`id_visita` AS `id_visita`,`vpr`.`paziente` AS `paziente`,`vpr`.`data` AS `data` from `visita_preliminare` `vpr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visite_totali_medico`
--

/*!50001 DROP VIEW IF EXISTS `visite_totali_medico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visite_totali_medico` AS select `vpr`.`data` AS `data`,`vpr`.`medico` AS `medico` from `visita_preliminare` `vpr` union all select `vpi`.`data` AS `data`,`vpi`.`medico` AS `medico` from `visita_pianificata` `vpi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpi_totale_per_ogni_anno`
--

/*!50001 DROP VIEW IF EXISTS `vpi_totale_per_ogni_anno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpi_totale_per_ogni_anno` AS select year(`vpi`.`data`) AS `year(vpi.data)`,count(0) AS `count(*)` from `visita_pianificata` `vpi` where ((`vpi`.`cancellato` = 0) and (`vpi`.`spostato_a` is null)) group by year(`vpi`.`data`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpr_giornaliere_medie_per_ogni_anno`
--

/*!50001 DROP VIEW IF EXISTS `vpr_giornaliere_medie_per_ogni_anno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpr_giornaliere_medie_per_ogni_anno` AS select extract(year from `visite_per_giorno`.`data`) AS `anno`,avg(`visite_per_giorno`.`visite_giornaliere`) AS `media_visite_giornaliere` from (select `visita_preliminare`.`data` AS `data`,count(0) AS `visite_giornaliere` from `visita_preliminare` where (`visita_preliminare`.`cancellato` = false) group by `visita_preliminare`.`data`) `visite_per_giorno` group by `anno` order by `anno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpr_unito_vpi`
--

/*!50001 DROP VIEW IF EXISTS `vpr_unito_vpi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpr_unito_vpi` AS select `visita_preliminare`.`medico` AS `medico`,`visita_preliminare`.`paziente` AS `paziente` from `visita_preliminare` union select `visita_pianificata`.`medico` AS `medico`,`visita_pianificata`.`paziente` AS `paziente` from `visita_pianificata` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27 12:18:54
