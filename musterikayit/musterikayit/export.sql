-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 17, 2022 at 02:23 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `musteri_kayit`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `county` char(30) DEFAULT NULL,
  `postcode` varchar(7) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Adres Tablosu
--

INSERT INTO `address` (`id`, `master_id`, `date_added`, `date_modified`, `address`, `city`, `county`, `postcode`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', '100 Windows Road', 'London', 'Ealing', 'EA112ER'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', '300 Mountain View', 'London', 'Wandsworth', 'SW185JW');

-- --------------------------------------------------------

--
-- Email Tablosu
--

CREATE TABLE `email` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Email Tablosu
--

INSERT INTO `email` (`id`, `master_id`, `date_added`, `date_modified`, `email`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Bill.Gates@outlook.com'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Steve.Jobs@gmail.com');

-- --------------------------------------------------------

--
-- İsim tablosu
--

CREATE TABLE `master_name` (
`id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `f_name` varchar(75) DEFAULT NULL,
  `l_name` varchar(75) DEFAULT NULL,
  `company` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- İsim Tablosu
--

INSERT INTO `master_name` (`id`, `date_added`, `date_modified`, `f_name`, `l_name`, `company`) VALUES
(1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Bill', 'Gates', 'Windows'),
(2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Steve', 'Jobs', 'Apple');

-- --------------------------------------------------------

--
-- Notlar
--

CREATE TABLE `personal_notes` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Notlar
--

INSERT INTO `personal_notes` (`id`, `master_id`, `date_added`, `date_modified`, `note`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', 'Great person'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', 'Vegan diet');

-- --------------------------------------------------------

--
-- Telefon Tablosu
--

CREATE TABLE `telephone` (
`id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `tel_number` varchar(25) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Telefon Tablosu
--

INSERT INTO `telephone` (`id`, `master_id`, `date_added`, `date_modified`, `tel_number`) VALUES
(1, 1, '2015-05-28 13:13:12', '2015-05-28 13:13:12', '02087654545'),
(2, 2, '2015-05-28 13:17:25', '2015-05-28 13:17:25', '02078654534');

--
-- Tablo Indexi
--

--
-- Adres tablosu
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`id`);

--
-- IEmail Tablosu
--
ALTER TABLE `email`
 ADD PRIMARY KEY (`id`);

--
-- İsim Tablosu
--
ALTER TABLE `master_name`
 ADD PRIMARY KEY (`id`);

--
-- Notlar Tablosu
--
ALTER TABLE `personal_notes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `master_id` (`master_id`);

--
-- Telefon Tablosu
--
ALTER TABLE `telephone`
 ADD PRIMARY KEY (`id`);

--
-- Tablolar için AUTO_INCREMENT 
--

--
-- Adres Tablosu için AUTO_INCREMENT 
--
ALTER TABLE `address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Email Tablosu için AUTO_INCREMENT 
--
ALTER TABLE `email`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- İsim Tablosu için AUTO_INCREMENT 
--
ALTER TABLE `master_name`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Notlar tablosu için AUTO_INCREMENT 
--
ALTER TABLE `personal_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Telefon Tablosu için AUTO_INCREMENT 
--
ALTER TABLE `telephone`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;