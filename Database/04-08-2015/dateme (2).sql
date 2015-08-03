-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2015 at 09:15 PM
-- Server version: 5.5.13
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dateme`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE IF NOT EXISTS `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_userid` int(10) unsigned NOT NULL,
  `to_userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `isonline`
--

CREATE TABLE IF NOT EXISTS `isonline` (
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `name` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `here_for` varchar(50) DEFAULT NULL,
  `lookingfor` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `interests` varchar(50) DEFAULT NULL,
  `aboutme` varchar(200) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `sexuality` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `body_type` varchar(30) NOT NULL,
  `eyecolor` varchar(30) NOT NULL,
  `hair_color` varchar(20) NOT NULL,
  `living` varchar(20) NOT NULL,
  `children` varchar(20) NOT NULL,
  `smoking` varchar(20) NOT NULL,
  `drinking` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `language` varchar(30) NOT NULL,
  `job` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `income` varchar(50) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `name`, `password`, `email`, `birthday`, `gender`, `here_for`, `lookingfor`, `location`, `interests`, `aboutme`, `relationship`, `sexuality`, `height`, `weight`, `body_type`, `eyecolor`, `hair_color`, `living`, `children`, `smoking`, `drinking`, `education`, `language`, `job`, `company`, `income`) VALUES
(34, 'ASK ME', 'darshika', 'dat22@gmail.com', 'dat22@gmail.com', '1988-09-09', 'female', 'fun', 'ASK ME', 'ahmedabad', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(33, 'ASK ME', 'date12', 'dat2@dateme.com', 'dat2@dateme.com', '1988-09-09', 'female', 'sex', 'ASK ME', 'Surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(31, 'ASK ME', 'date12', 'date12@dateme.com', 'date12@dateme.com', '1988-09-09', 'female', 'sex', 'ASK ME', 'Surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(30, 'ASK ME', 'nirav', 'date1@test.com', 'date1@test.com', '1988-08-02', 'male', 'sex', 'ASK ME', 'Ahmedabad', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(28, 'ASK ME', 'geny1', 'geny1@gmail.com', 'geny1@gmail.com', '1988-05-05', 'male', 'asdas', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(27, 'ASK ME', '', 'geny@gmail.com', 'geny@gmail.com', '1988-02-02', 'female', 'chat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(37, 'ASK ME', 'hello', 'hello@124u.com', 'hello@124u.com', '1988-07-07', 'male', 'fun', 'ASK ME', 'surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(38, 'ASK ME', 'lappy', 'lappy1@gmaol.com', 'lappy1@gmaol.com', '1988-07-07', 'male', 'fun', 'ASK ME', 'surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(39, 'ASK ME', 'mit', 'mit@gnaikm', 'mit@gnaikm', '2015-01-21', 'Female', 'chat', 'ASK ME', 'surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(42, 'ASK ME', 'mit', 'mit@gnaikmde', 'mit@gnaikmde', '2015-01-21', 'Female', 'chat', 'ASK ME', 'surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(29, 'ASK ME', 'mitali', 'mitali.devkar@gmail.com', 'mitali.devkar@gmail.com', '1994-01-30', 'female', 'make friend', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(5, NULL, NULL, '', 'mitu@gmail.com', '2012-11-11', 'Male', 'chat', 'girl', 'Ahmedabad', 'music', 'nirav bhandari', 'single', 'straight', '167', '65', 'ethlic', 'blue', 'black', 'with parents', 'No Never', 'NO', '', '', '', '', '', ''),
(6, NULL, NULL, '', 'nirav122224u@gmail.com', '2012-11-11', 'Male', 'chat', 'girl', 'Ahmedabad', 'music', 'nirav bhandari', 'single', 'straight', '167', '65', 'ethlic', 'blue', 'black', 'with parents', 'No Never', 'NO', '', '', '', '', '', ''),
(3, NULL, NULL, '', 'nirav1224u@gmail.com', '2012-11-11', 'Male', 'chat', 'girl', 'Ahmedabad', 'music', 'nirav bhandari', 'single', 'straight', '167', '65', 'ethlic', 'blue', 'black', 'with parents', 'No Never', 'NO', '', '', '', '', '', ''),
(12, NULL, NULL, '123456', 'nirav124u@gmail.com', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(13, NULL, NULL, '123456', 'nirav124u@gmail.com1', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(23, NULL, NULL, '123456', 'nirav124u@gmail.com10', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(26, 'nirav124u', 'nirav bhandari', '123456', 'nirav124u@gmail.com11', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(14, NULL, NULL, '123456', 'nirav124u@gmail.com2', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(15, NULL, NULL, '123456', 'nirav124u@gmail.com3', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(16, NULL, NULL, '123456', 'nirav124u@gmail.com4', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(17, NULL, NULL, '123456', 'nirav124u@gmail.com5', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(18, NULL, NULL, '123456', 'nirav124u@gmail.com6', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(19, NULL, NULL, '123456', 'nirav124u@gmail.com7', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(20, NULL, NULL, '123456', 'nirav124u@gmail.com8', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(22, NULL, NULL, '123456', 'nirav124u@gmail.com9', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(2, NULL, NULL, '', 'nirav2124u@gmail.com', '2012-11-11', 'Male', 'chat', 'girl', 'Ahmedabad', 'music', 'nirav bhandari', 'single', 'straight', '167', '65', 'ethlic', 'blue', 'black', 'with parents', 'No Never', 'NO', '', '', '', '', '', ''),
(7, NULL, NULL, '', 'nirav@dateme.com', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(9, NULL, NULL, '', 'nirav@dateme.coma', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high'),
(35, 'ASK ME', 'gwueu', 'tra124j', 'tra124j', '1988-06-06', 'male', 'fub', 'ASK ME', 'surat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(36, 'ASK ME', 'hxhdh', 'yuuu@gmail.com', 'yuuu@gmail.com', '1988-07-07', 'ale', '1988-7-7', 'ASK ME', 'ahmedabad', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `visitor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
