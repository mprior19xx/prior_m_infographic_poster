-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2019 at 10:22 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite-things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

DROP TABLE IF EXISTS `tbl_things`;
CREATE TABLE IF NOT EXISTS `tbl_things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `Role` varchar(60) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Title`, `Image`, `Description`, `Link`, `Role`) VALUES
(1, 'COD : Black Ops 4', 'cod-blops4.jpg', 'is a multiplayer first-person shooter developed by Treyarch and published by Activision. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on October 12, 2018. It is Black Ops 4 is a sequel to the 2015 game Call of Duty: Black Ops III, the fifth entry in the Black Ops sub-series, and the 15th installment in the Call of Duty series overall.', 'https://www.ea.com/games/star-wars/star-wars-battlefront', '9.32 Million Copies Sold'),
(2, 'FIFA 2019', 'fifa2019.jpg', 'FIFA 19 is a football simulation video game developed by EA Vancouver as part of Electronic Arts\' FIFA series. It is the 26th installment in the FIFA series, and was released on 28 September 2018 for PlayStation 3, PlayStation 4.', 'https://www.ea.com/games/fifa/fifa-19', '9.15 Million Copies Sold'),
(3, 'FALLOUT 4', 'fallout4.jpg', 'Fallout 4 is a post-nuclear apocalyptic action role-playing game developed by Bethesda Game Studios and published by Bethesda Softworks. It is the fifth major installment in the Fallout series and was released worldwide on November 10, 2015, for PlayStation 4.', 'https://fallout.bethesda.net/', '8.84 Million Copies Sold'),
(4, 'FIFA 16', 'fifa2016.jpg', 'The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote, including one of the first three women to appear on the cover. Martin Tyler and Alan Smith are the commentators for the game.', 'https://www.origin.com/can/en-us/store/fifa/fifa-16', '8.84 Million Copies Sold'),
(5, 'StarWars : Battlefront', 'battlefront.jpg', 'Star Wars: Battlefront is a first- and third-person shooter video game based on the Star Wars film franchise. Developed by Pandemic Studios and published by LucasArts, it is the first game in the Star Wars: Battlefront series. It was released on September 21, 2004, for PlayStation 2 to coincide the release of the Star Wars Trilogy DVD set. ', 'https://www.origin.com/can/en-us/store/star-wars/', '8.22 Million Copies Sold');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
