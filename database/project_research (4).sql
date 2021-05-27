-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2020 at 05:11 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_research`
--

-- --------------------------------------------------------

--
-- Table structure for table `author_document`
--

DROP TABLE IF EXISTS `author_document`;
CREATE TABLE IF NOT EXISTS `author_document` (
  `author` int(11) NOT NULL,
  `document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `work_email` varchar(100) NOT NULL,
  `author1` varchar(500) DEFAULT NULL,
  `author2` varchar(500) DEFAULT NULL,
  `author3` varchar(500) DEFAULT NULL,
  `author4` varchar(500) DEFAULT NULL,
  `author5` varchar(500) DEFAULT NULL,
  `doc_image` varchar(500) NOT NULL,
  `ms_Title` varchar(1000) NOT NULL,
  `full_jName` varchar(500) NOT NULL,
  `publisher` varchar(500) NOT NULL,
  `publication_Type` varchar(500) NOT NULL,
  `publication_Status` varchar(500) NOT NULL,
  `Year` year(4) NOT NULL,
  `Month` varchar(25) NOT NULL,
  `EISSN` varchar(100) DEFAULT NULL,
  `PISSN` varchar(100) NOT NULL,
  `web_Link` varchar(500) NOT NULL,
  `DOI` varchar(500) NOT NULL,
  `AreYou_FA` tinyint(1) NOT NULL DEFAULT '0',
  `MMDU_Affiliation` tinyint(1) NOT NULL,
  `MMDU_sw` tinyint(1) NOT NULL,
  `C_Author` tinyint(1) NOT NULL,
  `Guide_toC` tinyint(1) NOT NULL,
  `PubMed` tinyint(1) NOT NULL,
  `IndexCopernicus` tinyint(1) NOT NULL,
  `Scopus_Indexed` tinyint(1) NOT NULL,
  `SCI_SCIE_SSCI_Indexed` tinyint(1) NOT NULL,
  `GS_Indexed` tinyint(1) NOT NULL,
  `UGC_Journal` tinyint(1) NOT NULL,
  `Indexes` varchar(500) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `upload_date` varchar(500) NOT NULL,
  `approval_date` varchar(500) NOT NULL,
  PRIMARY KEY (`DOI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`work_email`, `author1`, `author2`, `author3`, `author4`, `author5`, `doc_image`, `ms_Title`, `full_jName`, `publisher`, `publication_Type`, `publication_Status`, `Year`, `Month`, `EISSN`, `PISSN`, `web_Link`, `DOI`, `AreYou_FA`, `MMDU_Affiliation`, `MMDU_sw`, `C_Author`, `Guide_toC`, `PubMed`, `IndexCopernicus`, `Scopus_Indexed`, `SCI_SCIE_SSCI_Indexed`, `GS_Indexed`, `UGC_Journal`, `Indexes`, `approved`, `upload_date`, `approval_date`) VALUES
('sawan.gaba.sd@mmumullana.org', 'sawan', 'none', 'none', 'none', 'none', 'doc_image/', 'The color-sharing bonus: Roles of perceptual organization and attentive processes in visual working memory.', 'sddass', 'American Psychological Association (APA)', 'Internation Journal', 'Published', 1960, 'None', 'nill', '2169-3269', 'http://dx.doi.org/10.1037/arc0000014', '10.1037/arc0000014', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 'Index_Copernicus Scopus_Indexed', 0, '2020-06-14 21:10:11', 'Pending'),
('sawan.gaba.sd@mmumullana.org', 'sawan', 'sawan 2', 'none', 'none', 'none', 'doc_image/', 'The Structure of Ordinary Water: New data and interpretations are yielding new insights into this fascinating substance', 'hsdgajhasd', 'American Association for the Advancement of Science (AAAS)', 'Internation Journal', 'Accepted', 1975, 'March', '1095-9203', '0036-8075', 'http://dx.doi.org/10.1126/science.169.3946.635', '10.1126/science.169.3946.635', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, '2020-06-14 22:37:11', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doc_indexes`
--

DROP TABLE IF EXISTS `doc_indexes`;
CREATE TABLE IF NOT EXISTS `doc_indexes` (
  `DOI` varchar(25) NOT NULL,
  `MMDU_Affiliation` tinyint(1) NOT NULL,
  `MMDU_sw` tinyint(1) NOT NULL,
  `C_Author` tinyint(1) NOT NULL,
  `Guide_toC` tinyint(1) NOT NULL,
  `PubMed` tinyint(1) NOT NULL,
  `IndexCopernicus` tinyint(1) NOT NULL,
  `Scopus_Indexed` tinyint(1) NOT NULL,
  `SCI_SCIE_SSCI_Indexed` tinyint(1) NOT NULL,
  `GS_Indexed` tinyint(1) NOT NULL,
  `UGC_Journal` tinyint(1) NOT NULL,
  PRIMARY KEY (`DOI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_indexes`
--

INSERT INTO `doc_indexes` (`DOI`, `MMDU_Affiliation`, `MMDU_sw`, `C_Author`, `Guide_toC`, `PubMed`, `IndexCopernicus`, `Scopus_Indexed`, `SCI_SCIE_SSCI_Indexed`, `GS_Indexed`, `UGC_Journal`) VALUES
('10.1037/arc0000014', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0),
('12322', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
('13232', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2112', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('212', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('21221', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('21321', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2311', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('23121', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('232', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2332', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2332112', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('23das', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3113221', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3133113', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('32113', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3212', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('32121', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('321232', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
('321323', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0),
('322332232323232', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3232', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('34223', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3434', 0, 0, 0, 0, 0, 1, 1, 1, 0, 0),
('423243', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('433434', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('444', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('45345345435', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('543', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('54345453', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6565', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('9889', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('adds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('asd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('bjjhg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('dasdas', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('dasdsasda', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('dsa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('dsas', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fdfsdfs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fyug', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('hgshgs', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('hj', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('hjgj', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('kkj', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
('sadsa', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('sadsadas', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('sda', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('sfd', 1, 1, 1, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
CREATE TABLE IF NOT EXISTS `filter` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_email` varchar(100) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `sort_date` char(1) NOT NULL DEFAULT '0',
  `sort_name` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`f_id`, `filter_email`, `approved`, `pending`, `sort_date`, `sort_name`) VALUES
(5, 'sawan.gaba.sd@mmumullana.org', 1, 0, '1', '0'),
(6, 'sawan.gaba.sd@mmumullana.org', 1, 1, '1', '0'),
(7, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(8, 'sawan.gaba.sd@mmumullana.org', 1, 0, '0', '1'),
(9, 'sawan.gaba.sd@mmumullana.org', 0, 0, '0', '1'),
(10, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(11, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(12, 'sawan.gaba.sd@mmumullana.org', 1, 1, '1', '0'),
(13, 'sawan.gaba.sd@mmumullana.org', 0, 1, '1', '0'),
(14, 'sawan.gaba.sd@mmumullana.org', 1, 1, '1', '0'),
(15, 'sawan.gaba.sd@mmumullana.org', 1, 0, '1', '0'),
(16, 'sawan.gaba.sd@mmumullana.org', 1, 1, '1', '0'),
(17, 'sawan.gaba.sd@mmumullana.org', 0, 1, '1', '0'),
(18, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(19, 'sawan.gaba.sd@mmumullana.org', 0, 0, '0', '1'),
(20, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(21, 'sawan.gaba.sd@mmumullana.org', 1, 1, '1', '0'),
(22, 'sawan.gaba.sd@mmumullana.org', 0, 0, '1', '0'),
(23, 'sawan.gaba.sd@mmumullana.org', 0, 0, '0', '1'),
(61, 'surindergaba71@gmail.com', 0, 0, '1', '0'),
(60, 'surindergaba71@gmail.com', 0, 1, '1', '0'),
(59, 'surindergaba71@gmail.com', 0, 0, '1', '0'),
(28, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(29, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(58, 'surindergaba71@gmail.com', 1, 1, '0', '0'),
(57, 'surindergaba71@gmail.com', 0, 1, '0', '0'),
(56, 'surindergaba71@gmail.com', 1, 1, '0', '0'),
(34, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(55, 'surindergaba71@gmail.com', 1, 0, '0', '0'),
(36, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '0'),
(37, 'sawan.gaba.sd@mmumullana.org', 1, 0, '0', '0'),
(38, 'sawan.gaba.sd@mmumullana.org', 0, 0, '0', '0'),
(39, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '0'),
(40, 'sawan.gaba.sd@mmumullana.org', 0, 1, '1', '0'),
(41, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(42, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(54, 'surindergaba71@gmail.com', 1, 0, '0', '0'),
(53, 'surindergaba71@gmail.com', 1, 0, '0', '0'),
(52, 'surindergaba71@gmail.com', 0, 1, '0', '0'),
(50, 'sawan.gaba.sd@mmumullana.org', 1, 0, '0', '1'),
(51, 'surindergaba71@gmail.com', 1, 0, '0', '0'),
(97, 'admin@mmu.org', 0, 1, '1', '0'),
(96, 'admin@mmu.org', 0, 0, '1', '0'),
(95, 'admin@mmu.org', 0, 0, '0', '1'),
(94, 'admin@mmu.org', 1, 0, '0', '1'),
(93, 'admin@mmu.org', 1, 1, '0', '1'),
(92, 'admin@mmu.org', 1, 1, '1', '0'),
(91, 'admin@mmu.org', 1, 0, '1', '0'),
(90, 'admin@mmu.org', 0, 1, '1', '0'),
(78, 'admin@mmu.org', 0, 1, '0', '1'),
(79, 'admin@mmu.org', 0, 1, '0', '1'),
(80, 'admin@mmu.org', 0, 1, '0', '1'),
(81, 'admin@mmu.org', 1, 1, '0', '1'),
(82, 'admin@mmu.org', 1, 1, '0', '1'),
(83, 'admin@mmu.org', 1, 0, '0', '1'),
(84, 'admin@mmu.org', 1, 1, '0', '1'),
(85, 'admin@mmu.org', 1, 1, '0', '1'),
(86, 'admin@mmu.org', 1, 0, '0', '1'),
(87, 'admin@mmu.org', 0, 0, '0', '1'),
(88, 'admin@mmu.org', 0, 0, '1', '0'),
(89, 'admin@mmu.org', 0, 1, '1', '0'),
(98, 'admin@mmu.org', 1, 0, '1', '0'),
(99, 'admin@mmu.org', 1, 0, '0', '1'),
(100, 'admin@mmu.org', 0, 1, '0', '1'),
(101, 'admin@mmu.org', 1, 1, '0', '1'),
(102, 'admin@mmu.org', 1, 0, '0', '1'),
(103, 'admin@mmu.org', 0, 1, '0', '1'),
(104, 'admin@mmu.org', 0, 0, '0', '1'),
(105, 'admin@mmu.org', 0, 0, '1', '0'),
(106, 'admin@mmu.org', 1, 0, '1', '0'),
(107, 'admin@mmu.org', 1, 0, '0', '1'),
(108, 'admin@mmu.org', 0, 1, '0', '1'),
(109, 'admin@mmu.org', 0, 1, '1', '0'),
(110, 'admin@mmu.org', 1, 1, '1', '0'),
(111, 'admin@mmu.org', 1, 1, '0', '1'),
(112, 'admin@mmu.org', 0, 1, '0', '1'),
(113, 'admin@mmu.org', 1, 0, '0', '1'),
(114, 'admin@mmu.org', 1, 0, '1', '0'),
(115, 'sawan.gaba.sd@mmumullana.org', 0, 1, '0', '1'),
(116, 'sawan.gaba.sd@mmumullana.org', 1, 0, '0', '1'),
(117, 'sawan.gaba.sd@mmumullana.org', 1, 1, '0', '1'),
(118, 'admin@mmu.org', 0, 1, '1', '0'),
(119, 'admin@mmu.org', 0, 1, '0', '1'),
(122, 'admin@mmu.org', 0, 1, '1', '0'),
(121, 'admin@mmu.org', 0, 1, '0', '1'),
(123, 'admin@mmu.org', 0, 1, '1', '0'),
(124, 'admin@mmu.org', 0, 0, '1', '0'),
(125, 'admin@mmu.org', 0, 1, '1', '0'),
(126, 'admin@mmu.org', 0, 0, '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `user_type` varchar(30) NOT NULL,
  `work_email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `login_time` varchar(50) NOT NULL,
  `logout_time` varchar(50) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`user_type`, `work_email`, `password`, `login_time`, `logout_time`, `id`) VALUES
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 07:24:34', '2020-05-15 07:27:24', 1),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 07:27:18', '2020-05-15 07:27:24', 2),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 07:30:41', '2020-05-15 07:30:47', 3),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 07:56:40', '2020-05-15 07:56:46', 4),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 08:08:27', NULL, 5),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 08:16:59', '2020-05-15 08:17:06', 6),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-15 08:17:59', NULL, 7),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:47:57', NULL, 8),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:49:03', NULL, 9),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:50:18', NULL, 10),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:53:00', NULL, 11),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:53:15', NULL, 12),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:53:33', NULL, 13),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 18:57:25', NULL, 14),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 19:16:05', NULL, 15),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-17 19:19:08', NULL, 16),
('Admin', '43@g.com', '23', '2020-05-17 19:19:58', NULL, 17),
('Faculty', 'sawan@gmail.com', 'sawan', '2020-05-30 05:52:23', NULL, 18),
('Faculty', '43@g.com', '23', '2020-05-30 06:27:47', NULL, 19),
('Faculty', '43@g.com', '23', '2020-05-30 07:23:40', NULL, 20),
('Faculty', 's@gmail.com', 'sawan6', '2020-06-01 05:22:29', NULL, 21),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'sawan', '2020-06-02 08:52:13', NULL, 22),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'sawan', '2020-06-02 14:44:50', NULL, 23),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'sawan', '2020-06-02 15:23:21', NULL, 24),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'sawan', '2020-06-03 08:57:53', NULL, 25),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-03 11:33:00', NULL, 26),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-03 11:34:37', NULL, 27),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-03 11:46:20', NULL, 28),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-03 13:00:37', NULL, 29),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 08:04:30', NULL, 30),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 08:05:39', NULL, 31),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 08:07:27', '2020-06-06 08:07:28', 32),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 08:14:28', NULL, 33),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 08:20:31', '2020-06-06 08:52:36', 34),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 09:27:33', NULL, 35),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 09:35:20', '2020-06-06 10:02:34', 36),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 10:07:19', '2020-06-06 10:17:19', 37),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 10:18:38', '2020-06-06 10:53:44', 38),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 11:11:57', '2020-06-06 11:29:08', 39),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-06 14:09:25', '2020-06-06 14:09:31', 40),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 09:37:05', '2020-06-07 09:59:38', 41),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 10:05:46', '2020-06-07 10:13:07', 42),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 10:13:14', '2020-06-07 10:50:21', 43),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 11:54:10', '2020-06-07 12:12:06', 44),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 12:13:02', '2020-06-07 12:23:23', 45),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 12:41:32', '2020-06-07 13:21:29', 46),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 13:24:29', '2020-06-07 13:44:07', 47),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 13:48:14', '2020-06-07 14:29:41', 48),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:30:03', '2020-06-07 14:31:04', 49),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:32:47', '2020-06-07 14:34:07', 50),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:34:15', '2020-06-07 14:34:43', 51),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:35:34', '2020-06-07 14:37:22', 52),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:37:30', '2020-06-07 14:37:35', 53),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:37:44', '2020-06-07 14:37:57', 54),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:38:12', '2020-06-07 14:41:04', 55),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:41:10', '2020-06-07 14:44:41', 56),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:44:48', '2020-06-07 14:47:29', 57),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:47:39', '2020-06-07 14:47:54', 58),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 14:48:01', '2020-06-07 14:48:06', 59),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:48:15', '2020-06-07 14:51:34', 60),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-07 14:52:00', '2020-06-07 15:11:27', 61),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-07 16:00:49', '2020-06-07 16:18:33', 62),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 05:06:04', '2020-06-08 05:21:09', 63),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 05:22:21', '2020-06-08 05:34:57', 64),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 05:35:05', '2020-06-08 05:40:47', 65),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 05:42:38', '2020-06-08 05:46:04', 66),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 05:46:41', '2020-06-08 05:59:16', 67),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 06:25:19', '2020-06-08 06:25:44', 68),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 06:28:03', '2020-06-08 06:28:21', 69),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 07:13:28', NULL, 70),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 07:53:08', '2020-06-08 12:52:07', 71),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 14:19:09', '2020-06-08 14:20:02', 72),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-08 14:20:35', '2020-06-08 14:30:35', 73),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-08 14:59:14', NULL, 74),
('Faculty', 'surindergaba71@gmail.com', 'sawan', '2020-06-10 14:04:55', '2020-06-10 14:05:19', 77),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-09 17:37:53', '2020-06-09 17:37:56', 76),
('Faculty', 'surindergaba71@gmail.com', 'ss', '2020-06-10 14:15:37', '2020-06-10 14:15:41', 78),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-11 19:57:34', NULL, 79),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-12 12:26:57', NULL, 80),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-12 12:45:30', '2020-06-12 13:01:52', 81),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-13 18:18:35', NULL, 82),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-13 22:56:45', NULL, 83),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 12:36:35', '2020-06-14 14:10:40', 84),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 14:11:29', '2020-06-14 14:55:01', 85),
('Faculty', 'surindergaba71@gmail.com', 'ss', '2020-06-14 14:56:06', '2020-06-14 14:56:09', 86),
('Faculty', 'surindergaba71@gmail.com', 'ss', '2020-06-14 15:13:42', '2020-06-14 15:14:00', 87),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 15:51:35', '2020-06-14 15:54:00', 88),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 16:13:47', '2020-06-14 21:02:38', 89),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 21:03:30', '2020-06-14 21:12:10', 90),
('Faculty', 'surindergaba71@gmail.com', 'ss', '2020-06-14 21:42:02', '2020-06-14 21:42:24', 91),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 22:05:23', '2020-06-14 22:13:05', 92),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 22:13:12', '2020-06-14 22:20:25', 93),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 22:27:12', '2020-06-14 22:27:22', 94),
('Faculty', 'sawan.gaba.sd@mmumullana.org', 'gaba', '2020-06-14 22:34:23', NULL, 95);

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
CREATE TABLE IF NOT EXISTS `personal_info` (
  `emp_ID` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `addhar_no` bigint(12) NOT NULL,
  `PAN_no` varchar(10) NOT NULL,
  `passport_no` varchar(25) NOT NULL,
  `email_ID` varchar(30) NOT NULL,
  `category` varchar(15) NOT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_info`
--

DROP TABLE IF EXISTS `professional_info`;
CREATE TABLE IF NOT EXISTS `professional_info` (
  `emp_ID` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `m_Number` bigint(10) UNSIGNED NOT NULL,
  `email_ID` varchar(30) NOT NULL,
  `university` varchar(25) NOT NULL,
  `institute` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `designation` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `h_qualification` varchar(20) NOT NULL,
  `research_area` varchar(25) NOT NULL,
  PRIMARY KEY (`emp_ID`),
  UNIQUE KEY `m_Number` (`m_Number`),
  UNIQUE KEY `wemail_ID` (`email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

DROP TABLE IF EXISTS `sign_up`;
CREATE TABLE IF NOT EXISTS `sign_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) NOT NULL,
  `img_dir` varchar(100) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `aadhar` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `category` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `work_email` varchar(50) NOT NULL,
  `university` varchar(50) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `highest_qualification` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `research_area` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `creation_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `emp_id`, `img_dir`, `gender`, `prefix`, `full_name`, `father_name`, `mobile`, `aadhar`, `pan`, `passport`, `category`, `email`, `work_email`, `university`, `institute`, `department`, `designation`, `date`, `highest_qualification`, `country`, `state`, `district`, `research_area`, `password`, `creation_time`) VALUES
(1, '1700010', 'image/170005_sawan.jpg', 'm', 'Dr.', 'Sawan Gaba', 'surinder gaba', '829666478', '1234677888888888', '1243334448', '233', 'OBC', 'sawan@gmail.com', 'sawan.gaba.sd@mmumullana.org', 'mmdu', 'Computer Applications', 'mmict & bm', 'Professor', '2020-06-18', 'Master\'s Degree', 'India', 'Haryana', 'Ambala', 'html', 'gaba', '2020-06-02 08:40:29'),
(7, '170005', 'image/', 'm', 'Dr.', 'sawan', 'surinder gaba', '9898289332', '13223132', '2312', '', 'General', 'sawan.gaba.sd@mmumullana.org', 'surindergaba71@gmail.com', 'mmdu', 'Engineering', 'Computer Science Engineering', 'Professor', '2020-06-10', 'Master\'s Degree', 'Benin', 'Donga', 'Bassila', '23', 'ss', '2020-06-14 14:55:58');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
