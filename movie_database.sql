-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 06:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `NAME` varchar(30) DEFAULT NULL,
  `STAGE_NAME` varchar(30) DEFAULT NULL,
  `SSN` char(10) NOT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`NAME`, `STAGE_NAME`, `SSN`, `GENDER`, `DATE_OF_BIRTH`) VALUES
('Robert Douglas Thomas Pattinso', 'Robert Pattinson', 'A1', 'Male', '1986-05-13'),
('Christopher Catesby Harington', 'Kit Harington', 'A10', 'Male', '1986-12-26'),
('Bryan Lee Cranston', 'Bryan Cranston', 'A11', 'Male', '1956-03-07'),
('Aaron Paul Sturtevant', 'Aaron Paul', 'A12', 'Male', '1979-08-27'),
('Elizabeth Debicki', 'Elizabeth Debicki', 'A2', 'Female', '1990-08-24'),
('Gal Gadot', 'Gal Gadot', 'A3', 'Female', '1985-05-30'),
('José Pedro Balmaceda Pascal', 'Pedro Pascal', 'A4', 'Male', '1975-04-02'),
('Liu Yifei', 'Crystal Liu', 'A5', 'Female', '1987-08-25'),
('Li Lianjie', 'Jet li', 'A6', 'Male', '1963-04-26'),
('Anya Josephine Marie Taylor-Jo', 'Anya Taylor-Joy', 'A7', 'Female', '1996-04-26'),
('Margaret Constance Williams', 'Maisie Williams', 'A8', 'Female', '1997-04-15'),
('Emilia Isobel Clarke', 'Emilia Clarke', 'A9', 'Female', '1986-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `NAME` varchar(30) DEFAULT NULL,
  `SSN` char(10) NOT NULL,
  `PASSWORD` char(10) DEFAULT NULL,
  `EMAIL` varchar(80) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`NAME`, `SSN`, `PASSWORD`, `EMAIL`, `DATE_OF_BIRTH`) VALUES
('Riyad Ahsan', '18101358', '0123456789', 'xyz@gmail.com', '1995-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BILLING_ID` char(10) NOT NULL,
  `HIRE_CREW` varchar(20) DEFAULT NULL,
  `CASTING` varchar(20) DEFAULT NULL,
  `PROPS_AND_EQUIPMENTS` varchar(20) DEFAULT NULL,
  `TOTAL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BILLING_ID`, `HIRE_CREW`, `CASTING`, `PROPS_AND_EQUIPMENTS`, `TOTAL`) VALUES
('M-00000001', '$50mil', '$100mil', '$50mil', '$200mil'),
('M-00000002', '$40mil', '$120mil', '$40mil', '$200mil'),
('M-00000003', '$20mil', '$37mil', '$10mil', '$67mil'),
('M-00000004', '$60mil', '$100mil', '$40mil', '$200mil'),
('M-00000005', '$50mil', '$106mil', '$50mil', '$206mil'),
('M-00000006', '$2mil', '$4mil', '$2mil', '$8mil'),
('M-00000007', '$330mil', '$400mil', '$187mil', '$887mil'),
('M-00000008', '$20mil', '$44mil', '$30mil', '$94mil'),
('M-00000009', '$300mil', '$600mil', '$214mil', '$1.14bil'),
('M-00000010', '$400mil', '$600mil', '219mil', '1.19bil'),
('T-00000001', '$500mil', '$700mil', '$300mil', '$1.5bil'),
('T-00000002', '$200mil', '$600mil', '$200mil', '$1bil'),
('T-00000003', '$400mil', '$650mil', '$300mil', '$1.25bil'),
('T-00000004', '$20mil', '$50mil', '$40mil', '$110mil'),
('T-00000005', '$300mil', '$500mil', '$200mil', '$900mil'),
('T-00000006', '$100mil', '$500mil', '$397mil', '$997mil');

-- --------------------------------------------------------

--
-- Table structure for table `cast_and_crew_movie`
--

