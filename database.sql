-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: traccar
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB-1:10.4.6+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('changelog-4.0-clean','author','changelog-4.0-clean','2019-10-23 16:00:54',1,'EXECUTED','8:d59fa93049c031a8bcfbc02958c1942c','createTable tableName=tc_attributes; createTable tableName=tc_calendars; createTable tableName=tc_commands; createTable tableName=tc_device_attribute; createTable tableName=tc_device_command; createTable tableName=tc_device_driver; createTable tab...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0-clean-common','author','changelog-4.0-clean','2019-10-23 16:00:54',2,'EXECUTED','8:1adabae3238e02ccc97cc422359a58a0','addForeignKeyConstraint baseTableName=tc_groups, constraintName=fk_groups_groupid, referencedTableName=tc_groups; addForeignKeyConstraint baseTableName=tc_user_user, constraintName=fk_user_user_manageduserid, referencedTableName=tc_users','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.3','author','changelog-3.3','2019-10-23 16:00:54',3,'MARK_RAN','8:ea6f202534dc7845fd1a49e1d8384d9c','createTable tableName=users; addUniqueConstraint constraintName=uk_user_email, tableName=users; createTable tableName=devices; addUniqueConstraint constraintName=uk_device_uniqueid, tableName=devices; createTable tableName=user_device; addForeignK...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.5','author','changelog-3.5','2019-10-23 16:00:54',4,'MARK_RAN','8:194e3ae7ec6d201917136e04a26e237b','createTable tableName=groups; createTable tableName=user_group; addForeignKeyConstraint baseTableName=user_group, constraintName=fk_user_group_userid, referencedTableName=users; addForeignKeyConstraint baseTableName=user_group, constraintName=fk_u...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.6','author','changelog-3.6','2019-10-23 16:00:54',5,'MARK_RAN','8:1ec7941b03749f24e365bc6126b07e1a','createTable tableName=events; addForeignKeyConstraint baseTableName=events, constraintName=fk_event_deviceid, referencedTableName=devices; addColumn tableName=devices; createTable tableName=geofences; createTable tableName=user_geofence; addForeig...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.7','author','changelog-3.7','2019-10-23 16:00:54',6,'MARK_RAN','8:2e444e379f31d0b8e09273ec7ffe87a0','update tableName=devices; addForeignKeyConstraint baseTableName=devices, constraintName=fk_device_group_groupid, referencedTableName=groups; update tableName=groups; addColumn tableName=devices; dropColumn columnName=motion, tableName=devices; dro...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.7-notmssql','author','changelog-3.7','2019-10-23 16:00:54',7,'MARK_RAN','8:974c33d2fb399ef6477c3897450fb078','addForeignKeyConstraint baseTableName=groups, constraintName=fk_group_group_groupid, referencedTableName=groups','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.8','author','changelog-3.8','2019-10-23 16:00:54',8,'MARK_RAN','8:74d68027951f8d2ae6bb2e24df8365bc','createTable tableName=attribute_aliases; addForeignKeyConstraint baseTableName=attribute_aliases, constraintName=fk_attribute_aliases_deviceid, referencedTableName=devices; addUniqueConstraint constraintName=uk_deviceid_attribute, tableName=attrib...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.9','author','changelog-3.9','2019-10-23 16:00:54',9,'MARK_RAN','8:34822842d65deb843a7d16f857d52ecc','addColumn tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.10','author','changelog-3.10','2019-10-23 16:00:54',10,'MARK_RAN','8:e1ddbe83e1ecf856a912755fc118f82e','createTable tableName=calendars; createTable tableName=user_calendar; addForeignKeyConstraint baseTableName=user_calendar, constraintName=fk_user_calendar_userid, referencedTableName=users; addForeignKeyConstraint baseTableName=user_calendar, cons...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.10-notmssql','author','changelog-3.10','2019-10-23 16:00:54',11,'MARK_RAN','8:191c21d8f0f921845cf93bbc9d0639b9','addForeignKeyConstraint baseTableName=user_user, constraintName=fk_user_user_manageduserid, referencedTableName=users','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.10-mssql','author','changelog-3.10','2019-10-23 16:00:54',12,'MARK_RAN','8:ad1f63566e8d08812fbf0b93a118ef6e','sql','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.7-mssql','author','changelog-3.10','2019-10-23 16:00:54',13,'MARK_RAN','8:127b36b9d32a9d236df51d19b18c3766','sql','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.11','author','changelog-3.11','2019-10-23 16:00:54',14,'MARK_RAN','8:7800f890b9706a480bd5a79b591b6ca7','addColumn tableName=users; addColumn tableName=notifications; addColumn tableName=server; addColumn tableName=server; addColumn tableName=users','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.12','author','changelog-3.12','2019-10-23 16:00:55',15,'MARK_RAN','8:5ce520811d626ad325a014b9fcbb1a13','addColumn tableName=statistics; createTable tableName=attributes; createTable tableName=user_attribute; addForeignKeyConstraint baseTableName=user_attribute, constraintName=fk_user_attribute_userid, referencedTableName=users; addForeignKeyConstrai...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.12-notmssql','author','changelog-3.12','2019-10-23 16:00:55',16,'MARK_RAN','8:a3bf7fabcde29e106fe2f89829a76a84','dropForeignKeyConstraint baseTableName=groups, constraintName=fk_group_group_groupid; addForeignKeyConstraint baseTableName=groups, constraintName=fk_groups_groupid, referencedTableName=groups','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.12-pgsql','author','changelog-3.12','2019-10-23 16:00:55',17,'MARK_RAN','8:cfc881bd2dadb561aa9c1a467bc8cc1c','dropColumn columnName=data, tableName=calendars; addColumn tableName=calendars','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.14','author','changelog-3.14','2019-10-23 16:00:55',18,'MARK_RAN','8:1be7e6c0520f8be53ef1b099d96afba5','createTable tableName=drivers; addUniqueConstraint constraintName=uk_driver_uniqueid, tableName=drivers; createTable tableName=user_driver; addForeignKeyConstraint baseTableName=user_driver, constraintName=fk_user_driver_userid, referencedTableNam...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.15','author','changelog-3.15','2019-10-23 16:00:55',19,'MARK_RAN','8:ac8ccec176027e98bbf45dc6c15d9b05','dropForeignKeyConstraint baseTableName=attribute_aliases, constraintName=fk_attribute_aliases_deviceid; dropUniqueConstraint constraintName=uk_deviceid_attribute, tableName=attribute_aliases; dropTable tableName=attribute_aliases; dropColumn colum...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.16','author','changelog-3.16','2019-10-23 16:00:55',20,'MARK_RAN','8:b59407d70bfe9bf57bc9968adfbbdf1c','addColumn tableName=devices; addColumn tableName=users; addColumn tableName=servers; addColumn tableName=notifications; addForeignKeyConstraint baseTableName=notifications, constraintName=fk_notification_calendar_calendarid, referencedTableName=ca...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.3-admin','author','changelog-3.17','2019-10-23 16:00:55',21,'MARK_RAN','8:3f14c3b08068eb7628d0d3e2941eb2d3','renameColumn newColumnName=administrator, oldColumnName=admin, tableName=users','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-3.17','author','changelog-3.17','2019-10-23 16:00:55',22,'MARK_RAN','8:8aa3e56afe6ba86cd004fa801507bc28','addColumn tableName=events; createTable tableName=maintenances; createTable tableName=user_maintenance; addForeignKeyConstraint baseTableName=user_maintenance, constraintName=fk_user_maintenance_userid, referencedTableName=users; addForeignKeyCons...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0-pre','author','changelog-4.0','2019-10-23 16:00:55',23,'MARK_RAN','8:3974bfe5a2e962c0cd663433c832c16a','addColumn tableName=notifications','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0-common','author','changelog-4.0','2019-10-23 16:00:55',24,'MARK_RAN','8:65fb49c5be37693183708351c507dd50','update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0-pg','author','changelog-4.0','2019-10-23 16:00:55',25,'MARK_RAN','8:9831511507d8ae1d6759c8ccf506a27a','update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications; update tableName=notifications','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0','author','changelog-4.0','2019-10-23 16:00:55',26,'MARK_RAN','8:ac63c4153f5b2ee5c7a07056da269571','dropDefaultValue columnName=web, tableName=notifications; dropColumn columnName=web, tableName=notifications; dropDefaultValue columnName=mail, tableName=notifications; dropColumn columnName=mail, tableName=notifications; dropDefaultValue columnNa...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.0-renaming','author','changelog-4.0','2019-10-23 16:00:55',27,'MARK_RAN','8:90aedfa378aa717f8d8ae541f97b87b2','renameTable newTableName=tc_attributes, oldTableName=attributes; renameTable newTableName=tc_calendars, oldTableName=calendars; renameTable newTableName=tc_commands, oldTableName=commands; renameTable newTableName=tc_device_attribute, oldTableName...','',NULL,'3.8.0',NULL,NULL,'1846444053'),('changelog-4.1-mssql','author','changelog-4.1','2019-10-23 16:00:55',28,'MARK_RAN','8:b148f52efe9c6a3e74a56e33e257a3e2','sql; sql; sql; sql','',NULL,'3.8.0',NULL,NULL,'1846444053');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_attributes`
--

DROP TABLE IF EXISTS `tc_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(4000) NOT NULL,
  `type` varchar(128) NOT NULL,
  `attribute` varchar(128) NOT NULL,
  `expression` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_attributes`
--

LOCK TABLES `tc_attributes` WRITE;
/*!40000 ALTER TABLE `tc_attributes` DISABLE KEYS */;
INSERT INTO `tc_attributes` VALUES (1,'Total odometer','number','odometer','io16'),(2,'Vehicle speed','number','obdSpeed','io37');
/*!40000 ALTER TABLE `tc_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_calendars`
--

DROP TABLE IF EXISTS `tc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `data` mediumblob NOT NULL,
  `attributes` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_calendars`
--

LOCK TABLES `tc_calendars` WRITE;
/*!40000 ALTER TABLE `tc_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_commands`
--

DROP TABLE IF EXISTS `tc_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(4000) NOT NULL,
  `type` varchar(128) NOT NULL,
  `textchannel` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_commands`
--

LOCK TABLES `tc_commands` WRITE;
/*!40000 ALTER TABLE `tc_commands` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_attribute`
--

