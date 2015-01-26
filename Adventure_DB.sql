-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2015 at 03:30 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Adventure DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Command`
--

CREATE TABLE IF NOT EXISTS `ADV_Command` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Command',
  `AdventureID` int(11) NOT NULL COMMENT 'AdventureID for Command',
  `ActionID` int(11) NOT NULL COMMENT 'ActionID for Command',
  `Text` varchar(1000) NOT NULL COMMENT 'Text for Command',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Event`
--

CREATE TABLE IF NOT EXISTS `ADV_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Event',
  `AdventureID` int(11) NOT NULL COMMENT 'AdventureID for Event',
  `EventTypeID` int(11) NOT NULL COMMENT 'EventType for Event',
  `ActionID` int(11) NOT NULL COMMENT 'ActionID for Event',
  `String1` varchar(1000) NOT NULL COMMENT 'String1 for Event',
  `String2` varchar(1000) NOT NULL COMMENT 'String2 for Event',
  `String3` varchar(1000) NOT NULL COMMENT 'String3 for Event',
  `Value1` int(11) NOT NULL COMMENT 'Value1 for Event',
  `Value2` int(11) NOT NULL COMMENT 'Value2 for Event',
  `Value3` int(11) NOT NULL COMMENT 'Value3 for Event',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_EventPrereg`
--

CREATE TABLE IF NOT EXISTS `ADV_EventPrereg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for EventPrereg',
  `EventID` int(11) NOT NULL COMMENT 'EventID for EventPrereg',
  `RequiredID` int(11) NOT NULL COMMENT 'RequiredID for EventPrereg',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Location`
--

CREATE TABLE IF NOT EXISTS `ADV_Location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Location',
  `AdventureID` int(11) NOT NULL COMMENT 'AdventureID for Location',
  `Name` varchar(20) NOT NULL COMMENT 'Name for Location',
  `Description` varchar(1000) NOT NULL COMMENT 'Description for Location',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationConnection`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationConnection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for LocationConnection',
  `FromID` int(11) NOT NULL COMMENT 'FromID for LocationConnection',
  `Direction` varchar(50) NOT NULL COMMENT 'Direction for LocationConnection',
  `ToID` int(11) NOT NULL COMMENT 'ToID for LocationConnection',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationThing`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for LocationThing',
  `ThingID` int(11) NOT NULL COMMENT 'ThingID for LocationThing',
  `LocationID` int(11) NOT NULL COMMENT 'LocationID for LocationThing',
  `Quantity` int(11) NOT NULL COMMENT 'Quantity for LocationThing',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Thing`
--

CREATE TABLE IF NOT EXISTS `ADV_Thing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Thing',
  `ThingTypeID` int(11) NOT NULL COMMENT 'ThingTypeID for Thing',
  `AdventureID` int(11) NOT NULL COMMENT 'AdventureID for Thing',
  `Name` varchar(20) NOT NULL COMMENT 'Name for Thing',
  `Description` varchar(1000) NOT NULL COMMENT 'Description for Thing',
  `IsStackable` tinyint(1) NOT NULL COMMENT 'IsStackable for Thing',
  `Value` int(11) NOT NULL COMMENT 'Value for Thing',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Actions`
--

CREATE TABLE IF NOT EXISTS `MST_Actions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Action',
  `Name` varchar(20) NOT NULL COMMENT 'Name of Action',
  `Description` varchar(1000) NOT NULL COMMENT 'Description for Action',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Adventures`
--

CREATE TABLE IF NOT EXISTS `MST_Adventures` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_EventType`
--

CREATE TABLE IF NOT EXISTS `MST_EventType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for EventType',
  `Name` varchar(20) NOT NULL COMMENT 'Name for EventType',
  `Description` varchar(1000) NOT NULL COMMENT 'Description for EventType',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_ThingType`
--

CREATE TABLE IF NOT EXISTS `MST_ThingType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for ThingType',
  `Name` varchar(20) NOT NULL COMMENT 'Name for ThingType',
  `Description` varchar(1000) NOT NULL COMMENT 'Description of ThingType',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Event`
--

CREATE TABLE IF NOT EXISTS `STA_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Event',
  `StateID` int(11) NOT NULL COMMENT 'StateID for Event',
  `EventID` int(11) NOT NULL COMMENT 'EventID for Event',
  `Order` int(11) NOT NULL COMMENT 'Order for Event',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_LocationThing`
--

CREATE TABLE IF NOT EXISTS `STA_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for LocationThing',
  `SaveID` int(11) NOT NULL COMMENT 'SaveID for LocationThing',
  `ThingID` int(11) NOT NULL COMMENT 'ThingID for LocationThing',
  `LocationID` int(11) NOT NULL COMMENT 'LocationID for LocationThing',
  `Quantity` int(11) NOT NULL COMMENT 'Quantity for LocationThing',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Save`
--

CREATE TABLE IF NOT EXISTS `STA_Save` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID for Save',
  `AdventureID` int(11) NOT NULL COMMENT 'AdventureID for Save',
  `Name` varchar(20) NOT NULL COMMENT 'Name for Save',
  `LocationID` int(11) NOT NULL COMMENT 'LocationID for Save',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
