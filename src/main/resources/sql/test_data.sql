-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Table structure for table `csessioninfo`
--
DROP TABLE IF EXISTS `csessioninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csessioninfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ä¼šè¯ç®¡ç†ç”¨æˆ·ä¿¡æ¯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csessioninfo`
--

LOCK TABLES `csessioninfo` WRITE;
/*!40000 ALTER TABLE `csessioninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `csessioninfo` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `regexregisteredservice`
--

DROP TABLE IF EXISTS `regexregisteredservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regexregisteredservice` (
  `expression_type` varchar(50) NOT NULL DEFAULT 'regex',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_strategy` longblob,
  `attribute_release` longblob,
  `description` varchar(255) DEFAULT NULL,
  `evaluation_order` int(11) NOT NULL,
  `expiration_policy` longblob,
  `informationUrl` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logout_type` int(11) DEFAULT NULL,
  `logout_url` varchar(255) DEFAULT NULL,
  `mfa_policy` longblob,
  `name` varchar(255) NOT NULL,
  `privacyUrl` varchar(255) DEFAULT NULL,
  `proxy_policy` longblob,
  `public_key` longblob,
  `required_handlers` longblob,
  `serviceId` varchar(255) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `username_attr` longblob,
  `addressingNamespace` varchar(255) DEFAULT NULL,
  `appliesTo` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `policyNamespace` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `realm` varchar(255) DEFAULT NULL,
  `tokenType` varchar(255) DEFAULT NULL,
  `wsdlEndpoint` varchar(255) DEFAULT NULL,
  `wsdlLocation` varchar(255) DEFAULT NULL,
  `wsdlService` varchar(255) DEFAULT NULL,
  `encryptAssertions` bit(1) DEFAULT NULL,
  `metadataCriteriaDirection` varchar(255) DEFAULT NULL,
  `metadataCriteriaPattern` varchar(255) DEFAULT NULL,
  `metadataCriteriaRemoveEmptyEntitiesDescriptors` bit(1) DEFAULT NULL,
  `metadataCriteriaRemoveRolelessEntityDescriptors` bit(1) DEFAULT NULL,
  `metadataCriteriaRoles` varchar(255) DEFAULT NULL,
  `metadataExpirationDuration` varchar(255) DEFAULT NULL,
  `metadataLocation` varchar(255) DEFAULT NULL,
  `metadataMaxValidity` bigint(20) DEFAULT NULL,
  `metadataSignatureLocation` varchar(255) DEFAULT NULL,
  `nameIdQualifier` varchar(255) DEFAULT NULL,
  `requiredAuthenticationContextClass` varchar(255) DEFAULT NULL,
  `requiredNameIdFormat` varchar(255) DEFAULT NULL,
  `serviceProviderNameIdQualifier` varchar(255) DEFAULT NULL,
  `signAssertions` bit(1) DEFAULT NULL,
  `signResponses` bit(1) DEFAULT NULL,
  `signingCredentialType` varchar(255) DEFAULT NULL,
  `skipGeneratingAssertionNameId` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationInResponseTo` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationNotBefore` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationNotOnOrAfter` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationRecipient` bit(1) DEFAULT NULL,
  `bypassApprovalPrompt` bit(1) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `generateRefreshToken` bit(1) DEFAULT NULL,
  `jsonFormat` bit(1) DEFAULT NULL,
  `supported_grants` longblob,
  `supported_responses` longblob,
  `DYNAMIC_REG_TIME` datetime DEFAULT NULL,
  `dynamicallyRegistered` bit(1) DEFAULT NULL,
  `encryptIdToken` bit(1) DEFAULT NULL,
  `idTokenEncryptionAlg` varchar(255) DEFAULT NULL,
  `idTokenEncryptionEncoding` varchar(255) DEFAULT NULL,
  `implicit` bit(1) DEFAULT NULL,
  `jwks` varchar(255) DEFAULT NULL,
  `scopes` longblob,
  `sectorIdentifierUri` varchar(255) DEFAULT NULL,
  `signIdToken` bit(1) DEFAULT NULL,
  `subjectType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `regexregisteredserviceproperty`
--

DROP TABLE IF EXISTS `regexregisteredserviceproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regexregisteredserviceproperty` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_values` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regexregisteredserviceproperty`
--

LOCK TABLES `regexregisteredserviceproperty` WRITE;
/*!40000 ALTER TABLE `regexregisteredserviceproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `regexregisteredserviceproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredservice_contacts`
--

DROP TABLE IF EXISTS `registeredservice_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registeredservice_contacts` (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `contacts_id` bigint(20) NOT NULL,
  `contacts_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`,`contacts_ORDER`),
  UNIQUE KEY `UK_s7mf4a23wejqx62tt4vh3tgwi` (`contacts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredservice_contacts`
--

LOCK TABLES `registeredservice_contacts` WRITE;
/*!40000 ALTER TABLE `registeredservice_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `registeredservice_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredserviceimpl_props`
--

DROP TABLE IF EXISTS `registeredserviceimpl_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registeredserviceimpl_props` (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `properties_id` bigint(20) NOT NULL,
  `properties_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`,`properties_KEY`),
  UNIQUE KEY `UK_i2mjaqjwxpvurc6aefjkx5x97` (`properties_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredserviceimpl_props`
--

LOCK TABLES `registeredserviceimpl_props` WRITE;
/*!40000 ALTER TABLE `registeredserviceimpl_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `registeredserviceimpl_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registeredserviceimplcontact`
--

DROP TABLE IF EXISTS `registeredserviceimplcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registeredserviceimplcontact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registeredserviceimplcontact`
--

LOCK TABLES `registeredserviceimplcontact` WRITE;
/*!40000 ALTER TABLE `registeredserviceimplcontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `registeredserviceimplcontact` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-04 16:23:48
