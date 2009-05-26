-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2009 at 08:14 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6-2ubuntu4.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `EmpireEvolution`
--

-- --------------------------------------------------------

--
-- Table structure for table `#BuildingInitialRequirements`
--

CREATE TABLE IF NOT EXISTS `#BuildingInitialRequirements` (
  `UID` int(12) NOT NULL auto_increment,
  `Building1ID` int(5) NOT NULL default '0',
  `Building2ID` int(5) NOT NULL default '0',
  `Building3ID` int(5) NOT NULL default '0',
  `Building4ID` int(5) NOT NULL default '0',
  `Building5ID` int(5) NOT NULL default '0',
  `Building6ID` int(5) NOT NULL default '0',
  `Building7ID` int(5) NOT NULL default '0',
  `Building8ID` int(5) NOT NULL default '0',
  `Research1ID` int(5) NOT NULL default '0',
  `Research1Level` int(5) NOT NULL default '0',
  `Research2ID` int(5) NOT NULL default '0',
  `Research2Level` int(5) NOT NULL default '0',
  `Research3ID` int(5) NOT NULL default '0',
  `Research3Level` int(5) NOT NULL default '0',
  `Research4ID` int(5) NOT NULL default '0',
  `Research4Level` int(5) NOT NULL default '0',
  `Research5ID` int(5) NOT NULL default '0',
  `Research5Level` int(5) NOT NULL default '0',
  PRIMARY KEY  (`UID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Inital Building Requirements' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `#BuildingInitialRequirements`
--

INSERT INTO `#BuildingInitialRequirements` (`UID`, `Building1ID`, `Building2ID`, `Building3ID`, `Building4ID`, `Building5ID`, `Building6ID`, `Building7ID`, `Building8ID`, `Research1ID`, `Research1Level`, `Research2ID`, `Research2Level`, `Research3ID`, `Research3Level`, `Research4ID`, `Research4Level`, `Research5ID`, `Research5Level`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 2, 3, 0, 0, 0, 0, 0, 1, 3, 5, 4, 7, 1, 8, 1, 0, 0),
(5, 1, 2, 3, 4, 0, 0, 0, 0, 1, 6, 5, 7, 7, 4, 8, 4, 0, 0),
(6, 1, 2, 3, 0, 0, 0, 0, 0, 1, 2, 3, 3, 7, 2, 8, 1, 0, 0),
(7, 1, 2, 3, 6, 0, 0, 0, 0, 1, 5, 3, 5, 7, 4, 8, 3, 0, 0),
(8, 1, 2, 3, 4, 6, 7, 0, 0, 1, 7, 3, 7, 7, 6, 8, 5, 0, 0),
(9, 1, 2, 3, 0, 0, 0, 0, 0, 1, 2, 7, 1, 8, 1, 0, 0, 0, 0),
(10, 1, 2, 3, 9, 0, 0, 0, 0, 1, 3, 6, 2, 7, 1, 8, 2, 0, 0),
(11, 1, 2, 3, 9, 10, 0, 0, 0, 1, 5, 6, 5, 7, 5, 8, 4, 0, 0),
(12, 1, 2, 3, 0, 0, 0, 0, 0, 1, 2, 4, 1, 7, 2, 8, 1, 0, 0),
(13, 1, 2, 3, 0, 0, 0, 0, 0, 1, 5, 2, 1, 5, 3, 7, 5, 8, 4),
(14, 1, 2, 3, 4, 0, 0, 0, 0, 1, 7, 2, 4, 5, 4, 7, 7, 8, 6),
(15, 1, 2, 3, 4, 0, 0, 0, 0, 1, 5, 2, 4, 5, 4, 7, 5, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `#BuildingUpgrades`
--

CREATE TABLE IF NOT EXISTS `#BuildingUpgrades` (
  `UID` int(12) NOT NULL auto_increment,
  `BuildingID` int(12) NOT NULL default '0',
  `UpgradeLevel` int(5) NOT NULL default '0',
  `GoldRequired` int(12) NOT NULL default '0',
  `LumberRequired` int(12) NOT NULL default '0',
  `StoneRequired` int(12) NOT NULL default '0',
  `GoldGenerated` int(10) NOT NULL default '0',
  `StoneGenerated` int(10) NOT NULL default '0',
  `LumberGenerated` int(10) NOT NULL default '0',
  `Research1ID` int(5) NOT NULL default '0',
  `Research1Level` int(5) NOT NULL default '0',
  `Research2ID` int(5) NOT NULL default '0',
  `Research2Level` int(5) NOT NULL default '0',
  `Research3ID` int(5) NOT NULL default '0',
  `Research3Level` int(5) NOT NULL default '0',
  `Research4ID` int(5) NOT NULL default '0',
  `Research4Level` int(5) NOT NULL default '0',
  `Research5ID` int(5) NOT NULL default '0',
  `Research5Level` int(5) NOT NULL default '0',
  PRIMARY KEY  (`UID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Building Upgrades' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#BuildingUpgrades`
--

INSERT INTO `#BuildingUpgrades` (`UID`, `BuildingID`, `UpgradeLevel`, `GoldRequired`, `LumberRequired`, `StoneRequired`, `GoldGenerated`, `StoneGenerated`, `LumberGenerated`, `Research1ID`, `Research1Level`, `Research2ID`, `Research2Level`, `Research3ID`, `Research3Level`, `Research4ID`, `Research4Level`, `Research5ID`, `Research5Level`) VALUES
(1, 1, 2, 5000, 2000, 0, 1, 0, 0, 1, 2, 3, 1, 7, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#ResearchCostScheme`
--

CREATE TABLE IF NOT EXISTS `#ResearchCostScheme` (
  `UID` int(12) NOT NULL auto_increment,
  `Level` int(5) NOT NULL default '0',
  `GoldRequired` int(12) NOT NULL default '0',
  PRIMARY KEY  (`UID`),
  UNIQUE KEY `Level` (`Level`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Research Cost Scheme' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#ResearchCostScheme`
--

INSERT INTO `#ResearchCostScheme` (`UID`, `Level`, `GoldRequired`) VALUES
(1, 1, 500),
(2, 2, 1200),
(3, 3, 3000),
(4, 4, 7500),
(5, 5, 20000),
(6, 6, 50000),
(7, 7, 125000),
(8, 8, 250000),
(9, 9, 500000),
(10, 10, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `administrator_logs`
--

CREATE TABLE IF NOT EXISTS `administrator_logs` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL default '0',
  `date` int(11) NOT NULL,
  `event` text NOT NULL,
  `flagged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `administrator_logs`
--

INSERT INTO `administrator_logs` (`uid`, `player_uid`, `date`, `event`, `flagged`) VALUES
(1, 1, 0, 'added Administrator Logs', 0),
(2, 1, 0, 'has added a new requirement for building a Castle', 0),
(4, 1, 0, 'has added a new requirement for building a School', 0),
(5, 1, 0, 'has added a new requirement for building a College.<br/>It now requires an extra 20000 gold.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE IF NOT EXISTS `building` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `GoldRequired` int(10) unsigned NOT NULL default '0',
  `LumberRequired` int(10) unsigned NOT NULL default '0',
  `StoneRequired` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Buildings' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`uid`, `name`, `description`, `GoldRequired`, `LumberRequired`, `StoneRequired`) VALUES
(1, 'Lumber Mill', 'This building will allow the production of Lumber (resource). The building will start off producing a certain number of Wood/Lumber. Once built you will be able to recruit a number of Lumberjacks to increase the production rate depending on the level of the building (e.g. level 1 Lumber Mill will allow the recruitment of 4 lumber jacks, level 2 will allow 8 and so on)', 5000, 2000, 0),
(2, 'Stonemasons', 'This building will act in the exact same way as the Lumber Mill with the exceptions of its production rate, this building will not be able to produce as much Stone (resource) compared to the amount of Lumber produced by the Lumber Mill. Although recruitment and building level rules are the same. ', 10000, 5000, 0),
(3, 'School', 'This building will allow your people to learn, teaching them science and construction skills. Doing this will open up more building options etc. This building will give access to skills which a King may invest in. Each skill will be able to be upgraded to level 5/10 once this building is built.', 30000, 10000, 500),
(4, 'College', 'This building is upgraded from the school, which will have to be built in order for this building to be open to you. Once built all skills will be able to be upgraded to level 8/10.', 100000, 40000, 5000),
(5, 'University', 'This building is upgraded from the college, which will have to be built in order for this building to be open to you. Once built all skills will be able to be upgraded to level 10/10.', 300000, 85000, 20000),
(6, 'Wooden Wall', 'This building will be the first line of defense an Empire will have. It will provide a simple wall in wich to keep invaders out, giving low defense.  It will have 4 Arrow towers. The wall will give a small number of defense. Archers may be recruited to garrison the towers adding to the defense. The Wooden Wall may be upgraded to give more defense and increasing the effectiveness of the archers, increaseing the amount of defense each archer gives. It may be upgraded to level 5/10. ', 60000, 15000, 0),
(7, 'Stone Wall', 'This building is upgraded from the Wooden Wall. When purchased the Wooden Wall will be taken apart and replaced with a Stone Wall. The Stone Wall works the same way as the Wooden Wall, but It has more defense and has an extra 2 Arrow Towers, giving a total of 6 Arrow Towers. This building provides more defense than a level 5 Wooden Wall (which will be required to build this). The effectiveness of the archers is increased again as the same way as upgrading them would do. This building can be upgraded to level 8/10.', 120000, 20000, 25000),
(8, 'Castle Fort', 'This building is upgraded from the Stone Wall. When purchased, instead of taking down the Stone Wall, it is simply fortified, with extra walls and a Castle.  Also another 2 extra Arrow Towers will be built, giving a total of 8 Arrow Towers. All defense increases will be the same as before and this building will be able to be upgraded to level 10/10.', 400000, 120000, 65000),
(9, 'Fletcher', 'This building will allow the recruitment of archer and crossbowmen regiments once a Barracks is built. The quality of the bows and crossbows produced will effect the regiments that use them. Upgrading the level of this building will strengthen your regiments.', 40000, 15000, 0),
(10, 'Blacksmith', 'This building will allow the recruitment of Swordsmen, Knights and Pikemen once a Barracks is built. Also this building will allow the production of unit add-ons (e.g. Iron or Steel armour, which can be equiped by your regiments). As with a Fletcher, upgrading the level of this building will strengthen your regiments and give access to more add-ons. ', 60000, 15000, 6000),
(11, 'Barracks', 'This building will allow The recruitment of an army providing the requirements are met. This building can be upgraded to level 10/10, which will be required to recruit higher ranked regiments.', 110000, 35000, 12000),
(12, 'Rogue''s Guild', 'This building will provide the empire with Infiltration. Which, depending on the amount of it an empire has will allow a king to scout out another empire to gain information. The Guild will be able to recruit Rogues to increase the number of infiltration which will mean you&amp;apos;re more likely to get information. This building, like the bank, will not be upgraded but will depend on the level of an empires Scouting. (This is maybe something we can add later?)', 80000, 20000, 2000),
(13, 'Bank', 'This building will allow the King of an Empire to store a certain amount of Gold safely away, so if the empire was raided then they could not steal gold from the Bank. This building cannot be upgraded, the maximum amount allowed to be stored will depend on the level of an empires economic level. Although handy, the bank will take up to 8 hours untill the next deposit can be made. Although you can withdraw Gold at any time. ', 100000, 30000, 15000),
(14, 'Treasury', 'This building requires the bank to be built first. The Treasury will increase the amount of gold an empire produces. This building cannot be upgraded and once built cannot be of anymore use.', 250000, 78000, 45000),
(15, 'Market', 'Not all empires belong to warmongering kings and some belong to those who wish to live alongside each other. This building will allow an empire to sell items (add-ons) and regiments to each other. The price will be set by the king who is selling it.', 180000, 56000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `building_logs`
--

CREATE TABLE IF NOT EXISTS `building_logs` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL default '0',
  `date` int(11) NOT NULL,
  `event` text NOT NULL,
  `flagged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `building_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `building_requirement`
--

CREATE TABLE IF NOT EXISTS `building_requirement` (
  `uid` int(11) NOT NULL auto_increment,
  `building_uid` int(11) NOT NULL,
  `building_level` int(11) NOT NULL,
  `requirement_uid` varchar(255) NOT NULL,
  `requirement_level` int(11) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `building_requirement`
--

INSERT INTO `building_requirement` (`uid`, `building_uid`, `building_level`, `requirement_uid`, `requirement_level`) VALUES
(1, 1, 1, 'RESGOL', 5000),
(2, 1, 1, 'RESLUM', 2000),
(3, 2, 1, 'RESGOL', 10000),
(4, 2, 1, 'RESLUM', 5000),
(5, 3, 1, 'RESGOL', 30000),
(6, 3, 1, 'RESLUM', 10000),
(7, 3, 1, 'RESSTO', 500),
(8, 4, 1, 'RESGOL', 100000),
(9, 4, 1, 'RESLUM', 40000),
(10, 4, 1, 'RESSTO', 5000),
(11, 5, 1, 'RESGOL', 300000),
(12, 5, 1, 'RESLUM', 85000),
(13, 5, 1, 'RESSTO', 20000),
(14, 6, 1, 'RESGOL', 60000),
(15, 6, 1, 'RESLUM', 15000),
(16, 7, 1, 'RESGOL', 120000),
(17, 7, 1, 'RESLUM', 20000),
(18, 7, 1, 'RESSTO', 25000),
(19, 8, 1, 'RESGOL', 400000),
(20, 8, 1, 'RESLUM', 120000),
(21, 8, 1, 'RESSTO', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE IF NOT EXISTS `confirmation` (
  `uid` int(11) NOT NULL auto_increment,
  `player_uid` int(11) NOT NULL,
  `code` varchar(19) NOT NULL,
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `PlayerUID` (`player_uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`uid`, `player_uid`, `code`) VALUES
(5, 24, '2e90215324'),
(2, 21, '331cb32321'),
(3, 22, '0fdbc57222'),
(4, 23, '9b21030723');

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE IF NOT EXISTS `news_articles` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `published` tinyint(1) unsigned NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`uid`, `player_uid`, `date`, `published`, `deleted`, `title`, `article`) VALUES
(1, 1, 1233603919, 1, 0, 'Empev''s First article', 'This is a sample article.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam varius scelerisque diam. Morbi erat sapien, consectetur et, auctor eget, fermentum at, erat. Maecenas eget orci eget eros lacinia egestas. Fusce pharetra mollis eros. Integer eu sapien rutrum nibh lacinia ultricies. Nulla facilisi. Suspendisse est. Duis leo risus, egestas et, fermentum ac, suscipit at, risus. Morbi venenatis vestibulum est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar libero quis mi. Sed urna. Donec non libero vel massa pellentesque dictum. Vivamus odio arcu, tempus sit amet, consequat in, ultricies non, augue. Donec elit nisi, pharetra cursus, dignissim quis, sodales a, ipsum. Mauris faucibus venenatis dolor.\r\n\r\nMorbi eget risus a turpis porta posuere. Curabitur magna nisi, tincidunt ut, fringilla facilisis, congue ut, ante. Proin fermentum interdum lacus. Proin dolor magna, aliquet vitae, blandit eget, commodo sed, est. Pellentesque sapien. Vivamus arcu. Aliquam lacus erat, varius adipiscing, consectetur ac, consectetur nec, enim. Phasellus vitae elit ac lectus sollicitudin euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed vulputate adipiscing felis. Aliquam quis massa.\r\n\r\nCras molestie justo in erat. Vestibulum non est gravida urna interdum convallis. Morbi non ante ut elit euismod tempor. Pellentesque vestibulum, dolor vel interdum semper, ante libero accumsan est, nec ullamcorper urna nunc sit amet erat. Sed consectetur consectetur augue. Aliquam erat volutpat. Sed rutrum, augue ac iaculis pharetra, lorem pede posuere tortor, commodo fermentum lacus libero vitae lectus. Donec libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In tellus nulla, congue non, blandit ut, mattis iaculis, magna. Vestibulum eget sapien. Nullam sed tortor vel mauris sodales ullamcorper. Cras malesuada purus. Ut lectus. Cras eget orci. Fusce sed erat. Etiam nibh purus, dapibus nec, condimentum eget, volutpat a, arcu.\r\n\r\nMorbi tincidunt. Morbi eget purus. Curabitur euismod, ipsum nec egestas consectetur, sem tellus vestibulum risus, vel fermentum nulla lectus quis nisi. Fusce risus risus, feugiat at, facilisis vestibulum, tempor quis, tellus. Sed a enim at nibh aliquet vehicula. In lectus. Praesent quam erat, porttitor quis, porta non, hendrerit ut, orci. Fusce interdum. Praesent vulputate vestibulum nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque rhoncus urna eu lacus. Nulla facilisi.\r\n\r\nVivamus adipiscing. Maecenas vitae mauris vitae pede faucibus bibendum. Curabitur placerat consectetur metus. Nunc arcu. Duis vel urna vitae velit fringilla posuere. Suspendisse pretium dapibus ipsum. Quisque nulla. In condimentum. Donec euismod, purus eu dignissim fringilla, nulla tortor condimentum nulla, non consectetur purus sapien id mauris. Aliquam venenatis malesuada augue. Cras commodo condimentum dolor. '),
(2, 1, 1233604213, 0, 1, 'The second ever news article', 'This one isnt as informative. But equally as important and initially unpublished.'),
(6, 1, 1233699900, 0, 1, 'Testing', 'blah blah blah blah blah blah blah blah blah'),
(4, 1, 1233695686, 0, 1, 'Empev article #4', 'This is a test of the administrator''s dashboards ability to publish news articles.'),
(5, 1, 1233695722, 0, 1, 'Empev article #4', 'This is a test of the administrator''s dashboards ability to publish news articles.'),
(7, 1, 1233760837, 0, 1, 'kdddgsdfjgfdgsgdfjggsfdghj', 'jfhljdghkrhlfdgeyruitfhjdetyrtujfswetyrtu;gjcswreitu myfhgsteryldsgetr    xgkeyrlvcxmshetyrukjvn xsetrtu;gjvcxzafrwerut;fcxzarwtekcxzm'''''''''''''''''''''''''''''''''),
(8, 1, 1233778366, 0, 1, 'The second ever news article', 'This one isnt as informative. But equally as important and initially unpublished.'),
(9, 1, 1233779984, 0, 1, 'Empire Evolution now has Twitter integration!', 'Empire Evolution now is integrated with twitter! You can follow us at http://www.twitter.com/Empev. All news updates can be found and you can even use its capabilities to try and contact us and we''ll try and get back to you as soon as possible!\n\nI hope you all like this update! :D'),
(10, 1, 1233780186, 0, 1, 'Empire Evolution now has Twitter integration!', 'Empire Evolution now is integrated with twitter! You can follow us at http://www.twitter.com/Empev. All news updates can be found and you can even use its capabilities to try and contact us and we''ll try and get back to you as soon as possible!\n\nI hope you all like this update! :D'),
(11, 1, 1233780720, 1, 0, 'Empire Evolution now has Twitter integration!', 'Empire Evolution now is integrated with twitter! You can follow us at http://www.twitter.com/Empev. All news updates can be found and you can even use its capabilities to try and contact us and we''ll try and get back to you as soon as possible!\n\nI hope you all like this update! :D\n\nEdit:\nIt even updates when you edit an article!\nI hope you all like this update! :D\n\nEdit:\nIt even updates when you edit an article!\r\nThis article was last updated Wednesday 4th February 21:01 PM'),
(12, 1, 1237760717, 0, 1, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `news_logs`
--

CREATE TABLE IF NOT EXISTS `news_logs` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL default '0',
  `date` int(11) NOT NULL,
  `event` text NOT NULL,
  `flagged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `news_logs`
--

INSERT INTO `news_logs` (`uid`, `player_uid`, `date`, `event`, `flagged`) VALUES
(1, 1, 0, 'added a new news article', 0),
(2, 1, 1233699900, 'added a new news article entitled Testing', 0),
(3, 1, 1233760837, 'added a new news article entitled kdddgsdfjgfdgsgdfjggsfdghj', 0),
(4, 1, 1233778366, 'added a new news article entitled The second ever news article', 0),
(5, 1, 1233779984, 'added a new news article entitled Empire Evolution now has Twitter integration!', 0),
(6, 1, 1233780186, 'added a new news article entitled Empire Evolution now has Twitter integration!', 0),
(7, 1, 1233780720, 'added a new news article entitled Empire Evolution now has Twitter integration!', 0),
(8, 1, 1233781227, 'has edited and updated the news article entitled Empire Evolution now has Twitter integration!', 0),
(9, 1, 1233781313, 'has edited and updated the news article entitled Empire Evolution now has Twitter integration!', 0),
(10, 1, 1234297525, 'has deleted the news article entitled ', 0),
(11, 1, 1234297756, 'has deleted the news article entitled ', 0),
(12, 1, 1234297773, 'has deleted the news article entitled Array', 0),
(13, 1, 1234297797, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(14, 1, 1234298044, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(15, 1, 1234298086, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(16, 1, 1234298197, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(17, 1, 1234298204, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(18, 1, 1234298205, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(19, 1, 1234298618, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(20, 1, 1234298685, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(21, 1, 1234298880, 'has deleted the news article entitled The second ever news article', 0),
(22, 1, 1234298998, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(23, 1, 1234299055, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(24, 1, 1234299234, 'has deleted the news article entitled The second ever news article', 0),
(25, 1, 1234299271, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(26, 1, 1234299394, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(27, 1, 1234299470, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(28, 1, 1234299682, 'has deleted the news article entitled Empire Evolution now has Twitter integration!', 0),
(29, 1, 1234299700, 'has deleted the news article entitled kdddgsdfjgfdgsgdfjggsfdghj', 0),
(30, 1, 1234299715, 'has deleted the news article entitled Testing', 0),
(31, 1, 1234299836, 'has deleted the news article entitled Empev article #4', 0),
(32, 1, 1234299845, 'has deleted the news article entitled Empev article #4', 0),
(33, 1, 1237760717, 'added a new news article entitled ', 0),
(34, 1, 1237761006, 'added a new tweet', 0),
(35, 1, 1237828127, 'has deleted the news article entitled 0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rights` tinyint(3) unsigned NOT NULL,
  `join_date` int(11) unsigned NOT NULL,
  `activity` int(11) unsigned NOT NULL,
  UNIQUE KEY `Email` (`email`),
  UNIQUE KEY `ID` (`uid`),
  UNIQUE KEY `Username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding players accounts' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`uid`, `username`, `password`, `email`, `rights`, `join_date`, `activity`) VALUES
(1, 'Alastair', '1f7390524a904876b733ecbff52eb28b', 'Lleaxyer@googlemail.com', 2, 0, 1238082219);

-- --------------------------------------------------------

--
-- Table structure for table `player_building`
--

CREATE TABLE IF NOT EXISTS `player_building` (
  `uid` int(11) NOT NULL auto_increment,
  `player_uid` int(11) NOT NULL default '0',
  `building_uid` int(11) NOT NULL default '0',
  `building_level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding buildings owned by players' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `player_building`
--

INSERT INTO `player_building` (`uid`, `player_uid`, `building_uid`, `building_level`) VALUES
(1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `player_logs`
--

CREATE TABLE IF NOT EXISTS `player_logs` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL default '0',
  `date` int(11) NOT NULL,
  `event` text NOT NULL,
  `flagged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `player_logs`
--

INSERT INTO `player_logs` (`uid`, `player_uid`, `date`, `event`, `flagged`) VALUES
(2, 1, 1234299055, 'has updated his email address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_research`
--

CREATE TABLE IF NOT EXISTS `player_research` (
  `uid` int(11) NOT NULL auto_increment,
  `player_uid` int(11) NOT NULL default '0',
  `research_uid` int(11) NOT NULL default '0',
  `research_level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding research conducted by players' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `player_research`
--


-- --------------------------------------------------------

--
-- Table structure for table `player_resource`
--

CREATE TABLE IF NOT EXISTS `player_resource` (
  `uid` int(11) NOT NULL auto_increment,
  `player_uid` int(11) NOT NULL,
  `gold` int(11) NOT NULL default '250000',
  `stone` int(11) NOT NULL default '100000',
  `wood` int(11) NOT NULL default '50000',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `player_resource`
--

INSERT INTO `player_resource` (`uid`, `player_uid`, `gold`, `stone`, `wood`) VALUES
(1, 1, 250000, 100000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `player_settings`
--

CREATE TABLE IF NOT EXISTS `player_settings` (
  `uid` int(11) NOT NULL auto_increment,
  `player_uid` int(11) NOT NULL,
  `private_profile` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `player_uid` (`player_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `player_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `regiment`
--

CREATE TABLE IF NOT EXISTS `regiment` (
  `uid` int(12) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `attack_bonus` int(5) NOT NULL default '0',
  `defence_bonus` int(5) NOT NULL default '0',
  `carry_bonus` int(5) NOT NULL default '0',
  `GoldRequired` int(12) NOT NULL default '0',
  `LumberRequired` int(12) NOT NULL default '0',
  `StoneRequired` int(12) NOT NULL default '0',
  `ExtraBonus1Unit` int(5) NOT NULL default '0',
  `ExtraBonus1Value` int(5) NOT NULL default '0',
  `ExtraBonus2Unit` int(5) NOT NULL default '0',
  `ExtraBonus2Value` int(5) NOT NULL default '0',
  `ExtraBonus3Unit` int(5) NOT NULL default '0',
  `ExtraBonus3Value` int(5) NOT NULL default '0',
  `ExtraBonus4Unit` int(5) NOT NULL default '0',
  `ExtraBonus4Value` int(5) NOT NULL default '0',
  `ExtraBonus5Unit` int(5) NOT NULL default '0',
  `ExtraBonus5Value` int(5) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Regiments' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `regiment`
--

INSERT INTO `regiment` (`uid`, `name`, `attack_bonus`, `defence_bonus`, `carry_bonus`, `GoldRequired`, `LumberRequired`, `StoneRequired`, `ExtraBonus1Unit`, `ExtraBonus1Value`, `ExtraBonus2Unit`, `ExtraBonus2Value`, `ExtraBonus3Unit`, `ExtraBonus3Value`, `ExtraBonus4Unit`, `ExtraBonus4Value`, `ExtraBonus5Unit`, `ExtraBonus5Value`) VALUES
(1, 'Archer Regiment', 350, 35, 5, 200000, 2000, 0, 3, 50, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Crossbowmen Regiment', 40, 20, 5, 250000, 5000, 0, 3, 50, 4, 50, 0, 0, 0, 0, 0, 0),
(3, 'Swordsmen Regiment', 400, 40, 5, 300000, 2500, 0, 5, 50, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Knight Regiment', 800, 80, 10, 450000, 7500, 0, 1, 50, 3, 50, 6, 50, 0, 0, 0, 0),
(5, 'Pikeman Regiment', 450, 45, 5, 320000, 5000, 0, 4, 50, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Mercenaries', 380, 35, 5, 300000, 0, 0, 11, 50, 8, 50, 9, 50, 10, 50, 0, 0),
(7, 'King&amp;amp;apos;s Guard', 50, 500, 5, 0, 0, 0, 6, 50, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Merchant&amp;amp;apos;s Caravan', 30, 400, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Noble&amp;amp;apos;s Caravan', 40, 500, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Lord&amp;amp;apos;s Caravan', 65, 650, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'King&amp;amp;apos;s Caravan', 80, 800, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `regiment_bonus`
--

CREATE TABLE IF NOT EXISTS `regiment_bonus` (
  `uid` int(11) NOT NULL auto_increment,
  `regiment_uid` int(11) NOT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `bonus_amount` varchar(5) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `regiment_bonus`
--


-- --------------------------------------------------------

--
-- Table structure for table `regiment_requirement`
--

CREATE TABLE IF NOT EXISTS `regiment_requirement` (
  `uid` int(11) NOT NULL auto_increment,
  `regiment_uid` int(11) NOT NULL,
  `requirement_uid` varchar(255) NOT NULL,
  `requirement_level` int(11) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `regiment_requirement`
--


-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE IF NOT EXISTS `research` (
  `uid` int(12) NOT NULL auto_increment,
  `research_name` varchar(255) NOT NULL,
  `research_description` text NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Contains all data regarding Research' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`uid`, `research_name`, `research_description`) VALUES
(1, 'Construction', 'This skill will give a king&amp;apos;s people an understanding of how to build structures, giving access to more buildings and how to improve existing ones.'),
(2, 'Economics', 'This skill will give a king&amp;apos;s people an understanding of how to run an effecient economy, giving access to buildings and improving existing ones.'),
(3, 'Improved Labour', 'This skill will give a king&amp;apos;s people an understanding of how to work effeciently, giving access to buildings and improving existing ones.'),
(4, 'Scouting', 'This skill will give a king&amp;apos;s people an understanding of how to move silently and stealthly, giving access to buildings and improving existing ones.'),
(5, 'Scouting', 'This skill will give a king&amp;apos;s people an understanding of how to move silently and stealthly, giving access to buildings and improving existing ones.'),
(6, 'Teaching', 'This skill will give a king&amp;apos;s people an understanding of how to teach more effectively and teach a larger variety, giving access to buildings and improving existing ones.'),
(7, 'Smithing', 'This skill will give a king&amp;apos;s people an understanding of how to work with metal more effeciently, giving access to buildings and improving existing ones'),
(8, 'Architecture', 'This skill will give a king&amp;apos;s people an understanding of how to design better structures, giving access to buildings and improving existing ones.'),
(9, 'Engineering', 'This skill will give a king&amp;apos;s people an understanding of how to apply science to solve problems, giving access to buildings and improving existing ones.');

-- --------------------------------------------------------

--
-- Table structure for table `research_logs`
--

CREATE TABLE IF NOT EXISTS `research_logs` (
  `uid` mediumint(8) unsigned NOT NULL auto_increment,
  `player_uid` mediumint(8) unsigned NOT NULL default '0',
  `date` int(11) NOT NULL,
  `event` text NOT NULL,
  `flagged` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `research_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `research_requirement`
--

CREATE TABLE IF NOT EXISTS `research_requirement` (
  `uid` int(11) NOT NULL,
  `research_uid` int(11) NOT NULL,
  `research_level` int(11) NOT NULL,
  `requirement_uid` varchar(255) NOT NULL,
  `requirement_level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_requirement`
--


