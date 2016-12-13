-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2016 at 10:01 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `caps_ogrady`
--

-- --------------------------------------------------------

--
-- Table structure for table `Academic_Term`
--

CREATE TABLE `Academic_Term` (
`id` int(3) NOT NULL,
  `year` int(4) NOT NULL,
  `semester` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Book`
--

CREATE TABLE `Book` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `publisher` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Conference_Paper`
--

CREATE TABLE `Conference_Paper` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `conference` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
`id` int(4) NOT NULL,
  `dptCode` varchar(45) NOT NULL,
  `number` int(4) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`id`, `dptCode`, `number`, `name`) VALUES
(1, 'VCD', 1100, 'Digital Image/Photoshop'),
(2, 'VCD', 1150, 'Digital Image/Illustrator'),
(3, 'VCD', 2200, 'Typography'),
(4, 'VCD', 2400, 'Graphic Design I'),
(5, 'VCD', 2600, 'Web Design I'),
(6, 'VCD', 1200, 'Design Thinking'),
(7, 'VCD', 3300, 'Production Design I'),
(8, 'VCD', 3400, 'Graphic Design II'),
(9, 'VCD', 3600, 'Web Design II'),
(10, 'VCD', 3650, 'Scripting for Interactivity');

-- --------------------------------------------------------

--
-- Table structure for table `Course_File`
--

CREATE TABLE `Course_File` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `course` int(4) NOT NULL,
  `fileType` int(2) NOT NULL,
  `url` varchar(128) NOT NULL,
  `term` int(3) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Course_File_Type`
--

CREATE TABLE `Course_File_Type` (
`id` int(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Course_Taught`
--

