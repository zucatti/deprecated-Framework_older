
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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--
DROP TABLE IF EXISTS `_bpcandroid`;
/*!50001 DROP VIEW IF EXISTS `_bpcandroid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `_bpcandroid` AS SELECT 
 1 AS `Nom`,
 1 AS `Prenom`,
 1 AS `Matri`,
 1 AS `Telephone`,
 1 AS `LibMelA`,
 1 AS `LibBatC`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `accents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accents` (
  `Kacc` int(11) NOT NULL auto_increment,
  `LibSAcc` varchar(250) default NULL,
  `LibAcc` varchar(250) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kacc`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `login` varchar(255) NOT NULL,
  `kage` int(11) NOT NULL,
  `cid` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `activites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activites` (
  `Kact` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `Kann` int(11) NOT NULL,
  `LibAct` varchar(250) default NULL,
  `ActLie` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kact`)
) ENGINE=MyISAM AUTO_INCREMENT=602 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresses` (
  `Kadr` int(11) NOT NULL auto_increment,
  `Kpos` int(11) default NULL,
  `Kdep` int(11) default NULL,
  `Kpay` int(11) default NULL,
  `Adresse` longtext,
  `Perso` tinyint(4) default NULL,
  `Type` int(11) default NULL,
  `Verrou` varchar(50) default NULL,
  `Date_derniere_modif` datetime default NULL,
  PRIMARY KEY  (`Kadr`)
) ENGINE=MyISAM AUTO_INCREMENT=2291 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ageaut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ageaut` (
  `Kaat` int(11) NOT NULL auto_increment,
  `Kpie` int(11) NOT NULL,
  `Ksig` int(11) NOT NULL,
  `DatAutV` datetime default NULL,
  `DatDebV` datetime default NULL,
  `DatFinV` datetime default NULL,
  `NumAut` varchar(50) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kaat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ageautpers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ageautpers` (
  `Kaap` int(11) NOT NULL auto_increment,
  `Kpie` int(11) NOT NULL,
  `Kvmk` int(11) default NULL,
  `Kvmd` int(11) default NULL,
  `Kvas` int(11) default NULL,
  `Ksig` int(11) NOT NULL,
  `DatAut` datetime default NULL,
  `Ponct` tinyint(4) NOT NULL,
  `Immat` varchar(255) default NULL,
  `NumPol` varchar(255) default NULL,
  `Zone` int(11) default NULL,
  `KmAut` double default NULL,
  `KmAdd` double default NULL,
  `DatDeb` datetime default NULL,
  `DatFin` datetime default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kaap`)
) ENGINE=MyISAM AUTO_INCREMENT=3207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `agecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agecode` (
  `Kcod` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `CodConf` varchar(4) default NULL,
  `CodChauf` varchar(4) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kcod`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ageetat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ageetat` (
  `Keta` int(11) NOT NULL auto_increment,
  `Kpst` int(11) NOT NULL,
  `Kage` int(11) NOT NULL,
  `Ketsnew` int(11) NOT NULL,
  `Kuninew` int(11) default NULL,
  `Ksubnew` int(11) default NULL,
  `Ksernew` int(11) default NULL,
  `Ketsex` int(11) default NULL,
  `Kuniex` int(11) default NULL,
  `Ksubex` int(11) default NULL,
  `Kserex` int(11) default NULL,
  `DatCre` datetime default NULL,
  `Arrivee` varchar(250) default NULL,
  `Motif` text,
  `DatEta` datetime default NULL,
  `DatCPA` date default NULL,
  `DatCFA` datetime default NULL,
  `DatRet` datetime default NULL,
  `PosFutur` int(11) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Keta`)
) ENGINE=MyISAM AUTO_INCREMENT=7893 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `Kage` int(11) NOT NULL auto_increment,
  `Kuni` int(11) default NULL,
  `Ksub` int(11) default NULL,
  `Kser` int(11) default NULL,
  `Kbat` int(11) default NULL,
  `Kgra` int(11) default NULL,
  `Kbur` int(11) default NULL,
  `Kres` int(11) default NULL,
  `Ksec` int(11) default NULL,
  `Ksec2` int(11) default NULL,
  `Keta` int(11) default NULL,
  `Nom` varchar(250) default NULL,
  `Prenom` varchar(250) default NULL,
  `Matri` varchar(10) NOT NULL,
  `DatCre` datetime default NULL,
  `DatOuv` datetime default NULL,
  `DatMod` datetime default NULL,
  `DatClo` datetime default NULL,
  `HorSect` varchar(10) default NULL,
  `CodHie` smallint(6) default NULL,
  `CodHor` varchar(6) default NULL,
  `LibHor` varchar(100) default NULL,
  `Telephone` varchar(20) default NULL,
  `Poste` varchar(10) default NULL,
  `Fax` varchar(20) default NULL,
  `Portable` varchar(20) default NULL,
  `Bureau` varchar(20) default NULL,
  `RoleDeta` longtext,
  `DatMaj` datetime default NULL,
  `DatNai` datetime default NULL,
  `VilNai` varchar(250) default NULL,
  `DepNai` varchar(5) default NULL,
  `NomPre` varchar(30) default NULL,
  `Actif` tinyint(4) NOT NULL,
  `IneTP` smallint(6) default NULL,
  `HSLabo` smallint(6) default NULL,
  `MissioLabo` tinyint(4) NOT NULL,
  `LogUse` varchar(100) default NULL,
  `NumImmo` varchar(50) default NULL,
  `INSEE` varchar(16) default NULL,
  `Circe` tinyint(4) NOT NULL,
  `PaysNai` varchar(250) default NULL,
  `Signat` tinyint(4) NOT NULL,
  `Temptation` tinyint(4) NOT NULL,
  `Verrou` varchar(50) default NULL,
  `NumautCond` int(11) default NULL,
  `Autorise` int(11) default NULL,
  `INM` char(5) default NULL,
  `AgGesper` varchar(12) default NULL,
  `AgRe` varchar(20) default NULL,
  `AgRisques` int(11) default NULL,
  `REHUCIT` varchar(255) default NULL,
  `libelle_poste` longtext,
  `dossier_d` int(11) default NULL,
  `dossier_r` int(11) default NULL,
  `libelle_doc` longblob NOT NULL,
  PRIMARY KEY  (`Kage`)
) ENGINE=MyISAM AUTO_INCREMENT=2607 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `agentsbpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentsbpc` (
  `Kage` int(11) NOT NULL,
  `Kpos` int(11) default NULL,
  `Kres` int(11) default NULL,
  `Nom` varchar(250) default NULL,
  `Prenom` varchar(250) default NULL,
  `Matri` varchar(10) NOT NULL,
  `Adresse` longtext,
  `AdrePers` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `ageperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ageperm` (
  `Kape` int(11) NOT NULL auto_increment,
  `Kcpe` int(11) default NULL,
  `Kage` int(11) default NULL,
  `NumPerm` varchar(255) default NULL,
  `DatObt` datetime default NULL,
  `Verrou` blob,
  PRIMARY KEY  (`Kape`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `agepiece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agepiece` (
  `Kpie` int(11) NOT NULL auto_increment,
  `Kcpe` int(11) default NULL,
  `Kage` int(11) NOT NULL,
  `TypPie` int(11) NOT NULL,
  `NumPie` varchar(255) default NULL,
  `DatPie` datetime default NULL,
  `DatVal` datetime default NULL,
  `SignPie` varchar(255) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kpie`)
) ENGINE=MyISAM AUTO_INCREMENT=2796 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `agerol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agerol` (
  `Kagr` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `Krol` int(11) NOT NULL,
  `Priorite` int(11) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kagr`)
) ENGINE=MyISAM AUTO_INCREMENT=5218 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `annexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annexes` (
  `Kann` int(11) NOT NULL auto_increment,
  `Krol` int(11) default NULL,
  `LibAnnc` varchar(50) default NULL,
  `LibAnn` varchar(200) default NULL,
  `Lie` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kann`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `backupagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backupagents` (
  `Kage` int(11) NOT NULL,
  `Kuni` int(11) default NULL,
  `Ksub` int(11) default NULL,
  `Kser` int(11) default NULL,
  `Kbat` int(11) default NULL,
  `Kgra` int(11) default NULL,
  `Kbur` int(11) default NULL,
  `Kres` int(11) default NULL,
  `Ksec` int(11) default NULL,
  `Nom` varchar(250) default NULL,
  `Prenom` varchar(250) default NULL,
  `Matri` varchar(10) NOT NULL,
  `DatCre` datetime default NULL,
  `DatOuv` datetime default NULL,
  `DatMod` datetime default NULL,
  `DatClo` datetime default NULL,
  `HorSect` varchar(10) default NULL,
  `CodHie` smallint(6) default NULL,
  `CodHor` varchar(6) default NULL,
  `LibHor` varchar(100) default NULL,
  `Telephone` varchar(20) default NULL,
  `Poste` varchar(10) default NULL,
  `Fax` varchar(20) default NULL,
  `Portable` varchar(20) default NULL,
  `Bureau` varchar(20) default NULL,
  `RoleDeta` longtext,
  `DatMaj` datetime default NULL,
  `DatNai` datetime default NULL,
  `VilNai` varchar(250) default NULL,
  `DepNai` varchar(5) default NULL,
  `NomPre` varchar(30) default NULL,
  `Actif` tinyint(4) NOT NULL,
  `IneTP` smallint(6) default NULL,
  `HSLabo` smallint(6) default NULL,
  `MissioLabo` tinyint(4) NOT NULL,
  `LogUse` varchar(100) default NULL,
  `NumImmo` varchar(50) default NULL,
  `INSEE` varchar(16) default NULL,
  `Circe` tinyint(4) NOT NULL,
  `PaysNai` varchar(250) default NULL,
  `Signat` tinyint(4) NOT NULL,
  `Temptation` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  `NumautCond` int(11) default NULL,
  `Autorise` int(11) default NULL,
  `INM` char(5) default NULL,
  `AgGesper` varchar(12) default NULL,
  `AgRe` varchar(20) default NULL,
  `AgRisques` int(11) default NULL,
  `Ksec2` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `batiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batiments` (
  `Kbat` int(11) NOT NULL auto_increment,
  `LibBatC` varchar(50) default NULL,
  `LibBat` varchar(250) default NULL,
  `Verrou` tinyblob,
  `GPS` varchar(50) NOT NULL,
  PRIMARY KEY  (`Kbat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `catgrad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catgrad` (
  `Kcgr` int(11) NOT NULL auto_increment,
  `LibCgr` varchar(150) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kcgr`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `catperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catperm` (
  `Kcpe` int(11) NOT NULL auto_increment,
  `CatPerm` char(10) default NULL,
  `DefPerm` longtext,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kcpe`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `catpiece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catpiece` (
  `Kcpi` int(11) NOT NULL auto_increment,
  `TypPiece` int(11) default NULL,
  `CatPiece` varchar(150) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kcpi`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `Kcon` int(11) NOT NULL auto_increment,
  `Ksoc` int(11) NOT NULL,
  `Nom` varchar(100) default NULL,
  `Prenom` varchar(100) default NULL,
  `Mel` varchar(250) default NULL,
  `Telephone` varchar(20) default NULL,
  `Portable` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Fonction` varchar(100) default NULL,
  `DatMaj` datetime default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kcon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `db_interim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_interim` (
  `PID` int(11) NOT NULL auto_increment,
  `Agent` int(11) default NULL,
  `Interim` int(11) default NULL,
  `Final` int(11) default NULL,
  `D0` datetime default NULL,
  `D1` datetime default NULL,
  `VISA1` int(11) default NULL,
  `VISA2` int(11) default NULL,
  `VALID` int(11) default NULL,
  `UID` varchar(50) default NULL,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `descripchamp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descripchamp` (
  `Kdes` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `haut` int(11) default NULL,
  `gauche` int(11) default NULL,
  `largeur` int(11) default NULL,
  `hauteur` int(11) default NULL,
  `panel` varchar(100) default NULL,
  `caption` varchar(100) default NULL,
  `Descrip` longtext,
  `indice` int(11) default NULL,
  PRIMARY KEY  (`Kdes`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `domaines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domaines` (
  `ID_DOMAINE` decimal(3,0) NOT NULL,
  `NOM_DOMAINE` int(11) NOT NULL,
  PRIMARY KEY  (`ID_DOMAINE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `droit_consult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droit_consult` (
  `KConsult` int(11) NOT NULL auto_increment,
  `CodeConsult` int(11) default NULL,
  `LibConsultC` char(50) default NULL,
  `LibConsult` char(50) default NULL,
  PRIMARY KEY  (`KConsult`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `etablissements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etablissements` (
  `Kets` int(11) NOT NULL auto_increment,
  `Kadr` int(11) default NULL,
  `LibEts` text character set latin1,
  `LibEtsC` varchar(50) character set latin1 default NULL,
  `Obs` longtext character set latin1,
  `etsGESPER` varchar(50) character set latin1 default NULL,
  `Archive` int(11) NOT NULL,
  PRIMARY KEY  (`Kets`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `familles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familles` (
  `Kfam` int(11) NOT NULL auto_increment,
  `LibFam` varchar(100) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kfam`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `feries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feries` (
  `Kfer` int(11) NOT NULL auto_increment,
  `DateFerie` datetime default NULL,
  `LibFerie` varchar(100) default NULL,
  `RTT` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kfer`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `gestion_droits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestion_droits` (
  `Kdts` int(11) NOT NULL auto_increment,
  `Kage` int(11) default NULL,
  `DtValid` int(11) default NULL,
  `DtConsultation` int(11) default NULL,
  PRIMARY KEY  (`Kdts`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `Kgra` int(11) NOT NULL auto_increment,
  `Kcgr` int(11) NOT NULL,
  `LibGrac` varchar(50) default NULL,
  `LibGra` varchar(250) default NULL,
  `Gesper` varchar(20) default NULL,
  `Statut` varchar(100) default NULL,
  `CatFP` varchar(50) default NULL,
  `TechAdm` varchar(100) default NULL,
  `HSDroit` tinyint(4) NOT NULL,
  `Verrou` int(11) default NULL,
  PRIMARY KEY  (`Kgra`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `hierarchie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchie` (
  `Khie` int(11) NOT NULL auto_increment,
  `Kuni` int(11) default NULL,
  `Ksub` int(11) default NULL,
  `Kser` int(11) default NULL,
  `Kage` int(11) NOT NULL,
  `Krol` int(11) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Khie`)
) ENGINE=MyISAM AUTO_INCREMENT=1617 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `historic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historic` (
  `Khis` int(11) NOT NULL auto_increment,
  `LogUse` varchar(50) default NULL,
  `LibHis` varchar(50) default NULL,
  `LibSubc` varchar(50) default NULL,
  `DatExe` datetime default NULL,
  `TypExe` varchar(3) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Khis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `interim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interim` (
  `PID` int(11) NOT NULL auto_increment,
  `AGENT` int(11) default NULL,
  `V1` int(11) default NULL,
  `V2` int(11) default NULL,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mela` (
  `Kmela` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `LibMelA` varchar(250) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kmela`)
) ENGINE=MyISAM AUTO_INCREMENT=2074 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mele` (
  `Kmele` int(11) NOT NULL auto_increment,
  `Kets` int(11) NOT NULL,
  `LibMelE` varchar(250) default NULL,
  PRIMARY KEY  (`Kmele`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mels` (
  `Kmels` int(11) NOT NULL auto_increment,
  `Ksub` int(11) NOT NULL,
  `LibMelS` longtext,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kmels`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `melu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melu` (
  `Kmelu` int(11) NOT NULL auto_increment,
  `Kuni` int(11) NOT NULL,
  `LibMelU` longtext,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kmelu`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `melv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melv` (
  `Kmelv` int(11) NOT NULL auto_increment,
  `Kser` int(11) NOT NULL,
  `LibMelV` longtext,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kmelv`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `motif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motif` (
  `kmof` int(11) NOT NULL auto_increment,
  `motif` varchar(255) NOT NULL,
  PRIMARY KEY  (`kmof`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mpaagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mpaagent` (
  `id_MPA` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `idMPALOLF` int(11) default NULL,
  `quotite_MPA` int(11) default NULL,
  `debut_MPA` datetime default NULL,
  `fin_MPA` datetime default NULL,
  `delete_MPA` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id_MPA`)
) ENGINE=MyISAM AUTO_INCREMENT=1461 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `mpalolf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mpalolf` (
  `idMPALOLF` int(11) NOT NULL auto_increment,
  `codeLOLF` varchar(16) default NULL,
  `libMission` text,
  `libProgramme` text,
  `libAction` text,
  `libSousAction` text,
  PRIMARY KEY  (`idMPALOLF`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `old_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `old_grades` (
  `Kgra` int(11) NOT NULL auto_increment,
  `Kcgr` int(11) NOT NULL,
  `LibGrac` varchar(50) default NULL,
  `LibGra` varchar(250) default NULL,
  `Gesper` int(11) default NULL,
  `Statut` varchar(100) default NULL,
  `CatFP` varchar(50) default NULL,
  `TechAdm` varchar(100) default NULL,
  `HSDroit` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kgra`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param` (
  `Kpar` int(11) NOT NULL auto_increment,
  `SauvSource` longtext,
  `ImagesCS` longtext,
  `ImagesWeb` longtext,
  `PhotosCS` longtext,
  `PhotoWeb` longtext,
  `TSource` varchar(100) default NULL,
  `TUser` varchar(100) default NULL,
  `TBDD` varchar(100) default NULL,
  `TPasse` varchar(100) default NULL,
  `TProprio` varchar(100) default NULL,
  `TAcces` varchar(100) default NULL,
  `TServer` varchar(100) default NULL,
  `RSource` varchar(100) default NULL,
  `RUser` varchar(100) default NULL,
  `RBDD` varchar(100) default NULL,
  `RPasse` varchar(100) default NULL,
  `RProprio` varchar(100) default NULL,
  `RAcces` varchar(100) default NULL,
  `RServer` varchar(100) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kpar`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `param_droits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `param_droits` (
  `Kparam` int(11) NOT NULL auto_increment,
  `Kage` int(11) default NULL,
  `Param` varchar(100) default NULL,
  `Value` varchar(100) default NULL,
  PRIMARY KEY  (`Kparam`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `passeport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passeport` (
  `Id` int(11) NOT NULL,
  `IdHabilitation` int(11) default NULL,
  `IdAgent` int(11) default NULL,
  `IdContact` int(11) default NULL,
  `Login` tinytext,
  `Password` tinytext,
  `UID` tinytext,
  `Actif` bit(1) default NULL,
  `DateDerCon` datetime default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `PID` int(11) NOT NULL auto_increment,
  `MATRI` varchar(50) default NULL,
  `PHOTO` varchar(50) default NULL,
  `Verrou` tinyblob,
  `LOCK` int(11) default NULL,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM AUTO_INCREMENT=1610 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `Kpst` int(11) NOT NULL auto_increment,
  `IDPos` varchar(10) default NULL,
  `Position` varchar(100) default NULL,
  `Description` longtext,
  `Ordre` smallint(6) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kpst`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `postal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postal` (
  `Id` int(11) NOT NULL,
  `IdDepartement` int(11) default NULL,
  `IdZone` int(11) default NULL,
  `Code` varchar(50) default NULL,
  `Ville` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `quotite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotite` (
  `Kquo` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL default '0',
  `Quotité` int(11) NOT NULL default '0',
  `DatEta` datetime default NULL,
  PRIMARY KEY  (`Kquo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `recapitulatif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recapitulatif` (
  `id_recapitulatif` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Session` varchar(10) NOT NULL,
  `Nom_organisme` varchar(100) NOT NULL,
  `type_formation` int(11) NOT NULL,
  `upload` longtext,
  PRIMARY KEY  (`id_recapitulatif`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `rolconsult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolconsult` (
  `kRolConsult` int(11) NOT NULL auto_increment,
  `krol` int(11) default NULL,
  `KConsult` int(11) default NULL,
  PRIMARY KEY  (`kRolConsult`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `Krol` int(11) NOT NULL auto_increment,
  `CodRol` int(11) default NULL,
  `LibRolc` varchar(50) default NULL,
  `LibRol` varchar(150) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Krol`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `sauvage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sauvage` (
  `Ksav` int(11) NOT NULL auto_increment,
  `Kuse` int(11) NOT NULL,
  `LibSavc` varchar(50) default NULL,
  `LibSav` varchar(100) default NULL,
  `DatSav` datetime default NULL,
  `Troncage` smallint(6) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Ksav`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `Kser` int(11) NOT NULL auto_increment,
  `Ksub` int(11) NOT NULL,
  `Kadr` int(11) default NULL,
  `LibSerC` varchar(50) default NULL,
  `LibSer` varchar(250) default NULL,
  `Telephone` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Obs` longtext,
  `CodHie` int(11) default NULL,
  `Chemin` longtext,
  `Archive` tinyint(4) default NULL,
  `Verrou` tinyblob,
  `Code` varchar(10) default NULL,
  PRIMARY KEY  (`Kser`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `societes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `societes` (
  `Ksoc` int(11) NOT NULL auto_increment,
  `Kfam` int(11) NOT NULL,
  `Kpos` int(11) NOT NULL,
  `LibSocc` varchar(50) default NULL,
  `LibSoc` varchar(100) default NULL,
  `Adresse` longtext,
  `Web` longtext,
  `Mel` longtext,
  `Telephone` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Ksoc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `sous_domaines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sous_domaines` (
  `ID_SOUS_DOMAINES` decimal(3,0) NOT NULL,
  `ID_DOMAINE` decimal(3,0) NOT NULL,
  `NOM_SOUS_DOMAINES` int(11) NOT NULL,
  PRIMARY KEY  (`ID_SOUS_DOMAINES`),
  KEY `FK_APPARTENIR` (`ID_DOMAINE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `srhmel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srhmel` (
  `Ksrh` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `Melanie` tinyint(4) NOT NULL,
  `SRHVac` tinyint(4) NOT NULL,
  `SRH` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Ksrh`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `subdis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subdis` (
  `Ksub` int(11) NOT NULL auto_increment,
  `Kuni` int(11) NOT NULL,
  `Kadr` int(11) default NULL,
  `LibSubC` varchar(50) default NULL,
  `LibSub` varchar(250) default NULL,
  `HorSect` char(10) default NULL,
  `Code` char(10) default NULL,
  `Telephone` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Obs` longtext,
  `CodHie` int(11) default NULL,
  `Chemin` longtext,
  `Archive` tinyint(4) default NULL,
  `Verrou` tinyblob,
  `subGESPER` varchar(4) default NULL,
  `Kets` int(11) default NULL,
  PRIMARY KEY  (`Ksub`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `tempbpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempbpc` (
  `Matri` varchar(10) default NULL,
  `NomPre` varchar(30) default NULL,
  `DatCre` datetime default NULL,
  `DatOuv` datetime default NULL,
  `DatMod` datetime default NULL,
  `DatClo` datetime default NULL,
  `Horcode` varchar(6) default NULL,
  `LibCourt` varchar(20) default NULL,
  `IneTP` smallint(6) default NULL,
  `InHS` smallint(6) default NULL,
  `DatHophJou` datetime default NULL,
  `Verrou` tinyblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `travaille`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travaille` (
  `ID_SOUS_DOMAINES` decimal(3,0) NOT NULL,
  `ID_MATRICULE` int(11) NOT NULL,
  PRIMARY KEY  (`ID_SOUS_DOMAINES`,`ID_MATRICULE`),
  KEY `FK_TRAVAILLE2` (`ID_MATRICULE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `trombi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trombi` (
  `kage` int(11) NOT NULL,
  `trombi` longtext NOT NULL,
  PRIMARY KEY  (`kage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `type_formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_formation` (
  `id_formation` int(11) NOT NULL auto_increment,
  `Libelle` varchar(100) NOT NULL,
  `frequence` int(11) NOT NULL,
  PRIMARY KEY  (`id_formation`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `unites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unites` (
  `Kuni` int(11) NOT NULL auto_increment,
  `Kadr` int(11) default NULL,
  `LibUnic` varchar(50) default NULL,
  `LibUni` varchar(250) default NULL,
  `Telephone` varchar(20) default NULL,
  `Fax` varchar(20) default NULL,
  `Obs` longtext,
  `CodHie` int(11) default NULL,
  `Chemin` longtext,
  `Archive` tinyint(4) default NULL,
  `Verrou` tinyblob,
  `uniGESPER` varchar(8) default NULL,
  `Code` varchar(10) default NULL,
  `Kets` int(11) default NULL,
  PRIMARY KEY  (`Kuni`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `useannex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useannex` (
  `Kuseann` int(11) NOT NULL auto_increment,
  `Kuse` int(11) NOT NULL,
  `Kann` int(11) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kuseann`)
) ENGINE=MyISAM AUTO_INCREMENT=1203 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Kuse` int(11) NOT NULL auto_increment,
  `Kage` int(11) NOT NULL,
  `IdPasseport` int(11) NOT NULL,
  `DatDerCon` datetime default NULL,
  `Activite` tinyint(4) NOT NULL,
  `Admin` tinyint(4) NOT NULL,
  `Srh` tinyint(4) NOT NULL,
  `Unite` tinyint(4) NOT NULL,
  `SPMG` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  `Consult` tinyint(4) default NULL,
  `CFA` tinyint(4) NOT NULL,
  PRIMARY KEY  (`Kuse`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `v_anubis`;
/*!50001 DROP VIEW IF EXISTS `v_anubis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_anubis` AS SELECT 
 1 AS `Nom`,
 1 AS `Prenom`,
 1 AS `Matri`,
 1 AS `Poste`,
 1 AS `Portable`,
 1 AS `LibMelA`,
 1 AS `LIBELLE_POSTE`,
 1 AS `FAMILLE_PROF`,
 1 AS `EMPLOI_TYPE`,
 1 AS `LibBatC`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `v_bpcandroid`;
/*!50001 DROP VIEW IF EXISTS `v_bpcandroid`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_bpcandroid` AS SELECT 
 1 AS `Nom`,
 1 AS `Prenom`,
 1 AS `Matri`,
 1 AS `Telephone`,
 1 AS `LibMelA`,
 1 AS `LibBatC`*/;
