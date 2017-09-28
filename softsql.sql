-- Softaculous SQL Dump
-- http://www.softaculous.com
--
-- Host: localhost
-- Generation Time: September 28, 2017, 8:10 am
-- Server version: 5.6.36
-- PHP Version: 5.6.30

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mathdecr_hizup27`
--

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Admins`
--

CREATE TABLE `ph7nd_Admins` (
  `profileId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `timeZone` varchar(6) NOT NULL DEFAULT '-6',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `ban` enum('0','1') DEFAULT '0',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `hashValidation` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Admins`
--

INSERT INTO `ph7nd_Admins` VALUES
(1, 'prapamaster', '$2y$12$mz/VtqtqNqvmn6v12AC1xOWAssPdRC1RZDXp4ghNnSzlBXME54XG.', 'admin@matrimonial.mathdecrypter.com', 'System', 'Administrator', 'male', 'en_US', '-6', '2017-09-18 21:54:31', '2017-09-28 00:36:40', NULL, '0', '108.51.109.7', '0', NULL, '1f5fd12a650bb30fb8aa8fadae680d59315dcc71');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AdminsAttemptsLogin`
--

CREATE TABLE `ph7nd_AdminsAttemptsLogin` (
  `attemptsId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  PRIMARY KEY (`attemptsId`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_AdminsAttemptsLogin`
--

INSERT INTO `ph7nd_AdminsAttemptsLogin` VALUES
(1, '173.79.165.88', 2, '2017-09-20 23:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AdminsLogLogin`
--

CREATE TABLE `ph7nd_AdminsLogLogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_AdminsLogLogin`
--

INSERT INTO `ph7nd_AdminsLogLogin` VALUES
(16, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 18:47:48'),
(17, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 20:43:51'),
(18, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 22:31:20'),
(19, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 08:07:15'),
(20, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', 'TupiVikiPa51$%*2', 'Failed! Incorrect Email, Username or Password', '173.73.172.204', '2017-09-27 11:05:10'),
(21, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 11:09:12'),
(22, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 14:32:16'),
(23, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 20:54:33'),
(24, 'admin@matrimonial.mathdecrypter.com', 'prapamaster', '*****', 'Logged in!', '173.73.172.204', '2017-09-28 00:36:40');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AdminsLogSess`
--

CREATE TABLE `ph7nd_AdminsLogSess` (
  `profileId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Ads`
--

CREATE TABLE `ph7nd_Ads` (
  `adsId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) unsigned DEFAULT NULL,
  `height` smallint(3) unsigned DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`adsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AdsAffiliates`
--

CREATE TABLE `ph7nd_AdsAffiliates` (
  `adsId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  `width` smallint(3) unsigned DEFAULT NULL,
  `height` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`adsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Affiliates`
--

CREATE TABLE `ph7nd_Affiliates` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `sex` enum('male','female') NOT NULL DEFAULT 'male',
  `birthDate` date DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `totalPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPayment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lastPaymentDate` datetime DEFAULT NULL,
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `refer` int(10) unsigned DEFAULT '0',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ban` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `bankAccount` (`bankAccount`),
  KEY `birthDate` (`birthDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AffiliatesAttemptsLogin`
--

CREATE TABLE `ph7nd_AffiliatesAttemptsLogin` (
  `attemptsId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  PRIMARY KEY (`attemptsId`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AffiliatesInfo`
--

CREATE TABLE `ph7nd_AffiliatesInfo` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `middleName` varchar(50) DEFAULT NULL,
  `businessName` varchar(100) DEFAULT NULL,
  `taxId` varchar(40) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `description` text,
  `website` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AffiliatesLogLogin`
--

CREATE TABLE `ph7nd_AffiliatesLogLogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AffiliatesLogSess`
--

CREATE TABLE `ph7nd_AffiliatesLogSess` (
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AlbumsPictures`
--

CREATE TABLE `ph7nd_AlbumsPictures` (
  `albumId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_AlbumsPictures`
--

INSERT INTO `ph7nd_AlbumsPictures` VALUES
(1, 18, 'Mapillai Album', '7-thumb.jpg', '1', 0, 0, 0, '', '2017-09-18 22:34:18', NULL),
(2, 19, 'Ponnu Photo Album', '7-thumb.jpg', '1', 1, 4.7, 3, 'Ponnu Photo Album', '2017-09-18 22:45:45', NULL),
(3, 18, 'Mapillai Photo Album', '1-thumb.jpg', '1', 0, 0, 1, '', '2017-09-18 22:48:08', NULL),
(4, 20, 'Mapillai2', '5-thumb.jpg', '1', 0, 0, 3, '', '2017-09-19 22:15:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AlbumsVideos`
--

CREATE TABLE `ph7nd_AlbumsVideos` (
  `albumId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL,
  `thumb` char(11) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_AlbumsVideos`
--

INSERT INTO `ph7nd_AlbumsVideos` VALUES
(1, 18, 'PowerVideoMapillai', '2-thumb.jpg', '1', 0, 0, 0, 'PowerVideoMapillai', '2017-09-24 17:47:16', NULL),
(2, 18, 'Mappu Video Album', '2-thumb.jpg', '0', 0, 0, 0, '', '2017-09-27 17:44:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_AnalyticsApi`
--

CREATE TABLE `ph7nd_AnalyticsApi` (
  `analyticsId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `code` text,
  `active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`analyticsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_AnalyticsApi`
--

INSERT INTO `ph7nd_AnalyticsApi` VALUES
(1, 'Analytics Code', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_BlockIp`
--

CREATE TABLE `ph7nd_BlockIp` (
  `ipId` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL,
  `expiration` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ip`),
  KEY `ipId` (`ipId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Blogs`
--

CREATE TABLE `ph7nd_Blogs` (
  `blogId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`blogId`),
  UNIQUE KEY `postId` (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_BlogsCategories`
--

CREATE TABLE `ph7nd_BlogsCategories` (
  `categoryId` smallint(4) unsigned NOT NULL,
  `blogId` mediumint(10) unsigned NOT NULL,
  KEY `categoryId` (`categoryId`),
  KEY `blogId` (`blogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_BlogsDataCategories`
--

CREATE TABLE `ph7nd_BlogsDataCategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_BlogsDataCategories`
--

INSERT INTO `ph7nd_BlogsDataCategories` VALUES
(1, 'Affiliate'),
(2, 'Business'),
(3, 'Company'),
(4, 'Dating'),
(5, 'Education'),
(6, 'Family'),
(7, 'Food'),
(8, 'Game'),
(9, 'Health'),
(10, 'Hobby'),
(11, 'Movie'),
(12, 'Music'),
(13, 'News'),
(14, 'Programming'),
(15, 'Recreation'),
(16, 'Shopping'),
(17, 'Society'),
(18, 'Sports'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_BottomMenus`
--

CREATE TABLE `ph7nd_BottomMenus` (
  `menuId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) unsigned DEFAULT NULL,
  `grandParentMenu` smallint(4) unsigned DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsBlog`
--

CREATE TABLE `ph7nd_CommentsBlog` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` mediumint(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsGame`
--

CREATE TABLE `ph7nd_CommentsGame` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsNote`
--

CREATE TABLE `ph7nd_CommentsNote` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsPicture`
--

CREATE TABLE `ph7nd_CommentsPicture` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsProfile`
--

CREATE TABLE `ph7nd_CommentsProfile` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CommentsVideo`
--

CREATE TABLE `ph7nd_CommentsVideo` (
  `commentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`commentId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_CustomCode`
--

CREATE TABLE `ph7nd_CustomCode` (
  `code` text,
  `codeType` enum('css','js') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_CustomCode`
--

INSERT INTO `ph7nd_CustomCode` VALUES
('/* Your custom CSS code here */\r\n', 'css'),
('/* Your custom JS code here */\r\n', 'js');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Forums`
--

CREATE TABLE `ph7nd_Forums` (
  `forumId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT 'New forum',
  `description` varchar(255) NOT NULL,
  `categoryId` smallint(4) unsigned DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`forumId`),
  KEY `categoryId` (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Forums`
--

INSERT INTO `ph7nd_Forums` VALUES
(4, 'Spread the word about our Kalyana process', 'Spread the word about our Kalyana process', 4, '2017-09-27 10:20:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_ForumsCategories`
--

CREATE TABLE `ph7nd_ForumsCategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_ForumsCategories`
--

INSERT INTO `ph7nd_ForumsCategories` VALUES
(1, 'General'),
(4, 'Suggestions for improvement in Kalyana connection process');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_ForumsMessages`
--

CREATE TABLE `ph7nd_ForumsMessages` (
  `messageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicId` int(10) unsigned NOT NULL,
  `profileId` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  KEY `topicId` (`topicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_ForumsTopics`
--

CREATE TABLE `ph7nd_ForumsTopics` (
  `topicId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forumId` mediumint(10) unsigned DEFAULT NULL,
  `profileId` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topicId`),
  KEY `forumId` (`forumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Games`
--

CREATE TABLE `ph7nd_Games` (
  `gameId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT '',
  `title` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT '',
  `thumb` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `categoryId` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `addedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `downloads` int(9) unsigned DEFAULT '0',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gameId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Games`
--

INSERT INTO `ph7nd_Games` VALUES
(1, '', 'America Fights Back', 'Think you can do better in the war? Well heres your chance.Use your mouse and click to fire your guns! Watch your energy level to make sure you dont die. There are no second chances or extra', 'America Fights Back', 'america_strikes_back.png', 'america_strikes_back.swf', 2, '2017-09-26 12:08:23', 0, 0, 0, 1),
(2, '', 'Altex', 'Be fast and shoot them all!', 'Altex', 'altex.png', 'altex.swf', 2, '2017-09-18 16:54:31', 0, 0, 0, 0),
(3, '', 'Alpine Escape', 'Catch the brides falling from the airship but don''t shoot it down - shoot down the fighter plane in', 'Alpine Escape', 'alpine_escape.png', 'alpine_escape.swf', 2, '2017-09-18 16:54:31', 0, 0, 0, 0),
(4, '', 'Flashblox', 'Tetris clone', '', 'tetris_clone.png', 'tetris_clone.swf', 1, '2017-09-26 12:07:30', 0, 0, 0, 1),
(5, '', 'Bell Boys', 'Help the bell boy to deliver their orders to the right floor by controling the elevators', '', 'bell_boys.png', 'bell_boys.swf', 1, '2017-09-18 16:54:31', 0, 0, 0, 0),
(6, '', 'Frogger', 'This is a real classic simple and addictive. Just help the frog to cross the street with heavy traffic', '', 'frogger.png', 'frogger.swf', 1, '2017-09-18 16:54:31', 0, 0, 0, 0),
(7, '', 'Blackjack', 'This is a nice Blackjack games that allow playing upto 5 hands at once', '', 'blackjack.png', 'blackjack.swf', 3, '2017-09-25 09:22:17', 1, 0, 0, 1),
(8, '', 'The Blackjack Casino', 'One of the most popular Casino games', '', 'blackjack_casino.png', 'blackjack_casino.swf', 3, '2017-09-18 16:54:31', 0, 0, 0, 0),
(9, '', 'Casino - Let It Ride', 'Click on the chip amount you wish to bet. Press DEAL button to get cards. Determine if your hand is worth keeping or dropping one of your bets.', '', 'let_ride.png', 'let_ride.swf', 3, '2017-09-18 16:54:31', 0, 0, 0, 0),
(10, '', 'Boeing', 'NA', 'Boeing', 'boeing.jpg', 'boeing.swf', 4, '2017-09-18 16:54:31', 0, 0, 0, 0),
(11, '', 'Book', 'NA', 'Book', 'book.jpg', 'book.swf', 4, '2017-09-18 16:54:31', 0, 0, 0, 0),
(12, '', 'Burj_al_Arab', 'NA', 'Burj_al_Arab', 'burj_al_arab.jpg', 'burj_al_arab.swf', 4, '2017-09-18 16:54:31', 0, 0, 0, 0),
(13, '', 'Asteroid Field+', 'Hit as many asteriods as possible in the asteroid field', '', 'asteroid.png', 'asteroid.swf', 5, '2017-09-18 16:54:31', 0, 0, 0, 0),
(14, '', 'Brighton Bounty Hunter', 'Shoot all that you can see on screen', '', 'brighton_bounty_hunter.png', 'brighton_bounty_hunter.swf', 5, '2017-09-18 16:54:31', 0, 0, 0, 0),
(15, '', 'Sheepteroids', 'It is Sheep-teroids that we are shooting!', '', 'sheepteroids.png', 'sheepteroids.swf', 5, '2017-09-18 16:54:31', 0, 0, 0, 0),
(16, '', 'Blackjack Fever', 'Blackjack Las Vegas style - Double Down Split and More - Get your practice in before making your t', 'Blackjack Fever', 'bjfever.png', 'bjfever.swf', 6, '2017-09-18 16:54:31', 0, 0, 0, 0),
(17, '', 'Beermat', 'A game about fliking beermats.', 'Beermat', 'beermat.png', 'beermat.swf', 6, '2017-09-18 16:54:31', 0, 0, 0, 0),
(18, '', 'Beeku Big Adventure Ch1', 'Run around as Beeku blast away bugs and critters with your machine gun.', 'Beeku''s Big Adventure Ch1', 'beeku_big_adventure.png', 'beeku_big_adventure.swf', 6, '2017-09-18 16:54:31', 0, 0, 0, 0),
(19, '', 'Addem Up', 'Place the next tile from the queue on the board. If all surrounding tiles add up to that number they', 'Addem Up', 'addem_up.png', 'addem_up.swf', 7, '2017-09-18 16:54:31', 0, 0, 0, 0),
(20, '', 'Aga Maze', 'A mazing game', 'Aga Maze', 'aga_maze.png', 'aga_maze.swf', 7, '2017-09-18 16:54:31', 0, 0, 0, 0),
(21, '', 'Air Heads', 'Fly your balloon across building but avoid the smog above.', 'Air Heads', 'air_heads.png', 'air_heads.swf', 7, '2017-09-18 16:54:31', 0, 0, 0, 0),
(22, '', 'Stai Ruere', 'Protesters have gathered around a barracks area! It''s your duty to control them and maintain peace a', 'Stai Ruere', 'stai_ruere.png', 'stai_ruere.swf', 8, '2017-09-18 16:54:31', 0, 0, 0, 0),
(23, '', 'Stay The Distance', 'Great horse racing game. Easy but a bit harsh.', 'Stay The Distance', 'stay_the_distance.png', 'stay_the_distance.swf', 8, '2017-09-18 16:54:31', 0, 0, 0, 0),
(24, '', 'TGFG Racing', 'Race around the track smashing into your opponents to knock them off and picking up turbo so you can', 'TGFG Racing', 'tgfg_racing.png', 'tgfg_racing.swf', 8, '2017-09-18 16:54:31', 0, 0, 0, 0),
(25, '', '12 Puzzle', 'Fit the puzzle pieces together to solve the puzzle!', '12 Puzzle', '12_puzzle.png', '12_puzzle.swf', 9, '2017-09-18 16:54:31', 0, 0, 0, 0),
(26, '', '24 Puzzle', 'Align the 24 numbers in order from 1-24 in this 3D puzzle.', '24 Puzzle', '24_puzzle.png', '24_puzzle.swf', 9, '2017-09-18 16:54:31', 0, 0, 0, 0),
(27, '', '3D Frogger', 'Frogger takes on a new look in this 3 dimensional version of the classic game. Make your way across', '3D Frogger', '3d_frogger.png', '3d_frogger.swf', 9, '2017-09-18 16:54:31', 0, 0, 0, 0),
(28, '', 'Amok Madman', 'Get tought by an expert in this fun shooting game.', 'Amok Madman', 'amok.png', 'amok.swf', 10, '2017-09-18 16:54:31', 0, 0, 0, 0),
(29, '', 'Aderans Forest', 'Aderans Forest is under attack. Shoot all the enemies before they destroy it! Click the mouse to shoot.', 'Aderans Forest', 'aderans_forest.png', 'aderans_forest.swf', 10, '2017-09-18 16:54:31', 0, 0, 0, 0),
(30, '', 'AO-War On Iraq', 'Shoot down Iraqi Terrorists Jeeps Grenaders and hostile villagers using AK Machine guns.', 'AO-War On Iraq', 'war_on_iraq.png', 'war_on_iraq.swf', 10, '2017-09-18 16:54:31', 0, 0, 0, 0),
(31, '', 'Bullseye', 'Play this classic darts game.', 'Bullseye', 'bullseye.png', 'bullseye.swf', 11, '2017-09-18 16:54:31', 0, 0, 0, 0),
(32, '', 'Billiards', 'Billiards Flash Game. So famous, you have to play with our Cue Sports game right now. Finally, our Billiards flash game is simple to use, smart and modern.', 'Cue Sports, Cuesports, Billiard, Billiards, Snooker, poll, Billiards balls, Pool Balls', 'billiards.png', 'billiards.swf', 11, '2017-09-18 16:54:31', 0, 0, 0, 0),
(33, '', 'Bowling', 'Here you are. A superb bowling game. Turn your speakers up!Throw the ball when you see the sign. In order to throw the ball push the go botton. Keep it pressed until the yellow field at t', 'Bowling', 'bowling.png', 'bowling.swf', 11, '2017-09-18 16:54:31', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_GamesCategories`
--

CREATE TABLE `ph7nd_GamesCategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_GamesCategories`
--

INSERT INTO `ph7nd_GamesCategories` VALUES
(1, 'Action'),
(2, 'Arcade'),
(3, 'Casino'),
(4, 'Drawing'),
(5, 'Fighting'),
(6, 'Other'),
(7, 'Puzzle'),
(8, 'Racing'),
(9, 'Retro'),
(10, 'Shooting'),
(11, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_LanguagesInfo`
--

CREATE TABLE `ph7nd_LanguagesInfo` (
  `langId` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `charset` varchar(15) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `author` varchar(60) NOT NULL,
  `website` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`langId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_LanguagesInfo`
--

INSERT INTO `ph7nd_LanguagesInfo` VALUES
('en_US', 'English', 'UTF-8', '1', 'ltr', 'Pierre-Henry Soria', 'http://ph7.me', 'me@ph7.me');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_License`
--

CREATE TABLE `ph7nd_License` (
  `licenseId` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `licenseKey` varchar(40) NOT NULL,
  PRIMARY KEY (`licenseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_License`
--

INSERT INTO `ph7nd_License` VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Likes`
--

CREATE TABLE `ph7nd_Likes` (
  `keyId` varchar(255) NOT NULL,
  `votes` int(10) unsigned NOT NULL,
  `lastVote` datetime NOT NULL,
  `lastIp` varchar(45) NOT NULL,
  UNIQUE KEY `keyId` (`keyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Likes`
--

INSERT INTO `ph7nd_Likes` VALUES
('https://matrimonial.mathdecrypter.com/user/album/ponnu/ponnu-photo-album/2', 1, '2017-09-26 17:20:36', '96.255.218.2'),
('https://matrimonial.mathdecrypter.com/user/photo/ponnu/2/trisha3/3', 1, '2017-09-20 23:31:47', '173.79.165.88');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_LogError`
--

CREATE TABLE `ph7nd_LogError` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `logError` longtext,
  PRIMARY KEY (`logId`),
  FULLTEXT KEY `logError` (`logError`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Members`
--

CREATE TABLE `ph7nd_Members` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(120) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `sex` enum('male','female','couple') NOT NULL DEFAULT 'female',
  `matchSex` set('male','female','couple') NOT NULL DEFAULT 'male',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `bankAccount` varchar(150) DEFAULT NULL,
  `groupId` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `membershipDate` datetime DEFAULT NULL,
  `userStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `joinDate` datetime DEFAULT NULL,
  `lastActivity` datetime DEFAULT NULL,
  `lastEdit` datetime DEFAULT NULL,
  `avatar` char(5) DEFAULT NULL,
  `approvedAvatar` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT 'en_US',
  `hashValidation` varchar(40) DEFAULT NULL,
  `isTwoFactorAuth` enum('1','0') DEFAULT '0',
  `twoFactorAuthSecret` varchar(40) DEFAULT NULL,
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  `reference` varchar(255) DEFAULT NULL,
  `votes` int(11) DEFAULT '0',
  `score` float DEFAULT '0',
  `credits` int(6) unsigned NOT NULL DEFAULT '0',
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ban` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `groupId` (`groupId`),
  KEY `birthDate` (`birthDate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Members`
--

INSERT INTO `ph7nd_Members` VALUES
(18, 'jkuppama@gmail.com', 'thambi', '$2y$12$Aimg4YdJFxVINgKbjaKIuOdIgT0acC1w/lTPozpqjOQcXpZThR4Je', 'Mapillai', 'Thamby', '1990-09-12', 'male', 'female', '108.51.109.7', NULL, 2, '2017-09-18 22:01:37', 1, '2017-09-18 22:01:37', '2017-09-28 04:43:48', NULL, '0.jpg', 1, 0, 'en_US', NULL, '0', NULL, 24, NULL, 0, 0, 0, 0, 1, 0),
(19, 'parpadam@gmail.com', 'ponnu', '$2y$12$OfIbiQq2GKpwDvN6ftBmXO4ASA/A1z8.UEYnEit8lTK3RpEISh4Si', 'Ponnu', 'Kandappan', '1993-09-09', 'female', 'male', '108.51.109.7', NULL, 2, '2017-09-18 22:38:17', 1, '2017-09-18 22:38:17', '2017-09-18 22:56:08', '2017-09-18 22:50:53', '8.jpg', 1, 0, 'en_US', NULL, '0', NULL, 4, NULL, 1, 4.6, 0, 0, 1, 0),
(20, 'veedupar@gmail.com', 'Mapillai2', '$2y$12$/1nCkMur8YY0yNGWMEoW4.2rxkOR1Dm1qPokvHEbtEIfuTyPkr9u.', 'Mapillaiva', NULL, '1990-09-20', 'male', 'female', '173.79.165.88', NULL, 2, '2017-09-19 21:13:46', 1, '2017-09-19 21:13:46', '2017-09-19 22:23:05', NULL, '0.jpg', 1, 0, 'en_US', '1524f5e2d454b1b1f24ff1b3253300e7f1179171', '0', NULL, 8, 'Reference: main | Action: index | Sex: male | Username: thambi', 2, 9.6, 0, 0, 1, 0),
(21, 'veedupadam@gmail.com', 'ponnu2', '$2y$12$Kfhe1P527bkwDHDfcOlMBOpp/tI3RzoCfFAbJOl4bElqahOHmkUQy', 'Ponnu', '', '1990-09-04', 'female', 'male', '173.79.161.13', NULL, 2, '2017-09-24 18:04:15', 1, '2017-09-24 18:04:15', '2017-09-25 22:53:39', '2017-09-25 23:59:48', '7.jpg', 1, 0, 'en_US', '12c0a36fe6bff60725d29dcea1a022495b3d979b', '0', NULL, 3, 'No reference', 1, 4.6, 0, 0, 1, 0),
(22, 's_sritharan@hotmail.com', 'Sritharan', '$2y$12$rVTrxzLDerv.gKRiDlNAduZuR3ul/XQGs7RqANiWMVrF2ju24zqDa', 'Sri', NULL, '1990-08-15', 'male', 'female', '174.205.9.50', NULL, 2, '2017-09-27 06:56:02', 1, '2017-09-27 06:56:02', '2017-09-27 06:56:02', NULL, NULL, 1, 0, 'en_US', 'e3ab83011b4853d7ad90c71e1e224f2d23bf637e', '0', NULL, 4, 'No reference', 0, 0, 0, 0, 1, 0),
(30, 'ratnamjob@gmail.com', 'raman', '$2y$12$rfRVQ.zbLUS1ZLLpoR1b4Ot.TEB/CJxGX4TGuv8wyZbd1Uw7DcXwC', 'Raman', NULL, '1990-09-11', 'female', 'female', '173.73.172.204', NULL, 2, '2017-09-27 15:46:40', 1, '2017-09-27 15:46:40', '2017-09-27 15:46:40', NULL, NULL, 1, 0, 'en_US', 'da49afcb305438560cdde9b20868b35494339cd2', '0', NULL, 1, 'No reference', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersAttemptsLogin`
--

CREATE TABLE `ph7nd_MembersAttemptsLogin` (
  `attemptsId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) NOT NULL DEFAULT '',
  `attempts` smallint(5) unsigned NOT NULL,
  `lastLogin` datetime NOT NULL,
  PRIMARY KEY (`attemptsId`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersBackground`
--

CREATE TABLE `ph7nd_MembersBackground` (
  `profileId` int(10) unsigned NOT NULL,
  `file` varchar(5) NOT NULL,
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersBackground`
--

INSERT INTO `ph7nd_MembersBackground` VALUES
(19, '3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersFriends`
--

CREATE TABLE `ph7nd_MembersFriends` (
  `profileId` int(10) unsigned NOT NULL,
  `friendId` int(10) unsigned NOT NULL,
  `requestDate` datetime DEFAULT NULL,
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `profileId` (`profileId`),
  KEY `friendId` (`friendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Memberships`
--

CREATE TABLE `ph7nd_Memberships` (
  `groupId` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL,
  `expirationDays` tinyint(2) unsigned NOT NULL,
  `enable` enum('1','0') DEFAULT '1',
  `orderId` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Memberships`
--

INSERT INTO `ph7nd_Memberships` VALUES
(1, 'Visitor', 'This subscription is offered to all visitors who visit the site.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:17:"instant_messaging";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', '0.00', 0, '1', 1),
(2, 'Regular (Free)', 'Free Membership.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '0.00', 0, '1', 3),
(4, 'Platinum', 'The membership for the small budget.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '9.99', 5, '1', 4),
(5, 'Silver', 'The premium membership!', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '19.99', 10, '1', 5),
(6, 'Gold', 'The must membership! The Gold!!!', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"1";s:10:"send_mails";s:1:"1";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"1";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"1";s:17:"instant_messaging";s:1:"1";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"1";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"1";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"1";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"1";s:19:"answer_forum_topics";s:1:"1";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"1";}', '29.99', 30, '1', 6),
(9, 'Pending', 'Pending subscription provisional migration to a different subscription.', 'a:24:{s:21:"quick_search_profiles";s:1:"1";s:24:"advanced_search_profiles";s:1:"1";s:10:"read_mails";s:1:"0";s:10:"send_mails";s:1:"0";s:13:"view_pictures";s:1:"1";s:15:"upload_pictures";s:1:"0";s:11:"view_videos";s:1:"1";s:13:"upload_videos";s:1:"0";s:17:"instant_messaging";s:1:"0";s:4:"chat";s:1:"1";s:12:"chatroulette";s:1:"1";s:10:"hot_or_not";s:1:"1";s:15:"love_calculator";s:1:"0";s:10:"read_notes";s:1:"1";s:11:"write_notes";s:1:"0";s:15:"read_blog_posts";s:1:"1";s:13:"view_comments";s:1:"1";s:14:"write_comments";s:1:"0";s:12:"forum_access";s:1:"1";s:19:"create_forum_topics";s:1:"0";s:19:"answer_forum_topics";s:1:"0";s:12:"games_access";s:1:"1";s:13:"webcam_access";s:1:"1";s:18:"member_site_access";s:1:"0";}', '0.00', 15, '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersInfo`
--

CREATE TABLE `ph7nd_MembersInfo` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `middleName` varchar(50) DEFAULT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `zipCode` varchar(20) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `website` varchar(120) DEFAULT NULL,
  `socialNetworkSite` varchar(120) DEFAULT NULL,
  `height` tinyint(3) unsigned DEFAULT NULL,
  `weight` tinyint(3) unsigned DEFAULT NULL,
  `Complexion` varchar(50) NOT NULL DEFAULT 'Fair,Dark',
  `Marital_Status` varchar(50) NOT NULL DEFAULT 'Never Married,Divorced,Widowed,Waiting for Divorce',
  `Drinking_Habits` varchar(50) NOT NULL DEFAULT 'Occational,Never,Social Drinker',
  `Mother_Tongue` varchar(25) NOT NULL DEFAULT 'Tamil',
  `Eating_Habits` varchar(25) NOT NULL DEFAULT 'Vegetarian,Non Vegetarian',
  `Smoking_Habits` varchar(50) NOT NULL DEFAULT 'Never,Few Pack a week,Chain Smoker',
  `Religion` varchar(50) NOT NULL DEFAULT 'Hindu,Christian,Emmathamum Sammatham',
  `Caste` varchar(25) NOT NULL DEFAULT 'Vellalar,Podiyar,Udaiyar',
  `Education` varchar(50) NOT NULL DEFAULT 'College,Graduate School,High School',
  `College_Name` varchar(50) NOT NULL DEFAULT 'University of Florida Jacksonville',
  `Occupation` varchar(50) NOT NULL DEFAULT 'Software Engineer',
  `Family_Values` varchar(50) NOT NULL DEFAULT 'Traditional,Liberal,Orthodox',
  `Family_Type` varchar(60) NOT NULL DEFAULT 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)',
  `Family_Status` varchar(50) NOT NULL DEFAULT 'Middle,Upper,Super Wealthy Class',
  `Family_Origin` varchar(100) NOT NULL DEFAULT 'Sankillian Family, Podiyar Family,Muthaliar Family',
  `Family_Origin_In_SriLanka` varchar(100) NOT NULL DEFAULT 'Jaffna,Kandy,Colombo,Trinco,Batticaloa',
  `Hobbies_Interests` varchar(100) NOT NULL DEFAULT 'Cooking,Hiking,Travelling',
  `Favourite_Music` varchar(100) NOT NULL DEFAULT 'Rock,Pop,Reggae,Classic,Carnatic',
  `Sports_Fitness_Activities` varchar(100) NOT NULL DEFAULT '',
  `Spoken_Languages` varchar(25) NOT NULL DEFAULT 'Tamil,English',
  `Partners_Preferred_Age` varchar(10) NOT NULL DEFAULT '24',
  `Partners_Preferred_Height` varchar(25) NOT NULL DEFAULT '5 ft 4 in',
  `Partners_Marital_Status` varchar(50) NOT NULL DEFAULT 'Never Married,Divorced,Widowed',
  `Partners_Physical_Status` varchar(50) NOT NULL DEFAULT 'Normal,Physically Challenged',
  `My_Physical_Status` varchar(25) NOT NULL DEFAULT 'Well Fit,Aethletic',
  `partners_eating_habits` varchar(255) NOT NULL DEFAULT '',
  `Partners_Smoking_Habits` varchar(100) NOT NULL DEFAULT 'Chain Smoker,Never,Few Pack a week',
  `Partners_Drinking_Habits` varchar(100) NOT NULL DEFAULT 'Social Drinker,Daily, Weekly',
  `Partners_Preferred_Religion` varchar(25) NOT NULL DEFAULT 'Hindu,Christian',
  `Partners_Mother_Tongue` varchar(50) NOT NULL DEFAULT 'Tamil',
  `Partners_Caste` varchar(50) NOT NULL DEFAULT 'Vellalar',
  `Partners_Preferred_Occupation` varchar(50) NOT NULL DEFAULT 'House Wife,Engineer,Doctor',
  `Partners_Preferred_Citizenship` varchar(30) NOT NULL DEFAULT 'USA,Canada,UK,Australia,Europe',
  `Partners_Country_Of_Residence` varchar(50) NOT NULL DEFAULT 'USA,Canada',
  `Partners_Hobbies_Interests` varchar(50) NOT NULL DEFAULT 'Cooking,Hiking,Travelling',
  `Partners_State_Province` varchar(35) NOT NULL DEFAULT 'Florida,Ontario,Queensland,Victoria',
  `Partner_Spoken_Languages` varchar(27) NOT NULL DEFAULT 'Tamil,English,Deutch,French',
  `Partners_Favourite_Music` varchar(50) NOT NULL DEFAULT 'Rock,Pop,Reggae,Classic,Carnatic',
  `Partners_Preferred_Education` varchar(50) NOT NULL DEFAULT 'College,High School,Graduate School',
  `Star` varchar(50) NOT NULL DEFAULT 'Rohini,Barani',
  `Rasi` varchar(25) NOT NULL DEFAULT 'Kanya,Simha,Dhanus',
  `Chevvai_Laknam` varchar(25) NOT NULL DEFAULT '',
  `Chevvai_Dhosa_Paavam` varchar(25) NOT NULL DEFAULT '16',
  `Total_Kiraga_Paavam` varchar(25) NOT NULL DEFAULT '42',
  `Native_of_Father` varchar(25) NOT NULL DEFAULT 'Point Pedro',
  `Fathers_caste` varchar(25) NOT NULL DEFAULT 'Pure Jaffna Vellalar',
  `Mothers_Caste` varchar(50) NOT NULL DEFAULT 'Pure Jaffna Vellalar',
  `Number_Of_Children` varchar(25) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`profileId`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersInfo`
--

INSERT INTO `ph7nd_MembersInfo` VALUES
(18, '', '<p>\r\n Good looking guy looking for good looking girl</p>\r\n', NULL, NULL, 'Dallas', '', '', 'US', NULL, '', '', NULL, NULL, 'Fair,Dark', 'Never Married,Divorced,Widowed,Waiting for Divorce', 'Occational,Never,Social Drinker', 'Tamil', 'Vegetarian,Non Vegetarian', 'Never,Few Pack a week,Chain Smoker', 'Hindu,Christian,Emmathamum Sammatham', 'Vellalar,Podiyar,Udaiyar', 'College,Graduate School,High School', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional,Liberal,Orthodox', 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)', 'Middle,Upper,Super Wealthy Class', 'Sankillian Family, Podiyar Family,Muthaliar Family', 'Jaffna,Kandy,Colombo,Trinco,Batticaloa', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married,Divorced,Widowed', 'Normal,Physically Challenged', 'Well Fit,Aethletic', '', 'Chain Smoker,Never,Few Pack a week', 'Social Drinker,Daily, Weekly', 'Hindu,Christian', 'Tamil', 'Vellalar', 'House Wife,Engineer,Doctor', 'USA,Canada,UK,Australia,Europe', 'USA,Canada', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch,French', 'Rock,Pop,Reggae,Classic,Carnatic', 'College,High School,Graduate School', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None'),
(19, '', '<p>\r\n Good looking ponnu looking for Mr handsome</p>\r\n', '', '', 'Dallas', '', '', 'US', '', '', '', 164, 58, 'Fair,Dark', 'Never Married,Divorced,Widowed,Waiting for Divorce', 'Occational,Never,Social Drinker', 'Tamil', 'Vegetarian,Non Vegetarian', 'Never,Few Pack a week,Chain Smoker', 'Hindu,Christian,Emmathamum Sammatham', 'Vellalar,Podiyar,Udaiyar', 'College,Graduate School,High School', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional,Liberal,Orthodox', 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)', 'Middle,Upper,Super Wealthy Class', 'Sankillian Family, Podiyar Family,Muthaliar Family', 'Jaffna,Kandy,Colombo,Trinco,Batticaloa', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married,Divorced,Widowed', 'Normal,Physically Challenged', 'Well Fit,Aethletic', '', 'Chain Smoker,Never,Few Pack a week', 'Social Drinker,Daily, Weekly', 'Hindu,Christian', 'Tamil', 'Vellalar', 'House Wife,Engineer,Doctor', 'USA,Canada,UK,Australia,Europe', 'USA,Canada', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch,French', 'Rock,Pop,Reggae,Classic,Carnatic', 'College,High School,Graduate School', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None'),
(20, '', 'Good looking handsome guy looking for a beauty .', NULL, NULL, 'Centreville', '', '20120', 'US', NULL, '', '', NULL, NULL, 'Fair,Dark', 'Never Married,Divorced,Widowed,Waiting for Divorce', 'Occational,Never,Social Drinker', 'Tamil', 'Vegetarian,Non Vegetarian', 'Never,Few Pack a week,Chain Smoker', 'Hindu,Christian,Emmathamum Sammatham', 'Vellalar,Podiyar,Udaiyar', 'College,Graduate School,High School', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional,Liberal,Orthodox', 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)', 'Middle,Upper,Super Wealthy Class', 'Sankillian Family, Podiyar Family,Muthaliar Family', 'Jaffna,Kandy,Colombo,Trinco,Batticaloa', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married,Divorced,Widowed', 'Normal,Physically Challenged', 'Well Fit,Aethletic', '', 'Chain Smoker,Never,Few Pack a week', 'Social Drinker,Daily, Weekly', 'Hindu,Christian', 'Tamil', 'Vellalar', 'House Wife,Engineer,Doctor', 'USA,Canada,UK,Australia,Europe', 'USA,Canada', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch,French', 'Rock,Pop,Reggae,Classic,Carnatic', 'College,High School,Graduate School', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None'),
(21, '', 'Good looking woman looking for the same.', '', '', 'Centreville', '', '20120', 'US', '', '', '', 162, 58, 'Fair', 'Never Married', 'Social Drinker', 'Tamil', 'Non Vegetarian', 'Never', 'Hindu', 'Vellalar', 'College', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional', 'Nuclear(Thani Kudithanam)', 'Middle Class', 'Sankillian Family', 'Jaffna', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married', 'Normal', 'Aethletic', '', 'Never', 'Social Drinker', 'Hindu', 'Tamil', 'Vellalar', 'Doctor', 'USA', 'USA', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch', 'Rock,Pop,Reggae,Classic,Carnatic', 'College', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None'),
(22, '', 'I am looking for a well educated, religious girl.  ', NULL, NULL, 'Dallas', '', '75248', 'US', NULL, '', '', NULL, NULL, 'Fair,Dark', 'Never Married,Divorced,Widowed,Waiting for Divorce', 'Occational,Never,Social Drinker', 'Tamil', 'Vegetarian,Non Vegetarian', 'Never,Few Pack a week,Chain Smoker', 'Hindu,Christian,Emmathamum Sammatham', 'Vellalar,Podiyar,Udaiyar', 'College,Graduate School,High School', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional,Liberal,Orthodox', 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)', 'Middle,Upper,Super Wealthy Class', 'Sankillian Family, Podiyar Family,Muthaliar Family', 'Jaffna,Kandy,Colombo,Trinco,Batticaloa', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married,Divorced,Widowed', 'Normal,Physically Challenged', 'Well Fit,Aethletic', '', 'Chain Smoker,Never,Few Pack a week', 'Social Drinker,Daily, Weekly', 'Hindu,Christian', 'Tamil', 'Vellalar', 'House Wife,Engineer,Doctor', 'USA,Canada,UK,Australia,Europe', 'USA,Canada', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch,French', 'Rock,Pop,Reggae,Classic,Carnatic', 'College,High School,Graduate School', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None'),
(30, '', 'Good looking man looking for good looking woman.', NULL, NULL, 'Chantilly', '', '20151', 'US', NULL, '', '', NULL, NULL, 'Fair,Dark', 'Never Married,Divorced,Widowed,Waiting for Divorce', 'Occational,Never,Social Drinker', 'Tamil', 'Vegetarian,Non Vegetarian', 'Never,Few Pack a week,Chain Smoker', 'Hindu,Christian,Emmathamum Sammatham', 'Vellalar,Podiyar,Udaiyar', 'College,Graduate School,High School', 'University of Florida Jacksonville', 'Software Engineer', 'Traditional,Liberal,Orthodox', 'Extended Family(Kootu Kudithanam), Nuclear(Thani Kudithanam)', 'Middle,Upper,Super Wealthy Class', 'Sankillian Family, Podiyar Family,Muthaliar Family', 'Jaffna,Kandy,Colombo,Trinco,Batticaloa', 'Cooking,Hiking,Travelling', 'Rock,Pop,Reggae,Classic,Carnatic', '', 'Tamil,English', '24', '5 ft 4 in', 'Never Married,Divorced,Widowed', 'Normal,Physically Challenged', 'Well Fit,Aethletic', '', 'Chain Smoker,Never,Few Pack a week', 'Social Drinker,Daily, Weekly', 'Hindu,Christian', 'Tamil', 'Vellalar', 'House Wife,Engineer,Doctor', 'USA,Canada,UK,Australia,Europe', 'USA,Canada', 'Cooking,Hiking,Travelling', 'Florida,Ontario,Queensland,Victoria', 'Tamil,English,Deutch,French', 'Rock,Pop,Reggae,Classic,Carnatic', 'College,High School,Graduate School', 'Rohini,Barani', 'Kanya,Simha,Dhanus', '', '16', '42', 'Point Pedro', 'Pure Jaffna Vellalar', 'Pure Jaffna Vellalar', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersLogLogin`
--

CREATE TABLE `ph7nd_MembersLogLogin` (
  `logId` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersLogLogin`
--

INSERT INTO `ph7nd_MembersLogLogin` VALUES
(1, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '108.51.109.7', '2017-09-18 22:23:59'),
(2, 'admin@matrimonial.mathdecrypter.com', 'Guest', 'No Password', 'Failed! Incorrect Username', '108.51.109.7', '2017-09-18 22:29:00'),
(3, 'parpadam@gmail.com', 'ponnu', '*****', 'Logged in!', '108.51.109.7', '2017-09-18 22:40:46'),
(4, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '108.51.109.7', '2017-09-18 22:57:27'),
(5, 'veedupar@gmail.com', 'Mapillai2', '*****', 'Logged in!', '173.79.165.88', '2017-09-19 22:09:00'),
(6, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.79.165.88', '2017-09-20 23:30:47'),
(7, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.79.161.13', '2017-09-24 14:47:19'),
(8, 'admin@matrimonial.mathdecrypter.com', 'Guest', 'No Password', 'Failed! Incorrect Username', '173.79.161.13', '2017-09-24 15:15:38'),
(9, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.79.161.13', '2017-09-24 17:39:53'),
(10, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.79.161.13', '2017-09-24 18:01:11'),
(11, 'veedupadam@gmail.com', 'ponnu2', '*****', 'Logged in!', '173.79.161.13', '2017-09-24 18:13:26'),
(12, 'veedupadam@gmail.com', 'ponnu2', '*****', 'Logged in!', '173.79.161.13', '2017-09-24 23:01:49'),
(13, 'veedupadam@gmail.com', 'ponnu2', '*****', 'Logged in!', '96.255.218.2', '2017-09-25 08:52:57'),
(14, 'jkuppama@gmail.com', 'Guest', 'PodaVada32$', 'Failed! Incorrect Password', '96.255.218.2', '2017-09-25 21:55:31'),
(15, 'veedupadam@gmail.com', 'ponnu2', '*****', 'Logged in!', '96.255.218.2', '2017-09-25 22:50:06'),
(16, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 12:11:55'),
(17, 'jkuppama@gmail.com', 'Guest', 'PonnuVenum', 'Failed! Incorrect Password', '167.220.56.139', '2017-09-26 13:14:07'),
(18, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '167.220.56.139', '2017-09-26 13:14:35'),
(19, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 15:49:21'),
(20, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 19:25:42'),
(21, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '131.107.174.180', '2017-09-26 21:14:38'),
(22, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 21:17:12'),
(23, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 21:42:52'),
(24, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 22:28:09'),
(25, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '96.255.218.2', '2017-09-26 22:38:46'),
(26, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 08:22:19'),
(27, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 09:46:02'),
(28, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 10:04:39'),
(29, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 10:20:54'),
(30, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 11:18:51'),
(31, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 12:20:04'),
(32, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 12:32:52'),
(33, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 14:43:27'),
(34, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 15:48:52'),
(35, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 17:30:56'),
(36, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 17:38:58'),
(37, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 17:58:40'),
(38, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-27 18:41:13'),
(39, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '98.169.180.128', '2017-09-27 21:48:45'),
(40, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '131.107.174.180', '2017-09-27 22:32:02'),
(41, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '173.73.172.204', '2017-09-28 00:30:31'),
(42, 'jkuppama@gmail.com', 'thambi', '*****', 'Logged in!', '93.245.39.216', '2017-09-28 04:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersLogSess`
--

CREATE TABLE `ph7nd_MembersLogSess` (
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `sessionHash` varchar(40) NOT NULL,
  `idHash` char(32) NOT NULL,
  `lastActivity` int(10) unsigned NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `userAgent` varchar(100) NOT NULL,
  `guest` smallint(4) unsigned NOT NULL DEFAULT '1',
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`profileId`),
  KEY `sessionHash` (`sessionHash`),
  KEY `lastActivity` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersNotifications`
--

CREATE TABLE `ph7nd_MembersNotifications` (
  `profileId` int(10) unsigned NOT NULL,
  `enableNewsletters` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `newMsg` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `friendRequest` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersNotifications`
--

INSERT INTO `ph7nd_MembersNotifications` VALUES
(18, 0, 1, 1),
(19, 0, 1, 1),
(20, 0, 1, 1),
(21, 0, 1, 1),
(22, 0, 1, 1),
(30, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersPrivacy`
--

CREATE TABLE `ph7nd_MembersPrivacy` (
  `profileId` int(10) unsigned NOT NULL,
  `privacyProfile` enum('all','only_members','only_me') NOT NULL DEFAULT 'all',
  `searchProfile` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userSaveViews` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersPrivacy`
--

INSERT INTO `ph7nd_MembersPrivacy` VALUES
(18, 'all', 'yes', 'yes'),
(19, 'all', 'yes', 'yes'),
(20, 'all', 'yes', 'yes'),
(21, 'all', 'yes', 'yes'),
(22, 'all', 'yes', 'yes'),
(30, 'all', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersWall`
--

CREATE TABLE `ph7nd_MembersWall` (
  `wallId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL DEFAULT '0',
  `post` text CHARACTER SET armscii8,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`wallId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MembersWhoViews`
--

CREATE TABLE `ph7nd_MembersWhoViews` (
  `profileId` int(10) unsigned NOT NULL,
  `visitorId` int(10) unsigned NOT NULL,
  `lastVisit` datetime DEFAULT NULL,
  KEY `profileId` (`profileId`),
  KEY `visitorId` (`visitorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MembersWhoViews`
--

INSERT INTO `ph7nd_MembersWhoViews` VALUES
(18, 19, '2017-09-18 22:54:06'),
(18, 20, '2017-09-19 22:22:14'),
(19, 18, '2017-09-27 17:40:32'),
(20, 18, '2017-09-28 00:49:43'),
(21, 18, '2017-09-27 10:07:55'),
(22, 18, '2017-09-27 15:48:58'),
(30, 18, '2017-09-27 15:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Messages`
--

CREATE TABLE `ph7nd_Messages` (
  `messageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sendDate` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `trash` set('sender','recipient') NOT NULL DEFAULT '',
  `toDelete` set('sender','recipient') NOT NULL DEFAULT '',
  PRIMARY KEY (`messageId`),
  KEY `recipient` (`recipient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Messages`
--

INSERT INTO `ph7nd_Messages` VALUES
(1, 18, 20, 'Hello Mapillai2', 'Hello Mappu. Unaku appu\r\nMapillai', '2017-09-24 14:48:53', 1, '', 'sender'),
(2, 18, 21, 'hello Ponnu', 'I would like to meet you.', '2017-09-27 10:08:35', 1, '', 'sender'),
(3, 0, 22, 'Thanks for reviewing our websi', 'Sri,\r\nThanks for reviewing our website.\r\nPrapa', '2017-09-27 10:12:46', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Messenger`
--

CREATE TABLE `ph7nd_Messenger` (
  `messengerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(40) NOT NULL DEFAULT '',
  `toUser` varchar(40) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime DEFAULT NULL,
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`messengerId`),
  KEY `fromUser` (`fromUser`),
  KEY `toUser` (`toUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_MetaMain`
--

CREATE TABLE `ph7nd_MetaMain` (
  `langId` varchar(5) NOT NULL DEFAULT '',
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `headline` varchar(50) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `promoText` text,
  `metaRobots` varchar(50) NOT NULL DEFAULT '',
  `metaAuthor` varchar(50) NOT NULL DEFAULT '',
  `metaCopyright` varchar(50) NOT NULL DEFAULT '',
  `metaRating` varchar(50) NOT NULL DEFAULT '',
  `metaDistribution` varchar(50) NOT NULL DEFAULT '',
  `metaCategory` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`langId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_MetaMain`
--

INSERT INTO `ph7nd_MetaMain` VALUES
('en_US', 'Tamil Kalyanam', 'The Best Online  Tamil Kalyana Service provided all Tamil people.', 'Tamil Kalyana, community, website', 'Be on the best Tamil Kalyanam e-place!', 'The Best place for Tamil Kalyanam.', '<p>\r\n The Best place for Tamil Kalyanam.</p>\r\n', 'index, follow, all', 'Tamil Kalyanam Connection', 'Copyright Pierre-Henry Soria. All Rights Reserved.', 'general', 'global', 'Tamil Kalyanam');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Modules`
--

CREATE TABLE `ph7nd_Modules` (
  `moduleId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `version` varchar(6) NOT NULL,
  `uri` varchar(40) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Modules`
--

INSERT INTO `ph7nd_Modules` VALUES
(1, 'pH7CMS', 'SQL System Schema', '1.4.0', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Notes`
--

CREATE TABLE `ph7nd_Notes` (
  `noteId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `postId` varchar(60) NOT NULL,
  `langId` char(2) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `metaKeywords` varchar(255) NOT NULL,
  `slogan` varchar(200) NOT NULL,
  `metaRobots` varchar(50) NOT NULL,
  `metaAuthor` varchar(50) NOT NULL,
  `metaCopyright` varchar(50) NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `thumb` char(24) DEFAULT NULL,
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `enableComment` enum('1','0') DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`noteId`),
  UNIQUE KEY `postId` (`postId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_NotesCategories`
--

CREATE TABLE `ph7nd_NotesCategories` (
  `categoryId` smallint(4) unsigned NOT NULL,
  `noteId` int(10) unsigned NOT NULL,
  `profileId` int(10) unsigned NOT NULL,
  KEY `categoryId` (`categoryId`),
  KEY `noteId` (`noteId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_NotesDataCategories`
--

CREATE TABLE `ph7nd_NotesDataCategories` (
  `categoryId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_NotesDataCategories`
--

INSERT INTO `ph7nd_NotesDataCategories` VALUES
(1, 'Business'),
(2, 'Companies'),
(3, 'Dating'),
(4, 'Education'),
(5, 'Family'),
(6, 'Food'),
(7, 'Game'),
(8, 'Health'),
(9, 'Hobby'),
(10, 'Movie'),
(11, 'Music'),
(12, 'News'),
(13, 'Pets'),
(14, 'Recreation'),
(15, 'Shopping'),
(16, 'Society'),
(17, 'Sports'),
(18, 'Study'),
(19, 'Technology'),
(20, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Pictures`
--

CREATE TABLE `ph7nd_Pictures` (
  `pictureId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `albumId` int(10) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file` varchar(40) NOT NULL,
  `approved` enum('1','0') DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pictureId`),
  KEY `albumId` (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Pictures`
--

INSERT INTO `ph7nd_Pictures` VALUES
(1, 19, 2, 'Trisha1', '', '8e13d5e18a1d6b057318-original.jpg', '1', 0, 0, 0, '2017-09-18 22:46:10', NULL),
(2, 19, 2, 'Trisha2', '', '7b1ac86af5e31d348224-original.jpg', '1', 0, 0, 0, '2017-09-18 22:46:11', NULL),
(3, 19, 2, 'Trisha3', '', '4fc08232316b69af67fc-original.jpg', '1', 1, 4.5, 0, '2017-09-18 22:46:11', NULL),
(4, 18, 3, 'Suriya1', '', '1540ba6bf167c6cd4125-original.jpg', '1', 0, 0, 0, '2017-09-18 22:48:23', NULL),
(5, 18, 3, 'Suriya2', '', 'eac856328f647e468543-original.jpg', '1', 0, 0, 0, '2017-09-18 22:48:24', NULL),
(6, 18, 3, 'Suriya3', '', 'c3306ebb39d2d0a7d443-original.jpg', '1', 0, 0, 0, '2017-09-18 22:48:24', NULL),
(7, 20, 4, 'Vijay1', '', '4ccc88866bfc44d9e070-original.jpg', '1', 0, 0, 0, '2017-09-19 22:15:58', NULL),
(8, 20, 4, 'Vijay2', '', '7a85fc2528903739c7c1-original.jpg', '1', 0, 0, 0, '2017-09-19 22:15:59', NULL),
(9, 20, 4, 'Vijay3', '', 'aa20382dfffd0d65172a-original.jpg', '1', 0, 0, 0, '2017-09-19 22:15:59', NULL),
(10, 20, 4, 'Vijay4', '', 'ef662d6a1d43639ed121-original.jpg', '1', 0, 0, 0, '2017-09-19 22:16:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Report`
--

CREATE TABLE `ph7nd_Report` (
  `reportId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reporterId` int(10) unsigned DEFAULT NULL,
  `spammerId` int(10) unsigned DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `contentType` enum('user','avatar','mail','comment','photo','video','forum','note') NOT NULL DEFAULT 'user',
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportId`),
  KEY `reporterId` (`reporterId`),
  KEY `spammerId` (`spammerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Settings`
--

CREATE TABLE `ph7nd_Settings` (
  `name` varchar(64) NOT NULL,
  `value` varchar(150) DEFAULT '',
  `desc` varchar(120) DEFAULT '' COMMENT 'Informative desc about the setting',
  `group` varchar(12) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_Settings`
--

INSERT INTO `ph7nd_Settings` VALUES
('adminEmail', 'admin@matrimonial.mathdecrypter.com', '', 'email'),
('affActivationType', '3', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('autoplayVideo', '1', '1 = Autoplay is enabled, 0 = Autoplay is disabled', 'video'),
('avatarManualApproval', '1', '0 to disable or 1 to enable ', 'moderation'),
('banWordReplace', '[removed]', '', 'security'),
('bgProfileManualApproval', '1', 'Background Profile Manual Approval. 0 to disable or 1 to enable ', 'moderation'),
('bgSplashVideo', '1', '0 to disable or 1 to enable the background splash video', 'homepage'),
('chatApi', 'https://ph7cms.com/addons/chat/?name=%site_name%&url=%site_url%&skin=4', 'Chat Api URL', 'api'),
('chatrouletteApi', 'https://ph7cms.com/addons/chatroulette/?name=%site_name%&url=%site_url%&skin=1', 'Chatroulette Api URL', 'api'),
('cleanComment', '0', 'Delete comments older than X days. 0 = Disable', 'pruning'),
('cleanMessenger', '0', 'Delete IM messages older than X days. 0 = Disable', 'pruning'),
('cleanMsg', '0', 'Delete messages older than X days. 0 = Disable', 'pruning'),
('cookieConsentBar', '1', 'Enable the cookie consent bar to prevent your users that your site uses cookies. 0 = Disable | 1 = Enable', 'general'),
('cronSecurityHash', 'change_this_secret_cron_word_by_yours', 'The secret word for the URL of the cron', 'automation'),
('DDoS', '1', '0 to disabled or 1 to enabled the DDoS attack protection', 'security'),
('defaultLanguage', 'en_US', '', 'language'),
('defaultMembershipGroupId', '2', 'Default Membership Group', 'registration'),
('defaultSysModule', 'user', 'The default module running by default on the index page. Recommended to keep the "user" module', 'general'),
('defaultTemplate', 'base', '', 'design'),
('defaultVideo', 'https://www.youtube.com/watch?v=IzMz61iKLD0', 'Video by default if no video is found', 'video'),
('disclaimer', '0', 'Enable a disclaimer to enter to the site. This is useful for sites with adult content. 0 = Disable | 1 = Enable', 'general'),
('emailName', 'Tamil Kalyanam', '', 'email'),
('feedbackEmail', 'feedback@matrimonial.mathdecrypter.com', '', 'email'),
('fullAjaxSite', '0', 'enable = 1 or disable = 0', 'general'),
('googleApiKey', ' AIzaSyDKCaH7P3KpF0dD9rKZbfuUYw2MSRfR0k0', 'Google Maps API key https://developers.google.com/maps/documentation/javascript/get-api-key', 'api'),
('ipApi', 'http://whatismyipaddress.com/ip/', 'IP Api URL', 'api'),
('ipLogin', '0', '', 'security'),
('isAdminLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isAffiliateLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('isCaptchaAffiliateSignup', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaComment', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaForum', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaMail', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaNote', '0', '0 for disable or 1 for enable', 'spam'),
('isCaptchaUserSignup', '0', '0 for disable or 1 for enable', 'spam'),
('isSiteValidated', '0', '0 = site not validated | 1 = site validated', 'security'),
('isSoftwareNewsFeed', '0', 'Enable the news feed. 0 = Disable | 1 = Enable', 'general'),
('isUserLoginAttempt', '1', 'Enable blocking connection attempts abusive. Enable = 1 or disable = 0', 'security'),
('loginAdminAttemptTime', '120', 'Time before a new connection attempt, in minutes!', 'security'),
('loginAffiliateAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('loginUserAttemptTime', '60', 'Time before a new connection attempt, in minutes!', 'security'),
('mailType', 'mail', '', 'email'),
('mapType', 'roadmap', 'Choose between: ''roadmap'', ''hybrid'', ''terrain'', ''satellite''', 'map'),
('maxAdminLoginAttempts', '10', 'Maximum login attempts before blocking', 'security'),
('maxAffiliateLoginAttempts', '20', 'Maximum login attempts before blocking', 'security'),
('maxAgeRegistration', '99', '', 'registration'),
('maxPasswordLength', '60', '', 'security'),
('maxUserLoginAttempts', '30', 'Maximum login attempts before blocking', 'security'),
('maxUsernameLength', '30', '', 'registration'),
('minAgeRegistration', '18', '', 'registration'),
('minPasswordLength', '6', '', 'security'),
('minUsernameLength', '3', '', 'registration'),
('noteManualApproval', '1', '0 to disable or 1 to enable ', 'moderation'),
('nudityFilter', '1', '1 = enable | 0 = disable', 'moderation'),
('numberProfileSplashPage', '44', 'Number of profiles to display on the splash homepage', 'homepage'),
('pictureManualApproval', '1', '0 to disable or 1 to enable ', 'moderation'),
('profileWithAvatarSet', '0', '1 to display only the profiles with a profile photo.', 'homepage'),
('requireRegistrationAvatar', '0', '', 'registration'),
('returnEmail', 'noreply@matrimonial.mathdecrypter.com', 'Generally noreply@yoursite.com', 'email'),
('securityToken', '0', '0 to disable or 1 to enable the CSRF security token in the forms', 'security'),
('securityTokenLifetime', '720', 'Time in seconds to the CSRF security token. Default 720 seconds (12 mins)', 'security'),
('sendReportMail', '1', 'Send the Report by eMail (1 = enable, 0 = disable)', 'security'),
('siteName', 'Sri Lankan Tamil Kalyanam', '', 'general'),
('siteStatus', 'enable', 'enable or maintenance', 'general'),
('sizeWatermarkTextImage', '2', 'Between 0 to 5', 'image'),
('smtpHostName', 'mail.example.com', '', 'email'),
('smtpPassword', '123456', '', 'email'),
('smtpPort', '25', '', 'email'),
('socialMediaWidgets', '0', 'Enable the Social Media Widgets such as Like and Sharing buttons. 0 = Disable | 1 = Enable', 'general'),
('splashPage', '1', 'Use Splash Page | enable = 1 or disable = 0', 'homepage'),
('timeDelayAffRegistration', '2880', '2880 minutes = 2 days (in minutes!)', 'spam'),
('timeDelaySendComment', '5', 'Waiting time to send a new comment, in minutes!', 'spam'),
('timeDelaySendForumMsg', '10', 'Waiting time to send a reply message in the same topic, in minutes!', 'spam'),
('timeDelaySendForumTopic', '5', 'Waiting time to send a new topic in the forum, in minutes!', 'spam'),
('timeDelaySendMail', '3', 'Waiting time to send a new message, in minutes!', 'spam'),
('timeDelaySendNote', '20', 'Waiting time to add a new note post, in minutes!', 'spam'),
('timeDelayUserRegistration', '1440', '1440 minutes = 24 hours (in minutes!)', 'spam'),
('userActivationType', '3', '1 = no activation, 2 = email activation, 3 = Manual activation by the administrator', 'registration'),
('usersBlock', '0', '0 to disable | 1 to enable the profile photos on the homepage', 'homepage'),
('userTimeout', '1', 'User inactivity timeout. The number of minutes that a member becomes inactive (offline)', 'automation'),
('videoManualApproval', '1', '0 to disable or 1 to enable ', 'moderation'),
('watermarkTextImage', 'Tamil Kalyanam', 'Watermark text', 'image'),
('webcamPictureManualApproval', '1', '0 to disable or 1 to enable', 'moderation');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_StaticFiles`
--

CREATE TABLE `ph7nd_StaticFiles` (
  `staticId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `fileType` enum('css','js') NOT NULL,
  `active` enum('1','0') DEFAULT '1',
  PRIMARY KEY (`staticId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_StaticFiles`
--

INSERT INTO `ph7nd_StaticFiles` VALUES
(1, '//s7.addthis.com/js/250/addthis_widget.js', 'js', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Subscribers`
--

CREATE TABLE `ph7nd_Subscribers` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(120) NOT NULL,
  `joinDate` datetime DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `ip` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `hashValidation` varchar(40) DEFAULT NULL,
  `affiliatedId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`profileId`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_SysModsEnabled`
--

CREATE TABLE `ph7nd_SysModsEnabled` (
  `moduleId` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `moduleTitle` varchar(50) NOT NULL,
  `folderName` varchar(20) NOT NULL,
  `premiumMod` enum('0','1') NOT NULL DEFAULT '0',
  `enabled` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ph7nd_SysModsEnabled`
--

INSERT INTO `ph7nd_SysModsEnabled` VALUES
(1, 'Affiliate', 'affiliate', '0', '0'),
(2, 'Chat', 'chat', '1', '0'),
(3, 'Chatroulette', 'chatroulette', '1', '0'),
(4, 'Picture', 'picture', '0', '1'),
(5, 'Video', 'video', '0', '1'),
(6, 'Hot or Not', 'hotornot', '0', '0'),
(7, 'Forum', 'forum', '0', '1'),
(8, 'Note (blog for users)', 'note', '0', '1'),
(9, 'Blog (company blog)', 'blog', '0', '0'),
(10, 'Love Calculator', 'love-calculator', '0', '0'),
(11, 'Mail (private message)', 'mail', '0', '1'),
(12, 'Instant Messaging (IM)', 'im', '0', '1'),
(13, 'Related Profiles', 'related-profile', '0', '0'),
(14, 'Friends', 'friend', '0', '0'),
(15, 'User Dashboard', 'user-dashboard', '0', '0'),
(16, 'Game', 'game', '0', '0'),
(17, 'Newsletter', 'newsletter', '0', '1'),
(18, 'Invite Friends', 'invite', '0', '1'),
(19, 'Social Media Auth (connect module)', 'connect', '0', '0'),
(20, 'Webcam', 'webcam', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_TopMenus`
--

CREATE TABLE `ph7nd_TopMenus` (
  `menuId` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(40) NOT NULL,
  `moduleName` varchar(40) NOT NULL,
  `controllerName` varchar(40) NOT NULL,
  `actionName` varchar(40) NOT NULL,
  `vars` varchar(60) DEFAULT NULL,
  `parentMenu` smallint(4) unsigned DEFAULT NULL,
  `grandParentMenu` smallint(4) unsigned DEFAULT NULL,
  `onlyForUsers` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ph7nd_Videos`
--

CREATE TABLE `ph7nd_Videos` (
  `videoId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profileId` int(10) unsigned NOT NULL,
  `albumId` int(10) unsigned NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `approved` enum('1','0') NOT NULL DEFAULT '1',
  `votes` int(9) unsigned DEFAULT '0',
  `score` float unsigned DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `duration` int(9) NOT NULL,
  PRIMARY KEY (`videoId`),
  KEY `albumId` (`albumId`),
  KEY `profileId` (`profileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Constraints for table `ph7nd_AdminsLogSess`
--
ALTER TABLE `ph7nd_AdminsLogSess`
  ADD CONSTRAINT `ph7nd_AdminsLogSess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Admins` (`profileId`);

--
-- Constraints for table `ph7nd_AffiliatesInfo`
--
ALTER TABLE `ph7nd_AffiliatesInfo`
  ADD CONSTRAINT `ph7nd_AffiliatesInfo_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Affiliates` (`profileId`);

--
-- Constraints for table `ph7nd_AffiliatesLogSess`
--
ALTER TABLE `ph7nd_AffiliatesLogSess`
  ADD CONSTRAINT `ph7nd_AffiliatesLogSess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Affiliates` (`profileId`);

--
-- Constraints for table `ph7nd_AlbumsPictures`
--
ALTER TABLE `ph7nd_AlbumsPictures`
  ADD CONSTRAINT `ph7nd_AlbumsPictures_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_AlbumsVideos`
--
ALTER TABLE `ph7nd_AlbumsVideos`
  ADD CONSTRAINT `ph7nd_AlbumsVideos_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_BlogsCategories`
--
ALTER TABLE `ph7nd_BlogsCategories`
  ADD CONSTRAINT `ph7nd_BlogsCategories_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `ph7nd_Blogs` (`blogId`);

--
-- Constraints for table `ph7nd_CommentsBlog`
--
ALTER TABLE `ph7nd_CommentsBlog`
  ADD CONSTRAINT `ph7nd_CommentsBlog_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Blogs` (`blogId`);

--
-- Constraints for table `ph7nd_CommentsGame`
--
ALTER TABLE `ph7nd_CommentsGame`
  ADD CONSTRAINT `ph7nd_CommentsGame_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Games` (`gameId`);

--
-- Constraints for table `ph7nd_CommentsNote`
--
ALTER TABLE `ph7nd_CommentsNote`
  ADD CONSTRAINT `ph7nd_CommentsNote_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Notes` (`noteId`);

--
-- Constraints for table `ph7nd_CommentsPicture`
--
ALTER TABLE `ph7nd_CommentsPicture`
  ADD CONSTRAINT `ph7nd_CommentsPicture_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Pictures` (`pictureId`);

--
-- Constraints for table `ph7nd_CommentsProfile`
--
ALTER TABLE `ph7nd_CommentsProfile`
  ADD CONSTRAINT `ph7nd_CommentsProfile_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_CommentsVideo`
--
ALTER TABLE `ph7nd_CommentsVideo`
  ADD CONSTRAINT `ph7nd_CommentsVideo_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Videos` (`videoId`);

--
-- Constraints for table `ph7nd_Forums`
--
ALTER TABLE `ph7nd_Forums`
  ADD CONSTRAINT `ph7nd_Forums_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `ph7nd_ForumsCategories` (`categoryId`);

--
-- Constraints for table `ph7nd_ForumsMessages`
--
ALTER TABLE `ph7nd_ForumsMessages`
  ADD CONSTRAINT `ph7nd_ForumsMessages_ibfk_1` FOREIGN KEY (`topicId`) REFERENCES `ph7nd_ForumsTopics` (`topicId`);

--
-- Constraints for table `ph7nd_ForumsTopics`
--
ALTER TABLE `ph7nd_ForumsTopics`
  ADD CONSTRAINT `ph7nd_ForumsTopics_ibfk_1` FOREIGN KEY (`forumId`) REFERENCES `ph7nd_Forums` (`forumId`);

--
-- Constraints for table `ph7nd_Members`
--
ALTER TABLE `ph7nd_Members`
  ADD CONSTRAINT `ph7nd_Members_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `ph7nd_Memberships` (`groupId`);

--
-- Constraints for table `ph7nd_MembersBackground`
--
ALTER TABLE `ph7nd_MembersBackground`
  ADD CONSTRAINT `ph7nd_MembersBackground_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersFriends`
--
ALTER TABLE `ph7nd_MembersFriends`
  ADD CONSTRAINT `ph7nd_MembersFriends_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`),
  ADD CONSTRAINT `ph7nd_MembersFriends_ibfk_2` FOREIGN KEY (`friendId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersInfo`
--
ALTER TABLE `ph7nd_MembersInfo`
  ADD CONSTRAINT `ph7nd_MembersInfo_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersLogSess`
--
ALTER TABLE `ph7nd_MembersLogSess`
  ADD CONSTRAINT `ph7nd_MembersLogSess_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersNotifications`
--
ALTER TABLE `ph7nd_MembersNotifications`
  ADD CONSTRAINT `ph7nd_MembersNotifications_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersPrivacy`
--
ALTER TABLE `ph7nd_MembersPrivacy`
  ADD CONSTRAINT `ph7nd_MembersPrivacy_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersWall`
--
ALTER TABLE `ph7nd_MembersWall`
  ADD CONSTRAINT `ph7nd_MembersWall_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_MembersWhoViews`
--
ALTER TABLE `ph7nd_MembersWhoViews`
  ADD CONSTRAINT `ph7nd_MembersWhoViews_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`),
  ADD CONSTRAINT `ph7nd_MembersWhoViews_ibfk_2` FOREIGN KEY (`visitorId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_Messages`
--
ALTER TABLE `ph7nd_Messages`
  ADD CONSTRAINT `ph7nd_Messages_ibfk_1` FOREIGN KEY (`recipient`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_Messenger`
--
ALTER TABLE `ph7nd_Messenger`
  ADD CONSTRAINT `ph7nd_Messenger_ibfk_1` FOREIGN KEY (`fromUser`) REFERENCES `ph7nd_Members` (`username`),
  ADD CONSTRAINT `ph7nd_Messenger_ibfk_2` FOREIGN KEY (`toUser`) REFERENCES `ph7nd_Members` (`username`);

--
-- Constraints for table `ph7nd_Notes`
--
ALTER TABLE `ph7nd_Notes`
  ADD CONSTRAINT `ph7nd_Notes_ibfk_1` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_NotesCategories`
--
ALTER TABLE `ph7nd_NotesCategories`
  ADD CONSTRAINT `ph7nd_NotesCategories_ibfk_1` FOREIGN KEY (`noteId`) REFERENCES `ph7nd_Notes` (`noteId`),
  ADD CONSTRAINT `ph7nd_NotesCategories_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_Pictures`
--
ALTER TABLE `ph7nd_Pictures`
  ADD CONSTRAINT `ph7nd_Pictures_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7nd_AlbumsPictures` (`albumId`),
  ADD CONSTRAINT `ph7nd_Pictures_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_Report`
--
ALTER TABLE `ph7nd_Report`
  ADD CONSTRAINT `ph7nd_Report_ibfk_1` FOREIGN KEY (`reporterId`) REFERENCES `ph7nd_Members` (`profileId`),
  ADD CONSTRAINT `ph7nd_Report_ibfk_2` FOREIGN KEY (`spammerId`) REFERENCES `ph7nd_Members` (`profileId`);

--
-- Constraints for table `ph7nd_Videos`
--
ALTER TABLE `ph7nd_Videos`
  ADD CONSTRAINT `ph7nd_Videos_ibfk_1` FOREIGN KEY (`albumId`) REFERENCES `ph7nd_AlbumsVideos` (`albumId`),
  ADD CONSTRAINT `ph7nd_Videos_ibfk_2` FOREIGN KEY (`profileId`) REFERENCES `ph7nd_Members` (`profileId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
