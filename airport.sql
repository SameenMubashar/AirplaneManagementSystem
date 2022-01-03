

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `name` varchar(20) NOT NULL,
  `airplaneCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`name`, `airplaneCount`) VALUES
('Emirates', 8),
('Etihad Airways', 5),
('Qatar Airways', 4),
('Singapore Airlines', 4);

-- --------------------------------------------------------

--
-- Table structure for table `airplaneinventory`
--

CREATE TABLE `airplaneinventory` (
  `airplaneNum` int(11) NOT NULL,
  `model` varchar(20) DEFAULT NULL,
  `airline` varchar(20) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airplaneinventory`
--

INSERT INTO `airplaneinventory` (`airplaneNum`, `model`, `airline`, `status`) VALUES
(1, '767', 'Emirates', 'waiting'),
(2, 'A220', 'Emirates', 'waiting'),
(3, 'A350', 'Singapore Airlines', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

CREATE TABLE `airplanes` (
  `model` varchar(20) NOT NULL,
  `seating` int(11) DEFAULT NULL,
  `manufacturingCompany` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`model`, `seating`, `manufacturingCompany`) VALUES
('767', 15, 'Boeing'),
('A220', 8, 'Airbus'),
('A350', 10, 'Airbus');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(11) NOT NULL,
  `flightNum` int(11) DEFAULT NULL,
  `passengerID` int(11) DEFAULT NULL,
  `Destination` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `flightNum`, `passengerID`, `Destination`) VALUES
(0, 1, 0, 'Dubai'),
(1, 1, 0, 'Dubai'),
(2, 2, 1, 'Los Angeles'),
(3, 2, 1, 'Los Angeles');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `designationID` int(11) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dateOfJoining` int(11) DEFAULT NULL,
  `monthOfJoining` varchar(10) DEFAULT NULL,
  `yearOfJoining` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `address`, `designationID`, `sex`, `date`, `month`, `year`, `dateOfJoining`, `monthOfJoining`, `yearOfJoining`) VALUES
(1, 'Lucilia Gordge', 'lgordge0@ovh.net', '7 Di Loreto Plaza', 1, 'F', 7, '7', 1981, 25, '11', 2018),
(2, 'Justin Parrot', 'jparrot1@dailymail.co.uk', '4 Stone Corner Place', 2, 'M', 11, '2', 1980, 22, '2', 2011),
(3, 'Archibaldo Abramzon', 'aabramzon2@auda.org.au', '65672 Loeprich Plaza', 1, 'M', 17, '5', 1987, 12, '5', 2011),
(4, 'Dorene Jurkowski', 'djurkowski3@skyrock.com', '69932 Judy Plaza', 3, 'F', 26, '4', 1991, 18, '8', 2011),
(5, 'Reginald Zoane', 'rzoane4@feedburner.com', '967 Ridgeview Road', 1, 'M', 17, '11', 1991, 16, '7', 2012),
(6, 'Rodolphe Raspin', 'rraspin5@google.it', '40 Mallard Center', 5, 'M', 17, '1', 1987, 5, '5', 2012);

-- --------------------------------------------------------

--
-- Table structure for table `employeedesignation`
--

CREATE TABLE `employeedesignation` (
  `designationID` int(11) NOT NULL,
  `designationName` varchar(25) NOT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeedesignation`
--

INSERT INTO `employeedesignation` (`designationID`, `designationName`, `salary`) VALUES
(1, 'pilot', 80000),
(2, 'air host', 40000),
(3, 'aircraft engineer', 55000),
(4, 'administrator', 50000),
(5, 'security', 30000),
(6, 'receptionist', 35000);

-- --------------------------------------------------------

--
-- Table structure for table `employeetelephone`
--

CREATE TABLE `employeetelephone` (
  `id` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeetelephone`
--

INSERT INTO `employeetelephone` (`id`, `telephone`) VALUES
(1, 242),
(2, 212),
(3, 86),
(4, 380),
(5, 255),
(6, 48);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flightNum` int(11) NOT NULL,
  `airplaneNum` int(11) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `takeOffLocation` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `mode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flightNum`, `airplaneNum`, `destination`, `departureTime`, `takeOffLocation`, `status`, `date`, `month`, `mode`) VALUES
(1, 15, 'Dubai', '13:00:00', 'Pakistan', 'Waiting', 28, 'December', 'connected'),
(2, 15, 'Amsterdam', '05:00:00', 'Pakistan', 'Waiting', 28, 'December', 'connected'),
(3, 15, 'Chicago', '23:00:00', 'Pakistan', 'Waiting', 29, 'December', 'direct');

--
-- Triggers `flights`
--
DELIMITER $$
CREATE TRIGGER `update_status_after_delete_flight` AFTER DELETE ON `flights` FOR EACH ROW begin
SET @airplaneNum = old.airplaneNum;
UPDATE airplaneinventory SET status = "available" WHERE airplaneNum = @airplaneNum;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_for_flight_added` AFTER INSERT ON `flights` FOR EACH ROW begin
SET @airplaneNum = new.airplaneNum;
UPDATE airplaneinventory SET status = "not available" WHERE airplaneNum = @airplaneNum;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `flightstaff`
--

CREATE TABLE `flightstaff` (
  `flightNum` int(11) NOT NULL,
  `pilot` int(11) DEFAULT NULL,
  `copilot` int(11) DEFAULT NULL,
  `airhost1` int(11) DEFAULT NULL,
  `airhost2` int(11) DEFAULT NULL,
  `airhost3` int(11) DEFAULT NULL,
  `airhost4` int(11) DEFAULT NULL,
  `aircraftEngineer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightstaff`
--

INSERT INTO `flightstaff` (`flightNum`, `pilot`, `copilot`, `airhost1`, `airhost2`, `airhost3`, `airhost4`, `aircraftEngineer`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 3, 1, 4, 3, 4),
(1, 2, 3, 4, 5, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `sex`, `address`, `date`, `month`, `year`) VALUES
(0, 'Sameen Mubashar', 'sameenmubashar96@gmail.com', 'sameen', 'f', '03', 19, 'November', 2002),
(1, 'hassan', 'hassan@gmail.com', 'hassan', 'm', 'lahore', 16, 'September', 2001),
(3, 'hadia', 'hadia@gmail.com', 'hadia', 'f', 'islamabad', 19, 'September', 2002),
(4, 'muizz anwar', 'muizz@gmail.com', 'muizz', 'f', 'faisalabad', 3, 'october', 2002);

-- --------------------------------------------------------

--
-- Table structure for table `passengertelephone`
--

CREATE TABLE `passengertelephone` (
  `id` int(11) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengertelephone`