DROP TABLE IF EXISTS `tc_device_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_attribute` (
  `deviceid` int(11) NOT NULL,
  `attributeid` int(11) NOT NULL,
  KEY `fk_user_device_attribute_attributeid` (`attributeid`),
  KEY `fk_user_device_attribute_deviceid` (`deviceid`),
  CONSTRAINT `fk_user_device_attribute_attributeid` FOREIGN KEY (`attributeid`) REFERENCES `tc_attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_device_attribute_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_attribute`
--

LOCK TABLES `tc_device_attribute` WRITE;
/*!40000 ALTER TABLE `tc_device_attribute` DISABLE KEYS */;
INSERT INTO `tc_device_attribute` VALUES (1,1);
/*!40000 ALTER TABLE `tc_device_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_command`
--

DROP TABLE IF EXISTS `tc_device_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_command` (
  `deviceid` int(11) NOT NULL,
  `commandid` int(11) NOT NULL,
  KEY `fk_device_command_commandid` (`commandid`),
  KEY `fk_device_command_deviceid` (`deviceid`),
  CONSTRAINT `fk_device_command_commandid` FOREIGN KEY (`commandid`) REFERENCES `tc_commands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_command_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_command`
--

LOCK TABLES `tc_device_command` WRITE;
/*!40000 ALTER TABLE `tc_device_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_device_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_driver`
--

DROP TABLE IF EXISTS `tc_device_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_driver` (
  `deviceid` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  KEY `fk_device_driver_deviceid` (`deviceid`),
  KEY `fk_device_driver_driverid` (`driverid`),
  CONSTRAINT `fk_device_driver_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_driver_driverid` FOREIGN KEY (`driverid`) REFERENCES `tc_drivers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_driver`
--

LOCK TABLES `tc_device_driver` WRITE;
/*!40000 ALTER TABLE `tc_device_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_device_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_geofence`
--

DROP TABLE IF EXISTS `tc_device_geofence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_geofence` (
  `deviceid` int(11) NOT NULL,
  `geofenceid` int(11) NOT NULL,
  KEY `fk_device_geofence_deviceid` (`deviceid`),
  KEY `fk_device_geofence_geofenceid` (`geofenceid`),
  CONSTRAINT `fk_device_geofence_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_geofence_geofenceid` FOREIGN KEY (`geofenceid`) REFERENCES `tc_geofences` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_geofence`
--

LOCK TABLES `tc_device_geofence` WRITE;
/*!40000 ALTER TABLE `tc_device_geofence` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_device_geofence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_maintenance`
--

DROP TABLE IF EXISTS `tc_device_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_maintenance` (
  `deviceid` int(11) NOT NULL,
  `maintenanceid` int(11) NOT NULL,
  KEY `fk_device_maintenance_deviceid` (`deviceid`),
  KEY `fk_device_maintenance_maintenanceid` (`maintenanceid`),
  CONSTRAINT `fk_device_maintenance_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_maintenance_maintenanceid` FOREIGN KEY (`maintenanceid`) REFERENCES `tc_maintenances` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_maintenance`
--

LOCK TABLES `tc_device_maintenance` WRITE;
/*!40000 ALTER TABLE `tc_device_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_device_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_device_notification`
--

DROP TABLE IF EXISTS `tc_device_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_device_notification` (
  `deviceid` int(11) NOT NULL,
  `notificationid` int(11) NOT NULL,
  KEY `fk_device_notification_deviceid` (`deviceid`),
  KEY `fk_device_notification_notificationid` (`notificationid`),
  CONSTRAINT `fk_device_notification_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_device_notification_notificationid` FOREIGN KEY (`notificationid`) REFERENCES `tc_notifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_device_notification`
--

LOCK TABLES `tc_device_notification` WRITE;
/*!40000 ALTER TABLE `tc_device_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_device_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_devices`
--

DROP TABLE IF EXISTS `tc_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `uniqueid` varchar(128) NOT NULL,
  `lastupdate` timestamp NULL DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `contact` varchar(512) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `disabled` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueid` (`uniqueid`),
  KEY `fk_devices_groupid` (`groupid`),
  CONSTRAINT `fk_devices_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_devices`
--

LOCK TABLES `tc_devices` WRITE;
/*!40000 ALTER TABLE `tc_devices` DISABLE KEYS */;
INSERT INTO `tc_devices` VALUES (1,'Hyundai','100','2019-10-24 08:33:30',19,NULL,'{}','','','',NULL,'\0');
INSERT INTO `tc_devices` VALUES (2,'Volkswagen','101','2019-10-24 08:33:30',19,NULL,'{}','','','',NULL,'\0');
/*!40000 ALTER TABLE `tc_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_drivers`
--

DROP TABLE IF EXISTS `tc_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `uniqueid` varchar(128) NOT NULL,
  `attributes` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueid` (`uniqueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_drivers`
--

LOCK TABLES `tc_drivers` WRITE;
/*!40000 ALTER TABLE `tc_drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_events`
--

DROP TABLE IF EXISTS `tc_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL,
  `servertime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deviceid` int(11) DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `geofenceid` int(11) DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `maintenanceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_events_deviceid` (`deviceid`),
  CONSTRAINT `fk_events_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_events`
--

LOCK TABLES `tc_events` WRITE;
/*!40000 ALTER TABLE `tc_events` DISABLE KEYS */;
INSERT INTO `tc_events` VALUES (1,'deviceOnline','2019-10-23 16:03:47',1,NULL,NULL,'{}',NULL),(2,'deviceOffline','2019-10-23 16:08:49',1,NULL,NULL,'{}',NULL);
/*!40000 ALTER TABLE `tc_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_geofences`
--

DROP TABLE IF EXISTS `tc_geofences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_geofences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `area` varchar(4096) NOT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `calendarid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_geofence_calendar_calendarid` (`calendarid`),
  CONSTRAINT `fk_geofence_calendar_calendarid` FOREIGN KEY (`calendarid`) REFERENCES `tc_calendars` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_geofences`
--

LOCK TABLES `tc_geofences` WRITE;
/*!40000 ALTER TABLE `tc_geofences` DISABLE KEYS */;
INSERT INTO `tc_geofences` VALUES (1,'Home','','CIRCLE (45 25, 87.7)','{}',NULL),(2,'Work','','CIRCLE (45 26, 63.3)','{}',NULL);
/*!40000 ALTER TABLE `tc_geofences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_attribute`
--

DROP TABLE IF EXISTS `tc_group_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_attribute` (
  `groupid` int(11) NOT NULL,
  `attributeid` int(11) NOT NULL,
  KEY `fk_group_attribute_attributeid` (`attributeid`),
  KEY `fk_group_attribute_groupid` (`groupid`),
  CONSTRAINT `fk_group_attribute_attributeid` FOREIGN KEY (`attributeid`) REFERENCES `tc_attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_attribute_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_attribute`
--

LOCK TABLES `tc_group_attribute` WRITE;
/*!40000 ALTER TABLE `tc_group_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_command`
--

DROP TABLE IF EXISTS `tc_group_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_command` (
  `groupid` int(11) NOT NULL,
  `commandid` int(11) NOT NULL,
  KEY `fk_group_command_commandid` (`commandid`),
  KEY `fk_group_command_groupid` (`groupid`),
  CONSTRAINT `fk_group_command_commandid` FOREIGN KEY (`commandid`) REFERENCES `tc_commands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_command_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_command`
--

LOCK TABLES `tc_group_command` WRITE;
/*!40000 ALTER TABLE `tc_group_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_driver`
--

DROP TABLE IF EXISTS `tc_group_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_driver` (
  `groupid` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  KEY `fk_group_driver_driverid` (`driverid`),
  KEY `fk_group_driver_groupid` (`groupid`),
  CONSTRAINT `fk_group_driver_driverid` FOREIGN KEY (`driverid`) REFERENCES `tc_drivers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_driver_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_driver`
--

LOCK TABLES `tc_group_driver` WRITE;
/*!40000 ALTER TABLE `tc_group_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_geofence`
--

DROP TABLE IF EXISTS `tc_group_geofence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_geofence` (
  `groupid` int(11) NOT NULL,
  `geofenceid` int(11) NOT NULL,
  KEY `fk_group_geofence_geofenceid` (`geofenceid`),
  KEY `fk_group_geofence_groupid` (`groupid`),
  CONSTRAINT `fk_group_geofence_geofenceid` FOREIGN KEY (`geofenceid`) REFERENCES `tc_geofences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_geofence_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_geofence`
--

LOCK TABLES `tc_group_geofence` WRITE;
/*!40000 ALTER TABLE `tc_group_geofence` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_geofence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_maintenance`
--

DROP TABLE IF EXISTS `tc_group_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_maintenance` (
  `groupid` int(11) NOT NULL,
  `maintenanceid` int(11) NOT NULL,
  KEY `fk_group_maintenance_groupid` (`groupid`),
  KEY `fk_group_maintenance_maintenanceid` (`maintenanceid`),
  CONSTRAINT `fk_group_maintenance_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_maintenance_maintenanceid` FOREIGN KEY (`maintenanceid`) REFERENCES `tc_maintenances` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_maintenance`
--

LOCK TABLES `tc_group_maintenance` WRITE;
/*!40000 ALTER TABLE `tc_group_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_group_notification`
--

DROP TABLE IF EXISTS `tc_group_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_group_notification` (
  `groupid` int(11) NOT NULL,
  `notificationid` int(11) NOT NULL,
  KEY `fk_group_notification_groupid` (`groupid`),
  KEY `fk_group_notification_notificationid` (`notificationid`),
  CONSTRAINT `fk_group_notification_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_group_notification_notificationid` FOREIGN KEY (`notificationid`) REFERENCES `tc_notifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_group_notification`
--

LOCK TABLES `tc_group_notification` WRITE;
/*!40000 ALTER TABLE `tc_group_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_group_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_groups`
--

DROP TABLE IF EXISTS `tc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_groups_groupid` (`groupid`),
  CONSTRAINT `fk_groups_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_groups`
--

LOCK TABLES `tc_groups` WRITE;
/*!40000 ALTER TABLE `tc_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_maintenances`
--

DROP TABLE IF EXISTS `tc_maintenances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_maintenances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(4000) NOT NULL,
  `type` varchar(128) NOT NULL,
  `start` double NOT NULL DEFAULT 0,
  `period` double NOT NULL DEFAULT 0,
  `attributes` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_maintenances`
--

LOCK TABLES `tc_maintenances` WRITE;
/*!40000 ALTER TABLE `tc_maintenances` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_maintenances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_notifications`
--

DROP TABLE IF EXISTS `tc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `always` bit(1) NOT NULL DEFAULT b'0',
  `calendarid` int(11) DEFAULT NULL,
  `notificators` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notification_calendar_calendarid` (`calendarid`),
  CONSTRAINT `fk_notification_calendar_calendarid` FOREIGN KEY (`calendarid`) REFERENCES `tc_calendars` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_notifications`
--

LOCK TABLES `tc_notifications` WRITE;
/*!40000 ALTER TABLE `tc_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_positions`
--

DROP TABLE IF EXISTS `tc_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` varchar(128) DEFAULT NULL,
  `deviceid` int(11) NOT NULL,
  `servertime` timestamp NOT NULL DEFAULT current_timestamp(),
  `devicetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fixtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valid` bit(1) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `altitude` float NOT NULL,
  `speed` float NOT NULL,
  `course` float NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `accuracy` double NOT NULL DEFAULT 0,
  `network` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_positions_deviceid` (`deviceid`),
  CONSTRAINT `fk_positions_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_positions`
--

LOCK TABLES `tc_positions` WRITE;
/*!40000 ALTER TABLE `tc_positions` DISABLE KEYS */;
INSERT INTO `tc_positions` VALUES (18,'teltonika',1,'2019-10-24 07:33:24','2019-10-24 07:31:47','2019-10-24 07:31:47','',45,25,562,0,0,NULL,'{\"priority\":0,\"sat\":12,\"event\":0,\"ignition\":false,\"motion\":false,\"rssi\":3,\"io200\":0,\"gpsStatus\":1,\"pdop\":0.5,\"hdop\":0.4,\"power\":12.554,\"battery\":4.117,\"io68\":0,\"operator\":22610,\"io16\":27033000,\"distance\":0.0,\"totalDistance\":0.0,\"odometer\":27033000}',0,'null'),(19,'teltonika',1,'2019-10-24 08:33:30','2019-10-24 08:31:47','2019-10-24 08:31:47','',45,25,543,0,0,NULL,'{\"priority\":0,\"sat\":15,\"event\":0,\"ignition\":false,\"motion\":false,\"rssi\":3,\"io200\":0,\"gpsStatus\":1,\"pdop\":0.6000000000000001,\"hdop\":0.30000000000000004,\"power\":12.551,\"battery\":4.116,\"io68\":0,\"operator\":22610,\"io16\":27033000,\"distance\":0.0,\"totalDistance\":0.0,\"odometer\":27033000}',0,'null'),(20,'teltonika',2,'2019-10-24 07:33:24','2019-10-24 07:31:47','2019-10-24 07:31:47','',45,25,562,0,0,NULL,'{\"priority\":0,\"sat\":12,\"event\":0,\"ignition\":false,\"motion\":false,\"rssi\":3,\"io200\":0,\"gpsStatus\":1,\"pdop\":0.5,\"hdop\":0.4,\"power\":12.554,\"battery\":4.117,\"io68\":0,\"operator\":22610,\"io16\":27033000,\"distance\":0.0,\"totalDistance\":0.0,\"odometer\":27033000}',0,'null'),(21,'teltonika',2,'2019-10-24 08:33:30','2019-10-24 08:31:47','2019-10-24 08:31:47','',45,25,543,0,0,NULL,'{\"priority\":0,\"sat\":15,\"event\":0,\"ignition\":false,\"motion\":false,\"rssi\":3,\"io200\":0,\"gpsStatus\":1,\"pdop\":0.6000000000000001,\"hdop\":0.30000000000000004,\"power\":12.551,\"battery\":4.116,\"io68\":0,\"operator\":22610,\"io16\":27033000,\"distance\":0.0,\"totalDistance\":0.0,\"odometer\":27033000}',0,'null');
/*!40000 ALTER TABLE `tc_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_servers`
--

DROP TABLE IF EXISTS `tc_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration` bit(1) NOT NULL DEFAULT b'1',
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `zoom` int(11) NOT NULL DEFAULT 0,
  `map` varchar(128) DEFAULT NULL,
  `bingkey` varchar(128) DEFAULT NULL,
  `mapurl` varchar(512) DEFAULT NULL,
  `readonly` bit(1) NOT NULL DEFAULT b'0',
  `twelvehourformat` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) DEFAULT NULL,
  `forcesettings` bit(1) NOT NULL DEFAULT b'0',
  `coordinateformat` varchar(128) DEFAULT NULL,
  `devicereadonly` bit(1) DEFAULT b'0',
  `limitcommands` bit(1) DEFAULT b'0',
  `poilayer` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_servers`
--

LOCK TABLES `tc_servers` WRITE;
/*!40000 ALTER TABLE `tc_servers` DISABLE KEYS */;
INSERT INTO `tc_servers` VALUES (1,'\0',0,0,0,'','','','\0','\0','{}','\0','','\0','\0','');
/*!40000 ALTER TABLE `tc_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_statistics`
--

DROP TABLE IF EXISTS `tc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capturetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activeusers` int(11) NOT NULL DEFAULT 0,
  `activedevices` int(11) NOT NULL DEFAULT 0,
  `requests` int(11) NOT NULL DEFAULT 0,
  `messagesreceived` int(11) NOT NULL DEFAULT 0,
  `messagesstored` int(11) NOT NULL DEFAULT 0,
  `attributes` varchar(4096) NOT NULL,
  `mailsent` int(11) NOT NULL DEFAULT 0,
  `smssent` int(11) NOT NULL DEFAULT 0,
  `geocoderrequests` int(11) NOT NULL DEFAULT 0,
  `geolocationrequests` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_statistics`
--

LOCK TABLES `tc_statistics` WRITE;
/*!40000 ALTER TABLE `tc_statistics` DISABLE KEYS */;
INSERT INTO `tc_statistics` VALUES (1,'2019-10-24 00:32:40',1,1,48,19,10,'{}',0,0,0,0);
/*!40000 ALTER TABLE `tc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_attribute`
--

DROP TABLE IF EXISTS `tc_user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_attribute` (
  `userid` int(11) NOT NULL,
  `attributeid` int(11) NOT NULL,
  KEY `fk_user_attribute_attributeid` (`attributeid`),
  KEY `fk_user_attribute_userid` (`userid`),
  CONSTRAINT `fk_user_attribute_attributeid` FOREIGN KEY (`attributeid`) REFERENCES `tc_attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_attribute_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_attribute`
--

LOCK TABLES `tc_user_attribute` WRITE;
/*!40000 ALTER TABLE `tc_user_attribute` DISABLE KEYS */;
INSERT INTO `tc_user_attribute` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `tc_user_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_calendar`
--

DROP TABLE IF EXISTS `tc_user_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_calendar` (
  `userid` int(11) NOT NULL,
  `calendarid` int(11) NOT NULL,
  KEY `fk_user_calendar_calendarid` (`calendarid`),
  KEY `fk_user_calendar_userid` (`userid`),
  CONSTRAINT `fk_user_calendar_calendarid` FOREIGN KEY (`calendarid`) REFERENCES `tc_calendars` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_calendar_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_calendar`
--

LOCK TABLES `tc_user_calendar` WRITE;
/*!40000 ALTER TABLE `tc_user_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_command`
--

DROP TABLE IF EXISTS `tc_user_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_command` (
  `userid` int(11) NOT NULL,
  `commandid` int(11) NOT NULL,
  KEY `fk_user_command_commandid` (`commandid`),
  KEY `fk_user_command_userid` (`userid`),
  CONSTRAINT `fk_user_command_commandid` FOREIGN KEY (`commandid`) REFERENCES `tc_commands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_command_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_command`
--

LOCK TABLES `tc_user_command` WRITE;
/*!40000 ALTER TABLE `tc_user_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_device`
--

DROP TABLE IF EXISTS `tc_user_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_device` (
  `userid` int(11) NOT NULL,
  `deviceid` int(11) NOT NULL,
  KEY `fk_user_device_deviceid` (`deviceid`),
  KEY `fk_user_device_userid` (`userid`),
  CONSTRAINT `fk_user_device_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `tc_devices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_device_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_device`
--

LOCK TABLES `tc_user_device` WRITE;
/*!40000 ALTER TABLE `tc_user_device` DISABLE KEYS */;
INSERT INTO `tc_user_device` VALUES (1,1);
/*!40000 ALTER TABLE `tc_user_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_driver`
--

DROP TABLE IF EXISTS `tc_user_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_driver` (
  `userid` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  KEY `fk_user_driver_driverid` (`driverid`),
  KEY `fk_user_driver_userid` (`userid`),
  CONSTRAINT `fk_user_driver_driverid` FOREIGN KEY (`driverid`) REFERENCES `tc_drivers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_driver_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_driver`
--

LOCK TABLES `tc_user_driver` WRITE;
/*!40000 ALTER TABLE `tc_user_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_geofence`
--

DROP TABLE IF EXISTS `tc_user_geofence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_geofence` (
  `userid` int(11) NOT NULL,
  `geofenceid` int(11) NOT NULL,
  KEY `fk_user_geofence_geofenceid` (`geofenceid`),
  KEY `fk_user_geofence_userid` (`userid`),
  CONSTRAINT `fk_user_geofence_geofenceid` FOREIGN KEY (`geofenceid`) REFERENCES `tc_geofences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_geofence_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_geofence`
--

LOCK TABLES `tc_user_geofence` WRITE;
/*!40000 ALTER TABLE `tc_user_geofence` DISABLE KEYS */;
INSERT INTO `tc_user_geofence` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `tc_user_geofence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_group`
--

DROP TABLE IF EXISTS `tc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_group` (
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  KEY `fk_user_group_groupid` (`groupid`),
  KEY `fk_user_group_userid` (`userid`),
  CONSTRAINT `fk_user_group_groupid` FOREIGN KEY (`groupid`) REFERENCES `tc_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_group_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_group`
--

LOCK TABLES `tc_user_group` WRITE;
/*!40000 ALTER TABLE `tc_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_maintenance`
--

DROP TABLE IF EXISTS `tc_user_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_maintenance` (
  `userid` int(11) NOT NULL,
  `maintenanceid` int(11) NOT NULL,
  KEY `fk_user_maintenance_maintenanceid` (`maintenanceid`),
  KEY `fk_user_maintenance_userid` (`userid`),
  CONSTRAINT `fk_user_maintenance_maintenanceid` FOREIGN KEY (`maintenanceid`) REFERENCES `tc_maintenances` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_maintenance_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_maintenance`
--

LOCK TABLES `tc_user_maintenance` WRITE;
/*!40000 ALTER TABLE `tc_user_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_notification`
--

DROP TABLE IF EXISTS `tc_user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_notification` (
  `userid` int(11) NOT NULL,
  `notificationid` int(11) NOT NULL,
  KEY `fk_user_notification_notificationid` (`notificationid`),
  KEY `fk_user_notification_userid` (`userid`),
  CONSTRAINT `fk_user_notification_notificationid` FOREIGN KEY (`notificationid`) REFERENCES `tc_notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_notification_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_notification`
--

LOCK TABLES `tc_user_notification` WRITE;
/*!40000 ALTER TABLE `tc_user_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_user_user`
--

DROP TABLE IF EXISTS `tc_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_user_user` (
  `userid` int(11) NOT NULL,
  `manageduserid` int(11) NOT NULL,
  KEY `fk_user_user_userid` (`userid`),
  KEY `fk_user_user_manageduserid` (`manageduserid`),
  CONSTRAINT `fk_user_user_manageduserid` FOREIGN KEY (`manageduserid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_user_userid` FOREIGN KEY (`userid`) REFERENCES `tc_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_user_user`
--

LOCK TABLES `tc_user_user` WRITE;
/*!40000 ALTER TABLE `tc_user_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tc_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tc_users`
--

DROP TABLE IF EXISTS `tc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hashedpassword` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `readonly` bit(1) NOT NULL DEFAULT b'0',
  `administrator` bit(1) DEFAULT NULL,
  `map` varchar(128) DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT 0,
  `longitude` double NOT NULL DEFAULT 0,
  `zoom` int(11) NOT NULL DEFAULT 0,
  `twelvehourformat` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) DEFAULT NULL,
  `coordinateformat` varchar(128) DEFAULT NULL,
  `disabled` bit(1) DEFAULT b'0',
  `expirationtime` timestamp NULL DEFAULT NULL,
  `devicelimit` int(11) DEFAULT -1,
  `token` varchar(128) DEFAULT NULL,
  `userlimit` int(11) DEFAULT 0,
  `devicereadonly` bit(1) DEFAULT b'0',
  `phone` varchar(128) DEFAULT NULL,
  `limitcommands` bit(1) DEFAULT b'0',
  `login` varchar(128) DEFAULT NULL,
  `poilayer` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_users`
--

LOCK TABLES `tc_users` WRITE;
/*!40000 ALTER TABLE `tc_users` DISABLE KEYS */;
INSERT INTO `tc_users` VALUES (1,'admin','admin','c628a57efc9b746342a8927f9d4341ab52903a2c79c6c89b','770b4a490b6d1d5022cf913975f819c48b3530582a928b4c','\0','','',0,0,0,'\0','{}','','\0',NULL,-1,NULL,0,'\0','','\0','','');
/*!40000 ALTER TABLE `tc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24  9:02:26
