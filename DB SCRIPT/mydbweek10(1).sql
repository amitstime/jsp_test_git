-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2016 at 03:32 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydbweek10`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`ID`, `Name`, `Address`, `Phone`) VALUES
(1, 'AAA', 'Address 1', '11111111'),
(3, 'John', 'Doe', '99999'),
(4, 'CCC', 'Address 3', '33333333'),
(5, 'DDD', 'Address 4', '44444444');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `BannerID` int(11) NOT NULL AUTO_INCREMENT,
  `BannerName` varchar(255) NOT NULL,
  `BannerDesc` varchar(255) NOT NULL,
  `DispalyOrder` int(11) NOT NULL,
  `IsActive` int(11) NOT NULL,
  PRIMARY KEY (`BannerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`BannerID`, `BannerName`, `BannerDesc`, `DispalyOrder`, `IsActive`) VALUES
(11, '1417604790banner.jpg', '', 1, 0),
(12, '1417779215banner1.jpg', 'banner2', 2, 0),
(13, '1442838045Mobile Apps Development.jpeg', 'Image 3', 3, 0),
(14, '14433162813.jpg', 'Banner 4', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(4, 'Mobile'),
(5, 'Laptops'),
(6, 'Mouse'),
(7, 'Speaker'),
(8, 'Pendrive'),
(10, 'My Category 1'),
(11, 'Category 7');

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE IF NOT EXISTS `facebook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FacebookID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`ID`, `FacebookID`) VALUES
(1, '283953351632017');

-- --------------------------------------------------------

--
-- Table structure for table `menupage`
--

CREATE TABLE IF NOT EXISTS `menupage` (
  `MenuPageID` int(11) NOT NULL AUTO_INCREMENT,
  `MenuPageName` varchar(255) NOT NULL,
  `MenuPageOrder` int(11) NOT NULL,
  `MenuPageArticle` longtext NOT NULL,
  PRIMARY KEY (`MenuPageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menupage`
--

INSERT INTO `menupage` (`MenuPageID`, `MenuPageName`, `MenuPageOrder`, `MenuPageArticle`) VALUES
(1, 'Home', 1, ' 1231111'),
(2, 'About Us', 2, 'AMSOFT is a group of energetic youth which provide full-service on Web  Presence Provider and Software Development.  We are committed to excellence in web site design, Web Site Maintenance,  CMS Design and Software development to our valuable clients.  We can meet your needs, big or small, from a quality and cheap web page  design to with all the latest technologies. If you would like to grasp more information, then please feel free to  contact us.AMSOFT is a group of energetic youth which provide full-service on Web  Presence Provider and Software Development.  We are committed to excellence in web site design, Web Site Maintenance,  CMS Design and Software development to our valuable clients.  We can meet your needs, big or small, from a quality and cheap web page  design to with all the latest technologies. If you would like to grasp more information, then please feel free to  contact us.'),
(3, 'Contact Us', 3, ''),
(4, 'New Page', 4, 'New Page Content<span style="white-space: pre;"> </span>'),
(5, 'My Page 1', 5, 'My Page `1 Description&nbsp;'),
(6, 'Academia Menu', 0, 'asdfadsf&nbsp;<br />asdf<br /><br />asdfasf <br /><br />asfsf');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductImage` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductDesc` text NOT NULL,
  `ProductPrice` varchar(255) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductFeature` varchar(255) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductImage`, `ProductName`, `ProductDesc`, `ProductPrice`, `CategoryID`, `ProductFeature`) VALUES
(1, '1417759175micromax-a290.jpg', 'Micromax A290', 'Canvas Knight Cameo', '200', 4, 'No'),
(2, '1417759699apple-iphone-6-3.jpg', 'iPhone 6', 'Apple', '800', 4, 'Yes'),
(3, '1417759765samsung-galaxy-note-4-new.jpg', 'Samsung Galaxy Note 4', 'Samsung', '800', 4, 'Yes'),
(4, '1417759975samsung-galaxy-grand-prime-sm-g530h.jpg', 'Grand Prime', 'Samsung ', '400', 4, 'Yes'),
(5, '1417760088moto-nexus-6.jpg', 'Nexus 6', 'Motorola ', '500', 4, 'Yes'),
(6, '1417760281lenovo-golden-warrior-note-8.jpg', 'Golden Warrior Note 8', 'Lenovo', '600', 4, 'Yes'),
(7, '1417760367lenovo-a319.jpg', 'A319', 'Lenovo', '350', 4, 'Yes'),
(8, '1417760524lenovo-golden-warrior-s8-.jpg', 'Golden Warrior S8', 'Lenovo', '500', 4, 'Yes'),
(9, '1417770959Acer-4919-79018-1-product.jpg', 'Aspire e-1 571 ', 'Acer ', '500', 5, 'Yes'),
(10, '1417774689lenovo-a319.jpg', 'test1', 'test1', '200', 7, 'Yes'),
(11, '1443316141MobileAppsDev1.png', 'AAA', 'Desc 1', '10000', 10, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `IsActive` int(11) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `Username`, `Email`, `Password`, `IsActive`) VALUES
(1, 'Administrator', 'admin', 'admin@domain.com', 'admin', 1),
(2, 'Administrator 1', 'admin1', 'admin1@gmail.com', 'admin1', 1),
(3, 'admin10', 'admin10', 'admin10', 'admin10', 1),
(4, 'fullName', 'username', 'email', 'password', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
