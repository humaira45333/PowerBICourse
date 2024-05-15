-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: ggxlogsnewpetronas21may
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Temporary table structure for view `adminuserandcustomermapping`
--

DROP TABLE IF EXISTS `adminuserandcustomermapping`;
/*!50001 DROP VIEW IF EXISTS `adminuserandcustomermapping`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `adminuserandcustomermapping` AS SELECT 
 1 AS `AdminUser`,
 1 AS `customerId`,
 1 AS `email`,
 1 AS `modifiyOn`,
 1 AS `customerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `adminusercustomer`
--

DROP TABLE IF EXISTS `adminusercustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminusercustomer` (
  `AdminUser` varchar(100) NOT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `modifiyOn` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`AdminUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `aggregate_info`
--

DROP TABLE IF EXISTS `aggregate_info`;
/*!50001 DROP VIEW IF EXISTS `aggregate_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `aggregate_info` AS SELECT 
 1 AS `customerid`,
 1 AS `total`,
 1 AS `feature`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `autoemail`
--

DROP TABLE IF EXISTS `autoemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoemail` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(100) NOT NULL,
  `schedule` varchar(45) NOT NULL,
  `emailaddress` varchar(1000) NOT NULL,
  `reportoptions` json NOT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `calculatedlicenseusage`
--

DROP TABLE IF EXISTS `calculatedlicenseusage`;
/*!50001 DROP VIEW IF EXISTS `calculatedlicenseusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `calculatedlicenseusage` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `calculatedlicenseusagetime`
--

DROP TABLE IF EXISTS `calculatedlicenseusagetime`;
/*!50001 DROP VIEW IF EXISTS `calculatedlicenseusagetime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `calculatedlicenseusagetime` AS SELECT 
 1 AS `checkoutDate`,
 1 AS `usageMinutes`,
 1 AS `feature`,
 1 AS `year`,
 1 AS `quarter`,
 1 AS `month_num`,
 1 AS `month`,
 1 AS `day`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `chargedcheckouts`
--

DROP TABLE IF EXISTS `chargedcheckouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chargedcheckouts` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `checkInSeqId` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `lineNumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chargedintervalaudittrail`
--

DROP TABLE IF EXISTS `chargedintervalaudittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chargedintervalaudittrail` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `startDate` timestamp NULL DEFAULT NULL,
  `endDate` timestamp NULL DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `deletedOn` timestamp NULL DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chargedintervals`
--

DROP TABLE IF EXISTS `chargedintervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chargedintervals` (
  `seqId` int(11) DEFAULT NULL,
  `StartDate` timestamp NULL DEFAULT NULL,
  `EndDate` timestamp NULL DEFAULT NULL,
  `chargedDate` timestamp NULL DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `billerName` varchar(100) DEFAULT NULL,
  `totalamount` float DEFAULT NULL,
  `remainingamount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `chargedlicenseusage`
--

DROP TABLE IF EXISTS `chargedlicenseusage`;
/*!50001 DROP VIEW IF EXISTS `chargedlicenseusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `chargedlicenseusage` AS SELECT 
 1 AS `checkOutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkInID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `usageDays`,
 1 AS `RatesPerDay`,
 1 AS `chargedRate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `charginghistory`
--

DROP TABLE IF EXISTS `charginghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charginghistory` (
  `DaysFirstcheckoutid` int(11) NOT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `usersystem` varchar(100) DEFAULT NULL,
  `DaysFirstcheckinid` int(11) DEFAULT NULL,
  `reportstartdate` timestamp NULL DEFAULT NULL,
  `reportenddate` timestamp NULL DEFAULT NULL,
  `licenseusagestartdate` timestamp NULL DEFAULT NULL,
  `licenseusageenddate` timestamp NULL DEFAULT NULL,
  `usageminutes` int(11) DEFAULT NULL,
  `usagedays` int(11) DEFAULT NULL,
  `ratesperday` float DEFAULT NULL,
  `accumulatedcharging` float DEFAULT NULL,
  `chargedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `customerId` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkins`
--

DROP TABLE IF EXISTS `checkins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkins` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `checkOutSeqId` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `lineNumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`),
  KEY `idx_checkins_feature` (`feature`),
  KEY `idx_checkins_date` (`date`),
  KEY `idx_checkins_customerId` (`customerId`),
  KEY `idx_checkins_feature_customerId` (`feature`,`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2571673 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkouts`
--

DROP TABLE IF EXISTS `checkouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkouts` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `checkInSeqId` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `lineNumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`),
  KEY `idx_checkouts_customerId` (`customerId`),
  KEY `idx_checkouts_feature` (`feature`),
  KEY `idx_checkouts_date` (`date`),
  KEY `idx_checkouts_feature_customerId` (`feature`,`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2454738 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `checkrun`
--

DROP TABLE IF EXISTS `checkrun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkrun` (
  `customerid` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `run` tinyint(4) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `concurrentview`
--

DROP TABLE IF EXISTS `concurrentview`;
/*!50001 DROP VIEW IF EXISTS `concurrentview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `concurrentview` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `adHost` varchar(100) DEFAULT NULL,
  `adPasswd` varchar(100) DEFAULT NULL,
  `adPort` varchar(100) DEFAULT NULL,
  `adUser` varchar(100) DEFAULT NULL,
  `Email_host` varchar(100) DEFAULT NULL,
  `Login_email` varchar(100) DEFAULT NULL,
  `Email_from` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `stackTraceLoc` varchar(100) DEFAULT NULL,
  `generated_file_location` varchar(100) DEFAULT NULL,
  `auto_email_path` varchar(100) DEFAULT NULL,
  `setFirstRun` int(11) DEFAULT '0',
  `timedKillJar` varchar(100) DEFAULT NULL,
  `lmutilPath` varchar(100) DEFAULT NULL,
  `logSource` varchar(100) DEFAULT NULL,
  `archieveFolderPath` varchar(100) DEFAULT NULL,
  `processingFolder` varchar(100) DEFAULT NULL,
  `FileName` varchar(100) DEFAULT NULL,
  `ExcelFileConcurrentUsage` varchar(100) DEFAULT NULL,
  `dataTableRows` varchar(100) DEFAULT '10',
  `popup` varchar(100) DEFAULT 'enabled',
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `continuinglicenseusage`
--

DROP TABLE IF EXISTS `continuinglicenseusage`;
/*!50001 DROP VIEW IF EXISTS `continuinglicenseusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `continuinglicenseusage` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `customerId`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerId` varchar(45) NOT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `remainingBalance` float DEFAULT NULL,
  `minimumAllowedBalance` int(11) DEFAULT NULL,
  `modifiyOn` timestamp NULL DEFAULT NULL,
  `salesTaxValue` float DEFAULT NULL,
  `licenseType` varchar(45) DEFAULT NULL,
  `serverType` varchar(45) NOT NULL,
  `fileType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  KEY `idx_customer_customerName` (`customerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER line_check_insert AFTER INSERT ON customer
FOR EACH ROW
BEGIN
  insert into customerlinecheck(customerId, maxLineNumber) values (new.customerId, 0);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `customer_view`
--

DROP TABLE IF EXISTS `customer_view`;
/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customer_view` AS SELECT 
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remainingBalance`,
 1 AS `minimumAllowedBalance`,
 1 AS `modifiyOn`,
 1 AS `salesTaxValue`,
 1 AS `licenseType`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customeraudittrail`
--

DROP TABLE IF EXISTS `customeraudittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customeraudittrail` (
  `seqID` int(11) NOT NULL AUTO_INCREMENT,
  `changedColumns` varchar(200) DEFAULT NULL,
  `changedDate` timestamp NULL DEFAULT NULL,
  `changedBy` varchar(45) DEFAULT NULL,
  `columnValues` varchar(100) DEFAULT NULL,
  `image` mediumblob,
  `customerId` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customerlinecheck`
--

DROP TABLE IF EXISTS `customerlinecheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerlinecheck` (
  `customerId` varchar(45) NOT NULL,
  `maxLineNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `customerremainingbalanceandmodifieddate`
--

DROP TABLE IF EXISTS `customerremainingbalanceandmodifieddate`;
/*!50001 DROP VIEW IF EXISTS `customerremainingbalanceandmodifieddate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customerremainingbalanceandmodifieddate` AS SELECT 
 1 AS `remainingBalance`,
 1 AS `customerId`,
 1 AS `modifiyOn`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `denial`
--

DROP TABLE IF EXISTS `denial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denial` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usersystem` varchar(200) DEFAULT NULL,
  `lineNumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`),
  KEY `idx_denial_feature` (`feature`),
  KEY `idx_denial_date` (`date`),
  KEY `idx_denial_customerId` (`customerId`),
  KEY `idx_denial_feature_customerId` (`feature`,`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=1644331 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `denial_view`
--

DROP TABLE IF EXISTS `denial_view`;
/*!50001 DROP VIEW IF EXISTS `denial_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `denial_view` AS SELECT 
 1 AS `seqId`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `date`,
 1 AS `usersystem`,
 1 AS `lineNumber`,
 1 AS `customerId`,
 1 AS `customerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `email_timer_schedule`
--

DROP TABLE IF EXISTS `email_timer_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_timer_schedule` (
  `Hours` int(11) DEFAULT NULL,
  `Minutes` int(11) DEFAULT NULL,
  `Seconds` int(11) DEFAULT NULL,
  `AM_PM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emailcheck`
--

DROP TABLE IF EXISTS `emailcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailcheck` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(45) NOT NULL,
  `mailType` varchar(20) NOT NULL,
  `insertDate` datetime NOT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emailconfig`
--

DROP TABLE IF EXISTS `emailconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailconfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(50) DEFAULT NULL,
  `catagory_id` varchar(11) DEFAULT NULL,
  `Subjetc` varchar(100) DEFAULT NULL,
  `MessageBody` varchar(200) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `timer_schedule` varchar(20) DEFAULT NULL,
  `emailType` int(11) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emailinterval`
--

DROP TABLE IF EXISTS `emailinterval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailinterval` (
  `expiry` varchar(100) NOT NULL,
  `serverDown` varchar(100) NOT NULL,
  `lmsExpiry` varchar(100) NOT NULL,
  `exception` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emailstatus`
--

DROP TABLE IF EXISTS `emailstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailstatus` (
  `customerId` varchar(100) NOT NULL,
  `lastemail` varchar(20) DEFAULT NULL,
  `failuredatetime` varchar(45) DEFAULT NULL,
  `licensedowndatetime` varchar(45) DEFAULT NULL,
  `failuredate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featurealias`
--

DROP TABLE IF EXISTS `featurealias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurealias` (
  `feature` varchar(45) NOT NULL,
  `alias` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featurebundles`
--

DROP TABLE IF EXISTS `featurebundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurebundles` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(45) NOT NULL,
  `bundlename` varchar(45) DEFAULT NULL,
  `keyfeatures` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featurecost`
--

DROP TABLE IF EXISTS `featurecost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurecost` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `customerId` varchar(45) NOT NULL,
  `currency` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featureratecompany`
--

DROP TABLE IF EXISTS `featureratecompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featureratecompany` (
  `Feature` varchar(100) DEFAULT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `RatesPerDay` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `featureratecompanywithcustomername`
--

DROP TABLE IF EXISTS `featureratecompanywithcustomername`;
/*!50001 DROP VIEW IF EXISTS `featureratecompanywithcustomername`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `featureratecompanywithcustomername` AS SELECT 
 1 AS `Feature`,
 1 AS `Company`,
 1 AS `RatesPerDay`,
 1 AS `customerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `FeatureID` int(11) NOT NULL AUTO_INCREMENT,
  `Feature` varchar(100) DEFAULT NULL,
  `RatesPerDay` float DEFAULT NULL,
  PRIMARY KEY (`FeatureID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featuresandlistofcustomerids`
--

DROP TABLE IF EXISTS `featuresandlistofcustomerids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featuresandlistofcustomerids` (
  `featureName` varchar(45) NOT NULL,
  `listOfCustomerIds` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`featureName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `featuresreport`
--

DROP TABLE IF EXISTS `featuresreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featuresreport` (
  `checkoutDate` datetime DEFAULT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `usageMinutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `featureusagebyusers`
--

DROP TABLE IF EXISTS `featureusagebyusers`;
/*!50001 DROP VIEW IF EXISTS `featureusagebyusers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `featureusagebyusers` AS SELECT 
 1 AS `user`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `featurewithcode`
--

DROP TABLE IF EXISTS `featurewithcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featurewithcode` (
  `code` varchar(45) NOT NULL,
  `feature` varchar(45) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filepathcustomermapping`
--

DROP TABLE IF EXISTS `filepathcustomermapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filepathcustomermapping` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(10000) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `filepathtype` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `filepathcustomernamemapping`
--

DROP TABLE IF EXISTS `filepathcustomernamemapping`;
/*!50001 DROP VIEW IF EXISTS `filepathcustomernamemapping`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `filepathcustomernamemapping` AS SELECT 
 1 AS `ID`,
 1 AS `filepath`,
 1 AS `filepathtype`,
 1 AS `customerId`,
 1 AS `customerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `historiclicenseusage`
--

DROP TABLE IF EXISTS `historiclicenseusage`;
/*!50001 DROP VIEW IF EXISTS `historiclicenseusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `historiclicenseusage` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `customerid`,
 1 AS `feature`,
 1 AS `l_customerid`,
 1 AS `l_feature`,
 1 AS `user`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ignoredcheckouts`
--

DROP TABLE IF EXISTS `ignoredcheckouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ignoredcheckouts` (
  `idnew_table` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `inusestatus`
--

DROP TABLE IF EXISTS `inusestatus`;
/*!50001 DROP VIEW IF EXISTS `inusestatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inusestatus` AS SELECT 
 1 AS `customerid`,
 1 AS `feature`,
 1 AS `expiration`,
 1 AS `total`,
 1 AS `inuse`,
 1 AS `available`,
 1 AS `usersystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licenseinfo`
--

DROP TABLE IF EXISTS `licenseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenseinfo` (
  `customerid` varchar(45) DEFAULT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `count` varchar(45) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  KEY `idx_licenseinfo_customerid` (`customerid`),
  KEY `idx_licenseinfo_feature` (`feature`),
  KEY `idx_licenseinfo_customerid_feature` (`customerid`,`feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `licenseinfo2`
--

DROP TABLE IF EXISTS `licenseinfo2`;
/*!50001 DROP VIEW IF EXISTS `licenseinfo2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseinfo2` AS SELECT 
 1 AS `customerid`,
 1 AS `feature`,
 1 AS `count`,
 1 AS `expiration`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licenseserverstatus`
--

DROP TABLE IF EXISTS `licenseserverstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenseserverstatus` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `downtime` timestamp NULL DEFAULT NULL,
  `uptime` timestamp NULL DEFAULT NULL,
  `customerId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB AUTO_INCREMENT=20620 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `licenseserverstatus_time_view`
--

DROP TABLE IF EXISTS `licenseserverstatus_time_view`;
/*!50001 DROP VIEW IF EXISTS `licenseserverstatus_time_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseserverstatus_time_view` AS SELECT 
 1 AS `LicenseServer`,
 1 AS `TotalHours`,
 1 AS `year`,
 1 AS `month_num`,
 1 AS `month`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `licenseserverstatus_view`
--

DROP TABLE IF EXISTS `licenseserverstatus_view`;
/*!50001 DROP VIEW IF EXISTS `licenseserverstatus_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseserverstatus_view` AS SELECT 
 1 AS `seqId`,
 1 AS `status`,
 1 AS `downtime`,
 1 AS `uptime`,
 1 AS `customerId`,
 1 AS `customerName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `licenseserverupdown`
--

DROP TABLE IF EXISTS `licenseserverupdown`;
/*!50001 DROP VIEW IF EXISTS `licenseserverupdown`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseserverupdown` AS SELECT 
 1 AS `servername`,
 1 AS `uptime`,
 1 AS `downtime`,
 1 AS `serverstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licensestatus`
--

DROP TABLE IF EXISTS `licensestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licensestatus` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `system` varchar(45) DEFAULT NULL,
  `inuse` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `DateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB AUTO_INCREMENT=31493924 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licensestatusdata`
--

DROP TABLE IF EXISTS `licensestatusdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licensestatusdata` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `system` varchar(45) DEFAULT NULL,
  `Checkout` varchar(45) DEFAULT '0000-00-00 00:00:00',
  `CommandTime` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(45) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB AUTO_INCREMENT=178745 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `licensestatussummary`
--

DROP TABLE IF EXISTS `licensestatussummary`;
/*!50001 DROP VIEW IF EXISTS `licensestatussummary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licensestatussummary` AS SELECT 
 1 AS `customerId`,
 1 AS `feature`,
 1 AS `expiration`,
 1 AS `total`,
 1 AS `inuse`,
 1 AS `available`,
 1 AS `usersystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `licenseuptimereport`
--

DROP TABLE IF EXISTS `licenseuptimereport`;
/*!50001 DROP VIEW IF EXISTS `licenseuptimereport`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseuptimereport` AS SELECT 
 1 AS `upTime`,
 1 AS `customerId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licenseusage`
--

DROP TABLE IF EXISTS `licenseusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenseusage` (
  `SeqID` int(11) NOT NULL AUTO_INCREMENT,
  `LogID` int(11) DEFAULT NULL,
  `CheckTime` timestamp NULL DEFAULT NULL,
  `Action` varchar(25) NOT NULL,
  `Feature` varchar(100) NOT NULL,
  `UserID` varchar(100) NOT NULL,
  `usersystemID` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `checkOutID` int(11) DEFAULT NULL,
  `record_updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SeqID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `licenseusagedata`
--

DROP TABLE IF EXISTS `licenseusagedata`;
/*!50001 DROP VIEW IF EXISTS `licenseusagedata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseusagedata` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `customerId`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `licenseusagedays`
--

DROP TABLE IF EXISTS `licenseusagedays`;
/*!50001 DROP VIEW IF EXISTS `licenseusagedays`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseusagedays` AS SELECT 
 1 AS `checkOutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `usageMinutes`,
 1 AS `usageDays`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `licenseusagehistoricdata`
--

DROP TABLE IF EXISTS `licenseusagehistoricdata`;
/*!50001 DROP VIEW IF EXISTS `licenseusagehistoricdata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseusagehistoricdata` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`,
 1 AS `lic_customerid`,
 1 AS `lic_feature`,
 1 AS `lic_sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `licenseusagehistorictable`
--

DROP TABLE IF EXISTS `licenseusagehistorictable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenseusagehistorictable` (
  `checkoutdate` datetime DEFAULT NULL,
  `checkindate` datetime DEFAULT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `usageMinutes` bigint(21) DEFAULT NULL,
  `usagehours` decimal(16,0) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `lic_customerid` varchar(45) DEFAULT NULL,
  `lic_feature` varchar(45) DEFAULT NULL,
  `lic_sum` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `licenseusageinfoplot`
--

DROP TABLE IF EXISTS `licenseusageinfoplot`;
/*!50001 DROP VIEW IF EXISTS `licenseusageinfoplot`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `licenseusageinfoplot` AS SELECT 
 1 AS `feature`,
 1 AS `customerid`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` varchar(300) NOT NULL,
  `insert_dateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(2) NOT NULL,
  `lineNumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manualcheckinaudittrail`
--

DROP TABLE IF EXISTS `manualcheckinaudittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manualcheckinaudittrail` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `changedDate` timestamp NULL DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `manualCheckinDate` datetime DEFAULT NULL,
  `checkoutDate` datetime DEFAULT NULL,
  `originalCheckinDate` datetime DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manualcheckins`
--

DROP TABLE IF EXISTS `manualcheckins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manualcheckins` (
  `seqId` int(11) NOT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `checkOutSeqId` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `usersystem` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `negoriginalusage`
--

DROP TABLE IF EXISTS `negoriginalusage`;
/*!50001 DROP VIEW IF EXISTS `negoriginalusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `negoriginalusage` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `originalcheckins`
--

DROP TABLE IF EXISTS `originalcheckins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `originalcheckins` (
  `seqid` int(11) NOT NULL AUTO_INCREMENT,
  `feature` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `checkoutseqid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `usersystem` varchar(100) DEFAULT NULL,
  `linenumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `originalcheckouts`
--

DROP TABLE IF EXISTS `originalcheckouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `originalcheckouts` (
  `seqid` int(11) NOT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `checkinseqid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `usersystem` varchar(100) DEFAULT NULL,
  `linenumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `originalusage`
--

DROP TABLE IF EXISTS `originalusage`;
/*!50001 DROP VIEW IF EXISTS `originalusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `originalusage` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `originalusageinuse`
--

DROP TABLE IF EXISTS `originalusageinuse`;
/*!50001 DROP VIEW IF EXISTS `originalusageinuse`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `originalusageinuse` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `originalusagetable`
--

DROP TABLE IF EXISTS `originalusagetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `originalusagetable` (
  `checkoutdate` datetime DEFAULT NULL,
  `checkindate` datetime DEFAULT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `usageMinutes` bigint(21) DEFAULT NULL,
  `usagehours` decimal(16,0) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `overallusage`
--

DROP TABLE IF EXISTS `overallusage`;
/*!50001 DROP VIEW IF EXISTS `overallusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overallusage` AS SELECT 
 1 AS `feature`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `overlappedlicenseusage`
--

DROP TABLE IF EXISTS `overlappedlicenseusage`;
/*!50001 DROP VIEW IF EXISTS `overlappedlicenseusage`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overlappedlicenseusage` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkoutDate`,
 1 AS `checkinID`,
 1 AS `checkinDate`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `overlappedrecords`
--

DROP TABLE IF EXISTS `overlappedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overlappedrecords` (
  `checkoutID` int(11) NOT NULL,
  `feature` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `usersystem` varchar(45) DEFAULT NULL,
  `checkoutDate` timestamp NULL DEFAULT NULL,
  `overlappeCheckoutID` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `read_operation`
--

DROP TABLE IF EXISTS `read_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_operation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `firstRow` varchar(200) DEFAULT NULL,
  `archivedFileName` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `NumOfRowsInserted` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `realtimelicensestatus`
--

DROP TABLE IF EXISTS `realtimelicensestatus`;
/*!50001 DROP VIEW IF EXISTS `realtimelicensestatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `realtimelicensestatus` AS SELECT 
 1 AS `customerid`,
 1 AS `feature`,
 1 AS `expiration`,
 1 AS `total`,
 1 AS `inuse`,
 1 AS `available`,
 1 AS `usersystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reportemailcheck`
--

DROP TABLE IF EXISTS `reportemailcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportemailcheck` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `scheduleseqId` int(11) NOT NULL,
  `reportname` varchar(45) NOT NULL,
  `sentTime` datetime NOT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reports_charging_history`
--

DROP TABLE IF EXISTS `reports_charging_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_charging_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record_id` int(11) DEFAULT NULL,
  `charged_from` varchar(50) DEFAULT NULL,
  `charged_upto` varchar(50) DEFAULT NULL,
  `KeyValues` varchar(150) DEFAULT NULL,
  `charged_days` varchar(20) DEFAULT NULL,
  `from_date` varchar(30) DEFAULT NULL,
  `to_date` varchar(30) DEFAULT NULL,
  `generated_by` varchar(50) DEFAULT NULL,
  `generated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serveralias`
--

DROP TABLE IF EXISTS `serveralias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serveralias` (
  `server` varchar(45) NOT NULL,
  `alias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `serveraliastr`
--

DROP TABLE IF EXISTS `serveraliastr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serveraliastr` (
  `server` varchar(45) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `simplelicenseusagedata`
--

DROP TABLE IF EXISTS `simplelicenseusagedata`;
/*!50001 DROP VIEW IF EXISTS `simplelicenseusagedata`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `simplelicenseusagedata` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`,
 1 AS `customerId`,
 1 AS `usageMinutes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `temporiginalcheckout`
--

DROP TABLE IF EXISTS `temporiginalcheckout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporiginalcheckout` (
  `seqid` int(11) NOT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `checkinseqid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `usersystem` varchar(100) DEFAULT NULL,
  `linenumber` int(11) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tempusers`
--

DROP TABLE IF EXISTS `tempusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempusers` (
  `username` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `insertTime` datetime NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `time_id` int(4) NOT NULL,
  `the_year` int(2) DEFAULT NULL,
  `month_of_year` int(2) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `quarter` varchar(30) DEFAULT NULL,
  `the_date` timestamp NULL DEFAULT NULL,
  `the_month` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `testview`
--

DROP TABLE IF EXISTS `testview`;
/*!50001 DROP VIEW IF EXISTS `testview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `testview` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagehours`,
 1 AS `customerId`,
 1 AS `customerName`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `time_by_day_generated`
--

DROP TABLE IF EXISTS `time_by_day_generated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_by_day_generated` (
  `my_year` int(11) NOT NULL,
  `my_month` int(11) NOT NULL,
  `quarter` varchar(20) NOT NULL,
  `month_of_year` int(11) NOT NULL,
  `week_of_year` int(11) NOT NULL,
  `day_of_month` int(11) NOT NULL,
  `the_month` varchar(20) NOT NULL,
  `checkoutDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timelicensekill`
--

DROP TABLE IF EXISTS `timelicensekill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timelicensekill` (
  `seqId` int(11) NOT NULL AUTO_INCREMENT,
  `datatokill` varchar(100) NOT NULL,
  `time` varchar(45) NOT NULL,
  `customerId` varchar(45) NOT NULL,
  `insertTime` datetime NOT NULL,
  PRIMARY KEY (`seqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `typeId` int(10) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `classifiedName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `unmappeduserusersystem`
--

DROP TABLE IF EXISTS `unmappeduserusersystem`;
/*!50001 DROP VIEW IF EXISTS `unmappeduserusersystem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `unmappeduserusersystem` AS SELECT 
 1 AS `checkoutdate`,
 1 AS `checkindate`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `usageMinutes`,
 1 AS `usagedays`,
 1 AS `customerId`,
 1 AS `remark`,
 1 AS `admin`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `unprocessedcheckinoutmap`
--

DROP TABLE IF EXISTS `unprocessedcheckinoutmap`;
/*!50001 DROP VIEW IF EXISTS `unprocessedcheckinoutmap`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `unprocessedcheckinoutmap` AS SELECT 
 1 AS `checkoutID`,
 1 AS `feature`,
 1 AS `user`,
 1 AS `usersystem`,
 1 AS `checkinID`,
 1 AS `checkoutDate`,
 1 AS `checkinDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertitle` varchar(100) NOT NULL,
  `UserEmail` varchar(50) DEFAULT NULL,
  `catagory_id` varchar(11) DEFAULT NULL,
  `userType` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `MessageBody` varchar(200) DEFAULT NULL,
  `timer_schedule` varchar(20) DEFAULT NULL,
  `emailType` int(11) DEFAULT NULL,
  `emailenabled` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userscatagory`
--

DROP TABLE IF EXISTS `userscatagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userscatagory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_catagory` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userusersystemcustomermapping`
--

DROP TABLE IF EXISTS `userusersystemcustomermapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userusersystemcustomermapping` (
  `usersystem` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `customerId` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'ggxlogsnewpetronas21may'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `historicdata_event` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `historicdata_event` ON SCHEDULE EVERY 10 MINUTE STARTS '2023-06-16 18:54:09' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
 DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
 BEGIN
   DO RELEASE_LOCK('historicdata_event_lock');
 END;
 IF  GET_LOCK('historicdata_event_lock', 0) THEN
   delete from ggxlogsnewpetronas21may.licenseusagehistorictable;
   insert ignore into ggxlogsnewpetronas21may.licenseusagehistorictable (select * from ggxlogsnewpetronas21may.licenseusagehistoricdata);
 END IF;
  DO RELEASE_LOCK('historicdata_event_lock');
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `originalusage_event` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `originalusage_event` ON SCHEDULE EVERY 10 MINUTE STARTS '2023-06-16 18:55:57' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
 DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
 BEGIN
   DO RELEASE_LOCK('originalusage_event_lock');
 END;
 IF  GET_LOCK('originalusage_event_lock', 0) THEN
   delete from ggxlogsnewpetronas21may.originalusagetable;
   insert ignore into ggxlogsnewpetronas21may.originalusagetable (select * from ggxlogsnewpetronas21may.originalusage);
 END IF;
  DO RELEASE_LOCK('originalusage_event_lock');
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'ggxlogsnewpetronas21may'
--
/*!50003 DROP PROCEDURE IF EXISTS `allCheckIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allCheckIn`(in admname varchar(100),in manCheckInTime timestamp, in customerId varchar(100))
BEGIN 
    DECLARE done INT DEFAULT FALSE;
    DECLARE coid INT;
    DECLARE curs CURSOR FOR  SELECT seqId FROM checkouts where checkInSeqId IS NULL AND checkouts.customerId = customerId;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN curs;
    read_loop: LOOP
    FETCH curs INTO coid;
    IF done THEN
      LEAVE read_loop;
    END IF;
    call InsertManualCheckIn(manCheckInTime, coid, 'reset all', admname,customerId);
    END LOOP;
    CLOSE curs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteInterval` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteInterval`(in chargingDate TimeStamp, in customerId varchar(100))
BEGIN 
delete from chargedintervals where chargedDate=chargingDate and chargedintervals.customerId = customerId;
delete from charginghistory where chargeDate=chargingDate and charginghistory.customerId = customerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FlushDb` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FlushDb`()
BEGIN
delete from chargedintervals;
delete from charginghistory;
delete from checkins;
delete from checkouts;
delete from customerlinecheck;
delete from denial;
delete from featureratecompany;
delete from emailconfig;
delete from adminusercustomer;
delete from licenseserverstatus;
delete from licenseusage;
delete from ignoredcheckouts;
delete from logs;
delete from originalcheckins;
delete from originalcheckouts;
delete from overlappedrecords;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBundles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBundles`(in customerId varchar(100))
BEGIN
IF customerId = 'ALL' then
select distinct bundlename from featurebundles;
else
select distinct bundlename from featurebundles where featurebundles.customerId=customerId;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSummary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSummary`(IN reportBeginDate timestamp, IN reportEndDate timestamp, in customerId varchar(100))
BEGIN
IF not customerId = 'ALL' then
select featureinuse,sum(usagedays),RatesPerDay,sum(accumulatedCharging) from (  select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature featureinuse,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId           
from calculatedlicenseusage left outer join featureratecompany on calculatedlicenseusage.feature=featureratecompany.feature inner join checkouts on featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate and checkouts.customerId=customerId order by checkoutID
) t1 group by featureinuse;
else
 select featureinuse,sum(usagedays),RatesPerDay,sum(accumulatedCharging) from ( select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature featureinuse,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId            
from calculatedlicenseusage left outer join featureratecompany on calculatedlicenseusage.feature=featureratecompany.Feature inner join checkouts on featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate order by checkoutID ) t1 group by featureinuse;

end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUsers`(in customerId varchar(100))
BEGIN
 IF customerId = 'ALL' then
 select distinct user from checkouts;
 else
 select distinct user from checkouts where checkouts.customerId=customerId;
 end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Getusersystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Getusersystem`(in customerId varchar(100))
BEGIN
 IF customerId = 'ALL' then
 select distinct usersystem from checkouts;
 else
 select distinct usersystem from checkouts where checkouts.customerId = customerId;
 end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDummyManualCheckinRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDummyManualCheckinRecord`()
BEGIN  
   INSERT INTO `ggxlogs`.`manualcheckins`
(`seqId`,
`feature`,
`user`,
`checkOutSeqId`,
`date`,
`usersystem`,
`remark`,
`admin`,
`customerId`)
VALUES
(-1,
'X-Y-Z',
'ABC',
-3,
'2000-01-01 00:00:00',
'XYZ',
'Test',
'LodAdmin',
'Customer');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertFeaturesForCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertFeaturesForCustomer`(in customerId varchar(100))
BEGIN  
    DECLARE done INT DEFAULT FALSE;
    DECLARE rateRead Float;
    declare featureRead varchar(100);
    DECLARE curs CURSOR FOR  SELECT Feature,RatesPerDay FROM features;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN curs;
    if not exists(select * from featureratecompany where company=customerId) then
    read_loop: LOOP
    FETCH curs INTO featureRead,rateRead;
    IF done THEN
      LEAVE read_loop;
    END IF;
    insert into featureratecompany values(featureRead,customerId,rateRead);
    END LOOP;
    CLOSE curs;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertManualCheckIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertManualCheckIn`(IN checkindate timestamp, IN checkoutSEQID int, in remarks varchar(200),in admname varchar(100), in customerId varchar(100))
BEGIN
DECLARE id INT;
DECLARE cofeature,couser,cousersystem,cocheckInSeqId VARCHAR(100);
declare checkoutdate,originalcheckindate timestamp; 
select feature,user,usersystem,checkInSeqId into cofeature,couser,cousersystem,cocheckInSeqId from checkouts where seqID=checkoutSEQID;
select min(seqId) into id  from manualcheckins;
set id=id-1;
insert into manualcheckins values (id,cofeature,couser,checkoutSEQID,checkindate,cousersystem,remarks,admname,customerId);
commit;
insert into checkins(seqId,feature,user,checkOutSeqId,date,usersystem,customerId) values (id,cofeature,couser,checkoutSEQID,checkindate,cousersystem,customerId);
update checkouts set checkInSeqId=id where seqId=checkoutSEQID;
update checkins set checkOutSeqId=null where seqid=cocheckInSeqId;
select date,user into checkoutdate,couser from checkouts where seqId = checkoutSEQID;
select date,user into originalcheckindate,couser from checkins where seqid=cocheckInSeqId;
insert into manualcheckinaudittrail values (id,couser,CURRENT_TIMESTAMP(),customerId,checkindate,checkoutdate,originalcheckindate);
commit;
select checkOutSeqId,cocheckInSeqId from checkins where seqid=cocheckInSeqId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PeteronasUsageView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `PeteronasUsageView`(in reportBeginDate timestamp,in reportEndDate timestamp, in userName varchar(100),in customerId varchar(100))
BEGIN
IF customerId IS NULL then
  SELECT 
        `originalcheckouts`.`date` AS `checkoutdate`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN ISNULL(`manualcheckins`.`date`) THEN reportEndDate
                    ELSE `manualcheckins`.`date`
                END)
            ELSE `checkins`.`date`
        END) AS `checkindate`,
        `originalcheckouts`.`feature` AS `feature`,
        `originalcheckouts`.`user` AS `user`,
        `originalcheckouts`.`usersystem` AS `usersystem`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN
                        ISNULL(`manualcheckins`.`date`)
                    THEN
                        TIMESTAMPDIFF(MINUTE,
                            `originalcheckouts`.`date`,
                           reportEndDate)
                    ELSE TIMESTAMPDIFF(MINUTE,
                        `originalcheckouts`.`date`,
                        `manualcheckins`.`date`)
                END)
            ELSE TIMESTAMPDIFF(MINUTE,
                `originalcheckouts`.`date`,
                `checkins`.`date`)
        END) AS `usageMinutes`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN
                        ISNULL(`manualcheckins`.`date`)
                    THEN
                        CEILING((TIMESTAMPDIFF(MINUTE,
                                    `originalcheckouts`.`date`,
                                   reportEndDate) / 1440))
                    ELSE CEILING((TIMESTAMPDIFF(MINUTE,
                                `originalcheckouts`.`date`,
                                `manualcheckins`.`date`) / 1440))
                END)
            ELSE CEILING((TIMESTAMPDIFF(MINUTE,
                        `originalcheckouts`.`date`,
                        `checkins`.`date`) / 1440))
        END) AS `usagedays`,
        `originalcheckouts`.`customerId` AS `customerId`,
        `customer`.`customerName` AS `customerName`,
        (CASE
            WHEN
                ISNULL(`manualcheckins`.`remark`)
            THEN
                (CASE
                    WHEN ISNULL(`checkins`.`date`) THEN 'In Use'
                    ELSE 'Released'
                END)
            ELSE `manualcheckins`.`remark`
        END) AS `remark`,
        (CASE
            WHEN ISNULL(`manualcheckins`.`admin`) THEN `originalcheckouts`.`user`
            ELSE `manualcheckins`.`admin`
        END) AS `admin`
    FROM
        (((`originalcheckouts`
        LEFT JOIN `checkins` ON (((`originalcheckouts`.`checkinseqid` = `checkins`.`seqId`)
            AND (`checkins`.`checkOutSeqId` = `originalcheckouts`.`seqid`))))
        LEFT JOIN `manualcheckins` ON ((`originalcheckouts`.`checkinseqid` = `manualcheckins`.`seqId`)))
        LEFT JOIN `customer` ON ((`originalcheckouts`.`customerId` = `customer`.`customerId`)))
                                where ((reportBeginDate < `originalcheckouts`.`date` AND reportEndDate > `checkins`. `date`) or 
                                ( reportBeginDate > `originalcheckouts`.`date` AND  reportBeginDate < `checkins`. `date` AND reportEndDate > `originalcheckouts`.`date` AND reportEndDate < `checkins`. `date` ) or
                               (reportBeginDate < `originalcheckouts`.`date` AND  reportBeginDate < `checkins`. `date` AND reportEndDate > `originalcheckouts`.`date` AND reportEndDate < `checkins`. `date` ) or
                                ( reportBeginDate > `originalcheckouts`.`date` AND reportEndDate > `checkins`. `date` and reportBeginDate < `checkins`. `date`));
else
  SELECT  
        `originalcheckouts`.`date` AS `checkoutdate`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN ISNULL(`manualcheckins`.`date`) THEN reportEndDate
                    ELSE `manualcheckins`.`date`
                END)
            ELSE `checkins`.`date`
        END) AS `checkindate`,
        `originalcheckouts`.`feature` AS `feature`,
        `originalcheckouts`.`user` AS `user`,
        `originalcheckouts`.`usersystem` AS `usersystem`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN
                        ISNULL(`manualcheckins`.`date`)
                    THEN
                        TIMESTAMPDIFF(MINUTE,
                            `originalcheckouts`.`date`,
                            reportEndDate)
                    ELSE TIMESTAMPDIFF(MINUTE,
                        `originalcheckouts`.`date`,
                        `manualcheckins`.`date`)
                END)
            ELSE TIMESTAMPDIFF(MINUTE,
                `originalcheckouts`.`date`,
                `checkins`.`date`)
        END) AS `usageMinutes`,
        (CASE
            WHEN
                ISNULL(`checkins`.`date`) or reportEndDate<`checkins`.`date`
            THEN
                (CASE
                    WHEN
                        ISNULL(`manualcheckins`.`date`)
                    THEN
                        CEILING((TIMESTAMPDIFF(MINUTE,
                                    `originalcheckouts`.`date`,
                                    reportEndDate) / 1440))
                    ELSE CEILING((TIMESTAMPDIFF(MINUTE,
                                `originalcheckouts`.`date`,
                                `manualcheckins`.`date`) / 1440))
                END)
            ELSE CEILING((TIMESTAMPDIFF(MINUTE,
                        `originalcheckouts`.`date`,
                        `checkins`.`date`) / 1440))
        END) AS `usagedays`,
        `originalcheckouts`.`customerId` AS `customerId`,
        `customer`.`customerName` AS `customerName`,
        (CASE
            WHEN
                ISNULL(`manualcheckins`.`remark`)
            THEN
                (CASE
                    WHEN ISNULL(`checkins`.`date`) THEN 'In Use'
                    ELSE 'Released'
                END)
            ELSE `manualcheckins`.`remark`
        END) AS `remark`,
        (CASE
            WHEN ISNULL(`manualcheckins`.`admin`) THEN `originalcheckouts`.`user`
            ELSE `manualcheckins`.`admin`
        END) AS `admin`
    FROM
        (((`originalcheckouts`
        LEFT JOIN `checkins` ON (((`originalcheckouts`.`checkinseqid` = `checkins`.`seqId`)
            AND (`checkins`.`checkOutSeqId` = `originalcheckouts`.`seqid`))))
        LEFT JOIN `manualcheckins` ON ((`originalcheckouts`.`checkinseqid` = `manualcheckins`.`seqId`)))
        LEFT JOIN `customer` ON ((`originalcheckouts`.`customerId` = `customer`.`customerId`)))
                                   where ((reportBeginDate < `originalcheckouts`.`date` AND reportEndDate > `checkins`. `date`) or 
                                ( reportBeginDate > `originalcheckouts`.`date` AND  reportBeginDate < `checkins`. `date` AND reportEndDate > `originalcheckouts`.`date` AND reportEndDate < `checkins`. `date` ) or
                               (reportBeginDate < `originalcheckouts`.`date` AND  reportBeginDate < `checkins`. `date` AND reportEndDate > `originalcheckouts`.`date` AND reportEndDate < `checkins`. `date` ) or
                                ( reportBeginDate > `originalcheckouts`.`date` AND reportEndDate > `checkins`. `date` and reportBeginDate < `checkins`. `date`)) AND `originalcheckouts`.`customerId` = customerId;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsageBetweenDates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UsageBetweenDates`(IN reportBeginDate timestamp, IN reportEndDate timestamp, in customerId varchar(100), in charge boolean, in adminName varchar(100),in totalamount float(11),in remainingamount float(11))
BEGIN
DECLARE id INT;
select max(seqId) into id  from chargedintervals;
set id = IFNULL(id,0);
set id=id+1;

if exists(select * from chargedintervals where startDate>=reportBeginDate and startDate<=reportEndDate and  (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL')) and charge then
select * from chargedintervals where startDate>=reportBeginDate and startDate<=reportEndDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL');
elseif exists (select * from chargedintervals where endDate>=reportBeginDate and endDate<=reportEndDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL')) and charge   then
select * from chargedintervals where endDate>=reportBeginDate and endDate<=reportEndDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL');
elseif exists (select * from chargedintervals where startDate<=reportBeginDate and endDate>=reportBeginDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL')) and charge  then
select * from chargedintervals where startDate<=reportBeginDate and endDate>=reportBeginDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL');
elseif exists (select * from chargedintervals where startDate<=reportEndDate and endDate>=reportEndDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL')) and charge then
select * from chargedintervals where endDate>=reportBeginDate and startDate<=reportEndDate and (chargedintervals.customerId=customerId or chargedintervals.customerId='NULL');
else
IF not customerId= 'NULL' then
  select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId
from calculatedlicenseusage
left outer join featureratecompany 
on calculatedlicenseusage.feature=featureratecompany.feature 
inner join checkouts on 
featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate and checkouts.customerId=customerId order by checkoutID;
else
  select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId            
from calculatedlicenseusage
left outer join featureratecompany 
on calculatedlicenseusage.feature=featureratecompany.feature 
inner join checkouts on 
featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate order by checkoutID;
end if;
if charge then
IF not customerId= 'NULL' then
insert into charginghistory(DaysFirstcheckoutid,feature,user,usersystem,DaysFirstcheckinid,reportstartdate,reportenddate,licenseusagestartdate,licenseusageenddate,usageminutes,usagedays,ratesperday,accumulatedcharging,customerId)   select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate  reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId           
from calculatedlicenseusage
left outer join featureratecompany 
on calculatedlicenseusage.feature=featureratecompany.feature 
inner join checkouts on 
featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate and checkouts.customerId=customerId;
else
insert into charginghistory(DaysFirstcheckoutid,feature,user,usersystem,DaysFirstcheckinid,reportstartdate,reportenddate,licenseusagestartdate,licenseusageenddate,usageminutes,usagedays,ratesperday,accumulatedcharging,customerId)   select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate  reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440)) AS UsageDays,
            RatesPerDay,
            ceil((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end))))/1440))*featureratecompany.RatesPerDay accumulatedCharging,customerId        
from calculatedlicenseusage
left outer join featureratecompany 
on calculatedlicenseusage.feature=featureratecompany.feature 
inner join checkouts on 
featureratecompany.company=checkouts.customerId and calculatedlicenseusage.checkoutID = checkouts.seqId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate;
end if;
update customer set remainingBalance=(remainingamount-totalamount), modifiyOn = utc_timestamp()  where customer.customerid=customerId;
insert into chargedintervals values(id,reportBeginDate,reportEndDate,CURRENT_TIMESTAMP(),customerId,adminName,totalamount,(remainingamount-totalamount));
end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsageByUserBetweenDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UsageByUserBetweenDate`(in reportBeginDate timestamp,in reportEndDate timestamp, in userName varchar(100),in customerId varchar(100))
BEGIN
 IF not customerId IS NULL then
  select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            round((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)))/60)/24)+1) AS UsageDays,
            RatesPerDay,
            round((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)))/60)/24)+1)*featureratecompany.RatesPerDay accumulatedCharging,customerId            
from userusersystemcustomermapping inner join calculatedlicenseusage on userusersystemcustomermapping.user=calculatedlicenseusage.user and userusersystemcustomermapping.usersystem=calculatedlicenseusage.usersystem left outer join featureratecompany on calculatedlicenseusage.feature=featureratecompany.feature and featureratecompany.company=userusersystemcustomermapping.customerId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate and customerId=userusersystemcustomermapping.customerId and calculatedlicenseusage.user=userName order by checkoutID;
else
  select checkoutID DaysFirstCheckOutID,calculatedlicenseusage.feature,calculatedlicenseusage.user,calculatedlicenseusage.usersystem,checkinID DaysFirstCheckINID, reportBeginDate reportStartDate
,reportEndDate reportEndDate,
(case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end) LicenseUsageStartDate,
(case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end) LicenseUsageEndDate,
TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)) AS UsageMinutes,
            round((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)))/60)/24)+1) AS UsageDays,
            RatesPerDay,
            round((((TIMESTAMPDIFF(MINUTE,
            (case when(reportBeginDate>=checkoutDate) then reportBeginDate else checkoutDate end),
            (case when(reportEndDate<=checkInDate) then reportEndDate else checkInDate end)))/60)/24)+1)*featureratecompany.RatesPerDay accumulatedCharging,customerId            
from userusersystemcustomermapping inner join calculatedlicenseusage on userusersystemcustomermapping.user=calculatedlicenseusage.user and userusersystemcustomermapping.usersystem=calculatedlicenseusage.usersystem left outer join featureratecompany on calculatedlicenseusage.feature=featureratecompany.Feature and featureratecompany.company=userusersystemcustomermapping.customerId
where checkoutDate<=reportEndDate and checkinDate>=reportBeginDate and calculatedlicenseusage.user=userName order by checkoutID;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `adminuserandcustomermapping`
--

/*!50001 DROP VIEW IF EXISTS `adminuserandcustomermapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `adminuserandcustomermapping` AS select `adminusercustomer`.`AdminUser` AS `AdminUser`,`adminusercustomer`.`customerId` AS `customerId`,`adminusercustomer`.`email` AS `email`,`adminusercustomer`.`modifiyOn` AS `modifiyOn`,`customer`.`customerName` AS `customerName` from (`adminusercustomer` left join `customer` on((convert(`adminusercustomer`.`customerId` using utf8) = `customer`.`customerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aggregate_info`
--

/*!50001 DROP VIEW IF EXISTS `aggregate_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aggregate_info` AS select (case when (`licenseinfo2`.`customerid` = 'RockDoc') then 'hq-rls-40' else substr(`licenseinfo2`.`customerid`,1,9) end) AS `customerid`,(case when (`licenseinfo2`.`feature` like 'Petrel_%') then 1 else `licenseinfo2`.`count` end) AS `total`,(case when (`licenseinfo2`.`feature` like 'Petrel_%') then 'PETREL' else `licenseinfo2`.`feature` end) AS `feature` from `licenseinfo2` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calculatedlicenseusage`
--

/*!50001 DROP VIEW IF EXISTS `calculatedlicenseusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calculatedlicenseusage` AS select `t1`.`checkoutID` AS `checkoutID`,`t1`.`feature` AS `feature`,`t1`.`user` AS `user`,`t1`.`usersystem` AS `usersystem`,`t1`.`checkinID` AS `checkinID`,`t1`.`checkoutDate` AS `checkoutDate`,(case `t1`.`checkinID` when -(1) then now() else `t1`.`checkinDate` end) AS `checkinDate`,`t1`.`usageMinutes` AS `usageMinutes` from (select `simplelicenseusagedata`.`checkoutID` AS `checkoutID`,`simplelicenseusagedata`.`feature` AS `feature`,`simplelicenseusagedata`.`user` AS `user`,`simplelicenseusagedata`.`usersystem` AS `usersystem`,`simplelicenseusagedata`.`checkinID` AS `checkinID`,`simplelicenseusagedata`.`checkoutDate` AS `checkoutDate`,`simplelicenseusagedata`.`checkinDate` AS `checkinDate`,`simplelicenseusagedata`.`usageMinutes` AS `usageMinutes` from `ggxlogsnewpetronas21may`.`simplelicenseusagedata` where ((not(`simplelicenseusagedata`.`checkoutID` in (select `ggxlogsnewpetronas21may`.`ignoredcheckouts`.`idnew_table` from `ggxlogsnewpetronas21may`.`ignoredcheckouts`))) and (not(`simplelicenseusagedata`.`checkoutID` in (select `overlappedlicenseusage`.`checkoutID` from `ggxlogsnewpetronas21may`.`overlappedlicenseusage`))) and (`simplelicenseusagedata`.`usageMinutes` > 4)) union select `overlappedlicenseusage`.`checkoutID` AS `checkoutID`,`overlappedlicenseusage`.`feature` AS `feature`,`overlappedlicenseusage`.`user` AS `user`,`overlappedlicenseusage`.`usersystem` AS `usersystem`,`overlappedlicenseusage`.`checkinID` AS `checkinID`,`overlappedlicenseusage`.`checkoutDate` AS `checkoutDate`,`overlappedlicenseusage`.`checkinDate` AS `checkinDate`,`overlappedlicenseusage`.`usageMinutes` AS `usageMinutes` from `ggxlogsnewpetronas21may`.`overlappedlicenseusage` where ((not(`overlappedlicenseusage`.`checkoutID` in (select `ggxlogsnewpetronas21may`.`ignoredcheckouts`.`idnew_table` from `ggxlogsnewpetronas21may`.`ignoredcheckouts`))) and (`overlappedlicenseusage`.`usageMinutes` > 4))) `t1` order by `t1`.`checkoutID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `calculatedlicenseusagetime`
--

/*!50001 DROP VIEW IF EXISTS `calculatedlicenseusagetime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `calculatedlicenseusagetime` AS select `calculatedlicenseusage`.`checkoutDate` AS `checkoutDate`,`calculatedlicenseusage`.`usageMinutes` AS `usageMinutes`,`calculatedlicenseusage`.`feature` AS `feature`,year(`calculatedlicenseusage`.`checkoutDate`) AS `year`,quarter(`calculatedlicenseusage`.`checkoutDate`) AS `quarter`,month(`calculatedlicenseusage`.`checkoutDate`) AS `month_num`,monthname(`calculatedlicenseusage`.`checkoutDate`) AS `month`,dayofmonth(`calculatedlicenseusage`.`checkoutDate`) AS `day` from `ggxlogsnewpetronas21may`.`calculatedlicenseusage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `chargedlicenseusage`
--

/*!50001 DROP VIEW IF EXISTS `chargedlicenseusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `chargedlicenseusage` AS select `licenseusagedays`.`checkOutID` AS `checkOutID`,`licenseusagedays`.`feature` AS `feature`,`licenseusagedays`.`user` AS `user`,`licenseusagedays`.`usersystem` AS `usersystem`,`licenseusagedays`.`checkinID` AS `checkInID`,`licenseusagedays`.`checkoutDate` AS `checkoutDate`,`licenseusagedays`.`checkinDate` AS `checkinDate`,`licenseusagedays`.`usageDays` AS `usageDays`,`ggxlogsnewpetronas21may`.`features`.`RatesPerDay` AS `RatesPerDay`,(`licenseusagedays`.`usageDays` * `ggxlogsnewpetronas21may`.`features`.`RatesPerDay`) AS `chargedRate` from (`ggxlogsnewpetronas21may`.`licenseusagedays` left join `ggxlogsnewpetronas21may`.`features` on((`licenseusagedays`.`feature` = convert(`ggxlogsnewpetronas21may`.`features`.`Feature` using utf8)))) order by `licenseusagedays`.`checkOutID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `concurrentview`
--

/*!50001 DROP VIEW IF EXISTS `concurrentview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `concurrentview` AS select distinct `checkouts`.`date` AS `checkoutdate`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then now() else `manualcheckins`.`date` end) else `checkins`.`date` end) AS `checkindate`,(case when isnull(`featurealias`.`alias`) then `checkouts`.`feature` else `featurealias`.`alias` end) AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then timestampdiff(MINUTE,`checkouts`.`date`,now()) else timestampdiff(MINUTE,`checkouts`.`date`,`manualcheckins`.`date`) end) else timestampdiff(MINUTE,`checkouts`.`date`,`checkins`.`date`) end) AS `usageMinutes`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then ceiling(timestampdiff(HOUR,`checkouts`.`date`,now())) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`manualcheckins`.`date`)) end) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`)) end) AS `usagehours`,`checkouts`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName`,(case when isnull(`manualcheckins`.`remark`) then convert((case when isnull(`checkins`.`date`) then 'In Use' else 'Released' end) using utf8) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `checkouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from ((((`checkouts` left join `checkins` on(((`checkouts`.`checkInSeqId` = `checkins`.`seqId`) and (`checkins`.`checkOutSeqId` = `checkouts`.`seqId`)))) left join `manualcheckins` on((`checkouts`.`checkInSeqId` = `manualcheckins`.`seqId`))) left join `customer_view` on((`checkouts`.`customerId` = `customer_view`.`customerId`))) left join `featurealias` on((`checkouts`.`feature` = `featurealias`.`feature`))) where (isnull(`checkins`.`date`) or (`checkouts`.`date` < `checkins`.`date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `continuinglicenseusage`
--

/*!50001 DROP VIEW IF EXISTS `continuinglicenseusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `continuinglicenseusage` AS select `checkouts`.`seqId` AS `checkoutID`,`checkouts`.`feature` AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,`checkouts`.`customerId` AS `customerId`,-(1) AS `checkinID`,`checkouts`.`date` AS `checkoutDate`,now() AS `checkinDate`,timestampdiff(MINUTE,`checkouts`.`date`,now()) AS `usageMinutes` from `checkouts` where isnull(`checkouts`.`checkInSeqId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_view`
--

/*!50001 DROP VIEW IF EXISTS `customer_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_view` AS select `customer`.`customerId` AS `customerId`,(case when isnull(`serveralias`.`alias`) then `customer`.`customerName` else `serveralias`.`alias` end) AS `customerName`,`customer`.`remainingBalance` AS `remainingBalance`,`customer`.`minimumAllowedBalance` AS `minimumAllowedBalance`,`customer`.`modifiyOn` AS `modifiyOn`,`customer`.`salesTaxValue` AS `salesTaxValue`,`customer`.`licenseType` AS `licenseType` from (`customer` left join `serveralias` on((`customer`.`customerId` = `serveralias`.`server`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerremainingbalanceandmodifieddate`
--

/*!50001 DROP VIEW IF EXISTS `customerremainingbalanceandmodifieddate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerremainingbalanceandmodifieddate` AS select `customer`.`remainingBalance` AS `remainingBalance`,`customer`.`customerId` AS `customerId`,`adminusercustomer`.`modifiyOn` AS `modifiyOn` from (`customer` join `adminusercustomer` on((convert(`customer`.`customerId` using utf8) = `adminusercustomer`.`customerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `denial_view`
--

/*!50001 DROP VIEW IF EXISTS `denial_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `denial_view` AS select `denial`.`seqId` AS `seqId`,(case when isnull(`featurealias`.`alias`) then `denial`.`feature` else `featurealias`.`alias` end) AS `feature`,`denial`.`user` AS `user`,`denial`.`date` AS `date`,`denial`.`usersystem` AS `usersystem`,`denial`.`lineNumber` AS `lineNumber`,`denial`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName` from ((`denial` left join `customer_view` on((`denial`.`customerId` = `customer_view`.`customerId`))) left join `featurealias` on((`denial`.`feature` = `featurealias`.`feature`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `featureratecompanywithcustomername`
--

/*!50001 DROP VIEW IF EXISTS `featureratecompanywithcustomername`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `featureratecompanywithcustomername` AS select `featureratecompany`.`Feature` AS `Feature`,`featureratecompany`.`Company` AS `Company`,`featureratecompany`.`RatesPerDay` AS `RatesPerDay`,`customer`.`customerName` AS `customerName` from (`featureratecompany` left join `customer` on((convert(`featureratecompany`.`Company` using utf8) = `customer`.`customerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `featureusagebyusers`
--

/*!50001 DROP VIEW IF EXISTS `featureusagebyusers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `featureusagebyusers` AS select `calculatedlicenseusage`.`user` AS `user`,sum(`calculatedlicenseusage`.`usageMinutes`) AS `usageMinutes` from `ggxlogsnewpetronas21may`.`calculatedlicenseusage` group by `calculatedlicenseusage`.`user` order by `usageMinutes` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filepathcustomernamemapping`
--

/*!50001 DROP VIEW IF EXISTS `filepathcustomernamemapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filepathcustomernamemapping` AS select `filepathcustomermapping`.`ID` AS `ID`,`filepathcustomermapping`.`filepath` AS `filepath`,`filepathcustomermapping`.`filepathtype` AS `filepathtype`,`filepathcustomermapping`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName` from (`filepathcustomermapping` left join `customer_view` on((convert(`filepathcustomermapping`.`customerId` using utf8) = `customer_view`.`customerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historiclicenseusage`
--

/*!50001 DROP VIEW IF EXISTS `historiclicenseusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historiclicenseusage` AS select `u`.`checkoutdate` AS `checkoutdate`,`u`.`checkindate` AS `checkindate`,`u`.`customerid` AS `customerid`,`u`.`feature` AS `feature`,`lic`.`customerid` AS `l_customerid`,`lic`.`feature` AS `l_feature`,`u`.`user` AS `user` from (((select cast(`originalusage`.`checkoutdate` as date) AS `checkoutdate`,cast(`originalusage`.`checkindate` as date) AS `checkindate`,`originalusage`.`customerId` AS `customerid`,`originalusage`.`feature` AS `feature`,`originalusage`.`user` AS `user`,upper(concat(`originalusage`.`customerId`,`originalusage`.`feature`)) AS `JOINKEY` from `ggxlogsnewpetronas21may`.`originalusage`)) `u` left join (select `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid` AS `customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature` AS `feature`,upper(concat(`ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`)) AS `JOINKEY`,sum(`ggxlogsnewpetronas21may`.`licenseinfo`.`count`) AS `maxavailable` from `ggxlogsnewpetronas21may`.`licenseinfo` group by `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`) `lic` on((convert(upper(`u`.`JOINKEY`) using utf8) like concat('%',upper(`lic`.`JOINKEY`),'%')))) union all select `u`.`checkoutdate` AS `checkoutdate`,`u`.`checkindate` AS `checkindate`,`u`.`customerid` AS `customerid`,`u`.`feature` AS `feature`,`lic`.`customerid` AS `l_customerid`,`lic`.`feature` AS `l_feature`,`u`.`user` AS `user` from (((select `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid` AS `customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature` AS `feature`,upper(concat(`ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`)) AS `JOINKEY`,sum(`ggxlogsnewpetronas21may`.`licenseinfo`.`count`) AS `maxavailable` from `ggxlogsnewpetronas21may`.`licenseinfo` group by `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`,upper(concat(`ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`)))) `lic` left join (select cast(`originalusage`.`checkoutdate` as date) AS `checkoutdate`,cast(`originalusage`.`checkindate` as date) AS `checkindate`,`originalusage`.`customerId` AS `customerid`,`originalusage`.`feature` AS `feature`,`originalusage`.`user` AS `user`,upper(concat(`originalusage`.`customerId`,`originalusage`.`feature`)) AS `JOINKEY` from `ggxlogsnewpetronas21may`.`originalusage`) `u` on((convert(upper(`u`.`JOINKEY`) using utf8) like concat('%',upper(`lic`.`JOINKEY`),'%')))) where isnull(`u`.`JOINKEY`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inusestatus`
--

/*!50001 DROP VIEW IF EXISTS `inusestatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inusestatus` AS select `a`.`customerid` AS `customerid`,(case when isnull(`b`.`alias`) then `a`.`feature` else concat(`a`.`feature`,concat('-',`b`.`alias`)) end) AS `feature`,`a`.`expiration` AS `expiration`,`a`.`total` AS `total`,(case when isnull(`b`.`inuse`) then 0 else (case when (`b`.`inuse` <= `a`.`total`) then `b`.`inuse` else `a`.`total` end) end) AS `inuse`,(case when isnull(`b`.`inuse`) then `a`.`total` else (case when (`b`.`inuse` <= `a`.`total`) then (`a`.`total` - `b`.`inuse`) else 0 end) end) AS `available`,(case when isnull(`b`.`usersystem`) then '' else `b`.`usersystem` end) AS `usersystem` from (((select `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid` AS `customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature` AS `feature`,`ggxlogsnewpetronas21may`.`licenseinfo`.`expiration` AS `expiration`,sum(`ggxlogsnewpetronas21may`.`licenseinfo`.`count`) AS `total` from `ggxlogsnewpetronas21may`.`licenseinfo` group by `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`)) `a` left join (select `originalusageinuse`.`customerId` AS `customerid`,`originalusageinuse`.`feature` AS `feature`,`ggxlogsnewpetronas21may`.`featurealias`.`alias` AS `alias`,count(`originalusageinuse`.`remark`) AS `inuse`,group_concat(distinct `originalusageinuse`.`usersystem` separator ',') AS `usersystem` from (`ggxlogsnewpetronas21may`.`originalusageinuse` left join `ggxlogsnewpetronas21may`.`featurealias` on((`originalusageinuse`.`feature` = `ggxlogsnewpetronas21may`.`featurealias`.`feature`))) where ((`originalusageinuse`.`remark` = 'In Use') and (`originalusageinuse`.`checkoutdate` > (now() - interval 1 week))) group by `originalusageinuse`.`feature`,`originalusageinuse`.`customerId`) `b` on(((`a`.`feature` = `b`.`feature`) and (`a`.`customerid` = `b`.`customerid`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseinfo2`
--

/*!50001 DROP VIEW IF EXISTS `licenseinfo2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseinfo2` AS select distinct `licenseinfo`.`customerid` AS `customerid`,`licenseinfo`.`feature` AS `feature`,`licenseinfo`.`count` AS `count`,`licenseinfo`.`expiration` AS `expiration` from `licenseinfo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseserverstatus_time_view`
--

/*!50001 DROP VIEW IF EXISTS `licenseserverstatus_time_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseserverstatus_time_view` AS select `licenseserverstatus_view`.`customerId` AS `LicenseServer`,((to_days(`licenseserverstatus_view`.`uptime`) - to_days(`licenseserverstatus_view`.`downtime`)) * 24) AS `TotalHours`,year(`licenseserverstatus_view`.`downtime`) AS `year`,month(`licenseserverstatus_view`.`downtime`) AS `month_num`,monthname(`licenseserverstatus_view`.`downtime`) AS `month` from `licenseserverstatus_view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseserverstatus_view`
--

/*!50001 DROP VIEW IF EXISTS `licenseserverstatus_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseserverstatus_view` AS select `licenseserverstatus`.`seqId` AS `seqId`,`licenseserverstatus`.`status` AS `status`,`licenseserverstatus`.`downtime` AS `downtime`,`licenseserverstatus`.`uptime` AS `uptime`,`licenseserverstatus`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName` from (`licenseserverstatus` left join `customer_view` on((`licenseserverstatus`.`customerId` = `customer_view`.`customerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseserverupdown`
--

/*!50001 DROP VIEW IF EXISTS `licenseserverupdown`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseserverupdown` AS select distinct `licenseserverstatus`.`customerId` AS `servername`,`licenseserverstatus`.`uptime` AS `uptime`,`licenseserverstatus`.`downtime` AS `downtime`,(case when isnull(`licenseserverstatus`.`uptime`) then 'down' else 'up' end) AS `serverstatus` from `licenseserverstatus` where (`licenseserverstatus`.`downtime` is not null) order by `licenseserverstatus`.`downtime` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licensestatussummary`
--

/*!50001 DROP VIEW IF EXISTS `licensestatussummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licensestatussummary` AS select `a`.`customerId` AS `customerId`,`a`.`feature` AS `feature`,`b`.`expiration` AS `expiration`,`a`.`total` AS `total`,`a`.`inuse` AS `inuse`,abs((`a`.`total` - `a`.`inuse`)) AS `available`,group_concat(distinct concat(`a`.`user`,concat('@',`a`.`system`)) separator ',') AS `usersystem` from (`ggxlogsnewpetronas21may`.`licensestatus` `a` join `ggxlogsnewpetronas21may`.`inusestatus` `b` on((`a`.`customerId` = `b`.`customerid`))) group by `a`.`feature` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseuptimereport`
--

/*!50001 DROP VIEW IF EXISTS `licenseuptimereport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseuptimereport` AS select `licenseserverstatus`.`uptime` AS `upTime`,`licenseserverstatus`.`customerId` AS `customerId` from `licenseserverstatus` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseusagedata`
--

/*!50001 DROP VIEW IF EXISTS `licenseusagedata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseusagedata` AS select `checkouts`.`seqId` AS `checkoutID`,`checkouts`.`feature` AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,`checkins`.`seqId` AS `checkinID`,`checkouts`.`date` AS `checkoutDate`,`checkins`.`date` AS `checkinDate`,`checkouts`.`customerId` AS `customerId`,timestampdiff(MINUTE,`checkouts`.`date`,`checkins`.`date`) AS `usageMinutes` from (`checkouts` join `checkins` on((`checkouts`.`checkInSeqId` = `checkins`.`seqId`))) where ((trim(`checkouts`.`feature`) = trim(`checkins`.`feature`)) and (trim(`checkouts`.`usersystem`) = trim(`checkins`.`usersystem`)) and (trim(`checkouts`.`user`) = trim(`checkins`.`user`)) and (trim(`checkouts`.`customerId`) = trim(`checkins`.`customerId`)) and (trim(`checkouts`.`checkInSeqId`) = trim(`checkins`.`seqId`))) order by `checkouts`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseusagedays`
--

/*!50001 DROP VIEW IF EXISTS `licenseusagedays`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseusagedays` AS select `calculatedlicenseusage`.`checkoutID` AS `checkOutID`,`calculatedlicenseusage`.`feature` AS `feature`,`calculatedlicenseusage`.`user` AS `user`,`calculatedlicenseusage`.`usersystem` AS `usersystem`,`calculatedlicenseusage`.`checkinID` AS `checkinID`,`calculatedlicenseusage`.`checkoutDate` AS `checkoutDate`,`calculatedlicenseusage`.`checkinDate` AS `checkinDate`,`calculatedlicenseusage`.`usageMinutes` AS `usageMinutes`,round((((`calculatedlicenseusage`.`usageMinutes` / 60) / 24) + 1),0) AS `usageDays` from `ggxlogsnewpetronas21may`.`calculatedlicenseusage` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseusagehistoricdata`
--

/*!50001 DROP VIEW IF EXISTS `licenseusagehistoricdata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseusagehistoricdata` AS select `o`.`checkoutdate` AS `checkoutdate`,`o`.`checkindate` AS `checkindate`,`o`.`feature` AS `feature`,`o`.`user` AS `user`,`o`.`usersystem` AS `usersystem`,`o`.`usageMinutes` AS `usageMinutes`,`o`.`usagehours` AS `usagehours`,`o`.`customerId` AS `customerId`,`o`.`customerName` AS `customerName`,`o`.`remark` AS `remark`,`o`.`admin` AS `admin`,`lic`.`customerid` AS `lic_customerid`,`lic`.`feature` AS `lic_feature`,`lic`.`lic_sum` AS `lic_sum` from (`ggxlogsnewpetronas21may`.`concurrentview` `o` left join (select `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid` AS `customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature` AS `feature`,sum(`ggxlogsnewpetronas21may`.`licenseinfo`.`count`) AS `lic_sum` from `ggxlogsnewpetronas21may`.`licenseinfo` group by `ggxlogsnewpetronas21may`.`licenseinfo`.`customerid`,`ggxlogsnewpetronas21may`.`licenseinfo`.`feature`) `lic` on(((`o`.`customerId` = `lic`.`customerid`) and (`o`.`feature` like concat('%',`lic`.`feature`,'%'))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `licenseusageinfoplot`
--

/*!50001 DROP VIEW IF EXISTS `licenseusageinfoplot`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `licenseusageinfoplot` AS select `licenseinfo`.`feature` AS `feature`,`licenseinfo`.`customerid` AS `customerid`,`licenseinfo`.`count` AS `total` from `licenseinfo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `negoriginalusage`
--

/*!50001 DROP VIEW IF EXISTS `negoriginalusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `negoriginalusage` AS select distinct `checkouts`.`date` AS `checkoutdate`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then (`checkouts`.`date` + interval 1 day) else `manualcheckins`.`date` end) else (case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end) end) AS `checkindate`,`checkouts`.`feature` AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then timestampdiff(MINUTE,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day)) else timestampdiff(MINUTE,`checkouts`.`date`,`manualcheckins`.`date`) end) else timestampdiff(MINUTE,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end)) end) AS `usageMinutes`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then ceiling(timestampdiff(HOUR,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day))) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`manualcheckins`.`date`)) end) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end))) end) AS `usagehours`,`checkouts`.`customerId` AS `customerId`,`customer`.`customerName` AS `customerName`,(case when isnull(`manualcheckins`.`remark`) then (case when isnull(`checkins`.`date`) then 'In Use' else 'Released' end) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `checkouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from (((`checkouts` left join `checkins` on(((`checkouts`.`checkInSeqId` = `checkins`.`seqId`) and (`checkins`.`checkOutSeqId` = `checkouts`.`seqId`)))) left join `manualcheckins` on((`checkouts`.`checkInSeqId` = `manualcheckins`.`seqId`))) left join `customer` on((`checkouts`.`customerId` = `customer`.`customerId`))) where (`checkouts`.`date` > `checkins`.`date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `originalusage`
--

/*!50001 DROP VIEW IF EXISTS `originalusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `originalusage` AS select distinct `checkouts`.`date` AS `checkoutdate`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then (`checkouts`.`date` + interval 1 day) else `manualcheckins`.`date` end) else (case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end) end) AS `checkindate`,(case when isnull(`featurealias`.`alias`) then `checkouts`.`feature` else `featurealias`.`alias` end) AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then timestampdiff(MINUTE,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day)) else timestampdiff(MINUTE,`checkouts`.`date`,`manualcheckins`.`date`) end) else timestampdiff(MINUTE,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end)) end) AS `usageMinutes`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then ceiling(timestampdiff(HOUR,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day))) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`manualcheckins`.`date`)) end) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end))) end) AS `usagehours`,`checkouts`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName`,(case when isnull(`manualcheckins`.`remark`) then (case when isnull(`checkins`.`date`) then 'In Use' else 'Released' end) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `checkouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from ((((`checkouts` left join `checkins` on(((`checkouts`.`checkInSeqId` = `checkins`.`seqId`) and (`checkins`.`checkOutSeqId` = `checkouts`.`seqId`)))) left join `manualcheckins` on((`checkouts`.`checkInSeqId` = `manualcheckins`.`seqId`))) left join `customer_view` on((`checkouts`.`customerId` = `customer_view`.`customerId`))) left join `featurealias` on((`checkouts`.`feature` = `featurealias`.`feature`))) where (`checkouts`.`date` < `checkins`.`date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `originalusageinuse`
--

/*!50001 DROP VIEW IF EXISTS `originalusageinuse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `originalusageinuse` AS select distinct `checkouts`.`date` AS `checkoutdate`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then (`checkouts`.`date` + interval 1 day) else `manualcheckins`.`date` end) else (case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end) end) AS `checkindate`,`checkouts`.`feature` AS `feature`,concat(`checkouts`.`user`,concat('@',`checkouts`.`usersystem`)) AS `usersystem`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then timestampdiff(MINUTE,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day)) else timestampdiff(MINUTE,`checkouts`.`date`,`manualcheckins`.`date`) end) else timestampdiff(MINUTE,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end)) end) AS `usageMinutes`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then ceiling(timestampdiff(HOUR,`checkouts`.`date`,(`checkouts`.`date` + interval 1 day))) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`manualcheckins`.`date`)) end) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,(case when (timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`) > 24) then (`checkouts`.`date` + interval 1 day) else `checkins`.`date` end))) end) AS `usagehours`,`checkouts`.`customerId` AS `customerId`,`customer`.`customerName` AS `customerName`,(case when isnull(`manualcheckins`.`remark`) then (case when isnull(`checkins`.`date`) then 'In Use' else 'Released' end) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `checkouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from (((`checkouts` left join `checkins` on(((`checkouts`.`checkInSeqId` = `checkins`.`seqId`) and (`checkins`.`checkOutSeqId` = `checkouts`.`seqId`)))) left join `manualcheckins` on((`checkouts`.`checkInSeqId` = `manualcheckins`.`seqId`))) left join `customer` on((`checkouts`.`customerId` = `customer`.`customerId`))) where ((`checkouts`.`date` < `checkins`.`date`) or isnull(`checkins`.`date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overallusage`
--

/*!50001 DROP VIEW IF EXISTS `overallusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overallusage` AS select `calculatedlicenseusage`.`feature` AS `feature`,sum(`calculatedlicenseusage`.`usageMinutes`) AS `usageMinutes` from `ggxlogsnewpetronas21may`.`calculatedlicenseusage` group by `calculatedlicenseusage`.`feature` order by `usageMinutes` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overlappedlicenseusage`
--

/*!50001 DROP VIEW IF EXISTS `overlappedlicenseusage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overlappedlicenseusage` AS select `overlappedrecords`.`checkoutID` AS `checkoutID`,`overlappedrecords`.`feature` AS `feature`,`overlappedrecords`.`user` AS `user`,`overlappedrecords`.`usersystem` AS `usersystem`,`overlappedrecords`.`checkoutDate` AS `checkoutDate`,`simplelicenseusagedata`.`checkinID` AS `checkinID`,`simplelicenseusagedata`.`checkinDate` AS `checkinDate`,timestampdiff(MINUTE,`overlappedrecords`.`checkoutDate`,`simplelicenseusagedata`.`checkinDate`) AS `usageMinutes` from (`overlappedrecords` join `simplelicenseusagedata` on((`overlappedrecords`.`overlappeCheckoutID` = `simplelicenseusagedata`.`checkoutID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `realtimelicensestatus`
--

/*!50001 DROP VIEW IF EXISTS `realtimelicensestatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `realtimelicensestatus` AS select (case when isnull(`ggxlogsnewpetronas21may`.`serveralias`.`alias`) then `inusestatus`.`customerid` else `ggxlogsnewpetronas21may`.`serveralias`.`alias` end) AS `customerid`,(case when isnull(`ggxlogsnewpetronas21may`.`featurealias`.`alias`) then `inusestatus`.`feature` else `ggxlogsnewpetronas21may`.`featurealias`.`alias` end) AS `feature`,`inusestatus`.`expiration` AS `expiration`,`inusestatus`.`total` AS `total`,`inusestatus`.`inuse` AS `inuse`,`inusestatus`.`available` AS `available`,`inusestatus`.`usersystem` AS `usersystem` from ((`ggxlogsnewpetronas21may`.`inusestatus` left join `ggxlogsnewpetronas21may`.`serveralias` on((`inusestatus`.`customerid` = `ggxlogsnewpetronas21may`.`serveralias`.`server`))) left join `ggxlogsnewpetronas21may`.`featurealias` on((`inusestatus`.`feature` = `ggxlogsnewpetronas21may`.`featurealias`.`feature`))) where (not(`inusestatus`.`customerid` in (select `licensestatussummary`.`customerId` from `ggxlogsnewpetronas21may`.`licensestatussummary`))) union select (case when isnull(`ggxlogsnewpetronas21may`.`serveralias`.`alias`) then `licensestatussummary`.`customerId` else `ggxlogsnewpetronas21may`.`serveralias`.`alias` end) AS `customerid`,(case when isnull(`ggxlogsnewpetronas21may`.`featurealias`.`alias`) then `licensestatussummary`.`feature` else `ggxlogsnewpetronas21may`.`featurealias`.`alias` end) AS `feature`,`licensestatussummary`.`expiration` AS `expiration`,`licensestatussummary`.`total` AS `total`,`licensestatussummary`.`inuse` AS `inuse`,`licensestatussummary`.`available` AS `available`,`licensestatussummary`.`usersystem` AS `usersystem` from ((`ggxlogsnewpetronas21may`.`licensestatussummary` left join `ggxlogsnewpetronas21may`.`serveralias` on((`licensestatussummary`.`customerId` = `ggxlogsnewpetronas21may`.`serveralias`.`server`))) left join `ggxlogsnewpetronas21may`.`featurealias` on((`licensestatussummary`.`feature` = `ggxlogsnewpetronas21may`.`featurealias`.`feature`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `simplelicenseusagedata`
--

/*!50001 DROP VIEW IF EXISTS `simplelicenseusagedata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `simplelicenseusagedata` AS select `licenseusagedata`.`checkoutID` AS `checkoutID`,`licenseusagedata`.`feature` AS `feature`,`licenseusagedata`.`user` AS `user`,`licenseusagedata`.`usersystem` AS `usersystem`,`licenseusagedata`.`checkinID` AS `checkinID`,`licenseusagedata`.`checkoutDate` AS `checkoutDate`,`licenseusagedata`.`checkinDate` AS `checkinDate`,`licenseusagedata`.`customerId` AS `customerId`,`licenseusagedata`.`usageMinutes` AS `usageMinutes` from `licenseusagedata` union select `continuinglicenseusage`.`checkoutID` AS `checkoutID`,`continuinglicenseusage`.`feature` AS `feature`,`continuinglicenseusage`.`user` AS `user`,`continuinglicenseusage`.`usersystem` AS `usersystem`,`continuinglicenseusage`.`checkinID` AS `checkinID`,`continuinglicenseusage`.`checkoutDate` AS `checkoutDate`,`continuinglicenseusage`.`checkinDate` AS `checkinDate`,`continuinglicenseusage`.`customerId` AS `customerId`,`continuinglicenseusage`.`usageMinutes` AS `usageMinutes` from `continuinglicenseusage` order by `checkoutDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `testview`
--

/*!50001 DROP VIEW IF EXISTS `testview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testview` AS select distinct `checkouts`.`date` AS `checkoutdate`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then now() else `manualcheckins`.`date` end) else `checkins`.`date` end) AS `checkindate`,(case when isnull(`featurealias`.`alias`) then `checkouts`.`feature` else `featurealias`.`alias` end) AS `feature`,`checkouts`.`user` AS `user`,`checkouts`.`usersystem` AS `usersystem`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then timestampdiff(MINUTE,`checkouts`.`date`,now()) else timestampdiff(MINUTE,`checkouts`.`date`,`manualcheckins`.`date`) end) else timestampdiff(MINUTE,`checkouts`.`date`,`checkins`.`date`) end) AS `usageMinutes`,(case when isnull(`checkins`.`date`) then (case when isnull(`manualcheckins`.`date`) then ceiling(timestampdiff(HOUR,`checkouts`.`date`,now())) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`manualcheckins`.`date`)) end) else ceiling(timestampdiff(HOUR,`checkouts`.`date`,`checkins`.`date`)) end) AS `usagehours`,`checkouts`.`customerId` AS `customerId`,`customer_view`.`customerName` AS `customerName`,(case when isnull(`manualcheckins`.`remark`) then convert((case when isnull(`checkins`.`date`) then 'In Use' else 'Released' end) using utf8) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `checkouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from ((((`checkouts` left join `checkins` on(((`checkouts`.`checkInSeqId` = `checkins`.`seqId`) and (`checkins`.`checkOutSeqId` = `checkouts`.`seqId`)))) left join `manualcheckins` on((`checkouts`.`checkInSeqId` = `manualcheckins`.`seqId`))) left join `customer_view` on((`checkouts`.`customerId` = `customer_view`.`customerId`))) left join `featurealias` on((`checkouts`.`feature` = `featurealias`.`feature`))) where (isnull(`checkins`.`date`) or (`checkouts`.`date` < `checkins`.`date`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unmappeduserusersystem`
--

/*!50001 DROP VIEW IF EXISTS `unmappeduserusersystem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unmappeduserusersystem` AS select `originalcheckouts`.`date` AS `checkoutdate`,(case when isnull(`originalcheckins`.`date`) then now() else `originalcheckins`.`date` end) AS `checkindate`,`originalcheckouts`.`feature` AS `feature`,`originalcheckouts`.`user` AS `user`,`originalcheckouts`.`usersystem` AS `usersystem`,(case when isnull(`originalcheckins`.`date`) then timestampdiff(MINUTE,`originalcheckouts`.`date`,now()) else timestampdiff(MINUTE,`originalcheckouts`.`date`,`originalcheckins`.`date`) end) AS `usageMinutes`,(case when isnull(`originalcheckins`.`date`) then ceiling((timestampdiff(MINUTE,`originalcheckouts`.`date`,now()) / 1440)) else ceiling((timestampdiff(MINUTE,`originalcheckouts`.`date`,`originalcheckins`.`date`) / 1440)) end) AS `usagedays`,`userusersystemcustomermapping`.`customerId` AS `customerId`,(case when isnull(`manualcheckins`.`remark`) then (case when isnull(`originalcheckins`.`date`) then 'In Use' else 'Released' end) else `manualcheckins`.`remark` end) AS `remark`,(case when isnull(`manualcheckins`.`admin`) then `originalcheckouts`.`user` else `manualcheckins`.`admin` end) AS `admin` from (((`originalcheckouts` left join `originalcheckins` on(((`originalcheckouts`.`checkinseqid` = `originalcheckins`.`seqid`) and (`originalcheckins`.`checkoutseqid` = `originalcheckouts`.`seqid`)))) left join `userusersystemcustomermapping` on(((`originalcheckouts`.`user` = `userusersystemcustomermapping`.`user`) and (`originalcheckouts`.`usersystem` = `userusersystemcustomermapping`.`usersystem`)))) left join `manualcheckins` on((`originalcheckouts`.`checkinseqid` = `manualcheckins`.`seqId`))) where isnull(`userusersystemcustomermapping`.`customerId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unprocessedcheckinoutmap`
--

/*!50001 DROP VIEW IF EXISTS `unprocessedcheckinoutmap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unprocessedcheckinoutmap` AS select `originalcheckouts`.`seqid` AS `checkoutID`,`originalcheckouts`.`feature` AS `feature`,`originalcheckouts`.`user` AS `user`,`originalcheckouts`.`usersystem` AS `usersystem`,`originalcheckins`.`seqid` AS `checkinID`,`originalcheckouts`.`date` AS `checkoutDate`,`originalcheckins`.`date` AS `checkinDate` from (`originalcheckouts` join `originalcheckins`) where ((`originalcheckouts`.`feature` = `originalcheckins`.`feature`) and (`originalcheckouts`.`usersystem` = `originalcheckins`.`usersystem`) and (`originalcheckouts`.`user` = `originalcheckins`.`user`) and (`originalcheckouts`.`checkinseqid` = `originalcheckins`.`seqid`)) order by `originalcheckouts`.`date` */;
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

-- Dump completed on 2024-05-15 14:30:10
