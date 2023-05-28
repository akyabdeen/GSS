-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2023 at 07:47 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gss`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `user_id` int(3) NOT NULL,
  `game_id` int(3) NOT NULL,
  PRIMARY KEY (`user_id`,`game_id`),
  KEY `favorites_fk2` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `game_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 11),
(2, 1),
(2, 6),
(2, 9),
(2, 10),
(3, 2),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `price` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `game_name`, `description`, `price`) VALUES
(1, 'Rocket League', 'This game offers the player a different experience, allowing them to drive around as car and play soccer against others. Whether its other players, or bots, the game provides a mult5itude of game modes and options to play with.', 0.00),
(2, 'Elden Ring', 'Elden Ring is a role playing game, where the player goes around exploring the world of the tarnished and demigods. Killed all that challenge them in intense fighting scenarios.', 59.99),
(3, 'Call of Duty Modern Warfare 2', 'Call of Duty: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.', 69.99),
(4, 'Valorant', 'Valorant is a free-to-play first-person tactical hero shooter, where players engage in a 5 vs 5 battle of elimination rounds. The goal is to plant a bomb in the designated area, and for the enemy team to diffuse it. ', 0.00),
(5, 'Apex Legends', 'Apex Legends is a first-person Hero Shooter. Master an ever-growing roster of legendary characters with powerful abilities, and experience strategic squad play and innovative gameplay in the next evolution of Hero Shooter and Battle Royale.', 0.00),
(6, 'Fifa 2023', 'Experience the excitement of the biggest tournament in football with EA SPORTS™ FIFA 23 and the men’s FIFA World Cup™ update, available on November 9 at no additional cost!', 69.99),
(7, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 39.99),
(8, 'Tom Clancy\'s Rainbow Six Siege', 'Tom Clancy\'s Rainbow Six Siege is the latest installment of the acclaimed first-person shooter franchise developed by the renowned Ubisoft Montreal studio.', 19.99),
(9, 'Doom Eternal', 'Hell’s armies have invaded Earth. Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity. The only thing they fear... is you.', 39.99),
(10, 'GTA 5', 'Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.', 29.98),
(11, 'Cuphead', 'Classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era.', 19.99);

-- --------------------------------------------------------

--
-- Table structure for table `game_news`
--

DROP TABLE IF EXISTS `game_news`;
CREATE TABLE IF NOT EXISTS `game_news` (
  `game_id` int(3) DEFAULT NULL,
  `headline` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  KEY `news_fk` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_news`
--

INSERT INTO `game_news` (`game_id`, `headline`, `description`) VALUES
(1, '‘Rocket League’ developer is “investigating solutions” to AI cheats in ranked matches', 'According to Pysonix, “a small number of players” are currently using Nexto (a bot that uses AI and reinforcement learning algorithms to optimise play) to compete in ranked matches, giving them a massively unfair advantage.'),
(2, 'How Elden Ring DLC could make 2022\'s Game of the Year even better', 'Elden Ring picked up dozens of Game of the Year awards in 2022 and was enjoyed by millions, so FromSoftware will surely be keen to return to the Lands Between. Here are a few ways DLC could potentially bring improvements.'),
(3, 'Call of Duty Modern Warfare 2 Community Discovers New Years Easter Egg', 'In Call of Duty: Modern Warfare 2 players discover a hidden Easter egg added to one of the new bundles added to the game by Infinity Ward. Easter eggs are nothing new to video games, especially those that are constantly updated like live service titles.'),
(4, 'Debate over VALORANT platform escalates into all-out trash talk between NRG and Sentinels coaches', 'The partnered VALORANT teams competing in the top-tier international VCT leagues are still over a month away from facing each other at the LOCK//IN São Paulo event in February, but a simmering rivalry between two North American contenders is already brewing.'),
(5, 'Apex Legends Private Matches Are Finally Available', 'Apex Legends\'s new Spellbound Collection Event launched on Tuesday, but its enchanting new cosmetic set isn\'t the only new addition to the game. The event\'s update also introduced a long-awaited feature: private matches.'),
(6, 'EA forgets to announce FIFA 23 fan favourite Zlatan Ibrahimovic\'s FUT Centurions item', 'A new promo for FIFA 23, the FUT Centurions event focuses on players who have reached the century milestone in either appearances, goals, assists or clean sheets, with these players receiving big stats boosts.'),
(7, 'Rust - Force Wipes Schedule Explained', 'The term \"force wipe\" has become commonplace within the survival genre of video games. Whether it\'s Escape from Tarkov, Rust, or something newer like V Rising, wipes are a way of keeping players interested in the game.'),
(8, 'Rainbow Six Siege Y7S4.2 Patch Notes', 'While these changes will not come to the live build of the game immediately, it\'s very likely we see them being introduced sometime soon during the current season, Operation Solar Raid.'),
(9, 'This month’s Humble Choice includes Doom Eternal', 'Like many other subscription services, Humble Choice offers up some free games each month, and January 2023 is a pretty great deal. For $11.99 a month (you can cancel at any time or skip a month) you will get six free games in this month’s humble choice, and there’s some real bangers.'),
(10, 'GTA 5 Update Brings Ray Tracing and Quality-of-life Improvements!', 'New to the latest update for Grand Theft Auto V are ray tracing for Xbox One X and PlayStation 5 and other general improvements. In the context menu, you may find a preferred phone contact option that allows you to conceal certain people.');

-- --------------------------------------------------------

--
-- Table structure for table `game_platform`
--

DROP TABLE IF EXISTS `game_platform`;
CREATE TABLE IF NOT EXISTS `game_platform` (
  `game_id` int(3) NOT NULL,
  `platform` varchar(6) NOT NULL,
  PRIMARY KEY (`game_id`,`platform`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_platform`
--

INSERT INTO `game_platform` (`game_id`, `platform`) VALUES
(1, 'PC'),
(1, 'PS'),
(2, 'PC'),
(2, 'PS'),
(2, 'Xbox'),
(3, 'PC'),
(3, 'PS'),
(3, 'Xbox'),
(4, 'PC'),
(5, 'Mobile'),
(5, 'PC'),
(5, 'PS'),
(5, 'Xbox'),
(6, 'PC'),
(6, 'PS'),
(6, 'Xbox'),
(7, 'PC'),
(8, 'PC'),
(8, 'PS'),
(8, 'Xbox'),
(9, 'PC'),
(9, 'PS'),
(9, 'Xbox'),
(10, 'PC'),
(10, 'PS'),
(10, 'Xbox');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `game_id` int(3) DEFAULT NULL,
  `store_name` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`game_id`, `store_name`) VALUES