CREATE TABLE `cast_and_crew_movie` (
  `MOVIE` char(10) NOT NULL,
  `ACTOR` char(10) NOT NULL,
  `ROLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast_and_crew_movie`
--

INSERT INTO `cast_and_crew_movie` (`MOVIE`, `ACTOR`, `ROLE`) VALUES
('M-00000001', 'A1', 'Protagonist'),
('M-00000001', 'A2', 'Supporting Actor'),
('M-00000002', 'A5', 'Protagonist'),
('M-00000002', 'A6', 'Antagonist'),
('M-00000003', 'A7', 'Protagonist'),
('M-00000003', 'A8', 'Protagonist'),
('M-00000004', 'A3', 'Protagonist'),
('M-00000004', 'A4', 'Antagonist');

-- --------------------------------------------------------

--
-- Table structure for table `cast_and_crew_tv`
--

CREATE TABLE `cast_and_crew_tv` (
  `TV_SHOW` char(10) NOT NULL,
  `ACTOR` char(10) NOT NULL,
  `ROLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cast_and_crew_tv`
--

INSERT INTO `cast_and_crew_tv` (`TV_SHOW`, `ACTOR`, `ROLE`) VALUES
('T-00000001', 'A10', 'Jon Snow'),
('T-00000001', 'A9', 'Daenerys Targaryen'),
('T-00000002', 'A11', 'Walter White'),
('T-00000002', 'A12', 'Jesse Pinkman');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `NAME` varchar(30) DEFAULT NULL,
  `SSN` char(10) NOT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`NAME`, `SSN`, `GENDER`, `DATE_OF_BIRTH`) VALUES
('Christopher Nolan', 'D1', 'Male', '1970-07-30'),
('James Cameron', 'D10', 'Male', '1966-07-12'),
('David Simon', 'D11', 'Male', '1968-08-15'),
('Ronny Schalk', 'D12', 'Male', '1962-03-04'),
('Jason Baldwin', 'D13', 'Male', '1976-03-19'),
('Boyd Halbrook', 'D14', 'Male', '1974-06-21'),
('Niki Caro', 'D2', 'Female', '1966-09-12'),
('Josh Boone', 'D3', 'Male', '1979-04-05'),
('Patty Jenkins', 'D4', 'Female', '1971-07-24'),
('David Benioff', 'D5', 'Male', '1970-09-25'),
('Vince Gilligan', 'D6', 'Male', '1967-02-10'),
('Greta Gerwig', 'D7', 'Female', '1966-02-12'),
('Martin Sorsese', 'D8', 'Male', '1972-05-30'),
('Peter Jackson', 'D9', 'Male', '1978-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `NAME` varchar(30) NOT NULL,
  `ADDED_BY` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`NAME`, `ADDED_BY`) VALUES
('Action/Thriller', '18101358'),
('Crime', '18101358'),
('Drama', '18101358'),
('Fantasy', '18101358'),
('Horror', '18101358'),
('Sci-fi', '18101358');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `NAME` varchar(100) DEFAULT NULL,
  `RELEASE_DATE` date DEFAULT NULL,
  `GENRE` varchar(30) DEFAULT NULL,
  `RATING` decimal(3,1) DEFAULT NULL,
  `BILLING_ID` char(10) NOT NULL,
  `DIRECTED_BY` char(10) DEFAULT NULL,
  `PRODUCED_BY` char(10) DEFAULT NULL,
  `ADDED_BY` char(10) DEFAULT NULL,
  `FEATURED_BY` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`NAME`, `RELEASE_DATE`, `GENRE`, `RATING`, `BILLING_ID`, `DIRECTED_BY`, `PRODUCED_BY`, `ADDED_BY`, `FEATURED_BY`) VALUES
