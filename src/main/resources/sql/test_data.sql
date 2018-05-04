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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='‰ºöËØùÁÆ°ÁêÜÁî®Êà∑‰ø°ÊÅØ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csessioninfo`
--

LOCK TABLES `csessioninfo` WRITE;
/*!40000 ALTER TABLE `csessioninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `csessioninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_service_mappings`
--

DROP TABLE IF EXISTS `group_service_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_service_mappings` (
  `group_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_service_mappings`
--

LOCK TABLES `group_service_mappings` WRITE;
/*!40000 ALTER TABLE `group_service_mappings` DISABLE KEYS */;
INSERT INTO `group_service_mappings` VALUES (1,9),(1,11),(1,12);
/*!40000 ALTER TABLE `group_service_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'test');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regexregisteredservice`
--

LOCK TABLES `regexregisteredservice` WRITE;
/*!40000 ALTER TABLE `regexregisteredservice` DISABLE KEYS */;
INSERT INTO `regexregisteredservice` VALUES ('regex',11,'¨Ì\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH V(≠\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','¨Ì\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicyØÁìœ¶\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyIÁ÷slõ\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyŸâ°‘øI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository¡+(r_™É\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX öƒ§0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','Apereo foundation sample service',1,'¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyFﬁy¨ç<Ã\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,NULL,'¨Ì\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy’j‚›àYs?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','Apereo',NULL,'¨Ì\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy∞§\0n√XÊT\0\0xp',NULL,'¨Ì\0sr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^https://www.apereo.org','apereo','¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP“˜F%ôaW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProviderãØ∫úwV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('regex',9,'¨Ì\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH V(≠\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','¨Ì\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicyØÁìœ¶\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyIÁ÷slõ\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyŸâ°‘øI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository¡+(r_™É\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX öƒ§0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','Allows only front services',0,'¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyFﬁy¨ç<Ã\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,2,NULL,'¨Ì\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy’j‚›àYs?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','front',NULL,'¨Ì\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy∞§\0n√XÊT\0\0xp',NULL,'¨Ì\0sr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^https?://front.*',NULL,'¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP“˜F%ôaW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProviderãØ∫úwV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('regex',12,'¨Ì\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH V(≠\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','¨Ì\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicyØÁìœ¶\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyIÁ÷slõ\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyŸâ°‘øI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository¡+(r_™É\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX öƒ§0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0\0w\0\0\0\0x','Allows only localhost services description',0,'¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyFﬁy¨ç<Ã\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,NULL,'¨Ì\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy’j‚›àYs?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','localhost',NULL,'¨Ì\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy∞§\0n√XÊT\0\0xp',NULL,'¨Ì\0sr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^https?://localhost.*',NULL,'¨Ì\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP“˜F%ôaW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProviderãØ∫úwV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `regexregisteredservice` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `user_group_mappings`
--

DROP TABLE IF EXISTS `user_group_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_mappings` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_mappings`
--

LOCK TABLES `user_group_mappings` WRITE;
/*!40000 ALTER TABLE `user_group_mappings` DISABLE KEYS */;
INSERT INTO `user_group_mappings` VALUES (1,1);
/*!40000 ALTER TABLE `user_group_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userattrs`
--

DROP TABLE IF EXISTS `userattrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userattrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `attrname` varchar(50) NOT NULL,
  `attrvalue` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattrs`
--

LOCK TABLES `userattrs` WRITE;
/*!40000 ALTER TABLE `userattrs` DISABLE KEYS */;
INSERT INTO `userattrs` VALUES (1,'mmoayyed','firstname','Misagh'),(2,'mmoayyed','lastname','Moayyed'),(3,'mmoayyed','phone','+13476452319'),(4,'casuser','firstname','casuser'),(5,'casuser','lastname','casuser_lastname'),(6,'casuser','phone','11111111111');
/*!40000 ALTER TABLE `userattrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'casuser','9414f9301cdb492b4dcd83f8c711d8bb'),(2,'mmoayyed','ca541f57a3041c3b85c553d12d3e64a8');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-04 16:23:48