(1, 'Epic_Games'),
(1, 'Steam'),
(1, 'PS_Store'),
(1, 'Xbox_Store'),
(1, 'Switch_Store'),
(2, 'Epic_Games'),
(2, 'Steam'),
(2, 'PS_Store'),
(2, 'Xbox_Store'),
(2, 'GameStop'),
(2, 'Aladdin'),
(2, 'Most_Wanted'),
(3, 'Epic_Games'),
(3, 'Steam'),
(3, 'PS_Store'),
(3, 'Xbox_Store'),
(3, 'GameStop'),
(3, 'Aladdin'),
(3, 'Most_Wanted'),
(4, 'Epic_Games'),
(4, 'Steam'),
(5, 'Switch_Store'),
(5, 'Xbox_Store'),
(5, 'PS_Store'),
(5, 'Steam'),
(5, 'Epic_Games'),
(6, 'Epic_Games'),
(6, 'Steam'),
(6, 'PS_Store'),
(6, 'Xbox_Store'),
(6, 'GameStop'),
(6, 'Aladdin'),
(6, 'Most_Wanted'),
(7, 'Epic_Games'),
(7, 'Steam'),
(8, 'Epic_Games'),
(8, 'Steam'),
(8, 'PS_Store'),
(8, 'Xbox_Store'),
(8, 'GameStop'),
(8, 'Aladdin'),
(8, 'Most_Wanted'),
(9, 'Epic_Games'),
(9, 'Steam'),
(9, 'PS_Store'),
(9, 'Xbox_Store'),
(9, 'GameStop'),
(9, 'Aladdin'),
(9, 'Most_Wanted'),
(10, 'Epic_Games'),
(10, 'Steam'),
(10, 'PS_Store'),
(10, 'Xbox_Store'),
(10, 'GameStop'),
(10, 'Aladdin'),
(10, 'Most_Wanted'),
(11, 'Steam'),
(11, 'PS_Store'),
(11, 'Xbox_Store'),
(11, 'Switch_Store'),
(11, 'GameStop'),
(11, 'Aladdin'),
(11, 'Most_Wanted');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `platform` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `username`, `password`, `age`, `gender`, `platform`) VALUES
(1, 'carExpert123', '123', 7, 'm', 'PS'),
(2, 'akabdeen', '17388', 99, 'm', 'Xbox');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