('Tenet', '2020-07-23', 'Action/Thriller', '7.9', 'M-00000001', 'D1', 'P1', '18101358', '18101358'),
('Mulan', '2020-03-10', 'Action/Thriller', '5.4', 'M-00000002', 'D2', 'P4', '18101358', '18101358'),
('The New Mutants', '2020-08-26', 'Horror', '5.6', 'M-00000003', 'D3', 'P3', '18101358', '18101358'),
('Wonder Woman 1984', '2020-08-14', 'Action/Thriller', '8.8', 'M-00000004', 'D4', 'P5', '18101358', '18101358'),
('Little Woman', '2019-12-07', 'Drama', '7.8', 'M-00000005', 'D7', 'P8', '18101358', '18101358'),
('The Irishman', '2019-02-10', 'Crime', '7.9', 'M-00000006', 'D8', 'P9', '18101358', '18101358'),
('The Lord Of The Rings : The fellowship Of The Ring', '2001-12-10', 'Fantasy', '8.8', 'M-00000007', 'D9', 'P10', '18101358', '18101358'),
('The Lord Of The Rings : The Two Towers', '2002-12-05', 'Fantasy', '8.7', 'M-00000008', 'D9', 'P10', '18101358', '18101358'),
('The Lord Of The Rings : The Return Of The King', '2003-12-01', 'Fantasy', '8.9', 'M-00000009', 'D9', 'P10', '18101358', '18101358'),
('The Titanic', '1997-11-18', 'Drama', '7.8', 'M-00000010', 'D10', 'P11', '18101358', '18101358');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `NAME` varchar(30) DEFAULT NULL,
  `SSN` char(10) NOT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`NAME`, `SSN`, `GENDER`, `DATE_OF_BIRTH`) VALUES