--

INSERT INTO `passengertelephone` (`id`, `telephone`) VALUES
(0, 84),
(1, 86),
(3, 27),
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `repairdetails`
--

CREATE TABLE `repairdetails` (
  `ID` int(11) NOT NULL,
  `repair` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repairdetails`
--

INSERT INTO `repairdetails` (`ID`, `repair`) VALUES
(1, 'control system'),
(2, 'engine'),
(3, 'wheels'),
(4, 'body'),
(5, 'air conditioning'),
(6, 'seats');

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `airplaneNum` int(11) DEFAULT NULL,
  `repairID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`airplaneNum`, `repairID`) VALUES
(1, 1),
(2, 3),
(3, 3);

--
-- Triggers `repairs`
--
DELIMITER $$
CREATE TRIGGER `update_status_after_delete_repair` AFTER DELETE ON `repairs` FOR EACH ROW begin
SET @airplaneNum = old.airplaneNum;
UPDATE airplaneinventory SET status = "available" WHERE airplaneNum = @airplaneNum;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_status_for_repair_added` AFTER INSERT ON `repairs` FOR EACH ROW begin
SET @airplaneNum = new.airplaneNum;
UPDATE airplaneinventory SET status = "not available" WHERE airplaneNum = @airplaneNum;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `destination` varchar(20) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`destination`, `price`) VALUES
('Amsterdam', 60000),
('Chicago', 65000),
('Dubai', 25000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `airplaneinventory`
--
ALTER TABLE `airplaneinventory`
  ADD PRIMARY KEY (`airplaneNum`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `airplanes`
--
ALTER TABLE `airplanes`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `flightNum` (`flightNum`),
  ADD KEY `passengerID` (`passengerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designationID` (`designationID`);

--
-- Indexes for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  ADD PRIMARY KEY (`designationID`);

--
-- Indexes for table `employeetelephone`
--
ALTER TABLE `employeetelephone`
  ADD KEY `id` (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flightNum`);

--
-- Indexes for table `flightstaff`
--
ALTER TABLE `flightstaff`
  ADD KEY `flightNum` (`flightNum`),
  ADD KEY `pilot` (`pilot`),
  ADD KEY `copilot` (`copilot`),
  ADD KEY `airhost1` (`airhost1`),
  ADD KEY `airhost2` (`airhost2`),
  ADD KEY `airhost3` (`airhost3`),
  ADD KEY `airhost4` (`airhost4`),
  ADD KEY `aircraftEngineer` (`aircraftEngineer`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengertelephone`
--
ALTER TABLE `passengertelephone`
  ADD KEY `id` (`id`);

--
-- Indexes for table `repairdetails`
--
ALTER TABLE `repairdetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD KEY `airplaneNum` (`airplaneNum`),
  ADD KEY `repairID` (`repairID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`destination`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airplaneinventory`
--
ALTER TABLE `airplaneinventory`
  MODIFY `airplaneNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employeedesignation`
--
ALTER TABLE `employeedesignation`
  MODIFY `designationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flightNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flightstaff`
--
ALTER TABLE `flightstaff`
  MODIFY `flightNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airplaneinventory`
--
ALTER TABLE `airplaneinventory`
  ADD CONSTRAINT `airplaneinventory_ibfk_1` FOREIGN KEY (`model`) REFERENCES `airplanes` (`model`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`flightNum`) REFERENCES `flights` (`flightNum`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`designationID`) REFERENCES `employeedesignation` (`designationID`);

--
-- Constraints for table `employeetelephone`
--
ALTER TABLE `employeetelephone`
  ADD CONSTRAINT `employeetelephone_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `flightstaff`
--
ALTER TABLE `flightstaff`
  ADD CONSTRAINT `flightstaff_ibfk_1` FOREIGN KEY (`flightNum`) REFERENCES `flights` (`flightNum`),
  ADD CONSTRAINT `flightstaff_ibfk_2` FOREIGN KEY (`pilot`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_3` FOREIGN KEY (`copilot`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_4` FOREIGN KEY (`airhost1`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_5` FOREIGN KEY (`airhost2`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_6` FOREIGN KEY (`airhost3`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_7` FOREIGN KEY (`airhost4`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `flightstaff_ibfk_8` FOREIGN KEY (`aircraftEngineer`) REFERENCES `employee` (`id`);

--
-- Constraints for table `passengertelephone`
--
ALTER TABLE `passengertelephone`
  ADD CONSTRAINT `passengertelephone_ibfk_1` FOREIGN KEY (`id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `repairs`
--
ALTER TABLE `repairs`
  ADD CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`airplaneNum`) REFERENCES `airplaneinventory` (`airplaneNum`),
  ADD CONSTRAINT `repairs_ibfk_2` FOREIGN KEY (`repairID`) REFERENCES `repairdetails` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
