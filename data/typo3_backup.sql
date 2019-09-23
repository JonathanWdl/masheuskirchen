-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: typo3
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('7376c820814b8e4c0e9ff5e61e033fca','172.18.0.1',1,1569261677,'a:4:{s:26:\"formProtectionSessionToken\";s:64:\"22a740530c92cde4ed7cdc3a2995abfd3790c096a962b48612dccac2a2def203\";s:27:\"core.template.flashMessages\";N;s:52:\"TYPO3\\CMS\\Recordlist\\Controller\\RecordListController\";a:1:{s:12:\"search_field\";N;}s:49:\"TYPO3\\CMS\\Backend\\Controller\\PageLayoutController\";a:1:{s:12:\"search_field\";N;}}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1566659094,1566659094,0,0,0,0,0,NULL,'typo3',0,'$argon2i$v=19$m=65536,t=16,p=2$N0ZYOWY3VWVhMTJEZExJag$WpoK97wYY8DE3k9UInxhOhejAvsG91/JGgwmGcsCBR0',1,'','','',NULL,0,'',NULL,'','a:17:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:9:{s:6:\"web_ts\";a:2:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:19:\"constant_editor_cat\";s:33:\"plugin.tx_wdlspecials_wdlspecials\";}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"581106f297d9eed8dec1190ee4d6b04d\";}s:16:\"opendocs::recent\";a:8:{s:32:\"581106f297d9eed8dec1190ee4d6b04d\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B3%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:3;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"741d5afb452f2473fd6d4d2954211f5b\";a:4:{i:0;s:6:\"Test 2\";i:1;a:6:{s:4:\"edit\";a:1:{s:39:\"tx_wdlspecials_domain_model_wdlspecials\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:62:\"&edit%5Btx_wdlspecials_domain_model_wdlspecials%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:39:\"tx_wdlspecials_domain_model_wdlspecials\";s:3:\"uid\";i:2;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f6d89caac5872342badf9e9645981625\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:39:\"tx_wdlspecials_domain_model_wdlspecials\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:62:\"&edit%5Btx_wdlspecials_domain_model_wdlspecials%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:39:\"tx_wdlspecials_domain_model_wdlspecials\";s:3:\"uid\";i:1;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"968d80a91f89996d93a59c5c36114dbd\";a:4:{i:0;s:12:\"W√∂chentlich\";i:1;a:6:{s:4:\"edit\";a:1:{s:40:\"tx_wdlspecials_domain_model_wdlintervals\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:63:\"&edit%5Btx_wdlspecials_domain_model_wdlintervals%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:40:\"tx_wdlspecials_domain_model_wdlintervals\";s:3:\"uid\";i:1;s:3:\"pid\";i:8;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a3c2b8039563aa3773d98b669ff2202e\";a:4:{i:0;s:11:\"Ladys Night\";i:1;a:6:{s:4:\"edit\";a:1:{s:41:\"tx_wdlspecials_domain_model_wdlcategories\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:64:\"&edit%5Btx_wdlspecials_domain_model_wdlcategories%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:41:\"tx_wdlspecials_domain_model_wdlcategories\";s:3:\"uid\";i:2;s:3:\"pid\";i:7;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f2cda034b8fdf31e30dd385cd7fc0887\";a:4:{i:0;s:9:\"Intervals\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:8;s:3:\"pid\";i:6;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"476d6ba5c43eba8653fd48072861b769\";a:4:{i:0;s:17:\"Wednesday Special\";i:1;a:6:{s:4:\"edit\";a:1:{s:41:\"tx_wdlspecials_domain_model_wdlcategories\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:64:\"&edit%5Btx_wdlspecials_domain_model_wdlcategories%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:41:\"tx_wdlspecials_domain_model_wdlcategories\";s:3:\"uid\";i:1;s:3:\"pid\";i:7;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:16:\"browse_links.php\";N;s:9:\"file_list\";a:0:{}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}s:8:\"web_list\";a:2:{s:9:\"clipBoard\";s:1:\"1\";s:15:\"bigControlPanel\";s:1:\"0\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:15:\"help_AboutAbout\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1566659154;s:15:\"moduleSessionID\";a:9:{s:6:\"web_ts\";s:32:\"7376c820814b8e4c0e9ff5e61e033fca\";s:10:\"web_layout\";s:32:\"9342113d87bf1e1544ab2cd61fd3b99e\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"7376c820814b8e4c0e9ff5e61e033fca\";s:10:\"FormEngine\";s:32:\"7376c820814b8e4c0e9ff5e61e033fca\";s:16:\"opendocs::recent\";s:32:\"7376c820814b8e4c0e9ff5e61e033fca\";s:16:\"browse_links.php\";s:32:\"dbcf773d6edcf719258c34f18905c486\";s:9:\"file_list\";s:32:\"efde852b7280f863d2b1704b06835452\";s:16:\"extensionbuilder\";s:32:\"b925703989af555429b49cf499986d85\";s:8:\"web_list\";s:32:\"b925703989af555429b49cf499986d85\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:3:{s:3:\"0_0\";s:1:\"1\";s:3:\"0_1\";s:1:\"1\";s:3:\"0_6\";s:1:\"1\";}}}}s:10:\"inlineView\";s:171:\"a:2:{i:0;b:0;s:10:\"tt_content\";a:2:{s:25:\"NEW5d6166cae112b970922631\";a:1:{s:18:\"sys_file_reference\";a:1:{i:0;i:1;}}i:1;a:1:{s:18:\"sys_file_reference\";a:1:{i:0;s:1:\"1\";}}}}\";s:11:\"browseTrees\";a:1:{s:11:\"browsePages\";s:32:\"a:1:{i:0;a:2:{i:0;i:1;i:1;i:1;}}\";}}',NULL,NULL,1,'',0,NULL,1569261434,0,NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache`
--

LOCK TABLES `cf_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache_tags`
--

LOCK TABLES `cf_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'a341977e40078ac89538934c8436cc57',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a328e976dab15166dfc3cdbdaad9b3da\";}'),(2,'0fe0a63c1107e3a67726f22e4547549e',2145909600,'a:2:{s:9:\"constants\";a:4:{s:7:\"styles.\";a:2:{s:8:\"content.\";a:6:{s:10:\"loginform.\";a:21:{s:3:\"pid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:12:\"templateFile\";s:82:\"EXT:bootstrap_package/Resources/Private/Templates/FrontendLogin/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:9:\"emailFrom\";s:0:\"\";s:13:\"emailFromName\";s:0:\"\";s:12:\"replyToEmail\";s:0:\"\";s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";}s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"0\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}s:5:\"page.\";a:7:{s:10:\"preloader.\";a:4:{s:6:\"enable\";s:1:\"1\";s:5:\"logo.\";a:3:{s:4:\"file\";s:74:\"EXT:bootstrap_package/Resources/Public/Images/BootstrapPackageInverted.svg\";s:6:\"height\";s:2:\"52\";s:5:\"width\";s:3:\"180\";}s:15:\"backgroundColor\";s:7:\"#333333\";s:12:\"fadeDuration\";s:4:\"0.25\";}s:5:\"logo.\";a:6:{s:4:\"file\";s:66:\"EXT:bootstrap_package/Resources/Public/Images/BootstrapPackage.svg\";s:12:\"fileInverted\";s:74:\"EXT:bootstrap_package/Resources/Public/Images/BootstrapPackageInverted.svg\";s:6:\"height\";s:2:\"52\";s:5:\"width\";s:3:\"180\";s:3:\"alt\";s:0:\"\";s:9:\"linktitle\";s:0:\"\";}s:8:\"favicon.\";a:1:{s:4:\"file\";s:56:\"EXT:bootstrap_package/Resources/Public/Icons/favicon.ico\";}s:6:\"theme.\";a:9:{s:11:\"googleFont.\";a:3:{s:6:\"enable\";s:1:\"1\";s:4:\"font\";s:15:\"Source Sans Pro\";s:6:\"weight\";s:11:\"300,400,700\";}s:11:\"navigation.\";a:4:{s:5:\"style\";s:7:\"default\";s:4:\"type\";s:0:\"\";s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"1\";s:5:\"width\";s:2:\"20\";s:6:\"height\";s:2:\"20\";}s:9:\"dropdown.\";a:1:{s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"1\";s:5:\"width\";s:2:\"16\";s:6:\"height\";s:2:\"16\";}}}s:14:\"subnavigation.\";a:1:{s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"1\";s:5:\"width\";s:2:\"16\";s:6:\"height\";s:2:\"16\";}}s:14:\"cookieconsent.\";a:10:{s:6:\"enable\";s:1:\"1\";s:6:\"layout\";s:5:\"basic\";s:8:\"position\";s:6:\"bottom\";s:6:\"static\";s:1:\"0\";s:8:\"content.\";a:1:{s:4:\"href\";s:0:\"\";}s:9:\"revokable\";s:1:\"0\";s:8:\"location\";s:1:\"0\";s:4:\"law.\";a:2:{s:11:\"countryCode\";s:0:\"\";s:11:\"regionalLaw\";s:1:\"1\";}s:4:\"type\";s:4:\"info\";s:7:\"cookie.\";a:1:{s:10:\"expiryDays\";s:3:\"365\";}}s:11:\"breadcrumb.\";a:3:{s:6:\"enable\";s:1:\"1\";s:11:\"enableLevel\";s:1:\"2\";s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"0\";s:5:\"width\";s:2:\"16\";s:6:\"height\";s:2:\"16\";}}s:5:\"meta.\";a:4:{s:6:\"enable\";s:1:\"1\";s:15:\"navigationValue\";s:0:\"\";s:14:\"navigationType\";s:4:\"list\";s:16:\"includeNotInMenu\";s:1:\"1\";}s:9:\"language.\";a:2:{s:6:\"enable\";s:1:\"1\";s:13:\"languageValue\";s:4:\"auto\";}s:12:\"socialmedia.\";a:2:{s:6:\"enable\";s:1:\"1\";s:9:\"channels.\";a:11:{s:9:\"facebook.\";a:2:{s:5:\"label\";s:8:\"Facebook\";s:3:\"url\";s:0:\"\";}s:8:\"twitter.\";a:2:{s:5:\"label\";s:7:\"Twitter\";s:3:\"url\";s:0:\"\";}s:10:\"instagram.\";a:2:{s:5:\"label\";s:9:\"Instagram\";s:3:\"url\";s:0:\"\";}s:7:\"github.\";a:2:{s:5:\"label\";s:6:\"GitHub\";s:3:\"url\";s:0:\"\";}s:11:\"googleplus.\";a:2:{s:5:\"label\";s:7:\"Google+\";s:3:\"url\";s:0:\"\";}s:9:\"linkedin.\";a:2:{s:5:\"label\";s:8:\"LinkedIn\";s:3:\"url\";s:0:\"\";}s:5:\"xing.\";a:2:{s:5:\"label\";s:4:\"Xing\";s:3:\"url\";s:0:\"\";}s:8:\"youtube.\";a:2:{s:5:\"label\";s:7:\"YouTube\";s:3:\"url\";s:0:\"\";}s:3:\"vk.\";a:2:{s:5:\"label\";s:2:\"VK\";s:3:\"url\";s:0:\"\";}s:6:\"vimeo.\";a:2:{s:5:\"label\";s:5:\"Vimeo\";s:3:\"url\";s:0:\"\";}s:4:\"rss.\";a:2:{s:5:\"label\";s:3:\"RSS\";s:3:\"url\";s:0:\"\";}}}s:10:\"copyright.\";a:2:{s:6:\"enable\";s:1:\"1\";s:4:\"text\";s:186:\"Running with <a href=\"http://www.typo3.org\" rel=\"noopener\" target=\"_blank\">TYPO3</a> and <a href=\"https://www.bootstrap-package.com\" rel=\"noopener\" target=\"_blank\">Bootstrap Package</a>.\";}}s:14:\"fluidtemplate.\";a:3:{s:14:\"layoutRootPath\";s:53:\"EXT:bootstrap_package/Resources/Private/Layouts/Page/\";s:15:\"partialRootPath\";s:54:\"EXT:bootstrap_package/Resources/Private/Partials/Page/\";s:16:\"templateRootPath\";s:55:\"EXT:bootstrap_package/Resources/Private/Templates/Page/\";}s:5:\"meta.\";a:9:{s:11:\"description\";s:0:\"\";s:6:\"author\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:8:\"viewport\";s:35:\"width=device-width, initial-scale=1\";s:6:\"robots\";s:12:\"index,follow\";s:28:\"apple-mobile-web-app-capable\";s:2:\"no\";s:10:\"compatible\";s:7:\"IE=edge\";s:6:\"google\";s:11:\"notranslate\";s:24:\"google-site-verification\";s:0:\"\";}s:9:\"tracking.\";a:1:{s:7:\"google.\";a:1:{s:10:\"trackingID\";s:0:\"\";}}}s:7:\"plugin.\";a:4:{s:34:\"bootstrap_package_contentelements.\";a:10:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:64:\"EXT:bootstrap_package/Resources/Private/Layouts/ContentElements/\";s:15:\"partialRootPath\";s:65:\"EXT:bootstrap_package/Resources/Private/Partials/ContentElements/\";s:16:\"templateRootPath\";s:66:\"EXT:bootstrap_package/Resources/Private/Templates/ContentElements/\";}s:7:\"header.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:5:\"class\";s:14:\"element-header\";}s:10:\"subheader.\";a:1:{s:5:\"class\";s:17:\"element-subheader\";}s:9:\"lightbox.\";a:3:{s:8:\"cssClass\";s:8:\"lightbox\";s:6:\"prefix\";s:14:\"lightbox-group\";s:6:\"image.\";a:2:{s:9:\"maxHeight\";s:4:\"1200\";s:8:\"maxWidth\";s:4:\"1200\";}}s:8:\"gallery.\";a:1:{s:8:\"columns.\";a:6:{s:2:\"1.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-1\";}s:2:\"2.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-2\";}s:2:\"3.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-3\";}s:2:\"4.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-4\";}s:2:\"5.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-5\";}s:2:\"6.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-6\";}}}s:15:\"menu_thumbnail.\";a:2:{s:6:\"title.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"subtitle.\";a:1:{s:4:\"crop\";s:2:\"80\";}}s:10:\"menu_card.\";a:4:{s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"0\";s:6:\"height\";s:2:\"32\";s:5:\"width\";s:3:\"32c\";}s:6:\"title.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"subtitle.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"abstract.\";a:1:{s:4:\"crop\";s:3:\"250\";}}s:9:\"texticon.\";a:1:{s:5:\"icon.\";a:4:{s:8:\"default.\";a:2:{s:6:\"height\";s:2:\"32\";s:5:\"width\";s:2:\"32\";}s:7:\"medium.\";a:2:{s:6:\"height\";s:2:\"48\";s:5:\"width\";s:2:\"48\";}s:6:\"large.\";a:2:{s:6:\"height\";s:2:\"64\";s:5:\"width\";s:2:\"64\";}s:8:\"awesome.\";a:2:{s:6:\"height\";s:2:\"80\";s:5:\"width\";s:2:\"80\";}}}s:9:\"timeline.\";a:1:{s:5:\"date.\";a:1:{s:6:\"format\";s:9:\"%B %e, %Y\";}}s:8:\"uploads.\";a:1:{s:8:\"preview.\";a:2:{s:6:\"height\";s:4:\"100c\";s:5:\"width\";s:4:\"100c\";}}}s:18:\"bootstrap_package.\";a:2:{s:9:\"settings.\";a:3:{s:23:\"overrideParserVariables\";s:1:\"1\";s:16:\"cssSourceMapping\";s:1:\"0\";s:5:\"scss.\";a:605:{s:5:\"white\";s:4:\"#fff\";s:8:\"gray-100\";s:7:\"#f8f9fa\";s:8:\"gray-200\";s:7:\"#e9ecef\";s:8:\"gray-300\";s:7:\"#dee2e6\";s:8:\"gray-400\";s:7:\"#ced4da\";s:8:\"gray-500\";s:7:\"#adb5bd\";s:8:\"gray-600\";s:7:\"#6c757d\";s:8:\"gray-700\";s:7:\"#495057\";s:8:\"gray-800\";s:7:\"#3b3b3b\";s:8:\"gray-900\";s:7:\"#2b2b2b\";s:5:\"black\";s:4:\"#000\";s:4:\"blue\";s:7:\"#007bff\";s:6:\"indigo\";s:7:\"#6610f2\";s:6:\"purple\";s:7:\"#6f42c1\";s:4:\"pink\";s:7:\"#e83e8c\";s:3:\"red\";s:7:\"#dc3545\";s:6:\"orange\";s:7:\"#fd7e14\";s:6:\"yellow\";s:7:\"#ffc107\";s:5:\"green\";s:7:\"#28a745\";s:4:\"teal\";s:7:\"#20c997\";s:4:\"cyan\";s:7:\"#17a2b8\";s:7:\"default\";s:7:\"#eaebec\";s:7:\"primary\";s:7:\"#4faf98\";s:9:\"secondary\";s:7:\"#ff3f00\";s:7:\"success\";s:6:\"$green\";s:4:\"info\";s:5:\"$cyan\";s:7:\"warning\";s:7:\"$yellow\";s:6:\"danger\";s:4:\"$red\";s:5:\"light\";s:9:\"$gray-100\";s:4:\"dark\";s:9:\"$gray-900\";s:20:\"theme-color-interval\";s:2:\"8%\";s:24:\"yiq-contrasted-threshold\";s:3:\"150\";s:13:\"yiq-text-dark\";s:9:\"$gray-900\";s:14:\"yiq-text-light\";s:6:\"$white\";s:12:\"enable-caret\";s:4:\"true\";s:14:\"enable-rounded\";s:5:\"false\";s:14:\"enable-shadows\";s:5:\"false\";s:16:\"enable-gradients\";s:5:\"false\";s:18:\"enable-transitions\";s:4:\"true\";s:41:\"enable-prefers-reduced-motion-media-query\";s:4:\"true\";s:19:\"enable-grid-classes\";s:4:\"true\";s:33:\"enable-pointer-cursor-for-buttons\";s:4:\"true\";s:19:\"enable-print-styles\";s:4:\"true\";s:28:\"enable-responsive-font-sizes\";s:5:\"false\";s:23:\"enable-validation-icons\";s:4:\"true\";s:6:\"spacer\";s:4:\"1rem\";s:7:\"body-bg\";s:6:\"$white\";s:10:\"body-color\";s:9:\"$gray-900\";s:10:\"link-color\";s:8:\"$primary\";s:15:\"link-decoration\";s:4:\"none\";s:16:\"link-hover-color\";s:24:\"darken($link-color, 15%)\";s:21:\"link-hover-decoration\";s:9:\"underline\";s:20:\"link-alternate-color\";s:7:\"#ffffff\";s:26:\"link-alternate-hover-color\";s:34:\"darken($link-alternate-color, 15%)\";s:39:\"emphasized-link-hover-darken-percentage\";s:3:\"15%\";s:23:\"paragraph-margin-bottom\";s:4:\"1rem\";s:12:\"grid-columns\";s:2:\"12\";s:17:\"grid-gutter-width\";s:4:\"40px\";s:14:\"line-height-lg\";s:3:\"1.5\";s:14:\"line-height-sm\";s:3:\"1.5\";s:12:\"border-width\";s:3:\"1px\";s:12:\"border-color\";s:9:\"$gray-300\";s:13:\"border-radius\";s:6:\".25rem\";s:16:\"border-radius-lg\";s:5:\".3rem\";s:16:\"border-radius-sm\";s:5:\".2rem\";s:12:\"rounded-pill\";s:6:\"50rem;\";s:22:\"component-active-color\";s:6:\"$white\";s:19:\"component-active-bg\";s:8:\"$primary\";s:11:\"caret-width\";s:4:\".3em\";s:20:\"caret-vertical-align\";s:18:\"$caret-width * .85\";s:13:\"caret-spacing\";s:18:\"$caret-width * .85\";s:15:\"transition-base\";s:19:\"all .2s ease-in-out\";s:15:\"transition-fade\";s:19:\"opacity .15s linear\";s:19:\"transition-collapse\";s:16:\"height .35s ease\";s:22:\"font-family-sans-serif\";s:181:\"-apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"\";s:21:\"font-family-monospace\";s:84:\"SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace\";s:16:\"font-family-base\";s:32:\"\"#{$google-webfont}\", sans-serif\";s:14:\"font-size-base\";s:4:\"1rem\";s:12:\"font-size-lg\";s:22:\"$font-size-base * 1.25\";s:12:\"font-size-sm\";s:22:\"$font-size-base * .875\";s:19:\"font-weight-lighter\";s:7:\"lighter\";s:17:\"font-weight-light\";s:3:\"300\";s:18:\"font-weight-normal\";s:3:\"400\";s:16:\"font-weight-bold\";s:3:\"700\";s:18:\"font-weight-bolder\";s:6:\"bolder\";s:16:\"font-weight-base\";s:19:\"$font-weight-normal\";s:16:\"line-height-base\";s:3:\"1.5\";s:12:\"h1-font-size\";s:19:\"$font-size-base * 2\";s:12:\"h2-font-size\";s:22:\"$font-size-base * 1.75\";s:12:\"h3-font-size\";s:21:\"$font-size-base * 1.5\";s:12:\"h4-font-size\";s:22:\"$font-size-base * 1.25\";s:12:\"h5-font-size\";s:19:\"$font-size-base * 1\";s:12:\"h6-font-size\";s:22:\"$font-size-base * 0.85\";s:22:\"headings-margin-bottom\";s:11:\"$spacer / 2\";s:20:\"headings-font-family\";s:4:\"null\";s:20:\"headings-font-weight\";s:3:\"300\";s:20:\"headings-line-height\";s:3:\"1.2\";s:14:\"headings-color\";s:4:\"null\";s:13:\"display1-size\";s:4:\"6rem\";s:13:\"display2-size\";s:6:\"5.5rem\";s:13:\"display3-size\";s:6:\"4.5rem\";s:13:\"display4-size\";s:6:\"3.5rem\";s:15:\"display1-weight\";s:3:\"300\";s:15:\"display2-weight\";s:3:\"300\";s:15:\"display3-weight\";s:3:\"300\";s:15:\"display4-weight\";s:3:\"300\";s:19:\"display-line-height\";s:21:\"$headings-line-height\";s:14:\"lead-font-size\";s:22:\"$font-size-base * 1.25\";s:16:\"lead-font-weight\";s:3:\"300\";s:15:\"small-font-size\";s:3:\"80%\";s:10:\"text-muted\";s:9:\"$gray-600\";s:22:\"blockquote-small-color\";s:9:\"$gray-600\";s:26:\"blockquote-small-font-size\";s:16:\"$small-font-size\";s:20:\"blockquote-font-size\";s:22:\"$font-size-base * 1.25\";s:15:\"hr-border-color\";s:16:\"rgba($black, .1)\";s:15:\"hr-border-width\";s:13:\"$border-width\";s:12:\"mark-padding\";s:4:\".2em\";s:14:\"dt-font-weight\";s:17:\"$font-weight-bold\";s:14:\"kbd-box-shadow\";s:34:\"inset 0 -.1rem 0 rgba($black, .25)\";s:22:\"nested-kbd-font-weight\";s:17:\"$font-weight-bold\";s:19:\"list-inline-padding\";s:5:\".5rem\";s:7:\"mark-bg\";s:7:\"#fcf8e3\";s:11:\"hr-margin-y\";s:7:\"$spacer\";s:18:\"table-cell-padding\";s:6:\".75rem\";s:21:\"table-cell-padding-sm\";s:5:\".3rem\";s:11:\"table-color\";s:11:\"$body-color\";s:8:\"table-bg\";s:4:\"null\";s:15:\"table-accent-bg\";s:17:\"rgba($black, .05)\";s:17:\"table-hover-color\";s:12:\"$table-color\";s:14:\"table-hover-bg\";s:18:\"rgba($black, .075)\";s:15:\"table-active-bg\";s:15:\"$table-hover-bg\";s:18:\"table-border-width\";s:13:\"$border-width\";s:18:\"table-border-color\";s:13:\"$border-color\";s:13:\"table-head-bg\";s:9:\"$gray-200\";s:16:\"table-head-color\";s:9:\"$gray-700\";s:16:\"table-dark-color\";s:6:\"$white\";s:13:\"table-dark-bg\";s:9:\"$gray-900\";s:20:\"table-dark-accent-bg\";s:17:\"rgba($white, .05)\";s:22:\"table-dark-hover-color\";s:17:\"$table-dark-color\";s:19:\"table-dark-hover-bg\";s:18:\"rgba($white, .075)\";s:23:\"table-dark-border-color\";s:29:\"lighten($table-dark-bg, 7.5%)\";s:19:\"table-striped-order\";s:3:\"odd\";s:19:\"table-caption-color\";s:11:\"$text-muted\";s:14:\"table-bg-level\";s:2:\"-9\";s:18:\"table-border-level\";s:2:\"-6\";s:19:\"input-btn-padding-y\";s:7:\".375rem\";s:19:\"input-btn-padding-x\";s:6:\".75rem\";s:21:\"input-btn-font-family\";s:4:\"null\";s:19:\"input-btn-font-size\";s:15:\"$font-size-base\";s:21:\"input-btn-line-height\";s:17:\"$line-height-base\";s:21:\"input-btn-focus-width\";s:5:\".2rem\";s:21:\"input-btn-focus-color\";s:31:\"rgba($component-active-bg, .25)\";s:26:\"input-btn-focus-box-shadow\";s:51:\"0 0 0 $input-btn-focus-width $input-btn-focus-color\";s:22:\"input-btn-padding-y-sm\";s:6:\".25rem\";s:22:\"input-btn-padding-x-sm\";s:5:\".5rem\";s:22:\"input-btn-font-size-sm\";s:13:\"$font-size-sm\";s:24:\"input-btn-line-height-sm\";s:15:\"$line-height-sm\";s:22:\"input-btn-padding-y-lg\";s:5:\".5rem\";s:22:\"input-btn-padding-x-lg\";s:4:\"1rem\";s:22:\"input-btn-font-size-lg\";s:13:\"$font-size-lg\";s:24:\"input-btn-line-height-lg\";s:15:\"$line-height-lg\";s:22:\"input-btn-border-width\";s:13:\"$border-width\";s:13:\"btn-padding-y\";s:20:\"$input-btn-padding-y\";s:13:\"btn-padding-x\";s:20:\"$input-btn-padding-x\";s:15:\"btn-font-family\";s:22:\"$input-btn-font-family\";s:13:\"btn-font-size\";s:20:\"$input-btn-font-size\";s:15:\"btn-line-height\";s:22:\"$input-btn-line-height\";s:16:\"btn-padding-y-sm\";s:23:\"$input-btn-padding-y-sm\";s:16:\"btn-padding-x-sm\";s:23:\"$input-btn-padding-x-sm\";s:18:\"btn-line-height-sm\";s:25:\"$input-btn-line-height-sm\";s:16:\"btn-padding-y-lg\";s:23:\"$input-btn-padding-y-lg\";s:16:\"btn-padding-x-lg\";s:23:\"$input-btn-padding-x-lg\";s:18:\"btn-line-height-lg\";s:25:\"$input-btn-line-height-lg\";s:16:\"btn-border-width\";s:23:\"$input-btn-border-width\";s:15:\"btn-font-weight\";s:19:\"$font-weight-normal\";s:14:\"btn-box-shadow\";s:61:\"inset 0 1px 0 rgba($white, .15), 0 1px 1px rgba($black, .075)\";s:15:\"btn-focus-width\";s:22:\"$input-btn-focus-width\";s:20:\"btn-focus-box-shadow\";s:27:\"$input-btn-focus-box-shadow\";s:20:\"btn-disabled-opacity\";s:3:\".65\";s:21:\"btn-active-box-shadow\";s:34:\"inset 0 3px 5px rgba($black, .125)\";s:23:\"btn-link-disabled-color\";s:9:\"$gray-600\";s:19:\"btn-block-spacing-y\";s:5:\".5rem\";s:17:\"btn-border-radius\";s:14:\"$border-radius\";s:20:\"btn-border-radius-lg\";s:17:\"$border-radius-lg\";s:20:\"btn-border-radius-sm\";s:17:\"$border-radius-sm\";s:14:\"btn-transition\";s:117:\"color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out\";s:15:\"input-padding-y\";s:20:\"$input-btn-padding-y\";s:15:\"input-padding-x\";s:20:\"$input-btn-padding-x\";s:17:\"input-font-family\";s:22:\"$input-btn-font-family\";s:15:\"input-font-size\";s:20:\"$input-btn-font-size\";s:17:\"input-font-weight\";s:17:\"$font-weight-base\";s:17:\"input-line-height\";s:22:\"$input-btn-line-height\";s:18:\"input-padding-y-sm\";s:23:\"$input-btn-padding-y-sm\";s:18:\"input-padding-x-sm\";s:23:\"$input-btn-padding-x-sm\";s:20:\"input-line-height-sm\";s:25:\"$input-btn-line-height-sm\";s:18:\"input-padding-y-lg\";s:23:\"$input-btn-padding-y-lg\";s:18:\"input-padding-x-lg\";s:23:\"$input-btn-padding-x-lg\";s:20:\"input-line-height-lg\";s:25:\"$input-btn-line-height-lg\";s:8:\"input-bg\";s:6:\"$white\";s:17:\"input-disabled-bg\";s:9:\"$gray-200\";s:11:\"input-color\";s:9:\"$gray-700\";s:18:\"input-border-color\";s:9:\"$gray-400\";s:18:\"input-border-width\";s:23:\"$input-btn-border-width\";s:16:\"input-box-shadow\";s:34:\"inset 0 1px 1px rgba($black, .075)\";s:19:\"input-border-radius\";s:14:\"$border-radius\";s:22:\"input-border-radius-lg\";s:17:\"$border-radius-lg\";s:22:\"input-border-radius-sm\";s:17:\"$border-radius-sm\";s:14:\"input-focus-bg\";s:9:\"$input-bg\";s:24:\"input-focus-border-color\";s:34:\"lighten($component-active-bg, 25%)\";s:17:\"input-focus-color\";s:12:\"$input-color\";s:17:\"input-focus-width\";s:22:\"$input-btn-focus-width\";s:22:\"input-focus-box-shadow\";s:27:\"$input-btn-focus-box-shadow\";s:23:\"input-placeholder-color\";s:9:\"$gray-600\";s:19:\"input-height-border\";s:23:\"$input-border-width * 2\";s:18:\"input-height-inner\";s:59:\"calc(#{$input-line-height * 1em} + #{$input-padding-y * 2})\";s:23:\"input-height-inner-half\";s:56:\"calc(#{$input-line-height * .5em} + #{$input-padding-y})\";s:26:\"input-height-inner-quarter\";s:61:\"calc(#{$input-line-height * .25em} + #{$input-padding-y / 2})\";s:12:\"input-height\";s:85:\"calc(#{$input-line-height * 1em} + #{$input-padding-y * 2} + #{$input-height-border})\";s:15:\"input-height-sm\";s:95:\"calc(#{$input-line-height-sm * 1em} + #{$input-btn-padding-y-sm * 2} + #{$input-height-border})\";s:15:\"input-height-lg\";s:95:\"calc(#{$input-line-height-lg * 1em} + #{$input-btn-padding-y-lg * 2} + #{$input-height-border})\";s:16:\"input-transition\";s:58:\"border-color .15s ease-in-out, box-shadow .15s ease-in-out\";s:20:\"form-text-margin-top\";s:6:\".25rem\";s:23:\"form-check-input-gutter\";s:7:\"1.25rem\";s:25:\"form-check-input-margin-y\";s:5:\".3rem\";s:25:\"form-check-input-margin-x\";s:6:\".25rem\";s:26:\"form-check-inline-margin-x\";s:6:\".75rem\";s:32:\"form-check-inline-input-margin-x\";s:8:\".3125rem\";s:22:\"form-grid-gutter-width\";s:4:\"10px\";s:24:\"form-group-margin-bottom\";s:4:\"1rem\";s:23:\"input-group-addon-color\";s:12:\"$input-color\";s:20:\"input-group-addon-bg\";s:9:\"$gray-200\";s:30:\"input-group-addon-border-color\";s:19:\"$input-border-color\";s:21:\"custom-control-gutter\";s:5:\".5rem\";s:23:\"custom-control-spacer-x\";s:4:\"1rem\";s:29:\"custom-control-indicator-size\";s:4:\"1rem\";s:27:\"custom-control-indicator-bg\";s:9:\"$input-bg\";s:32:\"custom-control-indicator-bg-size\";s:7:\"50% 50%\";s:35:\"custom-control-indicator-box-shadow\";s:17:\"$input-box-shadow\";s:37:\"custom-control-indicator-border-color\";s:9:\"$gray-500\";s:37:\"custom-control-indicator-border-width\";s:19:\"$input-border-width\";s:36:\"custom-control-indicator-disabled-bg\";s:18:\"$input-disabled-bg\";s:35:\"custom-control-label-disabled-color\";s:9:\"$gray-600\";s:38:\"custom-control-indicator-checked-color\";s:23:\"$component-active-color\";s:35:\"custom-control-indicator-checked-bg\";s:20:\"$component-active-bg\";s:44:\"custom-control-indicator-checked-disabled-bg\";s:18:\"rgba($primary, .5)\";s:43:\"custom-control-indicator-checked-box-shadow\";s:4:\"none\";s:45:\"custom-control-indicator-checked-border-color\";s:36:\"$custom-control-indicator-checked-bg\";s:41:\"custom-control-indicator-focus-box-shadow\";s:23:\"$input-focus-box-shadow\";s:43:\"custom-control-indicator-focus-border-color\";s:25:\"$input-focus-border-color\";s:37:\"custom-control-indicator-active-color\";s:23:\"$component-active-color\";s:34:\"custom-control-indicator-active-bg\";s:34:\"lighten($component-active-bg, 35%)\";s:42:\"custom-control-indicator-active-box-shadow\";s:4:\"none\";s:44:\"custom-control-indicator-active-border-color\";s:35:\"$custom-control-indicator-active-bg\";s:39:\"custom-checkbox-indicator-border-radius\";s:14:\"$border-radius\";s:38:\"custom-checkbox-indicator-icon-checked\";s:248:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 8 8\'%3e%3cpath fill=\'#{$custom-control-indicator-checked-color}\' d=\'M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:42:\"custom-checkbox-indicator-indeterminate-bg\";s:20:\"$component-active-bg\";s:45:\"custom-checkbox-indicator-indeterminate-color\";s:39:\"$custom-control-indicator-checked-color\";s:44:\"custom-checkbox-indicator-icon-indeterminate\";s:204:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 4 4\'%3e%3cpath stroke=\'#{$custom-checkbox-indicator-indeterminate-color}\' d=\'M0 2h4\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:50:\"custom-checkbox-indicator-indeterminate-box-shadow\";s:4:\"none\";s:52:\"custom-checkbox-indicator-indeterminate-border-color\";s:43:\"$custom-checkbox-indicator-indeterminate-bg\";s:36:\"custom-radio-indicator-border-radius\";s:3:\"50%\";s:35:\"custom-radio-indicator-icon-checked\";s:194:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'-4 -4 8 8\'%3e%3ccircle r=\'3\' fill=\'#{$custom-control-indicator-checked-color}\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:19:\"custom-switch-width\";s:37:\"$custom-control-indicator-size * 1.75\";s:37:\"custom-switch-indicator-border-radius\";s:34:\"$custom-control-indicator-size / 2\";s:28:\"custom-switch-indicator-size\";s:87:\"calc(#{$custom-control-indicator-size} - #{$custom-control-indicator-border-width * 4})\";s:23:\"custom-select-padding-y\";s:16:\"$input-padding-y\";s:23:\"custom-select-padding-x\";s:16:\"$input-padding-x\";s:25:\"custom-select-font-family\";s:18:\"$input-font-family\";s:23:\"custom-select-font-size\";s:16:\"$input-font-size\";s:20:\"custom-select-height\";s:13:\"$input-height\";s:31:\"custom-select-indicator-padding\";s:4:\"1rem\";s:25:\"custom-select-font-weight\";s:18:\"$input-font-weight\";s:25:\"custom-select-line-height\";s:18:\"$input-line-height\";s:19:\"custom-select-color\";s:12:\"$input-color\";s:28:\"custom-select-disabled-color\";s:9:\"$gray-600\";s:16:\"custom-select-bg\";s:9:\"$input-bg\";s:25:\"custom-select-disabled-bg\";s:9:\"$gray-200\";s:21:\"custom-select-bg-size\";s:8:\"8px 10px\";s:29:\"custom-select-indicator-color\";s:9:\"$gray-800\";s:23:\"custom-select-indicator\";s:202:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 4 5\'%3e%3cpath fill=\'#{$custom-select-indicator-color}\' d=\'M2 0L0 2h4zm0 5L0 3h4z\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:24:\"custom-select-background\";s:182:\"$custom-select-indicator no-repeat right $custom-select-padding-x center / $custom-select-bg-size; // Used so we can have multiple background elements (e.g., arrow and feedback icon)\";s:41:\"custom-select-feedback-icon-padding-right\";s:118:\"calc((1em + #{2 * $custom-select-padding-y}) * 3 / 4 + #{$custom-select-padding-x + $custom-select-indicator-padding})\";s:36:\"custom-select-feedback-icon-position\";s:74:\"center right ($custom-select-padding-x + $custom-select-indicator-padding)\";s:32:\"custom-select-feedback-icon-size\";s:49:\"$input-height-inner-half $input-height-inner-half\";s:26:\"custom-select-border-width\";s:19:\"$input-border-width\";s:26:\"custom-select-border-color\";s:19:\"$input-border-color\";s:27:\"custom-select-border-radius\";s:14:\"$border-radius\";s:24:\"custom-select-box-shadow\";s:34:\"inset 0 1px 2px rgba($black, .075)\";s:32:\"custom-select-focus-border-color\";s:25:\"$input-focus-border-color\";s:25:\"custom-select-focus-width\";s:18:\"$input-focus-width\";s:30:\"custom-select-focus-box-shadow\";s:55:\"0 0 0 $custom-select-focus-width $input-btn-focus-color\";s:26:\"custom-select-padding-y-sm\";s:19:\"$input-padding-y-sm\";s:26:\"custom-select-padding-x-sm\";s:19:\"$input-padding-x-sm\";s:26:\"custom-select-font-size-sm\";s:19:\"$input-font-size-sm\";s:23:\"custom-select-height-sm\";s:16:\"$input-height-sm\";s:26:\"custom-select-padding-y-lg\";s:19:\"$input-padding-y-lg\";s:26:\"custom-select-padding-x-lg\";s:19:\"$input-padding-x-lg\";s:26:\"custom-select-font-size-lg\";s:23:\"$input-btn-font-size-lg\";s:23:\"custom-select-height-lg\";s:16:\"$input-height-lg\";s:24:\"custom-range-track-width\";s:4:\"100%\";s:25:\"custom-range-track-height\";s:5:\".5rem\";s:25:\"custom-range-track-cursor\";s:7:\"pointer\";s:21:\"custom-range-track-bg\";s:9:\"$gray-300\";s:32:\"custom-range-track-border-radius\";s:4:\"1rem\";s:29:\"custom-range-track-box-shadow\";s:38:\"inset 0 .25rem .25rem rgba($black, .1)\";s:24:\"custom-range-thumb-width\";s:4:\"1rem\";s:25:\"custom-range-thumb-height\";s:25:\"$custom-range-thumb-width\";s:21:\"custom-range-thumb-bg\";s:20:\"$component-active-bg\";s:25:\"custom-range-thumb-border\";s:1:\"0\";s:32:\"custom-range-thumb-border-radius\";s:4:\"1rem\";s:29:\"custom-range-thumb-box-shadow\";s:31:\"0 .1rem .25rem rgba($black, .1)\";s:35:\"custom-range-thumb-focus-box-shadow\";s:43:\"0 0 0 1px $body-bg, $input-focus-box-shadow\";s:41:\"custom-range-thumb-focus-box-shadow-width\";s:18:\"$input-focus-width\";s:28:\"custom-range-thumb-active-bg\";s:34:\"lighten($component-active-bg, 35%)\";s:30:\"custom-range-thumb-disabled-bg\";s:9:\"$gray-500\";s:18:\"custom-file-height\";s:13:\"$input-height\";s:24:\"custom-file-height-inner\";s:19:\"$input-height-inner\";s:30:\"custom-file-focus-border-color\";s:25:\"$input-focus-border-color\";s:28:\"custom-file-focus-box-shadow\";s:27:\"$input-btn-focus-box-shadow\";s:23:\"custom-file-disabled-bg\";s:18:\"$input-disabled-bg\";s:21:\"custom-file-padding-y\";s:16:\"$input-padding-y\";s:21:\"custom-file-padding-x\";s:16:\"$input-padding-x\";s:23:\"custom-file-line-height\";s:18:\"$input-line-height\";s:23:\"custom-file-font-family\";s:18:\"$input-font-family\";s:23:\"custom-file-font-weight\";s:18:\"$input-font-weight\";s:17:\"custom-file-color\";s:12:\"$input-color\";s:14:\"custom-file-bg\";s:9:\"$input-bg\";s:24:\"custom-file-border-width\";s:19:\"$input-border-width\";s:24:\"custom-file-border-color\";s:19:\"$input-border-color\";s:25:\"custom-file-border-radius\";s:20:\"$input-border-radius\";s:22:\"custom-file-box-shadow\";s:17:\"$input-box-shadow\";s:24:\"custom-file-button-color\";s:18:\"$custom-file-color\";s:21:\"custom-file-button-bg\";s:21:\"$input-group-addon-bg\";s:24:\"form-feedback-margin-top\";s:21:\"$form-text-margin-top\";s:23:\"form-feedback-font-size\";s:16:\"$small-font-size\";s:25:\"form-feedback-valid-color\";s:8:\"$success\";s:27:\"form-feedback-invalid-color\";s:7:\"$danger\";s:30:\"form-feedback-icon-valid-color\";s:26:\"$form-feedback-valid-color\";s:24:\"form-feedback-icon-valid\";s:284:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 8 8\'%3e%3cpath fill=\'#{$form-feedback-icon-valid-color}\' d=\'M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:32:\"form-feedback-icon-invalid-color\";s:28:\"$form-feedback-invalid-color\";s:26:\"form-feedback-icon-invalid\";s:355:\"str-replace(url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'#{$form-feedback-icon-invalid-color}\' viewBox=\'-2 -2 7 7\'%3e%3cpath stroke=\'#{$form-feedback-icon-invalid-color}\' d=\'M0 0l3 3m0-3L0 3\'/%3e%3ccircle r=\'.5\'/%3e%3ccircle cx=\'3\' r=\'.5\'/%3e%3ccircle cy=\'3\' r=\'.5\'/%3e%3ccircle cx=\'3\' cy=\'3\' r=\'.5\'/%3e%3c/svg%3E\"), \"#\", \"%23\")\";s:18:\"dropdown-min-width\";s:5:\"10rem\";s:18:\"dropdown-padding-y\";s:5:\".5rem\";s:15:\"dropdown-spacer\";s:7:\".125rem\";s:18:\"dropdown-font-size\";s:15:\"$font-size-base\";s:14:\"dropdown-color\";s:11:\"$body-color\";s:11:\"dropdown-bg\";s:6:\"$white\";s:21:\"dropdown-border-color\";s:17:\"rgba($black, .15)\";s:22:\"dropdown-border-radius\";s:14:\"$border-radius\";s:21:\"dropdown-border-width\";s:13:\"$border-width\";s:28:\"dropdown-inner-border-radius\";s:60:\"calc(#{$dropdown-border-radius} - #{$dropdown-border-width})\";s:19:\"dropdown-divider-bg\";s:9:\"$gray-200\";s:25:\"dropdown-divider-margin-y\";s:21:\"$nav-divider-margin-y\";s:19:\"dropdown-box-shadow\";s:31:\"0 .5rem 1rem rgba($black, .175)\";s:19:\"dropdown-link-color\";s:9:\"$gray-900\";s:25:\"dropdown-link-hover-color\";s:21:\"darken($gray-900, 5%)\";s:22:\"dropdown-link-hover-bg\";s:9:\"$gray-100\";s:26:\"dropdown-link-active-color\";s:23:\"$component-active-color\";s:23:\"dropdown-link-active-bg\";s:20:\"$component-active-bg\";s:28:\"dropdown-link-disabled-color\";s:9:\"$gray-600\";s:23:\"dropdown-item-padding-y\";s:6:\".25rem\";s:23:\"dropdown-item-padding-x\";s:6:\"1.5rem\";s:21:\"dropdown-header-color\";s:9:\"$gray-600\";s:15:\"zindex-dropdown\";s:4:\"1000\";s:13:\"zindex-sticky\";s:4:\"1020\";s:12:\"zindex-fixed\";s:4:\"1030\";s:21:\"zindex-modal-backdrop\";s:4:\"1040\";s:12:\"zindex-modal\";s:4:\"1050\";s:14:\"zindex-popover\";s:4:\"1060\";s:14:\"zindex-tooltip\";s:4:\"1070\";s:18:\"nav-link-padding-y\";s:5:\".5rem\";s:18:\"nav-link-padding-x\";s:4:\"1rem\";s:23:\"nav-link-disabled-color\";s:9:\"$gray-600\";s:21:\"nav-tabs-border-color\";s:9:\"$gray-300\";s:21:\"nav-tabs-border-width\";s:13:\"$border-width\";s:22:\"nav-tabs-border-radius\";s:14:\"$border-radius\";s:32:\"nav-tabs-link-hover-border-color\";s:42:\"$gray-200 $gray-200 $nav-tabs-border-color\";s:26:\"nav-tabs-link-active-color\";s:9:\"$gray-700\";s:23:\"nav-tabs-link-active-bg\";s:8:\"$body-bg\";s:33:\"nav-tabs-link-active-border-color\";s:44:\"$gray-300 $gray-300 $nav-tabs-link-active-bg\";s:23:\"nav-pills-border-radius\";s:14:\"$border-radius\";s:27:\"nav-pills-link-active-color\";s:23:\"$component-active-color\";s:24:\"nav-pills-link-active-bg\";s:20:\"$component-active-bg\";s:17:\"nav-divider-color\";s:9:\"$gray-200\";s:20:\"nav-divider-margin-y\";s:11:\"$spacer / 2\";s:16:\"navbar-padding-y\";s:11:\"$spacer / 2\";s:16:\"navbar-padding-x\";s:7:\"$spacer\";s:25:\"navbar-nav-link-padding-x\";s:4:\"1rem\";s:22:\"navbar-brand-font-size\";s:13:\"$font-size-lg\";s:15:\"nav-link-height\";s:61:\"$font-size-base * $line-height-base + $nav-link-padding-y * 2\";s:19:\"navbar-brand-height\";s:43:\"$navbar-brand-font-size * $line-height-base\";s:22:\"navbar-brand-padding-y\";s:45:\"($nav-link-height - $navbar-brand-height) / 2\";s:24:\"navbar-toggler-padding-y\";s:6:\".25rem\";s:24:\"navbar-toggler-padding-x\";s:6:\".75rem\";s:24:\"navbar-toggler-font-size\";s:13:\"$font-size-lg\";s:28:\"navbar-toggler-border-radius\";s:18:\"$btn-border-radius\";s:17:\"navbar-dark-color\";s:16:\"rgba($white, .5)\";s:23:\"navbar-dark-hover-color\";s:17:\"rgba($white, .75)\";s:24:\"navbar-dark-active-color\";s:6:\"$white\";s:26:\"navbar-dark-disabled-color\";s:17:\"rgba($white, .25)\";s:27:\"navbar-dark-toggler-icon-bg\";s:258:\"str-replace(url(\"data:image/svg+xml,%3csvg viewBox=\'0 0 30 30\' xmlns=\'http://www.w3.org/2000/svg\'%3e%3cpath stroke=\'#{$navbar-dark-color}\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-miterlimit=\'10\' d=\'M4 7h22M4 15h22M4 23h22\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:32:\"navbar-dark-toggler-border-color\";s:16:\"rgba($white, .1)\";s:18:\"navbar-light-color\";s:16:\"rgba($black, .5)\";s:24:\"navbar-light-hover-color\";s:16:\"rgba($black, .7)\";s:25:\"navbar-light-active-color\";s:16:\"rgba($black, .9)\";s:27:\"navbar-light-disabled-color\";s:16:\"rgba($black, .3)\";s:28:\"navbar-light-toggler-icon-bg\";s:259:\"str-replace(url(\"data:image/svg+xml,%3csvg viewBox=\'0 0 30 30\' xmlns=\'http://www.w3.org/2000/svg\'%3e%3cpath stroke=\'#{$navbar-light-color}\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-miterlimit=\'10\' d=\'M4 7h22M4 15h22M4 23h22\'/%3e%3c/svg%3e\"), \"#\", \"%23\")\";s:33:\"navbar-light-toggler-border-color\";s:16:\"rgba($black, .1)\";s:24:\"navbar-light-brand-color\";s:26:\"$navbar-light-active-color\";s:30:\"navbar-light-brand-hover-color\";s:26:\"$navbar-light-active-color\";s:23:\"navbar-dark-brand-color\";s:25:\"$navbar-dark-active-color\";s:29:\"navbar-dark-brand-hover-color\";s:25:\"$navbar-dark-active-color\";s:20:\"pagination-padding-y\";s:5:\".5rem\";s:20:\"pagination-padding-x\";s:6:\".75rem\";s:23:\"pagination-padding-y-sm\";s:6:\".25rem\";s:23:\"pagination-padding-x-sm\";s:5:\".5rem\";s:23:\"pagination-padding-y-lg\";s:6:\".75rem\";s:23:\"pagination-padding-x-lg\";s:6:\"1.5rem\";s:22:\"pagination-line-height\";s:4:\"1.25\";s:16:\"pagination-color\";s:11:\"$link-color\";s:13:\"pagination-bg\";s:6:\"$white\";s:23:\"pagination-border-width\";s:13:\"$border-width\";s:23:\"pagination-border-color\";s:9:\"$gray-300\";s:27:\"pagination-focus-box-shadow\";s:27:\"$input-btn-focus-box-shadow\";s:22:\"pagination-hover-color\";s:17:\"$link-hover-color\";s:19:\"pagination-hover-bg\";s:9:\"$gray-200\";s:29:\"pagination-hover-border-color\";s:9:\"$gray-300\";s:23:\"pagination-active-color\";s:23:\"$component-active-color\";s:20:\"pagination-active-bg\";s:20:\"$component-active-bg\";s:30:\"pagination-active-border-color\";s:21:\"$pagination-active-bg\";s:25:\"pagination-disabled-color\";s:9:\"$gray-600\";s:22:\"pagination-disabled-bg\";s:6:\"$white\";s:32:\"pagination-disabled-border-color\";s:9:\"$gray-300\";s:17:\"jumbotron-padding\";s:4:\"2rem\";s:15:\"jumbotron-color\";s:4:\"null\";s:12:\"jumbotron-bg\";s:9:\"$gray-200\";s:13:\"card-spacer-y\";s:4:\"1rem\";s:13:\"card-spacer-x\";s:6:\"1.5rem\";s:17:\"card-border-width\";s:13:\"$border-width\";s:18:\"card-border-radius\";s:14:\"$border-radius\";s:17:\"card-border-color\";s:18:\"rgba($black, .125)\";s:24:\"card-inner-border-radius\";s:52:\"calc(#{$card-border-radius} - #{$card-border-width})\";s:11:\"card-cap-bg\";s:17:\"rgba($black, .03)\";s:14:\"card-cap-color\";s:4:\"null\";s:10:\"card-color\";s:4:\"null\";s:7:\"card-bg\";s:6:\"$white\";s:24:\"card-img-overlay-padding\";s:7:\"1.25rem\";s:17:\"card-group-margin\";s:4:\"10px\";s:16:\"card-deck-margin\";s:18:\"$card-group-margin\";s:18:\"card-columns-count\";s:1:\"3\";s:16:\"card-columns-gap\";s:7:\"1.25rem\";s:19:\"card-columns-margin\";s:14:\"$card-spacer-y\";s:17:\"tooltip-font-size\";s:13:\"$font-size-sm\";s:17:\"tooltip-max-width\";s:5:\"200px\";s:13:\"tooltip-color\";s:6:\"$white\";s:10:\"tooltip-bg\";s:6:\"$black\";s:21:\"tooltip-border-radius\";s:14:\"$border-radius\";s:15:\"tooltip-opacity\";s:2:\".9\";s:17:\"tooltip-padding-y\";s:6:\".25rem\";s:17:\"tooltip-padding-x\";s:5:\".5rem\";s:14:\"tooltip-margin\";s:1:\"0\";s:19:\"tooltip-arrow-width\";s:5:\".8rem\";s:20:\"tooltip-arrow-height\";s:5:\".4rem\";s:19:\"tooltip-arrow-color\";s:11:\"$tooltip-bg\";s:17:\"popover-font-size\";s:13:\"$font-size-sm\";s:10:\"popover-bg\";s:6:\"$white\";s:17:\"popover-max-width\";s:5:\"276px\";s:20:\"popover-border-width\";s:13:\"$border-width\";s:20:\"popover-border-color\";s:16:\"rgba($black, .2)\";s:21:\"popover-border-radius\";s:17:\"$border-radius-lg\";s:18:\"popover-box-shadow\";s:31:\"0 .25rem .5rem rgba($black, .2)\";s:17:\"popover-header-bg\";s:23:\"darken($popover-bg, 3%)\";s:20:\"popover-header-color\";s:15:\"$headings-color\";s:24:\"popover-header-padding-y\";s:5:\".5rem\";s:24:\"popover-header-padding-x\";s:6:\".75rem\";s:18:\"popover-body-color\";s:11:\"$body-color\";s:22:\"popover-body-padding-y\";s:25:\"$popover-header-padding-y\";s:22:\"popover-body-padding-x\";s:25:\"$popover-header-padding-x\";s:19:\"popover-arrow-width\";s:4:\"1rem\";s:20:\"popover-arrow-height\";s:5:\".5rem\";s:19:\"popover-arrow-color\";s:11:\"$popover-bg\";s:25:\"popover-arrow-outer-color\";s:35:\"fade-in($popover-border-color, .05)\";s:15:\"toast-max-width\";s:5:\"350px\";s:15:\"toast-padding-x\";s:6:\".75rem\";s:15:\"toast-padding-y\";s:6:\".25rem\";s:15:\"toast-font-size\";s:7:\".875rem\";s:11:\"toast-color\";s:4:\"null\";s:22:\"toast-background-color\";s:17:\"rgba($white, .85)\";s:18:\"toast-border-width\";s:3:\"1px\";s:18:\"toast-border-color\";s:17:\"rgba(0, 0, 0, .1)\";s:19:\"toast-border-radius\";s:6:\".25rem\";s:16:\"toast-box-shadow\";s:32:\"0 .25rem .75rem rgba($black, .1)\";s:18:\"toast-header-color\";s:9:\"$gray-600\";s:29:\"toast-header-background-color\";s:17:\"rgba($white, .85)\";s:25:\"toast-header-border-color\";s:18:\"rgba(0, 0, 0, .05)\";s:15:\"badge-font-size\";s:3:\"75%\";s:17:\"badge-font-weight\";s:17:\"$font-weight-bold\";s:15:\"badge-padding-y\";s:5:\".25em\";s:15:\"badge-padding-x\";s:4:\".4em\";s:19:\"badge-border-radius\";s:14:\"$border-radius\";s:16:\"badge-transition\";s:15:\"$btn-transition\";s:17:\"badge-focus-width\";s:22:\"$input-btn-focus-width\";s:20:\"badge-pill-padding-x\";s:4:\".6em\";s:24:\"badge-pill-border-radius\";s:5:\"10rem\";s:19:\"modal-inner-padding\";s:4:\"1rem\";s:19:\"modal-dialog-margin\";s:5:\".5rem\";s:27:\"modal-dialog-margin-y-sm-up\";s:7:\"1.75rem\";s:23:\"modal-title-line-height\";s:17:\"$line-height-base\";s:19:\"modal-content-color\";s:4:\"null\";s:16:\"modal-content-bg\";s:6:\"$white\";s:26:\"modal-content-border-color\";s:16:\"rgba($black, .2)\";s:26:\"modal-content-border-width\";s:13:\"$border-width\";s:27:\"modal-content-box-shadow-xs\";s:31:\"0 .25rem .5rem rgba($black, .5)\";s:30:\"modal-content-box-shadow-sm-up\";s:29:\"0 .5rem 1rem rgba($black, .5)\";s:17:\"modal-backdrop-bg\";s:6:\"$black\";s:22:\"modal-backdrop-opacity\";s:2:\".5\";s:25:\"modal-header-border-color\";s:13:\"$border-color\";s:25:\"modal-footer-border-color\";s:26:\"$modal-header-border-color\";s:25:\"modal-header-border-width\";s:27:\"$modal-content-border-width\";s:25:\"modal-footer-border-width\";s:26:\"$modal-header-border-width\";s:20:\"modal-header-padding\";s:4:\"1rem\";s:8:\"modal-lg\";s:5:\"800px\";s:8:\"modal-md\";s:5:\"500px\";s:8:\"modal-sm\";s:5:\"300px\";s:16:\"modal-transition\";s:22:\"transform .3s ease-out\";s:15:\"alert-padding-y\";s:6:\".75rem\";s:15:\"alert-padding-x\";s:7:\"1.25rem\";s:19:\"alert-margin-bottom\";s:4:\"1rem\";s:19:\"alert-border-radius\";s:14:\"$border-radius\";s:22:\"alert-link-font-weight\";s:17:\"$font-weight-bold\";s:18:\"alert-border-width\";s:13:\"$border-width\";s:14:\"alert-bg-level\";s:3:\"-10\";s:18:\"alert-border-level\";s:2:\"-9\";s:17:\"alert-color-level\";s:1:\"6\";s:15:\"progress-height\";s:4:\"1rem\";s:18:\"progress-font-size\";s:21:\"$font-size-base * .75\";s:11:\"progress-bg\";s:9:\"$gray-200\";s:22:\"progress-border-radius\";s:14:\"$border-radius\";s:19:\"progress-box-shadow\";s:36:\"inset 0 .1rem .1rem rgba($black, .1)\";s:18:\"progress-bar-color\";s:6:\"$white\";s:15:\"progress-bar-bg\";s:8:\"$primary\";s:29:\"progress-bar-animation-timing\";s:18:\"1s linear infinite\";s:23:\"progress-bar-transition\";s:14:\"width .6s ease\";s:16:\"list-group-color\";s:4:\"null\";s:13:\"list-group-bg\";s:6:\"$white\";s:23:\"list-group-border-color\";s:18:\"rgba($black, .125)\";s:23:\"list-group-border-width\";s:13:\"$border-width\";s:24:\"list-group-border-radius\";s:14:\"$border-radius\";s:25:\"list-group-item-padding-y\";s:6:\".75rem\";s:25:\"list-group-item-padding-x\";s:7:\"1.25rem\";s:19:\"list-group-hover-bg\";s:9:\"$gray-100\";s:23:\"list-group-active-color\";s:23:\"$component-active-color\";s:20:\"list-group-active-bg\";s:20:\"$component-active-bg\";s:30:\"list-group-active-border-color\";s:21:\"$list-group-active-bg\";s:25:\"list-group-disabled-color\";s:9:\"$gray-600\";s:22:\"list-group-disabled-bg\";s:14:\"$list-group-bg\";s:23:\"list-group-action-color\";s:9:\"$gray-700\";s:29:\"list-group-action-hover-color\";s:24:\"$list-group-action-color\";s:30:\"list-group-action-active-color\";s:11:\"$body-color\";s:27:\"list-group-action-active-bg\";s:9:\"$gray-200\";s:17:\"thumbnail-padding\";s:6:\".25rem\";s:12:\"thumbnail-bg\";s:8:\"$body-bg\";s:22:\"thumbnail-border-width\";s:13:\"$border-width\";s:22:\"thumbnail-border-color\";s:9:\"$gray-300\";s:23:\"thumbnail-border-radius\";s:14:\"$border-radius\";s:20:\"thumbnail-box-shadow\";s:28:\"0 1px 2px rgba($black, .075)\";s:24:\"figure-caption-font-size\";s:3:\"90%\";s:20:\"figure-caption-color\";s:9:\"$gray-600\";s:20:\"breadcrumb-padding-y\";s:6:\".75rem\";s:20:\"breadcrumb-padding-x\";s:4:\"1rem\";s:23:\"breadcrumb-item-padding\";s:5:\".5rem\";s:24:\"breadcrumb-margin-bottom\";s:4:\"1rem\";s:13:\"breadcrumb-bg\";s:7:\"#f2f2f2\";s:24:\"breadcrumb-divider-color\";s:9:\"$gray-600\";s:23:\"breadcrumb-active-color\";s:9:\"$gray-600\";s:18:\"breadcrumb-divider\";s:10:\"quote(\"/\")\";s:24:\"breadcrumb-border-radius\";s:14:\"$border-radius\";s:22:\"carousel-control-color\";s:6:\"$white\";s:22:\"carousel-control-width\";s:3:\"15%\";s:24:\"carousel-control-opacity\";s:2:\".5\";s:24:\"carousel-indicator-width\";s:4:\"30px\";s:25:\"carousel-indicator-height\";s:3:\"3px\";s:25:\"carousel-indicator-spacer\";s:3:\"3px\";s:28:\"carousel-indicator-active-bg\";s:6:\"$white\";s:22:\"carousel-caption-width\";s:3:\"70%\";s:22:\"carousel-caption-color\";s:6:\"$white\";s:27:\"carousel-control-icon-width\";s:4:\"20px\";s:29:\"carousel-control-prev-icon-bg\";s:235:\"str-replace(url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'#{$carousel-control-color}\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z\'/%3E%3C/svg%3E\"), \"#\", \"%23\")\";s:29:\"carousel-control-next-icon-bg\";s:235:\"str-replace(url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'#{$carousel-control-color}\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z\'/%3E%3C/svg%3E\"), \"#\", \"%23\")\";s:19:\"carousel-transition\";s:18:\"transform .6s ease\";s:15:\"close-font-size\";s:21:\"$font-size-base * 1.5\";s:17:\"close-font-weight\";s:17:\"$font-weight-bold\";s:11:\"close-color\";s:6:\"$black\";s:17:\"close-text-shadow\";s:14:\"0 1px 0 $white\";s:14:\"code-font-size\";s:5:\"87.5%\";s:10:\"code-color\";s:5:\"$pink\";s:13:\"kbd-padding-y\";s:5:\".2rem\";s:13:\"kbd-padding-x\";s:5:\".4rem\";s:13:\"kbd-font-size\";s:15:\"$code-font-size\";s:9:\"kbd-color\";s:6:\"$white\";s:6:\"kbd-bg\";s:9:\"$gray-900\";s:9:\"pre-color\";s:9:\"$gray-900\";s:25:\"pre-scrollable-max-height\";s:5:\"340px\";s:15:\"print-page-size\";s:2:\"a3\";s:20:\"print-body-min-width\";s:32:\"map-get($grid-breakpoints, \"lg\")\";}}s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:48:\"EXT:bootstrap_package/Resources/Private/Layouts/\";s:15:\"partialRootPath\";s:49:\"EXT:bootstrap_package/Resources/Private/Partials/\";s:16:\"templateRootPath\";s:50:\"EXT:bootstrap_package/Resources/Private/Templates/\";}}s:25:\"bootstrap_package_blocks.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:55:\"EXT:bootstrap_package/Resources/Private/Layouts/Blocks/\";s:15:\"partialRootPath\";s:56:\"EXT:bootstrap_package/Resources/Private/Partials/Blocks/\";s:16:\"templateRootPath\";s:57:\"EXT:bootstrap_package/Resources/Private/Templates/Blocks/\";}}s:27:\"tx_wdlspecials_wdlspecials.\";a:2:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:44:\"EXT:wdlspecials/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:43:\"EXT:wdlspecials/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:42:\"EXT:wdlspecials/Resources/Private/Layouts/\";}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"6\";}}}s:7:\"config.\";a:11:{s:8:\"no_cache\";s:1:\"0\";s:15:\"removeDefaultJS\";s:1:\"0\";s:10:\"compressJs\";s:1:\"0\";s:11:\"compressCss\";s:1:\"0\";s:13:\"concatenateJs\";s:1:\"1\";s:14:\"concatenateCss\";s:1:\"1\";s:8:\"admPanel\";s:1:\"1\";s:18:\"prefixLocalAnchors\";s:3:\"all\";s:13:\"headerComment\";s:90:\"Based on the TYPO3 Bootstrap Package by Benjamin Kott - https://www.bootstrap-package.com/\";s:16:\"sendCacheHeaders\";s:1:\"1\";s:32:\"typolinkEnableLinksAcrossDomains\";s:1:\"0\";}}s:5:\"setup\";a:13:{s:7:\"config.\";a:26:{s:19:\"pageTitleProviders.\";a:3:{s:13:\"altPageTitle.\";a:2:{s:8:\"provider\";s:45:\"TYPO3\\CMS\\Core\\PageTitle\\AltPageTitleProvider\";s:6:\"before\";s:6:\"record\";}s:7:\"record.\";a:1:{s:8:\"provider\";s:48:\"TYPO3\\CMS\\Core\\PageTitle\\RecordPageTitleProvider\";}s:4:\"seo.\";a:3:{s:8:\"provider\";s:49:\"TYPO3\\CMS\\Seo\\PageTitle\\SeoTitlePageTitleProvider\";s:6:\"before\";s:6:\"record\";s:5:\"after\";s:12:\"altPageTitle\";}}s:12:\"absRefPrefix\";s:4:\"auto\";s:8:\"no_cache\";s:1:\"0\";s:14:\"pageTitleFirst\";s:1:\"1\";s:18:\"pageTitleSeparator\";s:1:\"-\";s:19:\"pageTitleSeparator.\";a:1:{s:10:\"noTrimWrap\";s:5:\"| | |\";}s:8:\"linkVars\";s:6:\"L(int)\";s:18:\"prefixLocalAnchors\";s:3:\"all\";s:32:\"typolinkEnableLinksAcrossDomains\";s:1:\"0\";s:7:\"doctype\";s:5:\"html5\";s:15:\"removeDefaultJS\";s:1:\"0\";s:8:\"admPanel\";s:1:\"1\";s:5:\"debug\";s:1:\"0\";s:16:\"sendCacheHeaders\";s:1:\"1\";s:12:\"index_enable\";s:1:\"1\";s:15:\"index_externals\";s:1:\"1\";s:14:\"index_metatags\";s:1:\"1\";s:13:\"headerComment\";s:90:\"Based on the TYPO3 Bootstrap Package by Benjamin Kott - https://www.bootstrap-package.com/\";s:17:\"tx_realurl_enable\";s:1:\"1\";s:20:\"sys_language_overlay\";s:1:\"1\";s:17:\"sys_language_mode\";s:16:\"content_fallback\";s:10:\"compressJs\";s:1:\"0\";s:11:\"compressCss\";s:1:\"0\";s:13:\"concatenateJs\";s:1:\"1\";s:14:\"concatenateCss\";s:1:\"1\";s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:2:{s:16:\"requestHandlers.\";a:4:{s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";}s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:3:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";s:8:\"classes.\";a:10:{s:41:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileMount.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:14:\"sys_filemounts\";s:8:\"columns.\";a:3:{s:6:\"title.\";a:1:{s:13:\"mapOnProperty\";s:5:\"title\";}s:5:\"path.\";a:1:{s:13:\"mapOnProperty\";s:4:\"path\";}s:5:\"base.\";a:1:{s:13:\"mapOnProperty\";s:14:\"isAbsolutePath\";}}}}s:45:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:18:\"sys_file_reference\";}}s:36:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\File.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:8:\"sys_file\";}}s:43:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:8:{s:9:\"username.\";a:1:{s:13:\"mapOnProperty\";s:8:\"userName\";}s:6:\"admin.\";a:1:{s:13:\"mapOnProperty\";s:15:\"isAdministrator\";}s:8:\"disable.\";a:1:{s:13:\"mapOnProperty\";s:10:\"isDisabled\";}s:9:\"realName.\";a:1:{s:13:\"mapOnProperty\";s:8:\"realName\";}s:10:\"starttime.\";a:1:{s:13:\"mapOnProperty\";s:16:\"startDateAndTime\";}s:8:\"endtime.\";a:1:{s:13:\"mapOnProperty\";s:14:\"endDateAndTime\";}s:14:\"disableIPlock.\";a:1:{s:13:\"mapOnProperty\";s:16:\"ipLockIsDisabled\";}s:10:\"lastlogin.\";a:1:{s:13:\"mapOnProperty\";s:20:\"lastLoginDateAndTime\";}}}}s:48:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:13:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}s:10:\"groupMods.\";a:1:{s:13:\"mapOnProperty\";s:7:\"modules\";}s:14:\"tables_select.\";a:1:{s:13:\"mapOnProperty\";s:15:\"tablesListening\";}s:14:\"tables_modify.\";a:1:{s:13:\"mapOnProperty\";s:12:\"tablesModify\";}s:17:\"pagetypes_select.\";a:1:{s:13:\"mapOnProperty\";s:9:\"pageTypes\";}s:19:\"non_exclude_fields.\";a:1:{s:13:\"mapOnProperty\";s:20:\"allowedExcludeFields\";}s:19:\"explicit_allowdeny.\";a:1:{s:13:\"mapOnProperty\";s:22:\"explicitlyAllowAndDeny\";}s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:16:\"workspace_perms.\";a:1:{s:13:\"mapOnProperty\";s:19:\"workspacePermission\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:14:\"databaseMounts\";}s:17:\"file_permissions.\";a:1:{s:13:\"mapOnProperty\";s:24:\"fileOperationPermissions\";}s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}s:9:\"TSconfig.\";a:1:{s:13:\"mapOnProperty\";s:8:\"tsConfig\";}}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:49:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"fe_groups\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:40:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\Category.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:12:\"sys_category\";}}s:42:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:4:{s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:17:\"file_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:15:\"fileMountPoints\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:13:\"dbMountPoints\";}s:10:\"usergroup.\";a:1:{s:13:\"mapOnProperty\";s:17:\"backendUserGroups\";}}}}s:47:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:1:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}}}}}}s:9:\"features.\";a:4:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";s:38:\"requireCHashArgumentForActionArguments\";s:1:\"1\";s:36:\"consistentTranslationOverlayHandling\";s:1:\"1\";}}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:100:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:5:\"login\";s:20:\"< lib.contentElement\";s:6:\"login.\";a:2:{s:12:\"templateName\";s:7:\"Generic\";s:10:\"variables.\";a:1:{s:7:\"content\";s:23:\"< plugin.tx_felogin_pi1\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:3:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}s:3:\"20.\";a:2:{s:23:\"wdlspecials_wdlspecials\";s:4:\"USER\";s:24:\"wdlspecials_wdlspecials.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:11:\"Wdlspecials\";s:10:\"pluginName\";s:11:\"Wdlspecials\";s:10:\"vendorName\";s:11:\"JonathanWdl\";}}}s:18:\"form_formframework\";s:20:\"< lib.contentElement\";s:19:\"form_formframework.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:13:\"Formframework\";s:10:\"vendorName\";s:9:\"TYPO3\\CMS\";}}s:5:\"audio\";s:20:\"< lib.contentElement\";s:6:\"audio.\";a:2:{s:12:\"templateName\";s:5:\"Audio\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:2:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}}s:3:\"csv\";s:20:\"< lib.contentElement\";s:4:\"csv.\";a:2:{s:12:\"templateName\";s:3:\"Csv\";s:15:\"dataProcessing.\";a:2:{i:10;s:53:\"BK2K\\BootstrapPackage\\DataProcessing\\CsvFileProcessor\";s:3:\"10.\";a:4:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:1:{s:12:\"templateName\";s:6:\"Header\";}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:1:{s:12:\"templateName\";s:4:\"Html\";}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:2:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:8:\"folders.\";a:1:{s:5:\"field\";s:11:\"file_folder\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}i:20;s:56:\"BK2K\\BootstrapPackage\\DataProcessing\\FileFilterProcessor\";s:3:\"20.\";a:1:{s:14:\"predefinedList\";s:5:\"image\";}}}s:5:\"media\";s:20:\"< lib.contentElement\";s:6:\"media.\";a:2:{s:12:\"templateName\";s:5:\"Media\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}s:8:\"folders.\";a:1:{s:5:\"field\";s:11:\"file_folder\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}i:20;s:56:\"BK2K\\BootstrapPackage\\DataProcessing\\FileFilterProcessor\";s:3:\"20.\";a:1:{s:21:\"allowedFileExtensions\";s:14:\"youtube, vimeo\";}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:2:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:2:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:4:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:9:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:12:\"tt_content.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:120:\"sys_category_record_mm ON tt_content.uid = sys_category_record_mm.uid_foreign AND sys_category_record_mm.uid_local IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:41:\"tablenames=\'tt_content\' and fieldname=\'|\'\";}s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:2:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:2:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:16:\"includeNotInMenu\";s:1:\"1\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:2:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:2:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:2:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:2:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:2:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}}s:16:\"includeNotInMenu\";s:1:\"1\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:2:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:2:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:2:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:4:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:5:\"quote\";s:20:\"< lib.contentElement\";s:6:\"quote.\";a:1:{s:12:\"templateName\";s:5:\"Quote\";}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:2:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}}s:12:\"social_links\";s:20:\"< lib.contentElement\";s:13:\"social_links.\";a:2:{s:12:\"templateName\";s:11:\"SocialLinks\";s:15:\"dataProcessing.\";a:2:{i:1;s:55:\"BK2K\\BootstrapPackage\\DataProcessing\\ConstantsProcessor\";s:2:\"1.\";a:2:{s:2:\"as\";s:11:\"socialmedia\";s:3:\"key\";s:22:\"page.theme.socialmedia\";}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:2:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}}s:2:\"as\";s:5:\"table\";}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:1:{s:12:\"templateName\";s:4:\"Text\";}s:10:\"textcolumn\";s:20:\"< lib.contentElement\";s:11:\"textcolumn.\";a:1:{s:12:\"templateName\";s:10:\"Textcolumn\";}s:10:\"textteaser\";s:20:\"< lib.contentElement\";s:11:\"textteaser.\";a:1:{s:12:\"templateName\";s:10:\"Textteaser\";}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:4:\"TEXT\";s:13:\"templateName.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:13:{s:4:\"key.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}i:8;s:4:\"TEXT\";s:2:\"8.\";a:1:{s:5:\"value\";s:12:\"TextpicBelow\";}i:25;s:4:\"TEXT\";s:3:\"25.\";a:1:{s:5:\"value\";s:12:\"TextpicRight\";}i:26;s:4:\"TEXT\";s:3:\"26.\";a:1:{s:5:\"value\";s:11:\"TextpicLeft\";}i:125;s:4:\"TEXT\";s:4:\"125.\";a:1:{s:5:\"value\";s:20:\"TextpicCenteredRight\";}i:126;s:4:\"TEXT\";s:4:\"126.\";a:1:{s:5:\"value\";s:19:\"TextpicCenteredLeft\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:12:\"TextpicAbove\";}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:8:\"folders.\";a:1:{s:5:\"field\";s:11:\"file_folder\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}i:20;s:56:\"BK2K\\BootstrapPackage\\DataProcessing\\FileFilterProcessor\";s:3:\"20.\";a:1:{s:14:\"predefinedList\";s:5:\"image\";}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:4:\"TEXT\";s:13:\"templateName.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:13:{s:4:\"key.\";a:1:{s:5:\"field\";s:11:\"imageorient\";}i:8;s:4:\"TEXT\";s:2:\"8.\";a:1:{s:5:\"value\";s:14:\"TextmediaBelow\";}i:25;s:4:\"TEXT\";s:3:\"25.\";a:1:{s:5:\"value\";s:14:\"TextmediaRight\";}i:26;s:4:\"TEXT\";s:3:\"26.\";a:1:{s:5:\"value\";s:13:\"TextmediaLeft\";}i:125;s:4:\"TEXT\";s:4:\"125.\";a:1:{s:5:\"value\";s:22:\"TextmediaCenteredRight\";}i:126;s:4:\"TEXT\";s:4:\"126.\";a:1:{s:5:\"value\";s:21:\"TextmediaCenteredLeft\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:14:\"TextmediaAbove\";}}}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:2:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:2:{s:5:\"field\";s:16:\"filelink_sorting\";s:10:\"direction.\";a:1:{s:5:\"field\";s:26:\"filelink_sorting_direction\";}}}}}s:9:\"accordion\";s:20:\"< lib.contentElement\";s:10:\"accordion.\";a:2:{s:12:\"templateName\";s:9:\"Accordion\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:34:\"tx_bootstrappackage_accordion_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}}s:10:\"card_group\";s:20:\"< lib.contentElement\";s:11:\"card_group.\";a:2:{s:12:\"templateName\";s:9:\"CardGroup\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:35:\"tx_bootstrappackage_card_group_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:2:\"as\";s:5:\"image\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"link_icon\";}s:2:\"as\";s:8:\"linkIcon\";}}}}}s:8:\"carousel\";s:20:\"< lib.contentElement\";s:9:\"carousel.\";a:2:{s:12:\"templateName\";s:8:\"Carousel\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:33:\"tx_bootstrappackage_carousel_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:6:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:16:\"background_image\";}s:2:\"as\";s:15:\"backgroundImage\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:2:\"as\";s:6:\"images\";}i:1532633187;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";s:11:\"1532633187.\";a:1:{s:9:\"fieldName\";s:24:\"background_image_options\";}}}}}s:14:\"carousel_small\";s:20:\"< lib.contentElement\";s:15:\"carousel_small.\";a:2:{s:12:\"templateName\";s:13:\"CarouselSmall\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:33:\"tx_bootstrappackage_carousel_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:6:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:16:\"background_image\";}s:2:\"as\";s:15:\"backgroundImage\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:2:\"as\";s:6:\"images\";}i:1532633187;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";s:11:\"1532633187.\";a:1:{s:9:\"fieldName\";s:24:\"background_image_options\";}}}}}s:19:\"carousel_fullscreen\";s:20:\"< lib.contentElement\";s:20:\"carousel_fullscreen.\";a:2:{s:12:\"templateName\";s:18:\"CarouselFullscreen\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:33:\"tx_bootstrappackage_carousel_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:6:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:16:\"background_image\";}s:2:\"as\";s:15:\"backgroundImage\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:2:\"as\";s:6:\"images\";}i:1532633187;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";s:11:\"1532633187.\";a:1:{s:9:\"fieldName\";s:24:\"background_image_options\";}}}}}s:14:\"external_media\";s:20:\"< lib.contentElement\";s:15:\"external_media.\";a:1:{s:12:\"templateName\";s:13:\"ExternalMedia\";}s:10:\"icon_group\";s:20:\"< lib.contentElement\";s:11:\"icon_group.\";a:2:{s:12:\"templateName\";s:9:\"IconGroup\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:35:\"tx_bootstrappackage_icon_group_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"icon_file\";}s:2:\"as\";s:8:\"iconFile\";}}}}}s:9:\"listgroup\";s:20:\"< lib.contentElement\";s:10:\"listgroup.\";a:2:{s:12:\"templateName\";s:9:\"ListGroup\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:3:{s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:5:\"items\";}}}s:5:\"panel\";s:20:\"< lib.contentElement\";s:6:\"panel.\";a:1:{s:12:\"templateName\";s:5:\"Panel\";}s:3:\"tab\";s:20:\"< lib.contentElement\";s:4:\"tab.\";a:2:{s:12:\"templateName\";s:3:\"Tab\";s:15:\"dataProcessing.\";a:3:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:28:\"tx_bootstrappackage_tab_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}}s:8:\"texticon\";s:20:\"< lib.contentElement\";s:9:\"texticon.\";a:2:{s:12:\"templateName\";s:8:\"Texticon\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"icon_file\";}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:8:\"icon_set\";}}}i:20;s:57:\"BK2K\\BootstrapPackage\\DataProcessing\\StaticFilesProcessor\";s:3:\"20.\";a:3:{s:6:\"files.\";a:1:{s:2:\"0.\";a:1:{s:5:\"field\";s:4:\"icon\";}}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:8:\"icon_set\";}}}}}s:8:\"timeline\";s:20:\"< lib.contentElement\";s:9:\"timeline.\";a:2:{s:12:\"templateName\";s:8:\"Timeline\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:5:{s:5:\"table\";s:33:\"tx_bootstrappackage_timeline_item\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:6:\"where.\";a:3:{s:4:\"data\";s:9:\"field:uid\";s:6:\"intval\";s:1:\"1\";s:4:\"wrap\";s:12:\"tt_content=|\";}s:8:\"orderBy.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:4:\"data\";s:28:\"flexform:pi_flexform:sorting\";s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:7:\"current\";s:1:\"1\";}s:7:\"ifEmpty\";s:9:\"date desc\";}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"icon_file\";}s:2:\"as\";s:8:\"iconFile\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}s:2:\"as\";s:5:\"image\";}}}}}s:13:\"menu_card_dir\";s:20:\"< lib.contentElement\";s:14:\"menu_card_dir.\";a:2:{s:12:\"templateName\";s:11:\"MenuCardDir\";s:15:\"dataProcessing.\";a:5:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"thumbnail\";}s:3:\"if.\";a:1:{s:6:\"isTrue\";s:70:\"{$plugin.bootstrap_package_contentelements.menu_card.thumbnail.enable}\";}}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:8:\"nav_icon\";}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"0\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:14:\"menu_card_list\";s:20:\"< lib.contentElement\";s:15:\"menu_card_list.\";a:2:{s:12:\"templateName\";s:12:\"MenuCardList\";s:15:\"dataProcessing.\";a:5:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:16:\"includeNotInMenu\";s:1:\"1\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"thumbnail\";}s:3:\"if.\";a:1:{s:6:\"isTrue\";s:70:\"{$plugin.bootstrap_package_contentelements.menu_card.thumbnail.enable}\";}}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"20.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:8:\"nav_icon\";}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"0\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:18:\"menu_thumbnail_dir\";s:20:\"< lib.contentElement\";s:19:\"menu_thumbnail_dir.\";a:2:{s:12:\"templateName\";s:16:\"MenuThumbnailDir\";s:15:\"dataProcessing.\";a:5:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"thumbnail\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}s:19:\"menu_thumbnail_list\";s:20:\"< lib.contentElement\";s:20:\"menu_thumbnail_list.\";a:2:{s:12:\"templateName\";s:17:\"MenuThumbnailList\";s:15:\"dataProcessing.\";a:5:{i:10;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:4:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:16:\"includeNotInMenu\";s:1:\"1\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:9:\"thumbnail\";}}}}i:90;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"90.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:20:\"accessibility_bypass\";}}s:5:\"table\";s:10:\"tt_content\";s:9:\"pidInList\";s:4:\"this\";s:7:\"orderBy\";s:7:\"sorting\";s:3:\"max\";s:1:\"1\";s:6:\"where.\";a:1:{s:8:\"dataWrap\";s:53:\"colPos = {field:colPos} AND sorting > {field:sorting}\";}s:2:\"as\";s:18:\"nextContentElement\";}}}}s:7:\"module.\";a:5:{s:8:\"tx_form.\";a:2:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:4:{i:10;s:42:\"EXT:form/Configuration/Yaml/BaseSetup.yaml\";i:20;s:48:\"EXT:form/Configuration/Yaml/FormEditorSetup.yaml\";i:30;s:48:\"EXT:form/Configuration/Yaml/FormEngineSetup.yaml\";i:110;s:51:\"EXT:bootstrap_package/Configuration/Form/Setup.yaml\";}}s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:10;s:45:\"EXT:form/Resources/Private/Backend/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:10;s:44:\"EXT:form/Resources/Private/Backend/Partials/\";}s:16:\"layoutRootPaths.\";a:1:{i:10;s:43:\"EXT:form/Resources/Private/Backend/Layouts/\";}}}s:9:\"tx_belog.\";a:2:{s:12:\"persistence.\";a:1:{s:8:\"classes.\";a:2:{s:38:\"TYPO3\\CMS\\Belog\\Domain\\Model\\LogEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:7:\"sys_log\";s:8:\"columns.\";a:8:{s:7:\"userid.\";a:1:{s:13:\"mapOnProperty\";s:14:\"backendUserUid\";}s:7:\"recuid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordUid\";}s:10:\"tablename.\";a:1:{s:13:\"mapOnProperty\";s:9:\"tableName\";}s:7:\"recpid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordPid\";}s:11:\"details_nr.\";a:1:{s:13:\"mapOnProperty\";s:13:\"detailsNumber\";}s:3:\"IP.\";a:1:{s:13:\"mapOnProperty\";s:2:\"ip\";}s:10:\"workspace.\";a:1:{s:13:\"mapOnProperty\";s:12:\"workspaceUid\";}s:6:\"NEWid.\";a:1:{s:13:\"mapOnProperty\";s:5:\"newId\";}}}}s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Workspace.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:13:\"sys_workspace\";}}}}s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:20:\"tx_extensionmanager.\";a:1:{s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:18:\"extension_builder.\";a:1:{s:9:\"settings.\";a:2:{s:22:\"codeTemplateRootPaths.\";a:1:{i:0;s:62:\"EXT:extension_builder/Resources/Private/CodeTemplates/Extbase/\";}s:25:\"codeTemplatePartialPaths.\";a:1:{i:0;s:70:\"EXT:extension_builder/Resources/Private/CodeTemplates/Extbase/Partials\";}}}}s:7:\"plugin.\";a:7:{s:14:\"tx_felogin_pi1\";s:8:\"USER_INT\";s:15:\"tx_felogin_pi1.\";a:45:{s:8:\"userFunc\";s:58:\"TYPO3\\CMS\\Felogin\\Controller\\FrontendLoginController->main\";s:10:\"storagePid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:12:\"templateFile\";s:82:\"EXT:bootstrap_package/Resources/Private/Templates/FrontendLogin/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:7:\"replyTo\";s:0:\"\";s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:22:\"wrapContentInBaseClass\";s:1:\"0\";s:11:\"linkConfig.\";a:2:{s:6:\"target\";s:0:\"\";s:10:\"ATagParams\";s:14:\"rel=\"nofollow\"\";}s:15:\"preserveGETvars\";s:3:\"all\";s:22:\"welcomeHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"successHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"logoutHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:20:\"errorHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"forgotHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:29:\"changePasswordHeader_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"welcomeMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:8:\"<p>|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"successMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:29:\"<p class=\"text-success\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"logoutMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:8:\"<p>|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"errorMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:28:\"<p class=\"text-danger\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"forgotMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:8:\"<p>|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:27:\"forgotErrorMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:28:\"<p class=\"text-danger\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:43:\"forgotResetMessageEmailSentMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:29:\"<p class=\"text-success\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotValidMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:28:\"<p class=\"text-danger\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordTooShortMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:28:\"<p class=\"text-danger\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotEqualMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:28:\"<p class=\"text-danger\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:30:\"changePasswordMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:8:\"<p>|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:34:\"changePasswordDoneMessage_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:29:\"<p class=\"text-success\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"cookieWarning_stdWrap.\";a:3:{s:8:\"required\";s:1:\"1\";s:4:\"wrap\";s:29:\"<p class=\"text-warning\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:11:\"userfields.\";a:1:{s:9:\"username.\";a:2:{s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:18:\"<strong>|</strong>\";}}}s:8:\"tx_form.\";a:3:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:3:{i:110;s:51:\"EXT:bootstrap_package/Configuration/Form/Setup.yaml\";i:10;s:42:\"EXT:form/Configuration/Yaml/BaseSetup.yaml\";i:20;s:48:\"EXT:form/Configuration/Yaml/FormEngineSetup.yaml\";}}s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:0;s:46:\"EXT:form/Resources/Private/Frontend/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:0;s:45:\"EXT:form/Resources/Private/Frontend/Partials/\";}s:16:\"layoutRootPaths.\";a:1:{i:0;s:44:\"EXT:form/Resources/Private/Frontend/Layouts/\";}}s:4:\"mvc.\";a:1:{s:39:\"callDefaultActionIfActionCantBeResolved\";s:1:\"1\";}}s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:3311:\"    .ce-align-left { text-align: left; }\n    .ce-align-center { text-align: center; }\n    .ce-align-right { text-align: right; }\n\n    .ce-table td, .ce-table th { vertical-align: top; }\n\n    .ce-textpic, .ce-image, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n    .ce-left .ce-gallery, .ce-column { float: left; }\n    .ce-center .ce-outer { position: relative; float: right; right: 50%; }\n    .ce-center .ce-inner { position: relative; float: right; right: -50%; }\n    .ce-right .ce-gallery { float: right; }\n\n    .ce-gallery figure { display: table; margin: 0; }\n    .ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n    .ce-gallery img { display: block; }\n    .ce-gallery iframe { border-width: 0; }\n    .ce-border img,\n    .ce-border iframe {\n        border: 2px solid #000000;\n        padding: 0px;\n    }\n\n    .ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n        margin-bottom: 10px;\n    }\n    .ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n    .ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n    .ce-below .ce-gallery { margin-top: 10px; }\n\n    .ce-column { margin-right: 10px; }\n    .ce-column:last-child { margin-right: 0; }\n\n    .ce-row { margin-bottom: 10px; }\n    .ce-row:last-child { margin-bottom: 0; }\n\n    .ce-above .ce-bodytext { clear: both; }\n\n    .ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n    /* Headline */\n    .ce-headline-left { text-align: left; }\n    .ce-headline-center { text-align: center; }\n    .ce-headline-right { text-align: right; }\n\n    /* Uploads */\n    .ce-uploads { margin: 0; padding: 0; }\n    .ce-uploads li { list-style: none outside none; margin: 1em 0; }\n    .ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n    .ce-uploads span { display: block; }\n\n    /* Table */\n    .ce-table { width: 100%; max-width: 100%; }\n    .ce-table th, .ce-table td { padding: 0.5em 0.75em; vertical-align: top; }\n    .ce-table thead th { border-bottom: 2px solid #dadada; }\n    .ce-table th, .ce-table td { border-top: 1px solid #dadada; }\n    .ce-table-striped tbody tr:nth-of-type(odd) { background-color: rgba(0,0,0,.05); }\n    .ce-table-bordered th, .ce-table-bordered td { border: 1px solid #dadada; }\n\n    /* Space */\n    .frame-space-before-extra-small { margin-top: 1em; }\n    .frame-space-before-small { margin-top: 2em; }\n    .frame-space-before-medium { margin-top: 3em; }\n    .frame-space-before-large { margin-top: 4em; }\n    .frame-space-before-extra-large { margin-top: 5em; }\n    .frame-space-after-extra-small { margin-bottom: 1em; }\n    .frame-space-after-small { margin-bottom: 2em; }\n    .frame-space-after-medium { margin-bottom: 3em; }\n    .frame-space-after-large { margin-bottom: 4em; }\n    .frame-space-after-extra-large { margin-bottom: 5em; }\n\n    /* Frame */\n    .frame-ruler-before:before { content: \'\'; display: block; border-top: 1px solid rgba(0,0,0,0.25); margin-bottom: 2em; }\n    .frame-ruler-after:after { content: \'\'; display: block; border-bottom: 1px solid rgba(0,0,0,0.25); margin-top: 2em; }\n    .frame-indent { margin-left: 15%; margin-right: 15%; }\n    .frame-indent-left { margin-left: 33%; }\n    .frame-indent-right { margin-right: 33%; }\";}s:20:\"tx_bootstrappackage.\";a:1:{s:9:\"settings.\";a:2:{s:23:\"overrideParserVariables\";s:1:\"1\";s:16:\"cssSourceMapping\";s:1:\"0\";}}s:27:\"tx_wdlspecials_wdlspecials.\";a:4:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:2:{i:0;s:57:\"EXT:{extension.extensionKey}/Resources/Private/Templates/\";i:1;s:44:\"EXT:wdlspecials/Resources/Private/Templates/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:43:\"EXT:wdlspecials/Resources/Private/Partials/\";i:1;s:43:\"EXT:wdlspecials/Resources/Private/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:42:\"EXT:wdlspecials/Resources/Private/Layouts/\";i:1;s:42:\"EXT:wdlspecials/Resources/Private/Layouts/\";}}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"6\";}s:9:\"features.\";a:2:{s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";s:38:\"requireCHashArgumentForActionArguments\";s:1:\"1\";}s:4:\"mvc.\";a:0:{}}s:15:\"tx_wdlspecials.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:558:\"    textarea.f3-form-error {\n        background-color:#FF9F9F;\n        border: 1px #FF0000 solid;\n    }\n\n    input.f3-form-error {\n        background-color:#FF9F9F;\n        border: 1px #FF0000 solid;\n    }\n\n    .tx-wdlspecials table {\n        border-collapse:separate;\n        border-spacing:10px;\n    }\n\n    .tx-wdlspecials table th {\n        font-weight:bold;\n    }\n\n    .tx-wdlspecials table td {\n        vertical-align:top;\n    }\n\n    .typo3-messages .message-error {\n        color:red;\n    }\n\n    .typo3-messages .message-ok {\n        color:green;\n    }\";}}s:4:\"lib.\";a:12:{s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:7:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:66:\"EXT:bootstrap_package/Resources/Private/Templates/ContentElements/\";i:10;s:66:\"EXT:bootstrap_package/Resources/Private/Templates/ContentElements/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:65:\"EXT:bootstrap_package/Resources/Private/Partials/ContentElements/\";i:10;s:65:\"EXT:bootstrap_package/Resources/Private/Partials/ContentElements/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:64:\"EXT:bootstrap_package/Resources/Private/Layouts/ContentElements/\";i:10;s:64:\"EXT:bootstrap_package/Resources/Private/Layouts/ContentElements/\";}s:9:\"settings.\";a:12:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:2:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}s:17:\"additionalConfig.\";a:1:{s:9:\"no-cookie\";s:1:\"1\";}}s:7:\"header.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:5:\"class\";s:14:\"element-header\";}s:10:\"subheader.\";a:1:{s:5:\"class\";s:17:\"element-subheader\";}s:9:\"lightbox.\";a:3:{s:8:\"cssClass\";s:8:\"lightbox\";s:6:\"prefix\";s:14:\"lightbox-group\";s:6:\"image.\";a:2:{s:9:\"maxHeight\";s:4:\"1200\";s:8:\"maxWidth\";s:4:\"1200\";}}s:8:\"gallery.\";a:1:{s:8:\"columns.\";a:6:{s:2:\"1.\";a:1:{s:5:\"class\";s:19:\"gallery-item-size-1\";}s:2:\"2.\";a:3:{s:5:\"class\";s:19:\"gallery-item-size-2\";s:11:\"multiplier.\";a:5:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";s:10:\"extrasmall\";s:3:\"0.5\";}s:8:\"gutters.\";a:5:{s:7:\"default\";s:2:\"16\";s:5:\"large\";s:2:\"16\";s:6:\"medium\";s:2:\"16\";s:5:\"small\";s:2:\"16\";s:10:\"extrasmall\";s:2:\"16\";}}s:2:\"3.\";a:3:{s:5:\"class\";s:19:\"gallery-item-size-3\";s:11:\"multiplier.\";a:5:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";s:5:\"small\";s:6:\"0.3333\";s:10:\"extrasmall\";s:6:\"0.3333\";}s:8:\"gutters.\";a:5:{s:7:\"default\";s:2:\"16\";s:5:\"large\";s:2:\"16\";s:6:\"medium\";s:2:\"16\";s:5:\"small\";s:2:\"16\";s:10:\"extrasmall\";s:2:\"16\";}}s:2:\"4.\";a:3:{s:5:\"class\";s:19:\"gallery-item-size-4\";s:11:\"multiplier.\";a:5:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";s:10:\"extrasmall\";s:3:\"0.5\";}s:8:\"gutters.\";a:5:{s:7:\"default\";s:2:\"16\";s:5:\"large\";s:2:\"16\";s:6:\"medium\";s:2:\"16\";s:5:\"small\";s:2:\"16\";s:10:\"extrasmall\";s:2:\"16\";}}s:2:\"5.\";a:3:{s:5:\"class\";s:19:\"gallery-item-size-5\";s:11:\"multiplier.\";a:5:{s:7:\"default\";s:3:\"0.2\";s:5:\"large\";s:3:\"0.2\";s:6:\"medium\";s:6:\"0.3333\";s:5:\"small\";s:6:\"0.3333\";s:10:\"extrasmall\";s:3:\"0.5\";}s:8:\"gutters.\";a:5:{s:7:\"default\";s:2:\"16\";s:5:\"large\";s:2:\"16\";s:6:\"medium\";s:2:\"16\";s:5:\"small\";s:2:\"16\";s:10:\"extrasmall\";s:2:\"16\";}}s:2:\"6.\";a:3:{s:5:\"class\";s:19:\"gallery-item-size-6\";s:11:\"multiplier.\";a:5:{s:7:\"default\";s:6:\"0.1666\";s:5:\"large\";s:7:\"0.16666\";s:6:\"medium\";s:6:\"0.3333\";s:5:\"small\";s:6:\"0.3333\";s:10:\"extrasmall\";s:3:\"0.5\";}s:8:\"gutters.\";a:5:{s:7:\"default\";s:2:\"16\";s:5:\"large\";s:2:\"16\";s:6:\"medium\";s:2:\"16\";s:5:\"small\";s:2:\"16\";s:10:\"extrasmall\";s:2:\"16\";}}}}s:17:\"responsiveimages.\";a:3:{s:9:\"variants.\";a:5:{s:8:\"default.\";a:2:{s:10:\"breakpoint\";s:4:\"1200\";s:5:\"width\";s:4:\"1100\";}s:6:\"large.\";a:2:{s:10:\"breakpoint\";s:3:\"992\";s:5:\"width\";s:3:\"920\";}s:7:\"medium.\";a:2:{s:10:\"breakpoint\";s:3:\"768\";s:5:\"width\";s:3:\"680\";}s:6:\"small.\";a:2:{s:10:\"breakpoint\";s:3:\"576\";s:5:\"width\";s:3:\"500\";}s:11:\"extrasmall.\";a:2:{s:10:\"breakpoint\";s:5:\"unset\";s:5:\"width\";s:3:\"374\";}}s:14:\"backendlayout.\";a:11:{s:10:\"2_columns.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.75\";s:5:\"large\";s:4:\"0.75\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:16:\"2_columns_25_75.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.75\";s:5:\"large\";s:4:\"0.75\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"1.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:16:\"2_columns_50_50.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:19:\"subnavigation_left.\";a:1:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.75\";s:5:\"large\";s:4:\"0.75\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:23:\"2_columns_offset_right.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:6:\"0.6666\";s:5:\"large\";s:6:\"0.6666\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:10:\"3_columns.\";a:3:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"1.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:16:\"special_feature.\";a:8:{s:3:\"30.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"31.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"32.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"33.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"34.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"35.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"36.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}s:3:\"37.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";s:5:\"small\";s:2:\"40\";}}}s:14:\"special_start.\";a:3:{s:3:\"20.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:3:\"21.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:3:\"22.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}}s:29:\"subnavigation_left_2_columns.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"1.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:20:\"subnavigation_right.\";a:1:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.75\";s:5:\"large\";s:4:\"0.75\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}s:30:\"subnavigation_right_2_columns.\";a:2:{s:2:\"0.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:2:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";}s:8:\"gutters.\";a:2:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";}}}}s:16:\"contentelements.\";a:13:{s:8:\"textpic.\";a:4:{s:14:\"centered_left.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:15:\"centered_right.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:5:\"left.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:6:\"right.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}}s:10:\"textmedia.\";a:4:{s:14:\"centered_left.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:15:\"centered_right.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:5:\"left.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:6:\"right.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}}s:10:\"accordion.\";a:4:{s:5:\"left.\";a:3:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"24\";s:5:\"large\";s:2:\"24\";s:6:\"medium\";s:2:\"24\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:2:\"25\";s:5:\"large\";s:2:\"25\";s:6:\"medium\";s:2:\"25\";s:5:\"small\";s:2:\"50\";s:10:\"extrasmall\";s:2:\"50\";}}s:4:\"top.\";a:1:{s:12:\"corrections.\";a:5:{s:7:\"default\";s:2:\"50\";s:5:\"large\";s:2:\"50\";s:6:\"medium\";s:2:\"50\";s:5:\"small\";s:2:\"50\";s:10:\"extrasmall\";s:2:\"50\";}}s:6:\"right.\";a:3:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"24\";s:5:\"large\";s:2:\"24\";s:6:\"medium\";s:2:\"24\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:2:\"25\";s:5:\"large\";s:2:\"25\";s:6:\"medium\";s:2:\"25\";s:5:\"small\";s:2:\"50\";s:10:\"extrasmall\";s:2:\"50\";}}s:7:\"bottom.\";a:1:{s:12:\"corrections.\";a:5:{s:7:\"default\";s:2:\"50\";s:5:\"large\";s:2:\"50\";s:6:\"medium\";s:2:\"50\";s:5:\"small\";s:2:\"50\";s:10:\"extrasmall\";s:2:\"50\";}}}s:11:\"card_group.\";a:4:{s:2:\"1.\";a:1:{s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"2.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"3.\";a:3:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"4.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}}s:9:\"carousel.\";a:1:{s:15:\"text_and_image.\";a:1:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}}}s:15:\"carousel_small.\";a:1:{s:15:\"text_and_image.\";a:1:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}}}s:20:\"carousel_fullscreen.\";a:1:{s:15:\"text_and_image.\";a:1:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}}}s:4:\"tab.\";a:2:{s:5:\"left.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}s:6:\"right.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"40\";s:5:\"large\";s:2:\"40\";s:6:\"medium\";s:2:\"40\";}}}s:9:\"timeline.\";a:2:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:2:\"49\";s:5:\"large\";s:2:\"49\";s:6:\"medium\";s:2:\"49\";s:5:\"small\";s:2:\"72\";s:10:\"extrasmall\";s:2:\"72\";}}s:14:\"menu_card_dir.\";a:4:{s:2:\"1.\";a:1:{s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"2.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"3.\";a:3:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"4.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}}s:15:\"menu_card_list.\";a:4:{s:2:\"1.\";a:1:{s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"2.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"3.\";a:3:{s:11:\"multiplier.\";a:3:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";}s:8:\"gutters.\";a:3:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}s:2:\"4.\";a:3:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"20\";s:5:\"large\";s:2:\"20\";s:6:\"medium\";s:2:\"20\";s:5:\"small\";s:2:\"20\";}s:12:\"corrections.\";a:5:{s:7:\"default\";s:1:\"2\";s:5:\"large\";s:1:\"2\";s:6:\"medium\";s:1:\"2\";s:5:\"small\";s:1:\"2\";s:10:\"extrasmall\";s:1:\"2\";}}}s:19:\"menu_thumbnail_dir.\";a:3:{s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}s:2:\"3.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";s:5:\"small\";s:6:\"0.3333\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}s:2:\"4.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}}s:20:\"menu_thumbnail_list.\";a:3:{s:2:\"2.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:3:\"0.5\";s:5:\"large\";s:3:\"0.5\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}s:2:\"3.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:6:\"0.3333\";s:5:\"large\";s:6:\"0.3333\";s:6:\"medium\";s:6:\"0.3333\";s:5:\"small\";s:6:\"0.3333\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}s:2:\"4.\";a:2:{s:11:\"multiplier.\";a:4:{s:7:\"default\";s:4:\"0.25\";s:5:\"large\";s:4:\"0.25\";s:6:\"medium\";s:3:\"0.5\";s:5:\"small\";s:3:\"0.5\";}s:8:\"gutters.\";a:4:{s:7:\"default\";s:2:\"10\";s:5:\"large\";s:2:\"10\";s:6:\"medium\";s:2:\"10\";s:5:\"small\";s:2:\"10\";}}}}}s:14:\"menuthumbnail.\";a:2:{s:6:\"title.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"subtitle.\";a:1:{s:4:\"crop\";s:2:\"80\";}}s:9:\"menucard.\";a:4:{s:5:\"icon.\";a:3:{s:6:\"enable\";s:1:\"0\";s:6:\"height\";s:2:\"32\";s:5:\"width\";s:3:\"32c\";}s:6:\"title.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"subtitle.\";a:1:{s:4:\"crop\";s:3:\"100\";}s:9:\"abstract.\";a:1:{s:4:\"crop\";s:3:\"250\";}}s:9:\"texticon.\";a:1:{s:5:\"icon.\";a:4:{s:8:\"default.\";a:2:{s:6:\"height\";s:2:\"32\";s:5:\"width\";s:2:\"32\";}s:7:\"medium.\";a:2:{s:6:\"height\";s:2:\"48\";s:5:\"width\";s:2:\"48\";}s:6:\"large.\";a:2:{s:6:\"height\";s:2:\"64\";s:5:\"width\";s:2:\"64\";}s:8:\"awesome.\";a:2:{s:6:\"height\";s:2:\"80\";s:5:\"width\";s:2:\"80\";}}}s:9:\"timeline.\";a:1:{s:5:\"date.\";a:1:{s:6:\"format\";s:9:\"%B %e, %Y\";}}s:8:\"uploads.\";a:1:{s:8:\"preview.\";a:2:{s:6:\"height\";s:4:\"100c\";s:5:\"width\";s:4:\"100c\";}}}s:15:\"dataProcessing.\";a:4:{i:1509614342;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:11:\"1509614342.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:16:\"background_image\";}s:2:\"as\";s:15:\"backgroundImage\";}i:1532626753;s:54:\"BK2K\\BootstrapPackage\\DataProcessing\\FlexFormProcessor\";s:11:\"1532626753.\";a:1:{s:9:\"fieldName\";s:24:\"background_image_options\";}}s:10:\"variables.\";a:2:{s:13:\"backendlayout\";s:4:\"TEXT\";s:14:\"backendlayout.\";a:3:{s:4:\"data\";s:10:\"pagelayout\";s:12:\"replacement.\";a:1:{s:3:\"10.\";a:2:{s:6:\"search\";s:8:\"pagets__\";s:7:\"replace\";s:0:\"\";}}s:7:\"ifEmpty\";s:7:\"default\";}}}s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}s:9:\"extTarget\";s:6:\"_blank\";s:10:\"extTarget.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:775:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var,a, abbr, acronym, address, article, aside, b, bdo,big, blockquote, br, caption, center, cite, code, col,colgroup, dd, del, dfn, dl, div, dt, em, font,footer, header, h1, h2, h3, h4, h5, h6, hr, i, img,ins, kbd, label, li, link, meta, nav, ol, p, pre, q,samp, sdfield, section, small, span, strike, strong,style, sub, sup, table, thead, tbody, tfoot, td, th,tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:37:\"<span class=\"text-highlight\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}s:9:\"extTarget\";s:6:\"_blank\";s:10:\"extTarget.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:775:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var,a, abbr, acronym, address, article, aside, b, bdo,big, blockquote, br, caption, center, cite, code, col,colgroup, dd, del, dfn, dl, div, dt, em, font,footer, header, h1, h2, h3, h4, h5, h6, hr, i, img,ins, kbd, label, li, link, meta, nav, ol, p, pre, q,samp, sdfield, section, small, span, strike, strong,style, sub, sup, table, thead, tbody, tfoot, td, th,tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:37:\"<span class=\"text-highlight\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:38:\"p, pre, h1, h2, h3, h4, h5, h6, hr, dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:97:\"article, address, aside, blockquote, div, dd, dl, footer,header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:15:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:3:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:3:\"ul.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:11:\"list-normal\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:37:\"<div class=\"table-responsive\">|</div>\";}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:1:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:1:{s:13:\"nonWrappedTag\";s:0:\"\";}}}}}}}s:4:\"pre.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:6:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}s:9:\"extTarget\";s:6:\"_blank\";s:10:\"extTarget.\";a:1:{s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:775:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var,a, abbr, acronym, address, article, aside, b, bdo,big, blockquote, br, caption, center, cite, code, col,colgroup, dd, del, dfn, dl, div, dt, em, font,footer, header, h1, h2, h3, h4, h5, h6, hr, i, img,ins, kbd, label, li, link, meta, nav, ol, p, pre, q,samp, sdfield, section, small, span, strike, strong,style, sub, sup, table, thead, tbody, tfoot, td, th,tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:37:\"<span class=\"text-highlight\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"address.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:8:\"tx_form.\";a:2:{s:23:\"contentElementRendering\";s:7:\"RECORDS\";s:24:\"contentElementRendering.\";a:3:{s:6:\"tables\";s:10:\"tt_content\";s:7:\"source.\";a:1:{s:7:\"current\";s:1:\"1\";}s:12:\"dontCheckPid\";s:1:\"1\";}}s:14:\"dynamicContent\";s:3:\"COA\";s:15:\"dynamicContent.\";a:5:{i:5;s:13:\"LOAD_REGISTER\";s:2:\"5.\";a:6:{s:7:\"colPos.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:5:\"field\";s:6:\"colPos\";s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:7:\"current\";s:1:\"1\";}s:7:\"ifEmpty\";s:1:\"0\";}}}}s:6:\"slide.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:9:\"override.\";a:2:{s:5:\"field\";s:5:\"slide\";s:3:\"if.\";a:2:{s:9:\"isInList.\";a:1:{s:5:\"field\";s:5:\"slide\";}s:5:\"value\";s:11:\"-1, 0, 1, 2\";}}s:7:\"ifEmpty\";s:1:\"0\";}}s:8:\"pageUid.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:5:\"field\";s:7:\"pageUid\";s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:7:\"TSFE:id\";}}}s:15:\"contentFromPid.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:4:\"data\";s:44:\"DB:pages:{register:pageUid}:content_from_pid\";s:5:\"data.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}}s:5:\"wrap.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:4:\"wrap\";}}s:12:\"elementWrap.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:11:\"elementWrap\";}}}i:20;s:7:\"CONTENT\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:5:{s:39:\"includeRecordsWithoutDefaultTranslation\";s:1:\"1\";s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:27:\"{#colPos}={register:colPos}\";s:6:\"where.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"pidInList.\";a:2:{s:4:\"data\";s:16:\"register:pageUid\";s:9:\"override.\";a:1:{s:4:\"data\";s:23:\"register:contentFromPid\";}}}s:5:\"slide\";s:16:\"{register:slide}\";s:6:\"slide.\";a:1:{s:10:\"insertData\";s:1:\"1\";}s:10:\"renderObj.\";a:1:{s:8:\"stdWrap.\";a:2:{s:8:\"dataWrap\";s:22:\"{register:elementWrap}\";s:8:\"required\";s:1:\"1\";}}s:8:\"stdWrap.\";a:2:{s:8:\"dataWrap\";s:15:\"{register:wrap}\";s:8:\"required\";s:1:\"1\";}}i:90;s:16:\"RESTORE_REGISTER\";}s:19:\"dynamicContentSlide\";s:20:\"< lib.dynamicContent\";s:20:\"dynamicContentSlide.\";a:1:{s:3:\"20.\";a:1:{s:5:\"slide\";s:2:\"-1\";}}s:5:\"block\";s:13:\"FLUIDTEMPLATE\";s:6:\"block.\";a:6:{s:12:\"templateName\";s:7:\"Default\";s:13:\"templateName.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:8:\"template\";}}s:18:\"templateRootPaths.\";a:2:{i:0;s:57:\"EXT:bootstrap_package/Resources/Private/Templates/Blocks/\";i:10;s:57:\"EXT:bootstrap_package/Resources/Private/Templates/Blocks/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:56:\"EXT:bootstrap_package/Resources/Private/Partials/Blocks/\";i:10;s:56:\"EXT:bootstrap_package/Resources/Private/Partials/Blocks/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:55:\"EXT:bootstrap_package/Resources/Private/Layouts/Blocks/\";i:10;s:55:\"EXT:bootstrap_package/Resources/Private/Layouts/Blocks/\";}s:15:\"dataProcessing.\";a:2:{i:1;s:55:\"BK2K\\BootstrapPackage\\DataProcessing\\ConstantsProcessor\";s:2:\"1.\";a:2:{s:2:\"as\";s:5:\"theme\";s:3:\"key\";s:10:\"page.theme\";}}}s:5:\"page.\";a:2:{s:5:\"class\";s:3:\"COA\";s:6:\"class.\";a:10:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:5:\"field\";s:12:\"alias // uid\";s:10:\"noTrimWrap\";s:8:\"|page-||\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:4:\"data\";s:7:\"level:1\";s:10:\"noTrimWrap\";s:14:\"| pagelevel-||\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:4:\"data\";s:21:\"TSFE:sys_language_uid\";s:10:\"noTrimWrap\";s:13:\"| language-||\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:4:{s:4:\"data\";s:10:\"pagelayout\";s:12:\"replacement.\";a:1:{s:3:\"10.\";a:2:{s:6:\"search\";s:8:\"pagets__\";s:7:\"replace\";s:0:\"\";}}s:7:\"ifEmpty\";s:7:\"default\";s:10:\"noTrimWrap\";s:18:\"| backendlayout-||\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:3:{s:5:\"field\";s:6:\"layout\";s:10:\"noTrimWrap\";s:11:\"| layout-||\";s:7:\"ifEmpty\";s:7:\"default\";}}}}s:5:\"page.\";a:16:{i:1;s:3:\"COA\";s:2:\"1.\";a:2:{i:10;s:9:\"EDITPANEL\";s:3:\"10.\";a:2:{s:5:\"allow\";s:17:\"toolbar,move,hide\";s:5:\"label\";s:2:\"%s\";}}s:11:\"includeCSS.\";a:1:{s:5:\"theme\";s:60:\"EXT:bootstrap_package/Resources/Public/Scss/Theme/theme.scss\";}s:20:\"includeJSFooterlibs.\";a:17:{s:6:\"popper\";s:67:\"EXT:bootstrap_package/Resources/Public/Contrib/popper/popper.min.js\";s:9:\"bootstrap\";s:77:\"EXT:bootstrap_package/Resources/Public/Contrib/bootstrap4/js/bootstrap.min.js\";s:6:\"jquery\";s:67:\"EXT:bootstrap_package/Resources/Public/Contrib/jquery/jquery.min.js\";s:7:\"jquery.\";a:1:{s:10:\"forceOnTop\";s:1:\"1\";}s:8:\"hammerjs\";s:69:\"EXT:bootstrap_package/Resources/Public/Contrib/hammerjs/hammer.min.js\";s:15:\"photoswipe_core\";s:75:\"EXT:bootstrap_package/Resources/Public/Contrib/photoswipe/photoswipe.min.js\";s:13:\"photoswipe_ui\";s:86:\"EXT:bootstrap_package/Resources/Public/Contrib/photoswipe/photoswipe-ui-default.min.js\";s:19:\"bootstrap_accordion\";s:81:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.accordion.min.js\";s:14:\"bootstrap_form\";s:76:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.form.min.js\";s:15:\"bootstrap_swipe\";s:77:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.swipe.min.js\";s:17:\"bootstrap_popover\";s:79:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.popover.min.js\";s:22:\"bootstrap_stickyheader\";s:84:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.stickyheader.min.js\";s:22:\"bootstrap_smoothscroll\";s:84:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.smoothscroll.min.js\";s:18:\"bootstrap_lightbox\";s:80:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.lightbox.min.js\";s:16:\"bootstrap_navbar\";s:78:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/bootstrap.navbar.min.js\";s:21:\"contrib_cookieconsent\";s:81:\"EXT:bootstrap_package/Resources/Public/Contrib/cookieconsent/cookieconsent.min.js\";s:23:\"bootstrap_cookieconsent\";s:82:\"EXT:bootstrap_package/Resources/Public/JavaScript/Dist/jquery.cookieconsent.min.js\";}s:7:\"typeNum\";s:1:\"0\";s:12:\"shortcutIcon\";s:56:\"EXT:bootstrap_package/Resources/Public/Icons/favicon.ico\";s:14:\"bodyTagCObject\";s:3:\"COA\";s:15:\"bodyTagCObject.\";a:5:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:4:\"data\";s:7:\"TSFE:id\";s:10:\"noTrimWrap\";s:10:\"| id=\"p|\"|\";}i:20;s:16:\"< lib.page.class\";s:3:\"20.\";a:1:{s:8:\"stdWrap.\";a:1:{s:10:\"noTrimWrap\";s:12:\"| class=\"|\"|\";}}s:4:\"wrap\";s:7:\"<body|>\";}s:11:\"headerData.\";a:2:{i:10;s:5:\"HMENU\";s:3:\"10.\";a:4:{s:7:\"special\";s:6:\"browse\";s:8:\"special.\";a:1:{s:5:\"items\";s:9:\"prev|next\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:1:{s:3:\"NO.\";a:3:{s:7:\"allWrap\";s:57:\"<link rel=\"prev\" href=\"|\"> |*| <link rel=\"next\" href=\"|\">\";s:11:\"doNotLinkIt\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:9:\"field:uid\";}s:12:\"useCacheHash\";s:1:\"1\";s:10:\"returnLast\";s:3:\"url\";}}}}}}i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:9:{s:12:\"templateName\";s:4:\"TEXT\";s:13:\"templateName.\";a:3:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:4:{s:4:\"data\";s:10:\"pagelayout\";s:8:\"required\";s:1:\"1\";s:4:\"case\";s:14:\"uppercamelcase\";s:6:\"split.\";a:3:{s:5:\"token\";s:8:\"pagets__\";s:7:\"cObjNum\";s:1:\"1\";s:2:\"1.\";a:1:{s:7:\"current\";s:1:\"1\";}}}s:7:\"ifEmpty\";s:7:\"Default\";}s:18:\"templateRootPaths.\";a:2:{i:0;s:55:\"EXT:bootstrap_package/Resources/Private/Templates/Page/\";i:1;s:55:\"EXT:bootstrap_package/Resources/Private/Templates/Page/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:54:\"EXT:bootstrap_package/Resources/Private/Partials/Page/\";i:1;s:54:\"EXT:bootstrap_package/Resources/Private/Partials/Page/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:53:\"EXT:bootstrap_package/Resources/Private/Layouts/Page/\";i:1;s:53:\"EXT:bootstrap_package/Resources/Private/Layouts/Page/\";}s:15:\"dataProcessing.\";a:12:{i:1;s:55:\"BK2K\\BootstrapPackage\\DataProcessing\\ConstantsProcessor\";s:2:\"1.\";a:2:{s:2:\"as\";s:5:\"theme\";s:3:\"key\";s:10:\"page.theme\";}i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:6:\"levels\";s:1:\"2\";s:13:\"includeSpacer\";s:1:\"1\";s:2:\"as\";s:14:\"mainnavigation\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:8:\"nav_icon\";}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:4:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:5:\"value\";s:1:\"1\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"1\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:1:\"1\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"1\";}}}}}}}}}i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:6:{s:10:\"entryLevel\";s:1:\"1\";s:6:\"levels\";s:1:\"2\";s:9:\"expandAll\";s:1:\"0\";s:13:\"includeSpacer\";s:1:\"1\";s:2:\"as\";s:13:\"subnavigation\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:8:\"nav_icon\";}s:2:\"as\";s:4:\"icon\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"1\";}}}}i:30;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"30.\";a:6:{s:7:\"special\";s:8:\"rootline\";s:8:\"special.\";a:1:{s:5:\"range\";s:4:\"0|-1\";}s:16:\"includeNotInMenu\";s:1:\"1\";s:2:\"as\";s:10:\"breadcrumb\";s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"2\";s:6:\"value.\";a:3:{s:10:\"insertData\";s:1:\"1\";s:10:\"prioriCalc\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:3:\"|-1\";}}s:14:\"isGreaterThan.\";a:1:{s:4:\"data\";s:5:\"level\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:2:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:8:\"nav_icon\";}s:2:\"as\";s:4:\"icon\";}}}i:40;s:55:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor\";s:3:\"40.\";a:2:{s:9:\"languages\";s:4:\"auto\";s:2:\"as\";s:18:\"languagenavigation\";}i:50;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"50.\";a:5:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:5:\"value\";s:0:\"\";}s:16:\"includeNotInMenu\";s:1:\"1\";s:2:\"as\";s:14:\"metanavigation\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:0:\"\";}}}s:9:\"settings.\";a:1:{s:5:\"logo.\";a:5:{s:4:\"file\";s:66:\"EXT:bootstrap_package/Resources/Public/Images/BootstrapPackage.svg\";s:12:\"fileInverted\";s:74:\"EXT:bootstrap_package/Resources/Public/Images/BootstrapPackageInverted.svg\";s:6:\"height\";s:2:\"52\";s:5:\"width\";s:3:\"180\";s:9:\"linktitle\";s:0:\"\";}}s:10:\"variables.\";a:12:{s:9:\"pageTitle\";s:4:\"TEXT\";s:10:\"pageTitle.\";a:1:{s:4:\"data\";s:10:\"page:title\";}s:9:\"siteTitle\";s:4:\"TEXT\";s:10:\"siteTitle.\";a:1:{s:4:\"data\";s:25:\"TSFE:tmpl|setup|sitetitle\";}s:8:\"rootPage\";s:4:\"TEXT\";s:9:\"rootPage.\";a:1:{s:4:\"data\";s:10:\"leveluid:0\";}s:10:\"pagelayout\";s:4:\"TEXT\";s:11:\"pagelayout.\";a:3:{s:4:\"data\";s:10:\"pagelayout\";s:12:\"replacement.\";a:1:{s:3:\"10.\";a:2:{s:6:\"search\";s:8:\"pagets__\";s:7:\"replace\";s:0:\"\";}}s:7:\"ifEmpty\";s:7:\"default\";}s:7:\"logoAlt\";s:3:\"COA\";s:8:\"logoAlt.\";a:4:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:3:{s:4:\"data\";s:25:\"TSFE:tmpl|setup|sitetitle\";s:10:\"noTrimWrap\";s:8:\"|| logo|\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:0:\"\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:0:\"\";s:3:\"if.\";a:1:{s:6:\"isTrue\";s:0:\"\";}}}s:23:\"breadcrumbExtendedValue\";s:3:\"COA\";s:24:\"breadcrumbExtendedValue.\";a:0:{}}s:8:\"stdWrap.\";a:1:{s:12:\"replacement.\";a:5:{s:2:\"1.\";a:2:{s:6:\"search\";s:25:\"http://###BACKEND_URL###/\";s:8:\"replace.\";a:1:{s:9:\"typolink.\";a:2:{s:9:\"parameter\";s:6:\"typo3/\";s:10:\"returnLast\";s:3:\"url\";}}}s:2:\"2.\";a:2:{s:6:\"search\";s:18:\"###FRONTEND_URL###\";s:8:\"replace.\";a:1:{s:9:\"typolink.\";a:2:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:10:\"leveluid:0\";}s:10:\"returnLast\";s:3:\"url\";}}}s:2:\"3.\";a:2:{s:6:\"search\";s:17:\"###CURRENTYEAR###\";s:8:\"replace.\";a:2:{s:4:\"data\";s:6:\"date:U\";s:8:\"strftime\";s:2:\"%Y\";}}s:2:\"4.\";a:2:{s:6:\"search\";s:11:\"###SPACE###\";s:8:\"replace.\";a:1:{s:4:\"char\";s:2:\"32\";}}s:3:\"99.\";a:2:{s:6:\"search\";s:27:\"###GoogleAnalyticsStatus###\";s:8:\"replace.\";a:2:{s:7:\"cObject\";s:13:\"FLUIDTEMPLATE\";s:8:\"cObject.\";a:6:{s:12:\"templateName\";s:21:\"GoogleAnalyticsStatus\";s:13:\"templateName.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:8:\"template\";}}s:18:\"templateRootPaths.\";a:2:{i:0;s:57:\"EXT:bootstrap_package/Resources/Private/Templates/Blocks/\";i:10;s:57:\"EXT:bootstrap_package/Resources/Private/Templates/Blocks/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:56:\"EXT:bootstrap_package/Resources/Private/Partials/Blocks/\";i:10;s:56:\"EXT:bootstrap_package/Resources/Private/Partials/Blocks/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:55:\"EXT:bootstrap_package/Resources/Private/Layouts/Blocks/\";i:10;s:55:\"EXT:bootstrap_package/Resources/Private/Layouts/Blocks/\";}s:15:\"dataProcessing.\";a:2:{i:1;s:55:\"BK2K\\BootstrapPackage\\DataProcessing\\ConstantsProcessor\";s:2:\"1.\";a:2:{s:2:\"as\";s:5:\"theme\";s:3:\"key\";s:10:\"page.theme\";}}}}}}}}s:5:\"meta.\";a:18:{s:8:\"viewport\";s:35:\"width=device-width, initial-scale=1\";s:6:\"robots\";s:12:\"index,follow\";s:28:\"apple-mobile-web-app-capable\";s:2:\"no\";s:11:\"description\";s:0:\"\";s:12:\"description.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:11:\"description\";}}s:6:\"author\";s:0:\"\";s:7:\"author.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:6:\"author\";}}s:8:\"keywords\";s:0:\"\";s:9:\"keywords.\";a:1:{s:9:\"override.\";a:1:{s:5:\"field\";s:8:\"keywords\";}}s:15:\"X-UA-Compatible\";s:7:\"IE=edge\";s:16:\"X-UA-Compatible.\";a:1:{s:9:\"attribute\";s:10:\"http-equiv\";}s:6:\"google\";s:11:\"notranslate\";s:24:\"google-site-verification\";s:0:\"\";s:9:\"og:title.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:5:\"field\";s:5:\"title\";}s:13:\"og:site_name.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:4:\"data\";s:25:\"TSFE:tmpl|setup|sitetitle\";}s:14:\"og:description\";s:0:\"\";s:15:\"og:description.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:5:\"field\";s:11:\"description\";}s:9:\"og:image.\";a:2:{s:9:\"attribute\";s:8:\"property\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:5:\"FILES\";s:8:\"cObject.\";a:4:{s:11:\"references.\";a:1:{s:4:\"data\";s:27:\"levelfield:-1, media, slide\";}s:8:\"maxItems\";s:1:\"1\";s:9:\"renderObj\";s:3:\"COA\";s:10:\"renderObj.\";a:2:{i:10;s:12:\"IMG_RESOURCE\";s:3:\"10.\";a:2:{s:5:\"file.\";a:4:{s:7:\"import.\";a:1:{s:4:\"data\";s:16:\"file:current:uid\";}s:18:\"treatIdAsReference\";s:1:\"1\";s:5:\"width\";s:5:\"1280c\";s:6:\"height\";s:4:\"720c\";}s:8:\"stdWrap.\";a:1:{s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:26:\"TSFE:lastImgResourceInfo|3\";}s:10:\"returnLast\";s:3:\"url\";s:16:\"forceAbsoluteUrl\";s:1:\"1\";}}}}}}}}s:15:\"includeCSSLibs.\";a:4:{s:13:\"googlewebfont\";s:67:\"https://fonts.googleapis.com/css?family=Source Sans Pro:300,400,700\";s:14:\"googlewebfont.\";a:5:{s:8:\"external\";s:1:\"1\";s:18:\"disableCompression\";s:1:\"1\";s:24:\"excludeFromConcatenation\";s:1:\"1\";s:11:\"fontLoader.\";a:2:{s:9:\"families.\";a:1:{i:0;s:27:\"Source Sans Pro:300,400,700\";}s:7:\"enabled\";s:1:\"1\";}s:3:\"if.\";a:1:{s:6:\"isTrue\";s:1:\"1\";}}s:20:\"bootstrappackageicon\";s:73:\"EXT:bootstrap_package/Resources/Public/Fonts/bootstrappackageicon.min.css\";s:21:\"bootstrappackageicon.\";a:1:{s:11:\"fontLoader.\";a:2:{s:9:\"families.\";a:1:{i:0;s:20:\"BootstrapPackageIcon\";}s:7:\"enabled\";s:1:\"1\";}}}s:14:\"includeJSLibs.\";a:2:{s:9:\"modernizr\";s:73:\"EXT:bootstrap_package/Resources/Public/Contrib/modernizr/modernizr.min.js\";s:10:\"modernizr.\";a:2:{s:10:\"forceOnTop\";s:1:\"1\";s:5:\"async\";s:1:\"1\";}}s:9:\"jsInline.\";a:2:{i:99;s:3:\"COA\";s:3:\"99.\";a:5:{s:3:\"if.\";a:1:{s:6:\"isTrue\";s:0:\"\";}i:10;s:4:\"TEXT\";s:3:\"10.\";a:1:{s:5:\"value\";s:1986:\"    var gaProperty = \'\';\n    var disableStr = \'ga-disable-\' + gaProperty;\n    if (document.cookie.indexOf(disableStr + \'=true\') > -1) {\n        window[disableStr] = true;\n    }\n    function googleAnalyticsToggle(event) {\n        if (document.cookie.indexOf(disableStr + \'=true\') > -1) {\n            event.target.innerHTML = event.target.getAttribute(\'data-label-disable\');\n            googleAnalyticsOptIn();\n        } else {\n            event.target.innerHTML = event.target.getAttribute(\'data-label-enable\');\n            googleAnalyticsOptOut();\n        }\n    }\n    function googleAnalyticsOptOut() {\n        document.cookie = disableStr + \'=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/\';\n        window[disableStr] = true;\n    }\n    function googleAnalyticsOptIn() {\n        document.cookie = disableStr + \'=; expires=Thu, 01 Jan 1970 00:00:01 UTC; path=/\';\n        window[disableStr] = false;\n    }\n    document.addEventListener(\'DOMContentLoaded\', function() {\n        var matches = document.querySelectorAll(\'[data-action=\"googleAnalyticsToggle\"]\');\n        for (i=0; i<matches.length; i++) {\n            if (document.cookie.indexOf(disableStr + \'=true\') > -1) {\n                matches[i].innerHTML = matches[i].getAttribute(\'data-label-enable\');\n            } else {\n                matches[i].innerHTML = matches[i].getAttribute(\'data-label-disable\');\n            }\n            matches[i].onclick = function(event) {\n                event.preventDefault();\n                event.stopPropagation();\n                googleAnalyticsToggle(event);\n            }\n        }\n    });\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\n    ga(\'create\', \'\', \'auto\');\n    ga(\'set\', \'anonymizeIp\', true);\";}i:90;s:4:\"TEXT\";s:3:\"90.\";a:1:{s:5:\"value\";s:28:\"\n    ga(\'send\', \'pageview\');\";}}}s:7:\"config.\";a:1:{s:29:\"contentObjectExceptionHandler\";s:1:\"0\";}}s:4:\"page\";s:4:\"PAGE\";s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:18:\"additionalHeaders.\";a:1:{s:3:\"10.\";a:2:{s:6:\"header\";s:24:\"Content-Type: text/plain\";s:7:\"replace\";s:1:\"1\";}}s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:2:{i:0;s:4:\"page\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}}'),(3,'3c585a0470e2ca0567b1c12f6454d6b1',2145909600,'a:2:{s:32:\"010966dc7d2c314f2db05fdd3c3b5194\";s:23:\"[globalVar = LIT:1 = 1]\";s:32:\"2f973af5af963b09081ea94b24309b80\";s:37:\"[globalVar = TSFE:page|no_search = 1]\";}'),(4,'69e1021443136bffd7f86db28e472146',1569347966,'a:4:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:4:\"{|},\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}i:1;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:4:\"{|},\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}i:2;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:4:\"{|},\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}i:3;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(5,'39b3db5e5cd2f366942391e70d037700',1569347966,'a:0:{}'),(6,'2d476b6f0174ddce8c2ae9894afd3fda',1569347966,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(7,'e9b6974d7590eabbf059af2304eb69c8',1569347966,'a:0:{}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'a341977e40078ac89538934c8436cc57','ident_userTS_TSconfig'),(2,'0fe0a63c1107e3a67726f22e4547549e','ident_TS_TEMPLATE'),(3,'3c585a0470e2ca0567b1c12f6454d6b1','ident_TMPL_CONDITIONS_ALL'),(4,'69e1021443136bffd7f86db28e472146','ident_MENUDATA'),(5,'39b3db5e5cd2f366942391e70d037700','ident_MENUDATA'),(6,'2d476b6f0174ddce8c2ae9894afd3fda','ident_MENUDATA'),(7,'e9b6974d7590eabbf059af2304eb69c8','ident_MENUDATA');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
INSERT INTO `cf_cache_pages` VALUES (1,'redirects',1569265166,'xúK¥2∞™Æ\0O˛'),(2,'fc68ee817c7fc246b3249c651be3d438',1569347966,'xúÌ<ks€∂≤üõ_¡∞sNíôP‚C¢DŸ÷«é€¥N‚â›€πs‹—Ä$(°¶≤Ïˆ˙ü›o˜è›]\0§(˘Ì∫ßg¶u&ñÏ.ã}a	òå£_≈»sG6Ki!Y∆heoâQ‡èÏ,	áîΩA2»ø∆Åﬂãí∞Ô≈4H{¡·#ª$S:a©Ω≈FûnIx!Åˆ{^0ÏçÏÌó˚ü˜N˛˚ËΩ5ìÛ|¸b?¨ú”õ66Píé_ºÿûSI¨dF*AÂéΩêô3ƒÓóécΩ¯Í4µxa…µÄ‹Á¿z«π≤\"•uDí3`≈ä/≠w¥¯ôÃYa}œ•¥Tñb‘Ì.óÀN\\#8•FË$|ﬁ}Ò‚´ì÷í∆ÇIj¡◊í/i√==îc±Bî¨b≈‘*)/sjIn	‡ïætxƒ *J-^“¬|Q%‘⁄”±>íú„◊ÉäÃÈíWg@îIFÚ¸“J*J§Ò{\"JZY«gÑT3˛≥Eä‘ YB¿¢H°ÔõO?tø9:Ï¥ÜNxyY±ÈLZ^\rﬂı\"ãgõƒ:÷˚`G0^\0∑m°0àñUVE%ëÏ&≤,h%`òE∆´9ëÄß¯¡eÆXº–\r≤ë≤º,y–·’¥˚¬q`M_lÁ¨8í˘é-fºí…BZ∞mkV—l«÷–êuÈÖÏ6+41+‘˝Bµ E˜hÉ∫\0Xt3réd:À∂Ä›±Ÿ·/EÙF2ô”Ò±$ïvª´[å¢!À˝◊ÇùÔÿŒÇ8†%Ã0Œ©m5ﬁ±?ºﬂ°ÈZ∫5^ã∑cO)HÜH^µ`ıZÏ}<æ}ŒË≤ÑŸ∑Äó,ï≥ùî¬4®£ﬁ÷Í‡àÑ‰t«ªF¶‚1àßEÑÅ6\\ºÕxûÛe∫¨@+yπcÛÈHM∫Ö≥»5˙r…§§’(!U⁄¬ã˘úTó◊¿I	v‡ÃyÃ‡¨«Å\'!%Ya¡ØKèÛÈ,z!rb∏ZWyôS1£T÷K-QW!÷µH“yŸ%ºáË‚bÇ\"É…tÁ¥ö“‘â{.81◊è√î∫qF˝(Í˜Ωp‡ß· Ù:@Ô^?å‹·0∂5ß)#0À<∑C\"©X)-Q%∞Ôı#BR“É!˝§7¢ÿMÉ$Ë≈d∑Ûs=^ËyÓ⁄‘~&ÁDgè∑ª˙Ú–ñJB\n^0–îZ®–`Çû?Ë∏œÎ*ÌËî≥Ú,mB±n+Yécû^éb\n6M]Z9ÇÊ`Ú#†H∑JŒ`U*áû√“›É5N+ﬁ«)9xI0˚x$\0≥ÙG¢¢%83@4ﬂ∂Ã2è^Ω⁄j∞3vA”-…Àë„πÓﬂ∂rö…ëªıã£∏Ü∞?[º\0ìó–û	ú‘HÅ*k—_[£&<Á’ËÎ@˝¥;î_Yã*˝Í	Ó±E∑â5&‘|(Œ¡¬h⁄Á”Wo⁄√	ˆyC∑º∞˙~y±’ñØ1M◊ÕW†VkmﬁvñôìsíbÿiØäm%Ô%õ£w!ÖÄB¥˜ﬁ§ƒäÎäî’ítã÷É4\rˇåIGŸØ^ZCÀr;~_X∑√r<≈/„\0∫‚\nÏFÈzm∏„i|\0ä9c”ù_Ìd!$ü€£_mP\raè˛iüÆÃ˙‘ÿıÈJGåäúv3†`«aÊF©ÔÖÓ07\"aêÉæÁF§4Ÿ`8§i/â!qJ˙QËQñ˘YF√»w{Ÿ¥¢CZËyÏ∑ıË®úß®ùß◊’Ût•üßFAOªöùM>UxÑDHQˇÈ≠ùAVî3™&z¨sìc¢uTÒQ‡∫o{‡∫¿»5]«Ä˙”’[[≤9Ÿ⁄ :Ø∂^gã\"¡5xùæ˘ıúT÷2€I;:ìyü´\\Áı+-¸Woﬁ\nË”‚üÓO[À¨ÉûÙ	πßsèZzh¥Z;zÖ#qY$;…›ùûB~‚)Ì@6Ê˚Nô¿ÎeˆVºŸ∫zÛ:Â…π~≥µr∫€]ùûn£—X‡HÌsíÉzÏ®¸◊Ò,¸»¡(r«UâÌõ]ù-“ú\\Ç–¿/Ã1m4O)Õ»\"óY∂SvÆÉ)¢ªá«±j3É‡¿N<µ«\r`¬˘£òa™=ﬁ%)¨îHÃaZ=`ªR2Ã≥usá^@\n{πO.!pﬁ\0~NÚD† Ï´®DDZ˘ˆJ	ˆw–›Sç¬Z¥yìsø|¬Äs∂3≥€G\\KÎaXÃí5êºCºÄV√öR©∏â©êâVå`¿$®^M°Û&S&ÊL‹)Óo8dƒÚ) :ÌªùÙ.‘s~\n˜¥∏ºã˛>M °O†åiÃ]î)©\nk÷˘UÑtË.‚è ©≠ı.b1,yEÃÚÓ¢«`ßıru>u\'ã∞Ü@˜p¢=Ág:ãøù™˚ÇB¬∆*y.j9O»}s~=≤Ï$êª…ÍrÇ√≥©Œ≤S—)IÚCrßùz+≤⁄˚ì⁄˜ã ·E~iôO\'É%Ù Ë§ˇkÇÍ™ãfk||∆Jtqs¬äzè’@∆€⁄WÎ`ÜËµÔÆ÷Göfÿ≤ù«§˛pê&|eS]0≠&ú’è3\"t⁄]7Ë–÷\nj»PÇQ[≥5¿qÖ%ÜˆÉ&÷Ïˆ666„m6üﬁDrÁ)w\n¨\\¿.©µq{Ü\r\0&˛∂ErÿºZ80ß∂(;vﬂ∑-Ωª∑apwÃl$ûõøˆÂÅ|¢jƒ≈ªíOaª[=ûÁ§»¨ﬁ¨jh£⁄\Z\nóVC’Õv√0‹◊Îö<Uå8mA4Qei¶5\'1nqOE´ÖdÏÓFˆL·ßQtÕ‹x†î™oéﬂh¢f∑V∏Ü˝Òˆ\"ﬂ	>†9g≠f2ÉπR‚õîDåC◊péo∑QuTö˚íï9#∞h◊ß©@¨\rÿ„`€®ª9{k¡k¡Ì¨÷˜Næj®ﬂ¬ToÉ©ﬁÌLΩWõ–ªY“0øÖ°˛C˝€˙]⁄ô¥∫÷nëëY%ÔÊÌ\Z¯56ªã~Z∫⁄#Ø6kŒ”}õv ,%f_:é*Tøﬂ˝≤˜Ì$ÜU8Œös6¿ñ˘\\mVV;êï∂dXÕ∂‘Ô&Ë\'Ù0cQ?õ≠èk[5¨$ò÷Ç∑:t— úê‘ñ≠ç†€IÜÖ	l^è3\Z¶mÆuÇWÿÏêŒ2Õ±Œ¿+AﬂÃ¬D∞„[?¶˘±ÈÑEÒ∆€c≤µBü¥—-ËáEì≥Ò\'oª_aüÍ=¶2”¶úyÛd∆∞T…ˆÜV^6çÍã‚≈W”4¿Ø ûﬁ¶·ﬁﬂ…º‹Zgπ˝˝o˝wÀ’tˇ÷ﬂQäÉ¿b∆ó˜√´˜	‡xiÖ8-Ò*‘‰[\"f;}ËÖ~?\"aèÙ®ÁÖCóI\Z\rí8K¸>±«÷	l‡¥˝‡|ˇ<s∂jù»˛Ô+Î#`ZÔ‚åU…å2Å¸…¶k·+œıán◊Ãˇ¿ô”î…ÁôyÑ!u”·†ó•‘$}èf	Mhòz.DHk`¨ˇÄ)ß4ßí>œ§£4%Q‚í°˛∞ﬂè‹lò¯É∏◊èza‚√rÔ´—V”˛]Bõˇ«(ªÎ&C–Û·0p˝ àcøÙ≤åHzë[ªyˇ˜Yıøf˝5Î?ŸtµÔ˚°?¯kÊ‡Ãü/Çë®ÔˆÇ°Éƒı¢\r¬‘ƒ.çÇ fΩ¯˜å`èöÚsF∞0L\"Íí4q›A§$Òb/	=v¨4ä˙·-¨´∂é„∞w{∫Vì*Ë≥)0çÉ~Da∞nÉ¡0Å9\r 	Ωå∆^œ¢ÀıΩ0iJ∑¸ﬁ®>Pÿ¸;u_∆πló•ıÛµ∫Üio◊eäç™ÖÓwn~t“\rUÄ;kˇŒ“Éa◊∞yÌe∞ÈÆﬂ2Î\"%J¨nôÃi±hd÷ºçV≠Ì ó9\nrk·K´‹·é´´ÓıyMÁá„¶‡µﬂîÖT· <ﬁR∆∫e\"Õ˘C†Réø,äk,K&gV√ò9ÿÑ\'8õÛÖ¿Ñ©+Ob‡ÌÃ÷á¢\nég/Q¶JÀê	u^qç÷ù«AÔ%|Ì‘)“ŸÓñ∑ORp4¨˝âı≈^ÔXïõ[Ì™ÄfØIÒ÷ﬂF«·õ∏˝\")AkWÔaöÇ≥j¬˜D™’ºO“oj⁄uÀÍfÖΩ∂ˆ«üçK‹≤˚ÃœÜ√ı√tƒ}:à˚~:	l˘ût6Æã\'%‘â\r<h¨é ª#;!…åNUÑΩEF>ûy’9ÂåMUK§éAG˙4Û	 Ê®‚Á,≈ìØ®˛`dì\\’ ùÜÿ\r<ŸÎèÙA–”Ωè«ß{‡1N§”›Ö£0§Ωãy®h¬´‘ﬁ∫Rg™ıì\Z—ªiƒ·#~Q∏7\n§{#ô|5«M∫QõÓ1Â-≤§È=f6b≤QﬁR≠çø.Q`È ¥∆‚Õé@ŸÖböí„W`±‡µ§ä∆»v’gØµz¨“ÙzÍsÿÍ=¶%—w5Ñ£>£õ VG=*¯I≈Ê?Ç·õô¸èˇî Å>⁄ÍëJò)æfÖ|”Æ¶ÇÔGÚ›\"ôq\r¶4*ØO‹£— ë˜Êáh˙ª`xBÏs,‡ãˆtA\'Rû®ìöT¯æÇË£∏Á¸ú\Zo¸›qx!È¸à4oêR\Z/¶k\"\rQ;äte˝≠zÔ ÷Ñ\n<´Ä1\\Ωên˜ıõæXÌã‡ÌÓ^›çQNíÈz/»EøÁÿ„ÛππK¡¸~7\0‘∞ T»ò*JÚEïﬂ0)Xób“ZrïìÀ5ﬁ0s<O`§iﬁ«L2XuÃ3\Zeº„wkkÏy´û=±ﬁ(b	rˇªk¬muÆPΩö™TÀÉ4W¶HÛÛdÂ‘<e∂ˇZ¿ˆ˚[àüyÌ{\nxÕ·º◊¥N?û\'ß?“¯Ù†RÛLø¨°_wTè¿‹Ö˜Nü≤{>4˜6¥Ωúù>¸öÚKµ”˛ë•êwòèÁ¬ª“àrVÒ%∫⁄O\\`z˚˛\"°Í’”álW%\r{§êÔ(û.»œi∫R7„ìK–\0HDX‹Jk|†¨\re¸3^IîªÿÀ)¡´2õÊ≥(!√≠ê–ÙÓIÂT+jõwì|µW<˝ˆïü∞ú~ƒ<k1rN òX)58yµŸ¬∑pµ©†µfÄ>GtQ3¡Û≈ºhE∞ŸD}ØŒ`Äœ≈ëπka¸®4°L=îDŒÓAÈi®\Z£± €1î˜ª1,‘BB\0V»W;◊Sè[%’»ˇViy7Jk∏í∏ICCGÌ |–»è∞5û•‹;ä±Í≠ßCÃY&x‚˝&%\ZÏ«,˜,—PCj⁄WJ} Ï≤‚æïÌ´ïEHÜAJ%):ΩHô:ıuºÀ\'ˆ5¨N#Ù„$ˇÙ ¶kHmıÔ≈3û˙æo‡–¿ÓÉ}ÔÈ	3DîÉHB°ß 7Ò±ŸÃ˝√QŒì≥0¬J»¥Œ>¨ÀgÆEÊ|zÔ:¯ˆa◊9“vvcªMø©¯¢|ú2FJ±Qﬁ§ç^`êƒ\"ûÆSøq>\ZÚCŒC!≥‚d¢êƒ,r*öQºäâæÚ\0ù÷á*|®®∞N»≥ÏÚ>:~\rˇQÅk\"Ê\n*f¬‰ßNÙC”à0µ/ %JÚEJ¡›–¸^°†Ü®”◊)‚(¥Ü\"Ω(sñ09QPxé˙>ä˛\n)øT∑AÎˆÒ\0∂¢9llíÀ˚òD[08á5ä&x˝TïØ&\0?øóT‘¬8&\n©¶Üªáx¢®∫ t/1¥iH˚—j>ö∞kS≈ñ≤°Ô2Ù4 ÁÔb¬ä5C∞–kúpmùP≤6xÌAOéuπ‡~*≈û),W—ª?0öº˜I1+ª=f5|˛6ËiDèö∆”\\^vóÀ{Œ…‹ò∞ØMfú˛îWó∑Œ·Ê…◊Kb∞M÷‚∑á{GqΩ˛-Iã⁄´=Ø„®MÙ∆ﬁ◊( –è∆ΩFÄ◊»∏:’zHDÓ„ç∏,\Z•<bï~áê˛õ\"˙ïûÉ≤!\"m)Ä*[ú±“‘Év´©∫‚∂VP1Òú∞ôÑ¿£P:û}(ﬁ≠’ŸÇ°.∞äÓ·+¢ö⁄ØÙ.rìº⁄˙∫¯°˜èÚƒ\\ÙËœ∫Ç¢6´k€Eúç5%ìœÒœŸõ-kkS‹Ã\03ﬂ/#„•OˇÑŒÀµq–ôMÛ´d˚7’Õt¢Zq.Ò:ì=π∏ò*◊Ç5(ıüπp∑‘”bıG/p•ò»ÑØ P-u„R¥ZΩ∫Ô√–∫yµk‘à≠˙∫ó‰å(ÅBßY˝ÇúO\Z$”êÍ z´)’7òÃX–0c)‰#uC‘JÚÎ∂Aì¥◊-√ïwnQG?Å>»é˘Ò\".µühh§¸LãZÀi∏ä£ˆ÷\'cèRËñ	+T\Z%Lóáô	ﬁ∫√UiâZ9åIk1peõ∆	œõˆ@Ò¨Ú}SÜ”~øq-úI≥ò®úÕÏîA\rTN Æ¶ÖÔ#Çﬁ \nC-H	Çõóuè¬Ô–‹‘íÒÔf4UÑª˙z=|%Ë∫ûJS–ﬂì€h\\]˝?ﬁ¸…');
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pages_tags` VALUES (1,'redirects','redirects'),(2,'fc68ee817c7fc246b3249c651be3d438','pageId_1');
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection` VALUES (1,'1_222419149',1571853566,'xú≈õÎrú6Ä_%≥–Â~ÛÙáÌÿçgúLö›¥ùÈt⁄µ∆vÿ›¶˚Óï@`öïHXÙ«^Ñ.GGÁËÃ‡°V\0„’å˙“VöÆ˘éìƒnbƒ¶nÌå$“Ï]íò±Ÿ∫o≠ÆH`–vÓq¸(ﬁ¸¸ÊÒaËÙø˛ªÕ∫1vækÇù\rvæcFöØy:æñ©˘ëß’ı‹Q7€Õ˝]p\0{¯oñáÇ\"~‚ùûH‡´\"œÀGîA¨_P†1ÚˆI(Y]±≤˙™jÆtzÂ´“|ÅEò≠°km·+ÈïÍm))A	€bõñ¢√o∏)AQà ∫ƒfBDÄ∞ﬂÙÊ™1/a◊à”ö)LË9¡\nÉc^ïÌX¥‡	%	Ã⁄⁄a„ï(ÌÄ®‡`ñÙK®tv0‹yuËıÆ”ﬁ‡ﬂ%≠ªÕ7UƒDKz}$˘sy<¿VN¥èÌ&Œ≥⁄ØÆ>∞Ê¥NIöíe1Æ÷˛ó\"!°2`≥“uöWYˆ&C7zÖaéªr≥f∆˘eaö\'›≥TNàü)vÿ\'ÃËSÑæ@‹=›ÈT´»_7UZkÑ¶µ:a6?S˜hÓ~≥yÿﬁ±QVl;æ·Ë∂Ì^ùX•Æ	,ãía™A§<bòPPñÎ€ZUJîgÎÌÒêo‚ u˚Ù6ª˚c‘m√¶q(’⁄†B=±=\n€òF±°’P∂ˇJ„}MøNeˆ©L˙åªºH≈“0->æ∞6«\ZÃ}˙àj)p8Pm†∫+”rö1ªñ°®io|{úT˜_L0F\0â°˘‰À4Í\rÍÙuÎÂ\Z“≠…a	o„‘ÑkI7ÌΩk^ﬂ’è ]tΩ˙›5ØÔ˜Î;Ï~E`—6∫÷o“ôB;ï◊˙[˜⁄éÙovU\'Ωé‹ﬁΩ∞w≥Ì…h‹ZkŸ©6Æ_@±~}}]?ï)f?òÈZSòõÃ»≠iwkyÕa7ÿZ∫√0eKävA\ruVíüXè§õhùÕ≥}€™—ÃK£›µÇYﬂ≥’7Õ\Z†1O9¥¢`Ú»<¿F{(>mv∆õ∂™5Àbù›ö	£öfùﬂA|Ä≈HÛŒê˘zMÊ»4ÔrdAA‡}ï≈b(o \"¯>®—\nΩ©0Üggí£˘Sl¥∑ËEàehóW∞÷;®UìÈC2}2⁄≠òk‰åÀs=§‘≤à¡Ã≈ˆààÿRCÛØ€óÁ⁄<ÂEWlˆ‚ìπñòLgÒ…‹“ƒ\\C≥œ6SKp’!ÆnyÛœ‡HÏôq¥œúÉDÏôÃë/èˆf’uƒvC±XÂÃ°#0‚ª%‹Á˙&¸ÆòtË\Zwq“è,#Ê4_ƒåSŒR¢ém*KÃ7róÿ¯˛åY-1û3%ÿöOräáNƒXHˇ>¡ò˛ƒ«œáÑÆòDåÈ)Â\'àû§(}5⁄àJòÇÉœ“‘hcÉ\'\'BKøtË?\"$∞¨ŒâÆ	˝-c \"ôkjÄcöj0ﬂ3ê¢XÏö9Ê(u~?=¶LÓÇNÚ+3∂ˇØ´Âbºë_π¯*ëO∞p¿Ië…åÄ∑‰\\öÖ√yä‡ŒÁÄ8ú?e«5#ú0‘Ÿ£\0Â¸∂zNæÛ˘ Nß+Z∑¢¨«3	Oê‚t¶\"·Ω$8ﬁ»kúO]Õä\' s °Á0•ú&sﬁ°+1Á?í„m9Ì(X9ü\"úôV—S®¶Å3ß∫sQA «~\r¨£MI:Õ+r“QzÏ‚g“”≤“P(N…‹\'5UäSVsHK•8ÂÇkN™*™˘µ KÒÓ»q\'úPqBWë>nrˆæ—# û%fŸS4À¢√4éÁ+⁄é‘\Z:wRélf∫8«U*∂ﬂÆÆê±ÑÄHÑâÆ°(C!>‰Ä¶¢ù§Ã	*G¥…P|X…mE2ºé„ºHdˆ:Æ£Ò…/Ïmm1¢´»ÌQƒº\"PúUqG!ÕrŸ<N∏Iñ¿≈4ãÚæ¬òB(÷KOS$Rˆvfë,ósÒtEÀÁÅˆ%∑|<C\"À©I\"™J¨}ôƒÚˆFá¸ãÈ\"›0ä·lE÷ë˘iK∏OUÿ≤E)ƒ(oπ=UaKì„+í∑HºcÙTÊÕ§Té‹Û˚€ß*ç2Ä∞å<˝°á1€=H•ÑÍΩå6ø	Á¿78èü≈8ì^*˛úˆ˚àªï(€ã¡Ü~DõﬂPwÂ{xãá\0˛»wÃØe£/]‰ﬁ◊^√ì|a˜Ïwl¢Å©e`è^ûﬂ>|ÎÛ\ZI¡∏óV°õ∂™%ã40¸û‹[ﬂımﬂ?Ytöÿ»cÓ…Ω’|\Z˜C€Wß”È?C—¬Ó');
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection_tags` VALUES (1,'1_222419149','pageId_1'),(2,'1_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline` VALUES (1,'1__0_0',1571853566,'a:1:{i:0;a:23:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}}'),(2,'2__0_0',1571853566,'a:2:{i:1;a:23:{s:3:\"pid\";i:1;s:3:\"uid\";i:2;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:11:\"Shishakarte\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}i:0;a:23:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}}'),(3,'3__0_0',1571853566,'a:2:{i:1;a:23:{s:3:\"pid\";i:1;s:3:\"uid\";i:3;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:8:\"Location\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}i:0;a:23:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}}'),(4,'4__0_0',1571853566,'a:2:{i:1;a:23:{s:3:\"pid\";i:1;s:3:\"uid\";i:4;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:6:\"Events\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}i:0;a:23:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}}'),(5,'5__0_0',1571853566,'a:2:{i:1;a:23:{s:3:\"pid\";i:1;s:3:\"uid\";i:5;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:17:\"Kontakt / Anfahrt\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}i:0;a:23:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (1,'1__0_0','pageId_1'),(2,'2__0_0','pageId_2'),(3,'2__0_0','pageId_1'),(4,'3__0_0','pageId_3'),(5,'3__0_0','pageId_1'),(6,'4__0_0','pageId_4'),(7,'4__0_0','pageId_1'),(8,'5__0_0','pageId_5'),(9,'5__0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
INSERT INTO `cf_extbase_datamapfactory_datamap` VALUES (1,'JonathanWdl%Wdlspecials%Domain%Model%WdlSpecials',1569265166,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:48:\"JonathanWdl\\Wdlspecials\\Domain\\Model\\WdlSpecials\";s:12:\"\0*\0tableName\";s:39:\"tx_wdlspecials_domain_model_wdlspecials\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:14:{s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"starttime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"starttime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"endtime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"endtime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"name\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"name\";s:13:\"\0*\0columnName\";s:4:\"name\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"image\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"image\";s:13:\"\0*\0columnName\";s:5:\"image\";s:17:\"\0*\0typeOfRelation\";s:16:\"RELATION_HAS_ONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:18:\"sys_file_reference\";s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";s:15:\"sorting_foreign\";s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";a:1:{s:9:\"fieldname\";s:5:\"image\";}s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";s:11:\"uid_foreign\";s:23:\"\0*\0parentTableFieldName\";s:10:\"tablenames\";s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"INLINE\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"specialStart\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"specialStart\";s:13:\"\0*\0columnName\";s:13:\"special_start\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"specialStop\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"specialStop\";s:13:\"\0*\0columnName\";s:12:\"special_stop\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"category\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"category\";s:13:\"\0*\0columnName\";s:8:\"category\";s:17:\"\0*\0typeOfRelation\";s:16:\"RELATION_HAS_ONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:41:\"tx_wdlspecials_domain_model_wdlcategories\";s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"intervals\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"intervals\";s:13:\"\0*\0columnName\";s:9:\"intervals\";s:17:\"\0*\0typeOfRelation\";s:16:\"RELATION_HAS_ONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:40:\"tx_wdlspecials_domain_model_wdlintervals\";s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l10n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}'),(2,'TYPO3%CMS%Extbase%Domain%Model%FileReference',1569265166,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";s:12:\"\0*\0tableName\";s:18:\"sys_file_reference\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:17:{s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"uidLocal\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"uidLocal\";s:13:\"\0*\0columnName\";s:9:\"uid_local\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:10:\"uidForeign\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"uidForeign\";s:13:\"\0*\0columnName\";s:11:\"uid_foreign\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"tablenames\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"tablenames\";s:13:\"\0*\0columnName\";s:10:\"tablenames\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"fieldname\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"fieldname\";s:13:\"\0*\0columnName\";s:9:\"fieldname\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"sortingForeign\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sortingForeign\";s:13:\"\0*\0columnName\";s:15:\"sorting_foreign\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"tableLocal\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"tableLocal\";s:13:\"\0*\0columnName\";s:11:\"table_local\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"link\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"link\";s:13:\"\0*\0columnName\";s:4:\"link\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"alternative\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"alternative\";s:13:\"\0*\0columnName\";s:11:\"alternative\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"crop\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"crop\";s:13:\"\0*\0columnName\";s:4:\"crop\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:17:\"IMAGEMANIPULATION\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"autoplay\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"autoplay\";s:13:\"\0*\0columnName\";s:8:\"autoplay\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l10n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";s:14:\"uid_local:type\";s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";i:-1;}'),(3,'JonathanWdl%Wdlspecials%Domain%Model%WdlCategories',1569265166,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:50:\"JonathanWdl\\Wdlspecials\\Domain\\Model\\WdlCategories\";s:12:\"\0*\0tableName\";s:41:\"tx_wdlspecials_domain_model_wdlcategories\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:8:{s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"starttime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"starttime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"endtime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"endtime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"category\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"category\";s:13:\"\0*\0columnName\";s:8:\"category\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l10n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}'),(4,'JonathanWdl%Wdlspecials%Domain%Model%WdlIntervals',1569265166,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:49:\"JonathanWdl\\Wdlspecials\\Domain\\Model\\WdlIntervals\";s:12:\"\0*\0tableName\";s:40:\"tx_wdlspecials_domain_model_wdlintervals\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:8:{s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"starttime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"starttime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"endtime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"endtime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"intervals\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"intervals\";s:13:\"\0*\0columnName\";s:9:\"intervals\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l10n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `alias` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  `nav_icon` int(10) unsigned DEFAULT 0,
  `thumbnail` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1566661385,1566659601,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'a:49:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:8:\"nav_icon\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:9:\"thumbnail\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Startseite','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1566661385,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__simple','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(2,1,1566664321,1566664272,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Shishakarte','/shishakarte',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(3,1,1566664323,1566664286,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Location','/location',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(4,1,1566664325,1566664301,1,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Events','/events',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(5,1,1566664329,1566664315,1,0,0,0,0,'0',1024,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Kontakt / Anfahrt','/kontakt-/-anfahrt',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(6,0,1569087595,1569087586,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Wdl_Specials','/',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(7,6,1569087642,1569087625,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Categories','/categories',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0),(8,6,1569087645,1569087639,1,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,1,31,31,0,'Intervals','/intervals',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `domainName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1566664240,0,0,0,'2',0,'/typo3conf/ext/masheuskirchen/Resources/Public/Images/logo.svg','935e30416239250a9e35029e7dcfe6304935fa44','d0693016953af49639ad25d6384b091142efde27','svg','image/svg+xml','logo.svg','f97b55ab95885df9797440f4f4b74b0a4911e120',2566,1566660861,1566660861),(2,0,1566664240,0,0,0,'2',0,'/typo3conf/ext/masheuskirchen/Resources/Public/Images/logo-inverted.svg','645bfe47f041589c49ec50dadf5dd5d10f93d840','d0693016953af49639ad25d6384b091142efde27','svg','image/svg+xml','logo-inverted.svg','6f9c74943d9b212d9e04c6cbe4ef3dd8a91f271e',2578,1566660861,1566660861),(3,0,1566664621,1566664621,0,1,'2',0,'/user_upload/smoke.jpg','f33a99b7d85551496e4cf568d81c48f102b7ac2d','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','smoke.jpg','e469d604219522150b438e908272e10308c85c31',4310396,1566664621,1566664621),(4,0,1569086104,0,0,0,'2',0,'/typo3conf/ext/bootstrap_package/Resources/Public/Images/BootstrapPackage.svg','53b7aaf32363271515e80e6c7b25293292185218','27aadec2782a38a84423e8476091a41d1dbdbc06','svg','image/svg+xml','BootstrapPackage.svg','432a35f0e0b0c1ec08dd5ad94b5903d93090403a',5508,1569085954,1569085954),(5,0,1569086104,0,0,0,'2',0,'/typo3conf/ext/bootstrap_package/Resources/Public/Images/BootstrapPackageInverted.svg','5b24af7f7f2c99d8a6188015bc8298396b952ab7','27aadec2782a38a84423e8476091a41d1dbdbc06','svg','image/svg+xml','BootstrapPackageInverted.svg','4725d40dd7fcd037fb7b12918b91d2c40c1acc3f',5444,1569085954,1569085954);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1566664240,1566664240,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,NULL,185,50,NULL,NULL,0),(2,0,1566664240,1566664240,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,2,NULL,185,50,NULL,NULL,0),(3,0,1566664621,1566664621,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,3,NULL,6000,4000,NULL,NULL,0),(4,0,1569086104,1569086103,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,4,NULL,244,68,NULL,NULL,0),(5,0,1569086104,1569086103,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,5,NULL,244,68,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1566664909,1566664240,0,1,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','f97b55ab95885df9797440f4f4b74b0a4911e120','Image.CropScaleMask','24d6eadfce',185,50),(2,1566664909,1566664240,0,2,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','6f9c74943d9b212d9e04c6cbe4ef3dd8a91f271e','Image.CropScaleMask','754d1ab10b',185,50),(3,1566664621,1566664621,1,3,'/_processed_/0/4/preview_smoke_ec0ddb48f0.jpg','preview_smoke_ec0ddb48f0.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','e469d604219522150b438e908272e10308c85c31','Image.Preview','ec0ddb48f0',64,43),(4,1566664622,1566664622,1,3,'/_processed_/0/4/csm_smoke_dd0b3fb5c3.jpg','csm_smoke_dd0b3fb5c3.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','dd0b3fb5c3',225,150),(5,1566664622,1566664622,1,3,'/_processed_/0/4/preview_smoke_1c4a552182.jpg','preview_smoke_1c4a552182.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','e469d604219522150b438e908272e10308c85c31','Image.Preview','1c4a552182',45,30),(6,1566664643,1566664643,1,3,'/_processed_/0/4/preview_smoke_2b60fcaf24.jpg','preview_smoke_2b60fcaf24.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:484:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','e2630715d1cfce929324ad68467a901ebc98d280','e469d604219522150b438e908272e10308c85c31','Image.Preview','2b60fcaf24',45,30),(7,1566664650,1566664650,1,3,'/_processed_/0/4/csm_smoke_bf4933c2c4.jpg','csm_smoke_bf4933c2c4.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','bf4933c2c4',1000,667),(8,1566664650,1566664650,1,3,'/_processed_/0/4/csm_smoke_d18789f5ad.jpg','csm_smoke_d18789f5ad.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','d18789f5ad',300,200),(9,1566664752,1566664752,1,3,'/_processed_/0/4/csm_smoke_570a0ea666.jpg','csm_smoke_570a0ea666.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:216.33333333333346;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:5333.333333333333;s:9:\"\0*\0height\";d:4000;}}','c36b5ea295c1dee2508f346ca7dafc77e32406d8','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','570a0ea666',200,150),(10,1566664753,1566664753,1,3,'/_processed_/0/4/csm_smoke_ab9f8dc99c.jpg','csm_smoke_ab9f8dc99c.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:1404;s:4:\"\0*\0y\";d:119.9400299850075;s:8:\"\0*\0width\";d:2640;s:9:\"\0*\0height\";d:3880.0599700149924;}}','6fedf1d3a476d5db41732636c5d1137efbb0a605','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','ab9f8dc99c',103,150),(11,1566664754,1566664754,1,3,'/_processed_/0/4/csm_smoke_d1c7483ce6.jpg','csm_smoke_d1c7483ce6.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:1404;s:4:\"\0*\0y\";d:119.9400299850075;s:8:\"\0*\0width\";d:2622;s:9:\"\0*\0height\";d:3880.0599700149924;}}','9e834ae5c6acb52d43403bcacf219cdd5be760da','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','d1c7483ce6',102,150),(12,1566664754,1566664754,1,3,'/_processed_/0/4/preview_smoke_5b4f938bde.jpg','preview_smoke_5b4f938bde.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:579:\"{\"default\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"height\":1,\"width\":1,\"x\":0,\"y\":0},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"height\":1,\"width\":0.889,\"x\":0.036,\"y\":0},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"height\":0.9700149925037481,\"width\":0.44,\"x\":0.234,\"y\":0.029985007496251874},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"height\":0.9700149925037481,\"width\":0.437,\"x\":0.234,\"y\":0.029985007496251874},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','48d897605fe6aa80aef4ac63d416a66e4fc78c44','e469d604219522150b438e908272e10308c85c31','Image.Preview','5b4f938bde',45,30),(13,1566664759,1566664759,1,3,'/_processed_/0/4/csm_smoke_2cbd1a8c64.jpg','csm_smoke_2cbd1a8c64.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1100;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','013cecd923f59a410611402187055a763c68a59b','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','2cbd1a8c64',1100,734),(14,1566664759,1566664759,1,3,'/_processed_/0/4/csm_smoke_8e5ca5f90c.jpg','csm_smoke_8e5ca5f90c.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:920;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','d6c532fac79f74ae7340dca7311482304d1103a0','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','8e5ca5f90c',920,614),(15,1566664761,1566664761,1,3,'/_processed_/0/4/csm_smoke_33791fb2f0.jpg','csm_smoke_33791fb2f0.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:680;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:215.99999999999997;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:5334;s:9:\"\0*\0height\";d:4000;}}','f3fa2851d1c1f376e2efe883fa07a0e24b356eb4','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','33791fb2f0',680,510),(16,1566664761,1566664761,1,3,'/_processed_/0/4/csm_smoke_baa1ebac78.jpg','csm_smoke_baa1ebac78.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:500;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:1404;s:4:\"\0*\0y\";d:119.9400299850075;s:8:\"\0*\0width\";d:2640;s:9:\"\0*\0height\";d:3880.0599700149924;}}','f5a08081a810fbb19d5a594699c7e6f9bb0ed795','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','baa1ebac78',500,735),(17,1566664762,1566664762,1,3,'/_processed_/0/4/csm_smoke_3c9910344f.jpg','csm_smoke_3c9910344f.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:374;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:1404;s:4:\"\0*\0y\";d:119.9400299850075;s:8:\"\0*\0width\";d:2622;s:9:\"\0*\0height\";d:3880.0599700149924;}}','d5a627b5459ecba5781ddf696108e22136783a65','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','3c9910344f',374,554),(18,1566664818,1566664818,1,3,'/_processed_/0/4/preview_smoke_02f2250385.jpg','preview_smoke_02f2250385.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:606:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.03605555555555558,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.234,\"y\":0.029985007496251874,\"width\":0.44,\"height\":0.9700149925037481},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.234,\"y\":0.029985007496251874,\"width\":0.437,\"height\":0.9700149925037481},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','44bd237212540c7d98eedb09aa04d6cc3760cac0','e469d604219522150b438e908272e10308c85c31','Image.Preview','02f2250385',45,30),(19,1566664821,1566664821,1,3,'/_processed_/0/4/csm_smoke_108f9fe009.jpg','csm_smoke_108f9fe009.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:680;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:216.33333333333346;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:5333.333333333333;s:9:\"\0*\0height\";d:4000;}}','c979f612f5c6ac89a4bab4f6a5df6e6ddb0031d3','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','108f9fe009',680,511),(20,1566664851,1566664851,1,3,'/_processed_/0/4/csm_smoke_ecdf327d67.jpg','csm_smoke_ecdf327d67.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";s:3:\"64c\";s:4:\"crop\";N;}','1721acbe390638a893310b0f6fe9845a9cd2b754','e469d604219522150b438e908272e10308c85c31','Image.CropScaleMask','ecdf327d67',64,64),(21,1569261567,1569086103,0,4,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','432a35f0e0b0c1ec08dd5ad94b5903d93090403a','Image.CropScaleMask','2b137c32d6',244,68),(22,1569261567,1569086103,0,5,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','4725d40dd7fcd037fb7b12918b91d2c40c1acc3f','Image.CropScaleMask','e5daece1c1',244,68);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1566664905,1566664643,1,1,0,0,0,NULL,'a:8:{s:5:\"title\";N;s:11:\"alternative\";N;s:4:\"link\";N;s:11:\"description\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',0,0,'',0,0,0,0,0,0,3,1,'tt_content','image',1,'sys_file','Smoke',NULL,'Smoke','','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"large\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"medium\":{\"cropArea\":{\"x\":0.03605555555555558,\"y\":0,\"width\":0.8888888888888888,\"height\":1},\"selectedRatio\":\"4:3\",\"focusArea\":null},\"small\":{\"cropArea\":{\"x\":0.234,\"y\":0.029985007496251874,\"width\":0.44,\"height\":0.9700149925037481},\"selectedRatio\":\"NaN\",\"focusArea\":null},\"extrasmall\":{\"cropArea\":{\"x\":0.234,\"y\":0.029985007496251874,\"width\":0.437,\"height\":0.9700149925037481},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1566659606,1566659606,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,0,1566659601,1,'BE',1,0,1,'pages','{\"uid\":1,\"pid\":0,\"tstamp\":1566659601,\"crdate\":1566659601,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Startseite\",\"slug\":\"\\/\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0}',0),(2,0,1566659603,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(3,0,1566659612,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"a:47:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:11:\\\"description\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0),(4,0,1566661198,1,'BE',1,0,1,'sys_template','{\"uid\":1,\"pid\":1,\"tstamp\":1566661198,\"crdate\":1566661198,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"NEW SITE\",\"sitetitle\":\"\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"nextLevel\":\"\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0),(5,0,1566661220,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"include_static_file\":null},\"newRecord\":{\"config\":\"\",\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:masheuskirchen\\/Configuration\\/TypoScript\"}}',0),(6,0,1566661385,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"backend_layout\":\"\",\"l10n_diffsource\":\"a:47:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:11:\\\"description\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"backend_layout\":\"pagets__simple\",\"l10n_diffsource\":\"a:49:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:8:\\\"nav_icon\\\";N;s:9:\\\"seo_title\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:11:\\\"description\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:9:\\\"thumbnail\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0),(7,0,1566664272,1,'BE',1,0,2,'pages','{\"uid\":2,\"pid\":1,\"tstamp\":1566664272,\"crdate\":1566664272,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Shishakarte\",\"slug\":\"\\/shishakarte\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(8,0,1566664286,1,'BE',1,0,3,'pages','{\"uid\":3,\"pid\":1,\"tstamp\":1566664286,\"crdate\":1566664286,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":512,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Location\",\"slug\":\"\\/location\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(9,0,1566664301,1,'BE',1,0,4,'pages','{\"uid\":4,\"pid\":1,\"tstamp\":1566664301,\"crdate\":1566664301,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":768,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Events\",\"slug\":\"\\/events\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(10,0,1566664315,1,'BE',1,0,5,'pages','{\"uid\":5,\"pid\":1,\"tstamp\":1566664315,\"crdate\":1566664315,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":1024,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Kontakt \\/ Anfahrt\",\"slug\":\"\\/kontakt-\\/-anfahrt\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(11,0,1566664321,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(12,0,1566664323,2,'BE',1,0,3,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(13,0,1566664325,2,'BE',1,0,4,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(14,0,1566664329,2,'BE',1,0,5,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(15,0,1566664643,1,'BE',1,0,1,'tt_content','{\"uid\":1,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1566664643,\"crdate\":1566664643,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"image\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":3,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"teaser\":null,\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":\"\",\"icon\":\"\",\"icon_set\":\"\",\"icon_file\":0,\"icon_position\":\"\",\"icon_size\":\"default\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":0,\"tx_bootstrappackage_carousel_item\":0,\"tx_bootstrappackage_accordion_item\":0,\"tx_bootstrappackage_icon_group_item\":0,\"tx_bootstrappackage_tab_item\":0,\"tx_bootstrappackage_timeline_item\":0,\"background_color_class\":\"none\",\"background_image\":0,\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\"}',0),(16,0,1566664643,1,'BE',1,0,1,'sys_file_reference','{\"uid\":1,\"pid\":1,\"tstamp\":1566664643,\"crdate\":1566664643,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"uid_local\":3,\"uid_foreign\":0,\"tablenames\":\"\",\"fieldname\":\"\",\"sorting_foreign\":0,\"table_local\":\"sys_file\",\"title\":\"Smoke\",\"description\":null,\"alternative\":\"Smoke\",\"link\":\"\",\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"large\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"medium\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"small\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"extrasmall\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"autoplay\":0}',0),(17,0,1566664750,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:30:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:5:\\\"image\\\";N;s:11:\\\"file_folder\\\";N;s:16:\\\"filelink_sorting\\\";N;s:9:\\\"imagecols\\\";N;s:10:\\\"image_zoom\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:22:\\\"background_color_class\\\";N;s:16:\\\"background_image\\\";N;s:24:\\\"background_image_options\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0),(18,0,1566664750,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"large\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"medium\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"small\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"extrasmall\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":1,\\\"x\\\":0,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"large\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":1,\\\"x\\\":0,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"medium\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":0.889,\\\"x\\\":0.036,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"4:3\\\",\\\"focusArea\\\":null},\\\"small\\\":{\\\"cropArea\\\":{\\\"height\\\":0.9700149925037481,\\\"width\\\":0.44,\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"extrasmall\\\":{\\\"cropArea\\\":{\\\"height\\\":0.9700149925037481,\\\"width\\\":0.437,\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"a:8:{s:5:\\\"title\\\";N;s:11:\\\"alternative\\\";N;s:4:\\\"link\\\";N;s:11:\\\"description\\\";N;s:4:\\\"crop\\\";N;s:9:\\\"uid_local\\\";N;s:6:\\\"hidden\\\";N;s:16:\\\"sys_language_uid\\\";N;}\"}}',0),(19,0,1566664817,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"imagecols\":2},\"newRecord\":{\"imagecols\":\"1\"}}',0),(20,0,1566664817,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":1,\\\"x\\\":0,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"large\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":1,\\\"x\\\":0,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"medium\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":0.889,\\\"x\\\":0.036,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"4:3\\\",\\\"focusArea\\\":null},\\\"small\\\":{\\\"cropArea\\\":{\\\"height\\\":0.9700149925037481,\\\"width\\\":0.44,\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"extrasmall\\\":{\\\"cropArea\\\":{\\\"height\\\":0.9700149925037481,\\\"width\\\":0.437,\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\"},\"newRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"large\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"medium\\\":{\\\"cropArea\\\":{\\\"x\\\":0.03605555555555558,\\\"y\\\":0,\\\"width\\\":0.8888888888888888,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"4:3\\\",\\\"focusArea\\\":null},\\\"small\\\":{\\\"cropArea\\\":{\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874,\\\"width\\\":0.44,\\\"height\\\":0.9700149925037481},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null},\\\"extrasmall\\\":{\\\"cropArea\\\":{\\\"x\\\":0.234,\\\"y\\\":0.029985007496251874,\\\"width\\\":0.437,\\\"height\\\":0.9700149925037481},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\"}}',0),(21,0,1566664855,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"colPos\":3,\"l18n_diffsource\":\"a:30:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:5:\\\"image\\\";N;s:11:\\\"file_folder\\\";N;s:16:\\\"filelink_sorting\\\";N;s:9:\\\"imagecols\\\";N;s:10:\\\"image_zoom\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:22:\\\"background_color_class\\\";N;s:16:\\\"background_image\\\";N;s:24:\\\"background_image_options\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"colPos\":\"8\",\"l18n_diffsource\":\"a:2:{s:6:\\\"colPos\\\";N;s:16:\\\"sys_language_uid\\\";N;}\"}}',0),(22,0,1566664855,3,'BE',1,0,1,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"[No title]\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0,\"_ORIG_pid\":null},\"newData\":{\"tstamp\":1566664855,\"pid\":1,\"sorting\":256}}',0),(23,0,1566664868,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"colPos\":8},\"newRecord\":{\"colPos\":\"3\"}}',0),(24,0,1566664868,3,'BE',1,0,1,'tt_content','{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"[No title]\",\"pid\":1,\"event_pid\":1,\"t3ver_state\":0,\"_ORIG_pid\":null},\"newData\":{\"tstamp\":1566664868,\"pid\":1,\"sorting\":256}}',0),(25,0,1566664905,4,'BE',1,0,1,'sys_file_reference',NULL,0),(26,0,1566664905,4,'BE',1,0,1,'tt_content',NULL,0),(27,0,1569087499,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:masheuskirchen\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:wdlspecials\\/Configuration\\/TypoScript\"}}',0),(28,0,1569087586,1,'BE',1,0,6,'pages','{\"uid\":6,\"pid\":0,\"tstamp\":1569087586,\"crdate\":1569087586,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":512,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Wdl_Specials\",\"slug\":\"\\/\",\"doktype\":254,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(29,0,1569087592,1,'BE',1,0,2,'tt_content','{\"uid\":2,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1569087592,\"crdate\":1569087592,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"list\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":\"\",\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"wdlspecials_wdlspecial\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"teaser\":null,\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":null,\"icon\":\"\",\"icon_set\":\"\",\"icon_file\":0,\"icon_position\":\"\",\"icon_size\":\"default\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":0,\"tx_bootstrappackage_carousel_item\":0,\"tx_bootstrappackage_accordion_item\":0,\"tx_bootstrappackage_icon_group_item\":0,\"tx_bootstrappackage_tab_item\":0,\"tx_bootstrappackage_timeline_item\":0,\"background_color_class\":\"none\",\"background_image\":0,\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\"}',0),(30,0,1569087595,2,'BE',1,0,6,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(31,0,1569087611,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"pages\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"pages\":\"6\",\"l18n_diffsource\":\"a:28:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:9:\\\"list_type\\\";N;s:5:\\\"pages\\\";N;s:9:\\\"recursive\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:22:\\\"background_color_class\\\";N;s:16:\\\"background_image\\\";N;s:24:\\\"background_image_options\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0),(32,0,1569087625,1,'BE',1,0,7,'pages','{\"uid\":7,\"pid\":6,\"tstamp\":1569087625,\"crdate\":1569087625,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Categories\",\"slug\":\"\\/categories\",\"doktype\":254,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(33,0,1569087639,1,'BE',1,0,8,'pages','{\"uid\":8,\"pid\":6,\"tstamp\":1569087639,\"crdate\":1569087639,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":512,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"Intervals\",\"slug\":\"\\/intervals\",\"doktype\":254,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"nav_icon\":0,\"thumbnail\":0}',0),(34,0,1569087642,2,'BE',1,0,7,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(35,0,1569087645,2,'BE',1,0,8,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0),(36,0,1569088279,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"uid\":1,\"pid\":6,\"tstamp\":1569088279,\"crdate\":1569088279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:9:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"name\":\"Test\",\"description\":\"Test Extension for Mash Euskirchen\",\"image\":0,\"special_start\":0,\"special_stop\":0,\"category\":0,\"intervals\":0}',0),(37,0,1569088323,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlcategories','{\"uid\":1,\"pid\":7,\"tstamp\":1569088323,\"crdate\":1569088323,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:5:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"category\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"category\":\"Wednesday Special\"}',0),(38,0,1569088345,1,'BE',1,0,2,'tx_wdlspecials_domain_model_wdlcategories','{\"uid\":2,\"pid\":7,\"tstamp\":1569088345,\"crdate\":1569088345,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:5:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"category\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"category\":\"Ladys Night\"}',0),(39,0,1569088363,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"l10n_diffsource\":\"a:9:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:10:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:8:\\\"category\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\"}}',0),(40,0,1569088456,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"category\":0},\"newRecord\":{\"category\":\"1\"}}',0),(41,0,1569088505,1,'BE',1,0,2,'sys_template','{\"uid\":2,\"pid\":6,\"tstamp\":1569088505,\"crdate\":1569088505,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"+ext\",\"sitetitle\":\"\",\"root\":0,\"clear\":0,\"include_static_file\":null,\"constants\":null,\"config\":null,\"nextLevel\":\"\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0),(42,0,1569088510,2,'BE',1,0,2,'sys_template','{\"oldRecord\":{\"config\":null},\"newRecord\":{\"config\":\"page.config.contentObjectExceptionHandler = 0\"}}',0),(43,0,1569088580,2,'BE',1,0,2,'sys_template','{\"oldRecord\":{\"include_static_file\":null},\"newRecord\":{\"include_static_file\":\"EXT:wdlspecials\\/Configuration\\/TypoScript\"}}',0),(44,0,1569088609,2,'BE',1,0,2,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:wdlspecials\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:wdlspecials\\/Configuration\\/TypoScript\"}}',0),(45,0,1569088713,2,'BE',1,0,2,'sys_template','{\"oldRecord\":{\"config\":\"page.config.contentObjectExceptionHandler = 0\",\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:wdlspecials\\/Configuration\\/TypoScript\"},\"newRecord\":{\"config\":\"\",\"include_static_file\":\"\"}}',0),(46,0,1569088728,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\"},\"newRecord\":{\"config\":\"page.config.contentObjectExceptionHandler = 0\"}}',0),(47,0,1569101834,4,'BE',1,0,2,'tt_content',NULL,0),(48,0,1569101866,4,'BE',1,0,2,'sys_template',NULL,0),(49,0,1569101886,1,'BE',1,0,3,'tt_content','{\"uid\":3,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1569101886,\"crdate\":1569101886,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"list\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":\"6\",\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"wdlspecials_wdlspecials\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"teaser\":null,\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":null,\"icon\":\"\",\"icon_set\":\"\",\"icon_file\":0,\"icon_position\":\"\",\"icon_size\":\"default\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":0,\"tx_bootstrappackage_carousel_item\":0,\"tx_bootstrappackage_accordion_item\":0,\"tx_bootstrappackage_icon_group_item\":0,\"tx_bootstrappackage_tab_item\":0,\"tx_bootstrappackage_timeline_item\":0,\"background_color_class\":\"none\",\"background_image\":0,\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\"}',0),(50,0,1569101934,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"uid\":1,\"pid\":6,\"tstamp\":1569101934,\"crdate\":1569101934,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:9:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"name\":\"\",\"description\":\"\",\"image\":0,\"special_start\":1569101829,\"special_stop\":1569101829,\"category\":0,\"intervals\":0}',0),(51,0,1569101959,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"name\":\"\",\"description\":\"\"},\"newRecord\":{\"name\":\"Test\",\"description\":\"Test special\"}}',0),(52,0,1569102010,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"special_stop\":1569101829},\"newRecord\":{\"special_stop\":2220}}',0),(53,0,1569102365,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"starttime\":0},\"newRecord\":{\"starttime\":1569109200}}',0),(54,0,1569102379,2,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"oldRecord\":{\"starttime\":1569109200},\"newRecord\":{\"starttime\":0}}',0),(55,0,1569150483,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlcategories','{\"uid\":1,\"pid\":6,\"tstamp\":1569150483,\"crdate\":1569150483,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:5:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"category\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"category\":\"Wednesday Special\"}',0),(56,0,1569150509,4,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlcategories',NULL,0),(57,0,1569150527,1,'BE',1,0,2,'tx_wdlspecials_domain_model_wdlcategories','{\"uid\":2,\"pid\":7,\"tstamp\":1569150527,\"crdate\":1569150527,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:5:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"category\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"category\":\"Wednesday Special\"}',0),(58,0,1569150548,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlintervals','{\"uid\":1,\"pid\":8,\"tstamp\":1569150548,\"crdate\":1569150548,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:5:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"intervals\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"intervals\":\"W\\u00f6chentlich\"}',0),(59,0,1569150580,1,'BE',1,0,1,'tx_wdlspecials_domain_model_wdlspecials','{\"uid\":1,\"pid\":6,\"tstamp\":1569150580,\"crdate\":1569150580,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:11:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:8:\\\"category\\\";N;s:9:\\\"intervals\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"name\":\"Test\",\"description\":\"Test Special f\\u00fcr Mash Euskirchen\",\"image\":0,\"special_start\":1569102803,\"special_stop\":1569102803,\"category\":2,\"intervals\":1}',0),(60,0,1569170390,1,'BE',1,0,2,'tx_wdlspecials_domain_model_wdlspecials','{\"uid\":2,\"pid\":6,\"tstamp\":1569170390,\"crdate\":1569170390,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"a:11:{s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:4:\\\"name\\\";N;s:11:\\\"description\\\";N;s:5:\\\"image\\\";N;s:13:\\\"special_start\\\";N;s:12:\\\"special_stop\\\";N;s:8:\\\"category\\\";N;s:9:\\\"intervals\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;}\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"name\":\"Test 2\",\"description\":\"Test 2\",\"image\":0,\"special_start\":1569152627,\"special_stop\":1569152627,\"category\":2,\"intervals\":1}',0),(61,0,1569173549,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:wdlspecials\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:wdlspecials\\/Configuration\\/TypoScript,EXT:test\\/Configuration\\/TypoScript\"}}',0),(62,0,1569173579,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:wdlspecials\\/Configuration\\/TypoScript,EXT:test\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:form\\/Configuration\\/TypoScript\\/,EXT:bootstrap_package\\/Configuration\\/TypoScript,EXT:wdlspecials\\/Configuration\\/TypoScript\"}}',0),(63,0,1569261530,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"constants\":null},\"newRecord\":{\"constants\":\"\\nplugin.tx_wdlspecials_wdlspecials.persistence.storagePid = 1\"}}',0),(64,0,1569261557,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"constants\":\"\\nplugin.tx_wdlspecials_wdlspecials.persistence.storagePid = 1\"},\"newRecord\":{\"constants\":\"\\nplugin.tx_wdlspecials_wdlspecials.persistence.storagePid = 6\"}}',0);
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT 0,
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hreflang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1566659154,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1566659601,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW_1','',0,'',0,NULL,NULL),(3,0,1566659603,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"2\";}',1,0,'','',0,'',0,NULL,NULL),(4,0,1566659612,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"3\";}',1,0,'','',0,'',0,NULL,NULL),(5,0,1566660027,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.19.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(6,0,1566661198,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW','',0,'',0,NULL,NULL),(7,0,1566661198,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.19.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(8,0,1566661220,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"5\";}',1,0,'','',0,'',0,NULL,NULL),(9,0,1566661385,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"6\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1566663552,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.19.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(11,0,1566664220,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1294587217: The page is not configured! [type=0][]. This means that there is no TypoScript object of type PAGE with typeNum=0 configured. | TYPO3\\CMS\\Core\\Error\\Http\\ServiceUnavailableException thrown in file /var/www/html/wwwroot/typo3/sysext/frontend/Classes/Controller/TypoScriptFrontendController.php in line 2602. Requested URL: http://127.0.0.1/',5,0,'172.19.0.1','',-1,0,'','',0,'',0,NULL,NULL),(12,0,1566664272,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:11:\"Shishakarte\";i:1;s:7:\"pages:2\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW_1','',0,'',0,NULL,NULL),(13,0,1566664286,1,1,3,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:8:\"Location\";i:1;s:7:\"pages:3\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW_1','',0,'',0,NULL,NULL),(14,0,1566664301,1,1,4,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:6:\"Events\";i:1;s:7:\"pages:4\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW_1','',0,'',0,NULL,NULL),(15,0,1566664315,1,1,5,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:17:\"Kontakt / Anfahrt\";i:1;s:7:\"pages:5\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW_1','',0,'',0,NULL,NULL),(16,0,1566664321,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:11:\"Shishakarte\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"11\";}',2,0,'','',0,'',0,NULL,NULL),(17,0,1566664323,1,2,3,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:8:\"Location\";i:1;s:7:\"pages:3\";s:7:\"history\";s:2:\"12\";}',3,0,'','',0,'',0,NULL,NULL),(18,0,1566664325,1,2,4,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:6:\"Events\";i:1;s:7:\"pages:4\";s:7:\"history\";s:2:\"13\";}',4,0,'','',0,'',0,NULL,NULL),(19,0,1566664329,1,2,5,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:17:\"Kontakt / Anfahrt\";i:1;s:7:\"pages:5\";s:7:\"history\";s:2:\"14\";}',5,0,'','',0,'',0,NULL,NULL),(20,0,1566664621,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'172.19.0.1','a:2:{i:0;s:9:\"smoke.jpg\";i:1;s:13:\"/user_upload/\";}',-1,0,'','',0,'',0,NULL,NULL),(21,0,1566664643,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW5d6166cae112b970922631','',0,'',0,NULL,NULL),(22,0,1566664643,1,1,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.19.0.1','a:4:{i:0;s:9:\"smoke.jpg\";i:1;s:20:\"sys_file_reference:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW5d6167adcd1fe294327445','',0,'',0,NULL,NULL),(23,0,1566664643,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(24,0,1566664750,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:2:\"17\";}',1,0,'','',0,'',0,NULL,NULL),(25,0,1566664750,1,2,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:9:\"smoke.jpg\";i:1;s:20:\"sys_file_reference:1\";s:7:\"history\";s:2:\"18\";}',1,0,'','',0,'',0,NULL,NULL),(26,0,1566664754,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.19.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(27,0,1566664817,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:2:\"19\";}',1,0,'','',0,'',0,NULL,NULL),(28,0,1566664817,1,2,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:9:\"smoke.jpg\";i:1;s:20:\"sys_file_reference:1\";s:7:\"history\";s:2:\"20\";}',1,0,'','',0,'',0,NULL,NULL),(29,0,1566664855,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:2:\"21\";}',1,0,'','',0,'',0,NULL,NULL),(30,0,1566664855,1,4,1,'tt_content',0,0,'Moved record \'%s\' (%s) on page \'%s\' (%s)',1,4,'172.19.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(31,0,1566664858,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.19.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(32,0,1566664868,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.19.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:2:\"23\";}',1,0,'','',0,'',0,NULL,NULL),(33,0,1566664868,1,4,1,'tt_content',0,0,'Moved record \'%s\' (%s) on page \'%s\' (%s)',1,4,'172.19.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(34,0,1566664905,1,3,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.19.0.1','a:4:{i:0;s:9:\"smoke.jpg\";i:1;s:20:\"sys_file_reference:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(35,0,1566664905,1,3,1,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.19.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(36,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','7e3c015817adc',1569086104.4398,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(37,0,1569086126,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(38,0,1569087499,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"27\";}',1,0,'','',0,'',0,NULL,NULL),(39,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','ebbd6b84adaa6',1569087560.8556,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(40,0,1569087586,1,1,6,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:12:\"Wdl_Specials\";i:1;s:7:\"pages:6\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW_1','',0,'',0,NULL,NULL),(41,0,1569087592,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW5d866048bda6d551296090','',0,'',0,NULL,NULL),(42,0,1569087595,1,2,6,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:12:\"Wdl_Specials\";i:1;s:7:\"pages:6\";s:7:\"history\";s:2:\"30\";}',6,0,'','',0,'',0,NULL,NULL),(43,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','66113d5585835',1569087601.397,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(44,0,1569087611,1,2,2,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";s:7:\"history\";s:2:\"31\";}',1,0,'','',0,'',0,NULL,NULL),(45,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','619f47ed3de06',1569087611.7804,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(46,0,1569087625,1,1,7,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:10:\"Categories\";i:1;s:7:\"pages:7\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW_1','',0,'',0,NULL,NULL),(47,0,1569087639,1,1,8,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:9:\"Intervals\";i:1;s:7:\"pages:8\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW_1','',0,'',0,NULL,NULL),(48,0,1569087642,1,2,7,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:10:\"Categories\";i:1;s:7:\"pages:7\";s:7:\"history\";s:2:\"34\";}',7,0,'','',0,'',0,NULL,NULL),(49,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','fbb76817fc3c9',1569087642.9904,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(50,0,1569087645,1,2,8,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:9:\"Intervals\";i:1;s:7:\"pages:8\";s:7:\"history\";s:2:\"35\";}',8,0,'','',0,'',0,NULL,NULL),(51,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','fafe752783724',1569087645.5918,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(52,0,1569087652,1,2,2,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(53,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','25d9d2e783cca',1569087653.2801,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(54,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','eb40a87a9fcf4',1569087666.0925,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(55,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','9f368b2e125db',1569087685.1949,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(56,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','836ae87298028',1569087688.2139,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(57,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','91e9912739e29',1569087689.4938,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(58,0,1569087698,1,1,0,'tx_wdlspecials_domain_model_wdlspecials',0,2,'SQL error: \'%s\' (%s)',1,12,'172.18.0.1','a:2:{i:0;s:113:\"Incorrect integer value: \'\' for column `typo3`.`tx_wdlspecials_domain_model_wdlspecials`.`special_start` at row 1\";i:1;s:65:\"tx_wdlspecials_domain_model_wdlspecials:NEW5d8660b20b5f0235280331\";}',-1,0,'','',0,'',0,NULL,NULL),(59,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','cb86d6b07353f',1569087699.2062,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(60,0,1569087764,1,1,0,'tx_wdlspecials_domain_model_wdlspecials',0,2,'SQL error: \'%s\' (%s)',1,12,'172.18.0.1','a:2:{i:0;s:113:\"Incorrect integer value: \'\' for column `typo3`.`tx_wdlspecials_domain_model_wdlspecials`.`special_start` at row 1\";i:1;s:65:\"tx_wdlspecials_domain_model_wdlspecials:NEW5d8660d3285e9009632363\";}',-1,0,'','',0,'',0,NULL,NULL),(61,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','ce42945a4654d',1569087946.4721,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(62,0,1569087961,1,1,0,'tx_wdlspecials_domain_model_wdlspecials',0,2,'SQL error: \'%s\' (%s)',1,12,'172.18.0.1','a:2:{i:0;s:113:\"Incorrect integer value: \'\' for column `typo3`.`tx_wdlspecials_domain_model_wdlspecials`.`special_start` at row 1\";i:1;s:65:\"tx_wdlspecials_domain_model_wdlspecials:NEW5d8661ca6907f962026701\";}',-1,0,'','',0,'',0,NULL,NULL),(63,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','95129e21e34ac',1569087961.4301,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(64,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','12a391fea6ecc',1569088146.0291,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(65,0,1569088279,1,1,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW5d866291f2593874061845','',0,'',0,NULL,NULL),(66,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','3127b28ec87ce',1569088279.7494,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(67,0,1569088323,1,1,1,'tx_wdlspecials_domain_model_wdlcategories',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:17:\"Wednesday Special\";i:1;s:43:\"tx_wdlspecials_domain_model_wdlcategories:1\";i:2;s:10:\"Categories\";i:3;i:7;}',7,0,'NEW5d86631f824c0545623261','',0,'',0,NULL,NULL),(68,0,1569088345,1,1,2,'tx_wdlspecials_domain_model_wdlcategories',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:11:\"Ladys Night\";i:1;s:43:\"tx_wdlspecials_domain_model_wdlcategories:2\";i:2;s:10:\"Categories\";i:3;i:7;}',7,0,'NEW5d86634f816aa121772667','',0,'',0,NULL,NULL),(69,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','de8d76d49010e',1569088353.8728,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(70,0,1569088363,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"39\";}',6,0,'','',0,'',0,NULL,NULL),(71,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','b2c43dc6f672b',1569088364.2251,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(72,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','44147aa1da1bf',1569088373.1784,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(73,0,1569088418,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(74,0,1569088419,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(75,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','46bc5a34f451c',1569088422.4852,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(76,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d9d2cf32674c0',1569088425.5332,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(77,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','8ca1e4cfef10a',1569088438.1264,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(78,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','85d44eb201a49',1569088448.7405,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(79,0,1569088456,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"40\";}',6,0,'','',0,'',0,NULL,NULL),(80,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','826237e8d9af8',1569088456.7939,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(81,0,1569088458,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(82,0,1569088459,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(83,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','e1532d63d68ba',1569088462.4623,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(84,0,1569088505,1,1,2,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW','',0,'',0,NULL,NULL),(85,0,1569088510,1,2,2,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";s:7:\"history\";s:2:\"42\";}',6,0,'','',0,'',0,NULL,NULL),(86,0,1569088516,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(87,0,1569088517,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(88,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','c14e5aa599076',1569088522.2755,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(89,0,1569088566,1,2,2,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";s:7:\"history\";i:0;}',6,0,'','',0,'',0,NULL,NULL),(90,0,1569088572,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(91,0,1569088573,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(92,0,1569088580,1,2,2,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";s:7:\"history\";s:2:\"43\";}',6,0,'','',0,'',0,NULL,NULL),(93,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','02577db9ac86f',1569088584.2938,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(94,0,1569088609,1,2,2,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";s:7:\"history\";s:2:\"44\";}',6,0,'','',0,'',0,NULL,NULL),(95,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','52692e56d8fdb',1569088613.385,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(96,0,1569088616,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(97,0,1569088617,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(98,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','5b941e4d944db',1569088619.4582,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(99,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d52498ee5d97f',1569088621.3304,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(100,0,1569088713,1,2,2,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";s:7:\"history\";s:2:\"45\";}',6,0,'','',0,'',0,NULL,NULL),(101,0,1569088728,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"46\";}',1,0,'','',0,'',0,NULL,NULL),(102,0,1569088732,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(103,0,1569088734,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(104,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','5ac8c31f3edf6',1569088736.4001,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(105,0,1569088735,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(106,0,1569089409,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(107,0,1569089410,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(108,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','6d1cfdbfd5ee6',1569089412.9769,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(109,0,1569089412,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(110,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','b4ed51a0316e4',1569089415.183,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(111,0,1569089414,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(112,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','df61015f9d350',1569089420.9126,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(113,0,1569089420,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(114,0,1569089977,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(115,0,1569089979,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(116,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','bf98b8b608d6d',1569089982.742,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(117,0,1569089982,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(118,0,1569090132,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(119,0,1569090133,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(120,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','fc24dcca71ee7',1569090135.5516,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(121,0,1569090135,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(122,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','cbdaa364d992e',1569090141.9874,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(123,0,1569090141,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1278450972: Class WdlSpecials\\Wdlspecials\\Controller\\WdlSpecialsController does not exist. Reflection failed. | TYPO3\\CMS\\Extbase\\Reflection\\Exception\\UnknownClassException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Reflection/ReflectionService.php in line 363. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(124,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','43505ca3c1c44',1569090242.3978,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(125,0,1569099074,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(126,0,1569100734,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(127,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','f0e87f3a9bd65',1569100737.8821,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(128,0,1569100737,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1316104317: The default controller for extension \"Wdlspecials\" and plugin \"Wdlspecial\" can not be determined. Please check for TYPO3\\CMS\\Extbase\\Utility\\ExtensionUtility::configurePlugin() in your ext_localconf.php. | TYPO3\\CMS\\Extbase\\Mvc\\Exception thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Mvc/Web/RequestBuilder.php in line 223. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(129,0,1569101715,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(130,0,1569101716,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(131,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','cb4bf421b7d8b',1569101720.0657,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(132,0,1569101719,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1540246570: No Content Object definition found at TypoScript object path \"tt_content.list.20.wdlspecials_wdlspecial\" | TYPO3Fluid\\Fluid\\Core\\ViewHelper\\Exception thrown in file /var/www/html/wwwroot/typo3/sysext/fluid/Classes/ViewHelpers/CObjectViewHelper.php in line 160. Requested URL: http://127.0.0.1/',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(133,0,1569101828,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(134,0,1569101829,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(135,0,1569101834,1,3,2,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(136,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','77f6fff6816c6',1569101839.4413,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(137,0,1569101866,1,3,2,'sys_template',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.1','a:4:{i:0;s:4:\"+ext\";i:1;s:14:\"sys_template:2\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'','',0,'',0,NULL,NULL),(138,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','06917636363f2',1569101878.4222,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(139,0,1569101886,1,1,3,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:3\";i:2;s:10:\"Startseite\";i:3;i:1;}',1,0,'NEW5d86983656437091453150','',0,'',0,NULL,NULL),(140,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','3e0da993bd3a1',1569101886.6918,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(141,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d83b954aeaf4f',1569101907.4973,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(142,0,1569101929,1,1,0,'tx_wdlspecials_domain_model_wdlspecials',0,2,'SQL error: \'%s\' (%s)',1,12,'172.18.0.1','a:2:{i:0;s:113:\"Incorrect integer value: \'\' for column `typo3`.`tx_wdlspecials_domain_model_wdlspecials`.`special_start` at row 1\";i:1;s:65:\"tx_wdlspecials_domain_model_wdlspecials:NEW5d8698536e29d169838847\";}',-1,0,'','',0,'',0,NULL,NULL),(143,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','c0cc7a27d1f0e',1569101930.0228,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(144,0,1569101934,1,1,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW5d869869f130c800866982','',0,'',0,NULL,NULL),(145,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','9a372a323e417',1569101934.9713,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(146,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','5eb890afff23f',1569101940.2262,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(147,0,1569101959,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"51\";}',6,0,'','',0,'',0,NULL,NULL),(148,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','0b31a9b88f1bd',1569101959.8976,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(149,0,1569101967,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(150,0,1569101969,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(151,0,1569101977,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";i:0;}',6,0,'','',0,'',0,NULL,NULL),(152,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','51d9a17a67725',1569101977.8212,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(153,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','993ded6fddd06',1569101982.1203,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(154,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','89b9db6e941b2',1569101985.0655,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(155,0,1569101984,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1313855175: The action \"new\" (controller \"WdlSpecials\") is not allowed by this plugin. Please check TYPO3\\CMS\\Extbase\\Utility\\ExtensionUtility::configurePlugin() in your ext_localconf.php. | TYPO3\\CMS\\Extbase\\Mvc\\Exception\\InvalidActionNameException thrown in file /var/www/html/wwwroot/typo3/sysext/extbase/Classes/Mvc/Web/RequestBuilder.php in line 275. Requested URL: http://127.0.0.1/index.php?id=1&tx_wdlspecials_wdlspecials%%5Baction%%5D=new&tx_wdlspecials_wdlspecials%%5Bcontroller%%5D=WdlSpecials&cHash=00eb359e12b3c8778cc1b70a761feb14',5,0,'172.18.0.1','',-1,0,'','',0,'',0,NULL,NULL),(156,0,1569102010,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"52\";}',6,0,'','',0,'',0,NULL,NULL),(157,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','dc4356f1aa70c',1569102010.7637,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(158,0,1569102365,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"53\";}',6,0,'','',0,'',0,NULL,NULL),(159,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','164cbc36960f5',1569102375.5388,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(160,0,1569102379,1,2,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";s:7:\"history\";s:2:\"54\";}',6,0,'','',0,'',0,NULL,NULL),(161,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','3d6a8d0d7e52a',1569102379.8662,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(162,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','1b4237c7513f2',1569102673.1763,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(163,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','63ac1ef106ed0',1569102811.3634,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(164,0,1569150422,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(165,0,1569150483,1,1,1,'tx_wdlspecials_domain_model_wdlcategories',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:17:\"Wednesday Special\";i:1;s:43:\"tx_wdlspecials_domain_model_wdlcategories:1\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW5d8756023a5f2362372541','',0,'',0,NULL,NULL),(166,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','c759442c8e5e0',1569150490.8519,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(167,0,1569150509,1,3,1,'tx_wdlspecials_domain_model_wdlcategories',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.1','a:4:{i:0;s:17:\"Wednesday Special\";i:1;s:43:\"tx_wdlspecials_domain_model_wdlcategories:1\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'','',0,'',0,NULL,NULL),(168,0,1569150527,1,1,2,'tx_wdlspecials_domain_model_wdlcategories',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:17:\"Wednesday Special\";i:1;s:43:\"tx_wdlspecials_domain_model_wdlcategories:2\";i:2;s:10:\"Categories\";i:3;i:7;}',7,0,'NEW5d8756344108c604485326','',0,'',0,NULL,NULL),(169,0,1569150548,1,1,1,'tx_wdlspecials_domain_model_wdlintervals',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:12:\"W√∂chentlich\";i:1;s:42:\"tx_wdlspecials_domain_model_wdlintervals:1\";i:2;s:9:\"Intervals\";i:3;i:8;}',8,0,'NEW5d8756476bf57436747391','',0,'',0,NULL,NULL),(170,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','47f9b62db9f03',1569150556.8761,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(171,0,1569150580,1,1,1,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:4:\"Test\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:1\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW5d87565ccbf4e909418739','',0,'',0,NULL,NULL),(172,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','702c5df54992c',1569150580.8688,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(173,0,1569150590,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(174,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','10e35ce6a6597',1569150593.2237,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(175,0,1569150799,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(176,0,1569150800,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(177,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','a0e91bc1e9719',1569150803.1174,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(178,0,1569152448,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(179,0,1569152450,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(180,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','42607e5a861ff',1569152469.3976,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(181,0,1569152625,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(182,0,1569152626,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(183,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d1ccaa53c17be',1569152630.1869,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(184,0,1569170250,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(185,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','5907657a951be',1569170353.4001,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(186,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','a1cbf7b08ffde',1569170378.7019,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(187,0,1569170390,1,1,2,'tx_wdlspecials_domain_model_wdlspecials',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.1','a:4:{i:0;s:6:\"Test 2\";i:1;s:41:\"tx_wdlspecials_domain_model_wdlspecials:2\";i:2;s:12:\"Wdl_Specials\";i:3;i:6;}',6,0,'NEW5d87a3caa1779951013367','',0,'',0,NULL,NULL),(188,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','ccfa07f647588',1569170390.9349,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(189,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d5d8942509a86',1569170393.4168,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(190,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d40e967abf378',1569170395.1177,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(191,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','1cb8782d31cc1',1569171955.7793,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(192,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','4ae6ffb65f83c',1569171957.1822,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(193,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','c6ddc4e7fd84d',1569171958.3153,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(194,0,1569171971,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(195,0,1569171973,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(196,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d58617473987e',1569171975.9587,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(197,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','b176c54c42c03',1569171977.8045,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(198,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','0baf0b9c3e144',1569172045.0453,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(199,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','c5b6ac42c005e',1569172046.9285,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(200,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d24064f04bee9',1569172087.5668,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(201,0,1569172223,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(202,0,1569172225,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(203,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','3c181e6ad11c9',1569172228.0894,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(204,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','b861df32a939d',1569172319.1543,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(205,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','859e6b06f34f0',1569172320.4276,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(206,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','9b0737c0f9f43',1569172321.3309,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(207,0,1569172324,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(208,0,1569172325,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(209,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','964428b640cef',1569172327.8672,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(210,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','df51e0c5a308d',1569172329.7494,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(211,0,1569173288,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(212,0,1569173289,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(213,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','05c2a6f35f3cb',1569173292.3369,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(214,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','92bef696b8279',1569173298.3552,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(215,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','e6faa1959cf1b',1569173407.9918,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(216,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','e85571a355b20',1569173421.6721,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(217,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','207b5a83d101e',1569173497.0743,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(218,0,1569173514,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(219,0,1569173516,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(220,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','ba62d292143ae',1569173524.3596,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(221,0,1569173549,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"61\";}',1,0,'','',0,'',0,NULL,NULL),(222,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','f3caa0b438f69',1569173557.7095,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(223,0,1569173579,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"62\";}',1,0,'','',0,'',0,NULL,NULL),(224,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','2c82721cf5986',1569174485.2527,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(225,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','6487f1ca9d539',1569174509.6497,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(226,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','187e106d2598e',1569174514.1438,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(227,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','802bff9264a83',1569174522.1344,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(228,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','d3ea9796dde4c',1569174555.9067,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(229,0,1569261434,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.1','a:1:{i:0;s:5:\"typo3\";}',-1,-99,'','',0,'',0,NULL,NULL),(230,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','606e7e9ee641d',1569261460.9673,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(231,0,1569261530,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"63\";}',1,0,'','',0,'',0,NULL,NULL),(232,0,1569261530,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(233,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','ffab21df3b832',1569261535.7063,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.',''),(234,0,1569261557,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.1','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"64\";}',1,0,'','',0,'',0,NULL,NULL),(235,0,1569261557,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(236,0,1569261563,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(237,0,1569261564,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,0,'172.18.0.1','a:2:{i:0;s:5:\"typo3\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(238,0,0,0,0,0,'',0,0,NULL,0,0,'',NULL,-1,0,'','72513232c8ff5',1569261567.0717,'TYPO3.CMS.Core.Resource.ResourceStorage',3,'Failed initializing storage [1] \"fileadmin/ (auto-created)\", error: Base path \"/var/www/html/wwwroot/fileadmin/\" does not exist or is no directory.','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('5466a62d7dac2c88afbb1c572e2744b0','sys_file_reference',1,'uid_local','','','',0,1,0,'sys_file',3,''),('5bc3b2f97adba09d75e55e13444970eb','tx_wdlspecials_domain_model_wdlspecials',1,'intervals','','','',0,0,0,'tx_wdlspecials_domain_model_wdlintervals',1,''),('6515b69cdff8915fef6e74727bcff8e1','tt_content',2,'pages','','','',0,1,0,'pages',6,''),('7a66b3840db495c00630b24088cf396c','sys_file',3,'metadata','','','',0,0,0,'sys_file_metadata',3,''),('866816d395e01c9bfd44fac9fbf15283','tx_wdlspecials_domain_model_wdlspecials',1,'category','','','',0,0,0,'tx_wdlspecials_domain_model_wdlcategories',2,''),('893e20b39f66903f90c681e8c41b6297','sys_file',3,'storage','','','',0,0,0,'sys_file_storage',1,''),('8cd2d26c124083cb7ac14b28c0f41653','tt_content',3,'pages','','','',0,0,0,'pages',6,''),('ebe19b0decb9def95e0f1d9419f78f4c','tx_wdlspecials_domain_model_wdlspecials',2,'category','','','',0,0,0,'tx_wdlspecials_domain_model_wdlcategories',2,''),('f1a1c4fddb7781cdf1bbec82a592ccaa','tx_wdlspecials_domain_model_wdlspecials',2,'intervals','','','',0,0,0,'tx_wdlspecials_domain_model_wdlintervals',1,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SeparateSysHistoryFromSysLogUpdate','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(31,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(32,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(33,'core','formProtectionSessionToken:1','s:64:\"22a740530c92cde4ed7cdc3a2995abfd3790c096a962b48612dccac2a2def203\";'),(34,'extensionDataImport','typo3conf/ext/bootstrap_package/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3conf/ext/masheuskirchen/ext_tables_static+adt.sql','s:32:\"cd57437a5f633b70b114c94c126c4e1f\";'),(36,'extensionDataImport','typo3conf/ext/extension_builder/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/wdlspecials/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3conf/ext/test/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextLevel` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1569261557,1566661198,1,0,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'NEW SITE','',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:form/Configuration/TypoScript/,EXT:bootstrap_package/Configuration/TypoScript,EXT:wdlspecials/Configuration/TypoScript','\nplugin.tx_wdlspecials_wdlspecials.persistence.storagePid = 6','page.config.contentObjectExceptionHandler = 0','','',0,0,0),(2,6,1569101866,1569088505,1,1,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'+ext','',0,0,'',NULL,'','','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT 0,
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  `teaser` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `readmore_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quote_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `quote_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `panel_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `file_folder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_set` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_size` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `background_color_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',1,1566664905,1566664643,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'a:2:{s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;}',0,0,'',0,0,0,0,0,0,'image','','',NULL,0,0,0,0,1,0,0,1,0,0,0,'default',0,0,0,'','',NULL,NULL,3,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,NULL,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>'),(2,'',1,1569101834,1569087592,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'a:28:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:22:\"background_color_class\";N;s:16:\"background_image\";N;s:24:\"background_image_options\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,'6',0,'','',0,'0','wdlspecials_wdlspecial',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,NULL,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>'),(3,'',1,1569101886,1569101886,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,'6',0,'','',0,'0','wdlspecials_wdlspecials',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,NULL,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','',0,0,0,0,0,0,'none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_accordion_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_accordion_item`
--

LOCK TABLES `tx_bootstrappackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_card_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_card_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_card_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` int(11) NOT NULL DEFAULT 0,
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_icon` int(10) unsigned DEFAULT 0,
  `link_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_card_group_item`
--

LOCK TABLES `tx_bootstrappackage_card_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_carousel_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_layout` smallint(5) unsigned NOT NULL DEFAULT 1,
  `header_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subheader_layout` smallint(5) unsigned NOT NULL DEFAULT 2,
  `subheader_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` int(10) unsigned DEFAULT 0,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_carousel_item`
--

LOCK TABLES `tx_bootstrappackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_icon_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_icon_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_icon_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_icon_group_item`
--

LOCK TABLES `tx_bootstrappackage_icon_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_tab_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_tab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_tab_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_tab_item`
--

LOCK TABLES `tx_bootstrappackage_tab_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_timeline_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_timeline_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_timeline_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tt_content` int(10) unsigned DEFAULT 0,
  `date` date DEFAULT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_file` int(10) unsigned DEFAULT 0,
  `image` int(10) unsigned DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_timeline_item`
--

LOCK TABLES `tx_bootstrappackage_timeline_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_test_domain_model_test`
--

DROP TABLE IF EXISTS `tx_test_domain_model_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_test_domain_model_test` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_test_domain_model_test`
--

LOCK TABLES `tx_test_domain_model_test` WRITE;
/*!40000 ALTER TABLE `tx_test_domain_model_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_test_domain_model_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_wdlspecials_domain_model_wdlcategories`
--

DROP TABLE IF EXISTS `tx_wdlspecials_domain_model_wdlcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_wdlspecials_domain_model_wdlcategories` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_wdlspecials_domain_model_wdlcategories`
--

LOCK TABLES `tx_wdlspecials_domain_model_wdlcategories` WRITE;
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlcategories` DISABLE KEYS */;
INSERT INTO `tx_wdlspecials_domain_model_wdlcategories` VALUES (1,6,1569150509,1569150483,1,1,0,0,0,0,0,NULL,'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:8:\"category\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'Wednesday Special'),(2,7,1569150527,1569150527,1,0,0,0,0,0,0,NULL,'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:8:\"category\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'Wednesday Special');
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_wdlspecials_domain_model_wdlintervals`
--

DROP TABLE IF EXISTS `tx_wdlspecials_domain_model_wdlintervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_wdlspecials_domain_model_wdlintervals` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `intervals` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_wdlspecials_domain_model_wdlintervals`
--

LOCK TABLES `tx_wdlspecials_domain_model_wdlintervals` WRITE;
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlintervals` DISABLE KEYS */;
INSERT INTO `tx_wdlspecials_domain_model_wdlintervals` VALUES (1,8,1569150548,1569150548,1,0,0,0,0,0,0,NULL,'a:5:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"intervals\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'W√∂chentlich');
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlintervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_wdlspecials_domain_model_wdlspecials`
--

DROP TABLE IF EXISTS `tx_wdlspecials_domain_model_wdlspecials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_wdlspecials_domain_model_wdlspecials` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `special_start` int(11) NOT NULL DEFAULT 0,
  `special_stop` int(11) NOT NULL DEFAULT 0,
  `category` int(10) unsigned DEFAULT 0,
  `intervals` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_wdlspecials_domain_model_wdlspecials`
--

LOCK TABLES `tx_wdlspecials_domain_model_wdlspecials` WRITE;
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlspecials` DISABLE KEYS */;
INSERT INTO `tx_wdlspecials_domain_model_wdlspecials` VALUES (1,6,1569150580,1569150580,1,0,0,0,0,0,0,NULL,'a:11:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:5:\"image\";N;s:13:\"special_start\";N;s:12:\"special_stop\";N;s:8:\"category\";N;s:9:\"intervals\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'Test','Test Special f√ºr Mash Euskirchen',0,1569102803,1569102803,2,1),(2,6,1569170390,1569170390,1,0,0,0,0,0,0,NULL,'a:11:{s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:4:\"name\";N;s:11:\"description\";N;s:5:\"image\";N;s:13:\"special_start\";N;s:12:\"special_stop\";N;s:8:\"category\";N;s:9:\"intervals\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'Test 2','Test 2',0,1569152627,1569152627,2,1);
/*!40000 ALTER TABLE `tx_wdlspecials_domain_model_wdlspecials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 22:02:16