SET character_set_client = @saved_cs_client;
DROP TABLE IF EXISTS `vehassu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehassu` (
  `Kvas` int(11) NOT NULL auto_increment,
  `NomAss` varchar(250) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kvas`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `vehmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehmark` (
  `Kvmk` int(11) NOT NULL auto_increment,
  `Marque` varchar(250) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kvmk`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `vehmod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehmod` (
  `Kvmd` int(11) NOT NULL auto_increment,
  `Kvmk` int(11) NOT NULL,
  `Modele` varchar(250) default NULL,
  `CV` int(11) default NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kvmd`)
) ENGINE=MyISAM AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `Kver` int(11) NOT NULL auto_increment,
  `LibVer` varchar(200) default NULL,
  `DatVer` datetime default NULL,
  `Numero` varchar(10) default NULL,
  `Obs` longtext,
  `Activite` tinyint(4) NOT NULL,
  `Verrou` tinyblob,
  PRIMARY KEY  (`Kver`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `visiom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visiom` (
  `kage` int(11) NOT NULL,
  `LIBELLE_POSTE` varchar(73) default NULL,
  `FAMILLE_PROF` varchar(46) default NULL,
  `EMPLOI_TYPE` varchar(64) default NULL,
  `REHUCIT` varchar(23) default NULL,
  `NOM` varchar(16) default NULL,
  `PRENOM` varchar(15) default NULL,
  `DATE_NAISSANCE` varchar(23) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `vm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm` (
  `kvm` int(11) NOT NULL auto_increment,
  `kage` int(11) NOT NULL,
  `nature_visite` int(11) NOT NULL,
  `date_visite` date default NULL,
  `heure_visite` time default NULL,
  `resultats` int(11) default NULL,
  `commentaires` varchar(255) default NULL,
  PRIMARY KEY  (`kvm`)
) ENGINE=MyISAM AUTO_INCREMENT=776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `vm_natures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm_natures` (
  `kvm_natures` int(11) NOT NULL auto_increment,
  `nature` varchar(255) NOT NULL,
  PRIMARY KEY  (`kvm_natures`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `vm_resultats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm_resultats` (
  `kvm_resultats` int(11) NOT NULL auto_increment,
  `resultat` varchar(255) NOT NULL,
  PRIMARY KEY  (`kvm_resultats`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50001 DROP VIEW IF EXISTS `_bpcandroid`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `_bpcandroid` AS select distinct `bpclight`.`agents`.`Nom` AS `Nom`,`bpclight`.`agents`.`Prenom` AS `Prenom`,`bpclight`.`agents`.`Matri` AS `Matri`,`bpclight`.`agents`.`Telephone` AS `Telephone`,`bpclight`.`mela`.`LibMelA` AS `LibMelA`,`bpclight`.`batiments`.`LibBatC` AS `LibBatC` from ((`agents` join `batiments`) join `mela`) where ((`bpclight`.`agents`.`Kage` = `bpclight`.`mela`.`Kage`) and (`bpclight`.`agents`.`Kbat` = `bpclight`.`batiments`.`Kbat`)) order by `bpclight`.`agents`.`Nom` */;
/*!50001 DROP VIEW IF EXISTS `v_anubis`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_anubis` AS select distinct `bpclight`.`agents`.`Nom` AS `Nom`,`bpclight`.`agents`.`Prenom` AS `Prenom`,`bpclight`.`agents`.`Matri` AS `Matri`,`bpclight`.`agents`.`Poste` AS `Poste`,`bpclight`.`agents`.`Portable` AS `Portable`,`bpclight`.`mela`.`LibMelA` AS `LibMelA`,`bpclight`.`visiom`.`LIBELLE_POSTE` AS `LIBELLE_POSTE`,`bpclight`.`visiom`.`FAMILLE_PROF` AS `FAMILLE_PROF`,`bpclight`.`visiom`.`EMPLOI_TYPE` AS `EMPLOI_TYPE`,`bpclight`.`batiments`.`LibBatC` AS `LibBatC` from (((`agents` join `mela`) join `visiom`) join `batiments`) where ((`bpclight`.`agents`.`Kage` = `bpclight`.`mela`.`Kage`) and (`bpclight`.`agents`.`Kage` = `bpclight`.`visiom`.`kage`) and (`bpclight`.`agents`.`Kbat` = `bpclight`.`batiments`.`Kbat`) and (`bpclight`.`agents`.`Actif` = 1) and (`bpclight`.`mela`.`LibMelA` like _latin1'%@cerema%')) order by `bpclight`.`agents`.`Nom` */;
/*!50001 DROP VIEW IF EXISTS `v_bpcandroid`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_bpcandroid` AS select distinct `bpclight`.`agents`.`Nom` AS `Nom`,`bpclight`.`agents`.`Prenom` AS `Prenom`,`bpclight`.`agents`.`Matri` AS `Matri`,`bpclight`.`agents`.`Telephone` AS `Telephone`,`bpclight`.`mela`.`LibMelA` AS `LibMelA`,`bpclight`.`batiments`.`LibBatC` AS `LibBatC` from ((`agents` join `batiments`) join `mela`) where ((`bpclight`.`agents`.`Kage` = `bpclight`.`mela`.`Kage`) and (`bpclight`.`agents`.`Kbat` = `bpclight`.`batiments`.`Kbat`)) order by `bpclight`.`agents`.`Nom` */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