CREATE TABLE `Course_Taught` (
  `course` int(4) NOT NULL,
  `person` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Course_Taught`
--

INSERT INTO `Course_Taught` (`course`, `person`) VALUES
(1, 1),
(1, 5),
(1, 9),
(1, 10),
(2, 1),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `course_taught_details`
--
CREATE TABLE `course_taught_details` (
`course` int(4)
,`person` int(7)
,`id` int(4)
,`dptCode` varchar(45)
,`number` int(4)
,`name` varchar(64)
);
-- --------------------------------------------------------

--
-- Table structure for table `Creative_Work`
--

CREATE TABLE `Creative_Work` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `source` varchar(128) NOT NULL,
  `authors` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Educational_Background`
--

CREATE TABLE `Educational_Background` (
`id` int(5) NOT NULL,
  `person` int(7) NOT NULL,
  `year` int(4) NOT NULL,
  `degree` varchar(64) NOT NULL,
  `institution` varchar(128) NOT NULL,
  `capstoneTitle` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Independent_Study`
--

CREATE TABLE `Independent_Study` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `organization` varchar(128) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Journal`
--

CREATE TABLE `Journal` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `publication` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Other_Publication`
--

CREATE TABLE `Other_Publication` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `event` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Other_Scholarship`
--

CREATE TABLE `Other_Scholarship` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `event` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `id` int(7) NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`id`, `firstName`, `lastName`, `email`) VALUES
(1, 'Phil', 'Schanely', 'philschanely@cedarville.edu'),
(2, 'Aaron', 'Huffman', 'achuffman@cedarville.edu'),
(3, 'Tim', 'Frame', 'tframe@cedarville.edu');

-- --------------------------------------------------------

--
-- Table structure for table `Presentation`
--

CREATE TABLE `Presentation` (
`id` int(6) NOT NULL,
  `person` int(7) NOT NULL,
  `title` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `event` varchar(128) NOT NULL,
  `authors` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Professional_Experience`
--

CREATE TABLE `Professional_Experience` (
`id` int(5) NOT NULL,
  `person` int(7) NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `company` varchar(128) NOT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professional_Experience`
--

INSERT INTO `Professional_Experience` (`id`, `person`, `dateStart`, `dateEnd`, `title`, `company`, `description`) VALUES
(1, 1, '2007-01-15', '2011-05-06', 'Educational Technology Analys', 'Cedarville University Center for Teaching and Learning', NULL),
(2, 1, '2011-05-06', '2014-07-31', 'Manager', 'Cedarville University Center for Teaching and Learning', NULL),
(3, 2, '2007-05-15', '2009-07-31', 'Graphic Designer', 'Awesome Place in South Bend', NULL),
(4, 2, '2006-05-15', '2006-07-31', 'Intern', 'Awesome Place in South Bend', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Rank`
--

CREATE TABLE `Rank` (
`id` int(2) NOT NULL,
  `name` varchar(64) NOT NULL,
  `order` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rank`
--

INSERT INTO `Rank` (`id`, `name`, `order`) VALUES
(1, 'Instructor', 1),
(2, 'Assistant Professor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Record_of_Action`
--

CREATE TABLE `Record_of_Action` (
`id` int(5) NOT NULL,
  `person` int(7) NOT NULL,
  `date` date NOT NULL,
  `rank` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Record_of_Action`
--

INSERT INTO `Record_of_Action` (`id`, `person`, `date`, `rank`) VALUES
(1, 1, '2014-08-05', 2),
(2, 2, '2010-08-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Semester`
--

CREATE TABLE `Semester` (
  `semesterCode` varchar(3) NOT NULL,
  `name` varchar(32) NOT NULL,
  `yearOrder` int(2) NOT NULL,
  `termOrder` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `course_taught_details`
--
DROP TABLE IF EXISTS `course_taught_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_taught_details` AS select `course_taught`.`course` AS `course`,`course_taught`.`person` AS `person`,`course`.`id` AS `id`,`course`.`dptCode` AS `dptCode`,`course`.`number` AS `number`,`course`.`name` AS `name` from (`course_taught` join `course` on((`course_taught`.`course` = `course`.`id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Academic_Term`
--
ALTER TABLE `Academic_Term`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Book`
--
ALTER TABLE `Book`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Conference_Paper`
--
ALTER TABLE `Conference_Paper`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Course_File`
--
ALTER TABLE `Course_File`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Course_File_Type`
--
ALTER TABLE `Course_File_Type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Course_Taught`
--
ALTER TABLE `Course_Taught`
 ADD PRIMARY KEY (`course`,`person`);

--
-- Indexes for table `Creative_Work`
--
ALTER TABLE `Creative_Work`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Educational_Background`
--
ALTER TABLE `Educational_Background`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Independent_Study`
--
ALTER TABLE `Independent_Study`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Journal`
--
ALTER TABLE `Journal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Other_Publication`
--
ALTER TABLE `Other_Publication`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Other_Scholarship`
--
ALTER TABLE `Other_Scholarship`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Presentation`
--
ALTER TABLE `Presentation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Professional_Experience`
--
ALTER TABLE `Professional_Experience`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Rank`
--
ALTER TABLE `Rank`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Record_of_Action`
--
ALTER TABLE `Record_of_Action`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Semester`
--
ALTER TABLE `Semester`
 ADD PRIMARY KEY (`semesterCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Academic_Term`
--
ALTER TABLE `Academic_Term`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Book`
--
ALTER TABLE `Book`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Conference_Paper`
--
ALTER TABLE `Conference_Paper`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Course_File`
--
ALTER TABLE `Course_File`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Course_File_Type`
--
ALTER TABLE `Course_File_Type`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Creative_Work`
--
ALTER TABLE `Creative_Work`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Educational_Background`
--
ALTER TABLE `Educational_Background`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Independent_Study`
--
ALTER TABLE `Independent_Study`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Journal`
--
ALTER TABLE `Journal`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Other_Publication`
--
ALTER TABLE `Other_Publication`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Other_Scholarship`
--
ALTER TABLE `Other_Scholarship`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Presentation`
--
ALTER TABLE `Presentation`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Professional_Experience`
--
ALTER TABLE `Professional_Experience`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Rank`
--
ALTER TABLE `Rank`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Record_of_Action`
--
ALTER TABLE `Record_of_Action`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;