-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2014 at 10:27 PM
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
CREATE DATABASE IF NOT EXISTS `dateme` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dateme`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `name`, `password`, `email`, `birthday`, `gender`, `here_for`, `lookingfor`, `location`, `interests`, `aboutme`, `relationship`, `sexuality`, `height`, `weight`, `body_type`, `eyecolor`, `hair_color`, `living`, `children`, `smoking`, `drinking`, `education`, `language`, `job`, `company`, `income`) VALUES
(28, 'ASK ME', 'geny1', 'geny1@gmail.com', 'geny1@gmail.com', '1988-05-05', 'male', 'asdas', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
(27, 'ASK ME', '', 'geny@gmail.com', 'geny@gmail.com', '1988-02-02', 'female', 'chat', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME', 'ASK ME'),
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
(9, NULL, NULL, '', 'nirav@dateme.coma', '1988-02-03', 'male', 'date', 'female', 'surat', 'singing', 'open minded', 'married', 'straight', '256', '66', 'slim', 'black', 'black', 'with wife', 'yes', 'no', 'occasionaly', 'post graduation', 'english', 'IT', 'panamax infotech', 'high');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `status`) VALUES
(25, 'mital', 'mitali.devkar@gmail.com', '123456', 'hi...'),
(26, 'nirav', 'nirav124u@gmail.com', 'mitu@1103', 'hello');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
