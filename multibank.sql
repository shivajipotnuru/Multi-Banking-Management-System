-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 06:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: multibank
--

-- --------------------------------------------------------

--
-- Table structure for table admin
--

CREATE TABLE `admin` (
  id int(4) NOT NULL,
  name varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  type int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table admin
--

INSERT INTO admin (id, `name`, `password`, `type`) VALUES
(1, 'shivaji', 'jiji', 1),
(2, 'BankA', 'nice', 0),
(3, 'BankC', '7878', 0),
(4, 'BankB', 'okayyy', 0),
(5, 'NameA', 'hice', 0),
(6, 'NameC', '8989', 0),
(8, 'new', 'new', 0),
(9, 'neww', 'abc', 1);

-- --------------------------------------------------------

--
-- Table structure for table bank
--

CREATE TABLE bank (
  b_id int(10) NOT NULL,
  bankno int(10) NOT NULL,
  emailid varchar(20) NOT NULL,
  bankname varchar(50) NOT NULL,
  balance int(50) DEFAULT NULL,
  pin int(4) NOT NULL,
  date date NOT NULL,
  time time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table bank
--

INSERT INTO bank (b_id, bankno, emailid, bankname, balance, pin, `date`, `time`) VALUES
(6, 123456789, 'name@gmail.com', 'KYC', 8300, 5656, '2019-03-14', '06:43:35.000000'),
(7, 1234567890, 'neeru.bawa@yahoo.com', 'NameB', 5600, 1265, '2019-03-14', '07:13:48.000000'),
(8, 234567822, 'neeru.bawa@yahoo.com', 'NameC', 6565, 6555, '2019-03-14', '07:14:05.000000'),
(9, 12345678, 'baba@baba.com', 'ICICI', 15100, 1234, '2019-03-14', '07:53:48.000000'),
(10, 987654321, 'sudu@gmail.com', 'BankA', 67000, 1232, '2019-03-14', '09:50:00.000000'),
(11, 876543219, 'sudu@gmail.com', 'BankC', 4500, 1242, '2019-03-14', '09:50:23.000000'),
(12, 888888888, 'rithu@gmail.com', 'BankA', 64500, 616, '2019-03-14', '10:11:58.000000'),
(13, 345345345, 'rithu@gmail.com', 'BankA', 5000, 5445, '2019-03-14', '10:12:23.000000'),
(14, 345674311, 'baba@baba.com', 'ABBAA', 7888, 7676, '2019-03-14', '10:22:39.000000'),
(15, 170802, 'rithika@gmail.com', 'indian', 2499500, 616, '2019-03-14', '14:07:43.000000'),
(16, 170184, 'rithika@gmail.com', 'union', 500000, 267, '2019-03-14', '14:08:27.000000'),
(17, 12121212, 'shivajipotnuru12@yah', 'KVB', 10000, 1234, '2019-03-14', '21:11:43.000000'),
(18, 1313131313, 'shivajipotnuru12@yah', 'ICICI', 10000, 2345, '2019-03-14', '21:12:31.000000');

-- --------------------------------------------------------

--
-- Table structure for table contact_us
--

CREATE TABLE contact_us (
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  mobile_no int(10) NOT NULL,
  subject varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table contact_us
--

INSERT INTO contact_us (`name`, email, mobile_no, `subject`) VALUES
('Potnuru Shivaji', 'shivajipotnuru12@gmail.com', 2147483647, 'hello'),
('Potnuru Shivaji', 'shivajipotnuru12@gmail.com', 2147483647, ' b hvyy jhbhy');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  transid int(10) NOT NULL,
  emailid varchar(20) NOT NULL,
  sender int(10) NOT NULL,
  receiver int(10) NOT NULL,
  amount int(10) NOT NULL,
  date date NOT NULL,
  time time(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (transid, emailid, sender, receiver, amount, `date`, `time`) VALUES
(3, 'baba@baba.com', 12345678, 123456789, 500, '2019-03-14', '09:20:03.0000'),
(4, 'baba@baba.com', 123456789, 12345678, 500, '2019-03-14', '09:20:58.0000'),
(5, 'baba@baba.com', 123456789, 12345678, 100, '2019-03-14', '09:21:50.0000'),
(8, 'sudu@gmail.com', 12345678, 123456789, 500, '2019-03-14', '09:44:48.0000'),
(9, 'rithu@gmail.com', 888888888, 123456789, 500, '2019-03-14', '10:13:27.0000'),
(10, 'baba@baba.com', 12345678, 123456789, 5000, '2019-03-14', '10:23:32.0000'),
(11, 'baba@baba.com', 12345678, 123456789, 500, '2019-03-14', '11:32:01.0000'),
(12, 'name@gmail.com', 123456789, 12345678, 500, '2019-03-14', '12:51:56.0000'),
(13, 'rithika@gmail.com', 170802, 123456789, 500, '2019-03-14', '14:11:48.0000'),
(14, 'baba@baba.com', 12345678, 123456789, 500, '2019-03-14', '15:12:32.0000');

-- --------------------------------------------------------

--
-- Table structure for table userdetails
--

CREATE TABLE userdetails (
  user_id int(100) NOT NULL,
  name varchar(30) NOT NULL,
  age int(2) NOT NULL,
  gender varchar(6) NOT NULL,
  mobile_no varchar(100) NOT NULL,
  birthday date NOT NULL,
  email varchar(100) NOT NULL,
  pwd varchar(25) NOT NULL,
  pic varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table userdetails
--

INSERT INTO userdetails (user_id, `name`, age, gender, mobile_no, birthday, email, pwd, pic) VALUES
(1, 'shivaji', 12, 'male', '9888121222', '2012-12-12', 'name@gmail.com', '1234', 'd1.jpeg'),
(2, 'baba', 19, 'male', '1234567890', '2016-02-04', 'baba@baba.com', 'baba1', 'd1.jpeg'),
(3, 'Sudu', 19, 'male', '9566110795', '2019-03-21', 'sudu@gmail.com', 'sudu', 'd1.jpeg'),
(4, 'rithu', 18, 'female', '8825826226', '2000-06-16', 'rithu@gmail.com', 'rithu', 'd2.jpeg'),
(5, 'charan', 19, 'male', '9876543210', '1999-07-09', 'charan@hi2.in', '1234', 'banner.png'),
(6, 'A rithika', 18, 'female', '8825826226', '2000-06-16', 'rithika@gmail.com', 'rithika', 'd2.jpeg'),
(7, 'Potnuru Shivaji', 19, 'male', '08096793339', '1999-05-12', 'shivajipotnuru12@yahoo.com', '1234', 'd1.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table admin
--
ALTER TABLE admin
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY `unique` (name);

--
-- Indexes for table bank
--
ALTER TABLE bank
  ADD PRIMARY KEY (b_id),
  ADD UNIQUE KEY `UNIQUE` (bankno);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (transid);

--
-- Indexes for table userdetails
--
ALTER TABLE userdetails
  ADD PRIMARY KEY (user_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table admin
--
ALTER TABLE admin
  MODIFY id int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table bank
--
ALTER TABLE bank
  MODIFY b_id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY transid int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table userdetails
--
ALTER TABLE userdetails
  MODIFY user_id int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