('Christopher Nolan', 'P1', 'Male', '1970-07-30'),
('Ian Mckellen', 'P10', 'Male', '1947-06-23'),
('James Cameron', 'P11', 'Male', '1966-07-12'),
('Ed Burns', 'P12', 'Male', '1956-06-22'),
('Jantje Friese', 'P13', 'Female', '1966-01-30'),
('C. Mundy', 'P14', 'Male', '1975-06-21'),
('Amman Manson', 'P15', 'Male', '1962-08-22'),
('Emma Thomas', 'P2', 'Female', '1972-04-26'),
('Isaac Perlmutter', 'P3', 'Male', '1942-12-01'),
('Niki Caro', 'P4', 'Female', '1966-09-20'),
('Zack Snyder', 'P5', 'Male', '1966-03-01'),
('D.B Weiss', 'P6', 'Male', '1971-04-25'),
('Terry McDonough', 'P7', 'Male', '1948-05-10'),
('Nathan Hall', 'P8', 'Male', '1971-05-05'),
('Randall Emmett', 'P9', 'Male', '1966-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `tv_show`
--

CREATE TABLE `tv_show` (
  `NAME` varchar(100) DEFAULT NULL,
  `RELEASE_DATE` date DEFAULT NULL,
  `SEASONS` int(11) DEFAULT NULL,
  `GENRE` varchar(30) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `RATING` decimal(3,1) DEFAULT NULL,
  `BILLING_ID` char(10) NOT NULL,
  `DIRECTED_BY` char(10) DEFAULT NULL,
  `PRODUCED_BY` char(10) DEFAULT NULL,
  `ADDED_BY` char(10) DEFAULT NULL,
  `FEATURED_BY` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tv_show`
--

INSERT INTO `tv_show` (`NAME`, `RELEASE_DATE`, `SEASONS`, `GENRE`, `STATUS`, `RATING`, `BILLING_ID`, `DIRECTED_BY`, `PRODUCED_BY`, `ADDED_BY`, `FEATURED_BY`) VALUES
('Game Of Thrones', '2011-04-17', 8, 'Drama', 'Completed', '9.3', 'T-00000001', 'D5', 'P6', '18101358', '18101358'),
('Breaking Bad', '2008-01-20', 5, 'Crime', 'Completed', '9.5', 'T-00000002', 'D6', 'P7', '18101358', '18101358'),
('The Wire', '2002-06-02', 5, 'Crime', 'Completed', '9.3', 'T-00000003', 'D11', 'P12', '18101358', '18101358'),
('Dark', '2017-12-01', 3, 'Sci-fi', 'Completed', '8.8', 'T-00000004', 'D12', 'P13', '18101358', '18101358'),
('Ozark', '2017-05-20', 3, 'Action/Thriller', 'Incomplete', '8.4', 'T-00000005', 'D13', 'P14', '18101358', '18101358'),
('Narcos', '2015-08-28', 3, 'Crime', 'Completed', '8.8', 'T-00000006', 'D14', 'P15', '18101358', '18101358');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `NAME` varchar(30) DEFAULT NULL,
  `SSN` char(10) NOT NULL,
  `GENDER` varchar(6) DEFAULT NULL,
  `PASSWORD` char(10) DEFAULT NULL,
  `EMAIL` varchar(80) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `USER_PREVILAGE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`NAME`, `SSN`, `GENDER`, `PASSWORD`, `EMAIL`, `DATE_OF_BIRTH`, `USER_PREVILAGE`) VALUES
('Riyad Ahsan', '18101358', 'Male', '0123456789', 'xyz@gmail.com', '1995-12-31', 'full');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BILLING_ID`);

--
-- Indexes for table `cast_and_crew_movie`
--
ALTER TABLE `cast_and_crew_movie`
  ADD PRIMARY KEY (`MOVIE`,`ACTOR`),
  ADD KEY `ACTOR` (`ACTOR`);

--
-- Indexes for table `cast_and_crew_tv`
--
ALTER TABLE `cast_and_crew_tv`
  ADD PRIMARY KEY (`TV_SHOW`,`ACTOR`),
  ADD KEY `ACTOR` (`ACTOR`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`NAME`),
  ADD KEY `ADDED_BY` (`ADDED_BY`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`BILLING_ID`),
  ADD KEY `GENRE` (`GENRE`),
  ADD KEY `DIRECTED_BY` (`DIRECTED_BY`),
  ADD KEY `PRODUCED_BY` (`PRODUCED_BY`),
  ADD KEY `ADDED_BY` (`ADDED_BY`),
  ADD KEY `FEATURED_BY` (`FEATURED_BY`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `tv_show`
--
ALTER TABLE `tv_show`
  ADD PRIMARY KEY (`BILLING_ID`),
  ADD KEY `GENRE` (`GENRE`),
  ADD KEY `DIRECTED_BY` (`DIRECTED_BY`),
  ADD KEY `PRODUCED_BY` (`PRODUCED_BY`),
  ADD KEY `ADDED_BY` (`ADDED_BY`),
  ADD KEY `FEATURED_BY` (`FEATURED_BY`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`SSN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_and_crew_movie`
--
ALTER TABLE `cast_and_crew_movie`
  ADD CONSTRAINT `cast_and_crew_movie_ibfk_1` FOREIGN KEY (`MOVIE`) REFERENCES `movie` (`BILLING_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cast_and_crew_movie_ibfk_2` FOREIGN KEY (`ACTOR`) REFERENCES `actor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cast_and_crew_tv`
--
ALTER TABLE `cast_and_crew_tv`
  ADD CONSTRAINT `cast_and_crew_tv_ibfk_1` FOREIGN KEY (`TV_SHOW`) REFERENCES `tv_show` (`BILLING_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cast_and_crew_tv_ibfk_2` FOREIGN KEY (`ACTOR`) REFERENCES `actor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`ADDED_BY`) REFERENCES `user` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`BILLING_ID`) REFERENCES `budget` (`BILLING_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`GENRE`) REFERENCES `genre` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_3` FOREIGN KEY (`DIRECTED_BY`) REFERENCES `director` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_4` FOREIGN KEY (`PRODUCED_BY`) REFERENCES `producer` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_5` FOREIGN KEY (`ADDED_BY`) REFERENCES `user` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ibfk_6` FOREIGN KEY (`FEATURED_BY`) REFERENCES `admin` (`SSN`);

--
-- Constraints for table `tv_show`
--
ALTER TABLE `tv_show`
  ADD CONSTRAINT `tv_show_ibfk_1` FOREIGN KEY (`BILLING_ID`) REFERENCES `budget` (`BILLING_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_show_ibfk_2` FOREIGN KEY (`GENRE`) REFERENCES `genre` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_show_ibfk_3` FOREIGN KEY (`DIRECTED_BY`) REFERENCES `director` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_show_ibfk_4` FOREIGN KEY (`PRODUCED_BY`) REFERENCES `producer` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_show_ibfk_5` FOREIGN KEY (`ADDED_BY`) REFERENCES `user` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tv_show_ibfk_6` FOREIGN KEY (`FEATURED_BY`) REFERENCES `admin` (`SSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
