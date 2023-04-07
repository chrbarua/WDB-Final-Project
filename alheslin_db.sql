-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2023 at 11:35 AM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alheslin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `CEREAL`
--

CREATE TABLE `CEREAL` (
  `CRL_ID` int(11) NOT NULL,
  `CRL_NAME` varchar(100) DEFAULT NULL,
  `CRL_CAL` int(11) DEFAULT NULL,
  `CRL_PROT` int(11) DEFAULT NULL,
  `CRL_FAT` int(11) DEFAULT NULL,
  `CRL_SOD` int(11) DEFAULT NULL,
  `CRL_CARB` int(11) DEFAULT NULL,
  `CRL_SUG` int(11) DEFAULT NULL,
  `CRL_FIB` int(11) DEFAULT NULL,
  `CRL_POTAS` int(11) DEFAULT NULL,
  `CRL_VIT` int(11) DEFAULT NULL,
  `CRL_SHLF` int(11) DEFAULT NULL,
  `CRL_WGHT` int(11) DEFAULT NULL,
  `CRL_SERV` int(11) DEFAULT NULL,
  `CRL_RATE` decimal(9,6) DEFAULT NULL,
  `CRL_HEAT` varchar(5) DEFAULT NULL,
  `CRL_MANUF` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CEREAL`
--

INSERT INTO `CEREAL` (`CRL_ID`, `CRL_NAME`, `CRL_CAL`, `CRL_PROT`, `CRL_FAT`, `CRL_SOD`, `CRL_CARB`, `CRL_SUG`, `CRL_FIB`, `CRL_POTAS`, `CRL_VIT`, `CRL_SHLF`, `CRL_WGHT`, `CRL_SERV`, `CRL_RATE`, `CRL_HEAT`, `CRL_MANUF`) VALUES
(1, '100% Bran', 70, 4, 1, 130, 10, 5, 6, 280, 25, 3, 1, 0, '68.402973', 'cold', 'nabisco'),
(2, '100% Natural Bran', 120, 3, 5, 15, 2, 8, 8, 135, 0, 3, 1, 1, '33.983679', 'cold', 'quakers'),
(3, 'All-Bran', 70, 4, 1, 260, 9, 7, 5, 320, 25, 3, 1, 0, '59.425505', 'cold', 'kelloggs'),
(4, 'All-Bran with Extra Fiber', 50, 4, 0, 140, 14, 8, 0, 330, 25, 3, 1, 1, '93.704912', 'cold', 'kelloggs'),
(5, 'Almond Delight', 110, 2, 2, 200, 1, 14, 8, -1, 25, 3, 1, 1, '34.384843', 'cold', 'ralston'),
(6, 'Apple Cinnamon Cheerios', 110, 2, 2, 180, 2, 11, 10, 70, 25, 1, 1, 1, '29.509541', 'cold', 'general mills'),
(7, 'Apple Jacks', 110, 2, 0, 125, 1, 11, 14, 30, 25, 2, 1, 1, '33.174094', 'cold', 'kelloggs'),
(8, 'Basic 4', 130, 3, 2, 210, 2, 18, 8, 100, 25, 3, 1, 1, '37.038562', 'cold', 'general mills'),
(9, 'Bran Chex', 90, 2, 1, 200, 4, 15, 6, 125, 25, 1, 1, 1, '49.120253', 'cold', 'ralston'),
(10, 'Bran Flakes', 90, 3, 0, 210, 5, 13, 5, 190, 25, 3, 1, 1, '53.313813', 'cold', 'post'),
(11, 'Cap\'n\'Crunch', 120, 1, 2, 220, 0, 12, 12, 35, 25, 2, 1, 1, '18.042851', 'cold', 'quakers'),
(12, 'Cheerios', 110, 6, 2, 290, 2, 17, 1, 105, 25, 1, 1, 1, '50.764999', 'cold', 'general mills'),
(13, 'Cinnamon Toast Crunch', 120, 1, 3, 210, 0, 13, 9, 45, 25, 2, 1, 1, '19.823573', 'cold', 'general mills'),
(14, 'Clusters', 110, 3, 2, 140, 2, 13, 7, 105, 25, 3, 1, 1, '40.400208', 'cold', 'general mills'),
(15, 'Cocoa Puffs', 110, 1, 1, 180, 0, 12, 13, 55, 25, 2, 1, 1, '22.736446', 'cold', 'general mills'),
(16, 'Corn Chex', 110, 2, 0, 280, 0, 22, 3, 25, 25, 1, 1, 1, '41.445019', 'cold', 'ralston'),
(17, 'Corn Flakes', 100, 2, 0, 290, 1, 21, 2, 35, 25, 1, 1, 1, '45.863324', 'cold', 'kelloggs'),
(18, 'Corn Pops', 110, 1, 0, 90, 1, 13, 12, 20, 25, 2, 1, 1, '35.782791', 'cold', 'kelloggs'),
(19, 'Count Chocula', 110, 1, 1, 180, 0, 12, 13, 65, 25, 2, 1, 1, '22.396513', 'cold', 'general mills'),
(20, 'Cracklin\' Oat Bran', 110, 3, 3, 140, 4, 10, 7, 160, 25, 3, 1, 1, '40.448772', 'cold', 'kelloggs'),
(21, 'Cream of Wheat (Quick)', 100, 3, 0, 80, 1, 21, 0, -1, 0, 2, 1, 1, '64.533816', 'hot', 'nabisco'),
(22, 'Crispix', 110, 2, 0, 220, 1, 21, 3, 30, 25, 3, 1, 1, '46.895644', 'cold', 'kelloggs'),
(23, 'Crispy Wheat & Raisins', 100, 2, 1, 140, 2, 11, 10, 120, 25, 3, 1, 1, '36.176196', 'cold', 'general mills'),
(24, 'Double Chex', 100, 2, 0, 190, 1, 18, 5, 80, 25, 3, 1, 1, '44.330856', 'cold', 'ralston'),
(25, 'Froot Loops', 110, 2, 1, 125, 1, 11, 13, 30, 25, 2, 1, 1, '32.207582', 'cold', 'kelloggs'),
(26, 'Frosted Flakes', 110, 1, 0, 200, 1, 14, 11, 25, 25, 1, 1, 1, '31.435973', 'cold', 'kelloggs'),
(27, 'Frosted Mini-Wheats', 100, 3, 0, 0, 3, 14, 7, 100, 25, 2, 1, 1, '58.345141', 'cold', 'kelloggs'),
(28, 'Fruitful Bran', 120, 3, 0, 240, 5, 14, 12, 190, 25, 3, 1, 1, '41.015492', 'cold', 'kelloggs'),
(29, 'Fruity Pebbles', 110, 1, 1, 135, 0, 13, 12, 25, 25, 2, 1, 1, '28.025765', 'cold', 'post'),
(30, 'Golden Crisp', 100, 2, 0, 45, 0, 11, 15, 40, 25, 1, 1, 1, '35.252444', 'cold', 'post'),
(31, 'Golden Grahams', 110, 1, 1, 280, 0, 15, 9, 45, 25, 2, 1, 1, '23.804043', 'cold', 'general mills'),
(32, 'Grape Nuts Flakes', 100, 3, 1, 140, 3, 15, 5, 85, 25, 3, 1, 1, '52.076897', 'cold', 'post'),
(33, 'Grape-Nuts', 110, 3, 0, 170, 3, 17, 3, 90, 25, 3, 1, 0, '53.371007', 'cold', 'post'),
(34, 'Great Grains Pecan', 120, 3, 3, 75, 3, 13, 4, 100, 25, 3, 1, 0, '45.811716', 'cold', 'post'),
(35, 'Honey Graham Ohs', 120, 1, 2, 220, 1, 12, 11, 45, 25, 2, 1, 1, '21.871292', 'cold', 'quakers'),
(36, 'Honey Nut Cheerios', 110, 3, 1, 250, 2, 12, 10, 90, 25, 1, 1, 1, '31.072217', 'cold', 'general mills'),
(37, 'Honey-comb', 110, 1, 0, 180, 0, 14, 11, 35, 25, 1, 1, 1, '28.742414', 'cold', 'post'),
(38, 'Just Right Crunchy  Nuggets', 110, 2, 1, 170, 1, 17, 6, 60, 100, 3, 1, 1, '36.523683', 'cold', 'kelloggs'),
(39, 'Just Right Fruit & Nut', 140, 3, 1, 170, 2, 20, 9, 95, 100, 3, 1, 1, '36.471512', 'cold', 'kelloggs'),
(40, 'Kix', 110, 2, 1, 260, 0, 21, 3, 40, 25, 2, 1, 2, '39.241114', 'cold', 'general mills'),
(41, 'Life', 100, 4, 2, 150, 2, 12, 6, 95, 25, 2, 1, 1, '45.328074', 'cold', 'quakers'),
(42, 'Lucky Charms', 110, 2, 1, 180, 0, 12, 12, 55, 25, 2, 1, 1, '26.734515', 'cold', 'general mills'),
(43, 'Maypo', 100, 4, 1, 0, 0, 16, 3, 95, 25, 2, 1, 1, '54.850917', 'hot', 'always'),
(44, 'Mueslix Crispy Blend', 160, 3, 2, 150, 3, 17, 13, 160, 25, 3, 2, 1, '30.313351', 'cold', 'kelloggs'),
(45, 'Multi-Grain Cheerios', 100, 2, 1, 220, 2, 15, 6, 90, 25, 1, 1, 1, '40.105965', 'cold', 'general mills'),
(46, 'Nut&Honey Crunch', 120, 2, 1, 190, 0, 15, 9, 40, 25, 2, 1, 1, '29.924285', 'cold', 'kelloggs'),
(47, 'Nutri-Grain Almond-Raisin', 140, 3, 2, 220, 3, 21, 7, 130, 25, 3, 1, 1, '40.692320', 'cold', 'kelloggs'),
(48, 'Nutri-grain Wheat', 90, 3, 0, 170, 3, 18, 2, 90, 25, 3, 1, 1, '59.642837', 'cold', 'kelloggs'),
(49, 'Oatmeal Raisin Crisp', 130, 3, 2, 170, 2, 14, 10, 120, 25, 3, 1, 1, '30.450843', 'cold', 'general mills'),
(50, 'Post Nat. Raisin Bran', 120, 3, 1, 200, 6, 11, 14, 260, 25, 3, 1, 1, '37.840594', 'cold', 'post'),
(51, 'Product 19', 100, 3, 0, 320, 1, 20, 3, 45, 100, 3, 1, 1, '41.503540', 'cold', 'kelloggs'),
(52, 'Puffed Rice', 50, 1, 0, 0, 0, 13, 0, 15, 0, 3, 1, 1, '60.756112', 'cold', 'quakers'),
(53, 'Puffed Wheat', 50, 2, 0, 0, 1, 10, 0, 50, 0, 3, 1, 1, '63.005645', 'cold', 'quakers'),
(54, 'Quaker Oat Squares', 100, 4, 1, 135, 2, 14, 6, 110, 25, 3, 1, 1, '49.511874', 'cold', 'quakers'),
(55, 'Quaker Oatmeal', 100, 5, 2, 0, 3, -1, -1, 110, 0, 1, 1, 1, '50.828392', 'hot', 'quakers'),
(56, 'Raisin Bran', 120, 3, 1, 210, 5, 14, 12, 240, 25, 2, 1, 1, '39.259197', 'cold', 'kelloggs'),
(57, 'Raisin Nut Bran', 100, 3, 2, 140, 3, 11, 8, 140, 25, 3, 1, 1, '39.703400', 'cold', 'general mills'),
(58, 'Raisin Squares', 90, 2, 0, 0, 2, 15, 6, 110, 25, 3, 1, 1, '55.333142', 'cold', 'kelloggs'),
(59, 'Rice Chex', 110, 1, 0, 240, 0, 23, 2, 30, 25, 1, 1, 1, '41.998933', 'cold', 'ralston'),
(60, 'Rice Krispies', 110, 2, 0, 290, 0, 22, 3, 35, 25, 1, 1, 1, '40.560159', 'cold', 'kelloggs'),
(61, 'Shredded Wheat', 80, 2, 0, 0, 3, 16, 0, 95, 0, 1, 1, 1, '68.235885', 'cold', 'nabisco'),
(62, 'Shredded Wheat \'n\'Bran', 90, 3, 0, 0, 4, 19, 0, 140, 0, 1, 1, 1, '74.472949', 'cold', 'nabisco'),
(63, 'Shredded Wheat spoon size', 90, 3, 0, 0, 3, 20, 0, 120, 0, 1, 1, 1, '72.801787', 'cold', 'nabisco'),
(64, 'Smacks', 110, 2, 1, 70, 1, 9, 15, 40, 25, 2, 1, 1, '31.230054', 'cold', 'kelloggs'),
(65, 'Special K', 110, 6, 0, 230, 1, 16, 3, 55, 25, 1, 1, 1, '53.131324', 'cold', 'kelloggs'),
(66, 'Strawberry Fruit Wheats', 90, 2, 0, 15, 3, 15, 5, 90, 25, 2, 1, 1, '59.363993', 'cold', 'nabisco'),
(67, 'Total Corn Flakes', 110, 2, 1, 200, 0, 21, 3, 35, 100, 3, 1, 1, '38.839746', 'cold', 'general mills'),
(68, 'Total Raisin Bran', 140, 3, 1, 190, 4, 15, 14, 230, 100, 3, 2, 1, '28.592785', 'cold', 'general mills'),
(69, 'Total Whole Grain', 100, 3, 1, 200, 3, 16, 3, 110, 100, 3, 1, 1, '46.658844', 'cold', 'general mills'),
(70, 'Triples', 110, 2, 1, 250, 0, 21, 3, 60, 25, 3, 1, 1, '39.106174', 'cold', 'general mills'),
(71, 'Trix', 110, 1, 1, 140, 0, 13, 12, 25, 25, 2, 1, 1, '27.753301', 'cold', 'general mills'),
(72, 'Wheat Chex', 100, 3, 1, 230, 3, 17, 3, 115, 25, 1, 1, 1, '49.787445', 'cold', 'ralston'),
(73, 'Wheaties', 100, 3, 1, 200, 3, 17, 3, 110, 25, 1, 1, 1, '51.592193', 'cold', 'general mills'),
(74, 'Wheaties Honey Gold', 110, 2, 1, 200, 1, 16, 8, 60, 25, 1, 1, 1, '36.187559', 'cold', 'general mills'),
(86, 'sasha grams', 100, 100, 5, 7, 5, 3, 2, 1, 2, 3, 4, 5, '33.098760', 'cold', 'sasha company');

-- --------------------------------------------------------

--
-- Table structure for table `COMMENTS`
--

CREATE TABLE `COMMENTS` (
  `EXP_ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `COMM_TEXT` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DS`
--

CREATE TABLE `DS` (
  `DS_ID` int(11) NOT NULL,
  `DS_WK_YR` char(5) DEFAULT NULL,
  `DS_LVL_EX` char(2) DEFAULT NULL,
  `DS_EMP_TYPE` char(2) DEFAULT NULL,
  `DS_TITLE` varchar(50) DEFAULT NULL,
  `DS_SAL` int(11) DEFAULT NULL,
  `DS_SAL_CUR` char(3) DEFAULT NULL,
  `DS_SAL_USD` int(11) DEFAULT NULL,
  `DS_RES` char(3) DEFAULT NULL,
  `DS_REM_RAT` int(11) DEFAULT NULL,
  `DS_COMP_LOC` char(3) DEFAULT NULL,
  `DS_COMP_SIZE` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DS`
--

INSERT INTO `DS` (`DS_ID`, `DS_WK_YR`, `DS_LVL_EX`, `DS_EMP_TYPE`, `DS_TITLE`, `DS_SAL`, `DS_SAL_CUR`, `DS_SAL_USD`, `DS_RES`, `DS_REM_RAT`, `DS_COMP_LOC`, `DS_COMP_SIZE`) VALUES
(1, '2021e', 'EN', 'FT', 'Data Science Consultant', 54000, 'EUR', 64369, 'DE', 50, 'DE', 'L'),
(2, '2020', 'SE', 'FT', 'Data Scientist', 60000, 'EUR', 68428, 'GR', 100, 'US', 'L'),
(3, '2021e', 'EX', 'FT', 'Head of Data Science', 85000, 'USD', 85000, 'RU', 0, 'RU', 'M'),
(4, '2021e', 'EX', 'FT', 'Head of Data', 230000, 'USD', 230000, 'RU', 50, 'RU', 'L'),
(5, '2021e', 'EN', 'FT', 'Machine Learning Engineer', 125000, 'USD', 125000, 'US', 100, 'US', 'S'),
(6, '2021e', 'SE', 'FT', 'Data Analytics Manager', 120000, 'USD', 120000, 'US', 100, 'US', 'M'),
(7, '2020', 'MI', 'FT', 'Research Scientist', 450000, 'USD', 450000, 'US', 0, 'US', 'M'),
(8, '2020', 'MI', 'FT', 'Data Analyst', 41000, 'EUR', 46759, 'FR', 50, 'FR', 'L'),
(9, '2020', 'MI', 'FT', 'Data Engineer', 65000, 'EUR', 74130, 'AT', 50, 'AT', 'L'),
(10, '2021e', 'SE', 'FT', 'Data Science Engineer', 159500, 'CAD', 127543, 'CA', 50, 'CA', 'L'),
(11, '2021e', 'SE', 'FT', 'Manager Data Science', 144000, 'USD', 144000, 'US', 100, 'US', 'L'),
(12, '2021e', 'EN', 'FT', 'Data Scientist', 13400, 'USD', 13400, 'UA', 100, 'UA', 'L'),
(13, '2021e', 'MI', 'FT', 'Data Scientist', 95000, 'CAD', 75966, 'CA', 100, 'CA', 'L'),
(14, '2021e', 'MI', 'FT', 'Data Scientist', 150000, 'USD', 150000, 'US', 100, 'US', 'M'),
(15, '2020', 'MI', 'FT', 'Data Science Consultant', 103000, 'USD', 103000, 'US', 100, 'US', 'L'),
(16, '2021e', 'SE', 'FT', 'Data Engineering Manager', 153000, 'USD', 153000, 'US', 100, 'US', 'L'),
(17, '2021e', 'MI', 'FT', 'Data Engineer', 90000, 'USD', 90000, 'US', 100, 'US', 'L'),
(18, '2021e', 'EN', 'FT', 'Data Analyst', 90000, 'USD', 90000, 'US', 100, 'US', 'S'),
(19, '2021e', 'EN', 'FT', 'Data Analyst', 60000, 'USD', 60000, 'US', 100, 'US', 'S'),
(20, '2021e', 'MI', 'FT', 'Data Scientist', 50000, 'USD', 50000, 'NG', 100, 'NG', 'L'),
(21, '2021e', 'EN', 'PT', 'AI Scientist', 12000, 'USD', 12000, 'PK', 100, 'US', 'M'),
(22, '2021e', 'MI', 'PT', '3D Computer Vision Researcher', 400000, 'INR', 5423, 'IN', 50, 'IN', 'M'),
(23, '2021e', 'MI', 'CT', 'ML Engineer', 270000, 'USD', 270000, 'US', 100, 'US', 'L'),
(24, '2021e', 'MI', 'FT', 'Applied Data Scientist', 68000, 'CAD', 54376, 'GB', 50, 'CA', 'L'),
(25, '2021e', 'MI', 'FT', 'Machine Learning Engineer', 40000, 'EUR', 47681, 'ES', 100, 'ES', 'S'),
(26, '2021e', 'EX', 'FT', 'Director of Data Science', 130000, 'EUR', 154963, 'IT', 100, 'PL', 'L'),
(27, '2021e', 'MI', 'FT', 'Data Engineer', 110000, 'PLN', 28801, 'PL', 100, 'PL', 'L'),
(28, '2021e', 'MI', 'FT', 'Data Analytics Engineer', 110000, 'USD', 110000, 'US', 100, 'US', 'L'),
(29, '2021e', 'EN', 'FT', 'Research Scientist', 60000, 'GBP', 83000, 'GB', 50, 'GB', 'L'),
(30, '2020', 'EN', 'FT', 'Machine Learning Engineer', 250000, 'USD', 250000, 'US', 50, 'US', 'L'),
(31, '2021e', 'EN', 'FT', 'Data Analyst', 50000, 'EUR', 59601, 'FR', 50, 'FR', 'M'),
(32, '2021e', 'SE', 'FT', 'Data Analyst', 80000, 'USD', 80000, 'BG', 100, 'US', 'S'),
(33, '2020', 'EN', 'FT', 'Data Analyst', 10000, 'USD', 10000, 'NG', 100, 'NG', 'S'),
(34, '2020', 'EN', 'FT', 'Machine Learning Engineer', 138000, 'USD', 138000, 'US', 100, 'US', 'S'),
(35, '2021e', 'MI', 'FT', 'Data Engineer', 140000, 'USD', 140000, 'US', 100, 'US', 'L'),
(36, '2021e', 'SE', 'FT', 'Data Analytics Engineer', 67000, 'EUR', 79866, 'DE', 100, 'DE', 'L'),
(37, '2021e', 'SE', 'FT', 'Lead Data Analyst', 170000, 'USD', 170000, 'US', 100, 'US', 'L'),
(38, '2021e', 'EN', 'FT', 'Data Analyst', 80000, 'USD', 80000, 'US', 100, 'US', 'M'),
(39, '2020', 'MI', 'FT', 'Data Scientist', 45760, 'USD', 45760, 'PH', 100, 'US', 'S'),
(40, '2021e', 'MI', 'FT', 'BI Data Analyst', 100000, 'USD', 100000, 'US', 100, 'US', 'M'),
(41, '2021e', 'SE', 'FT', 'Data Scientist', 45000, 'EUR', 53641, 'FR', 50, 'FR', 'L'),
(42, '2021e', 'EX', 'FT', 'Head of Data', 235000, 'USD', 235000, 'US', 100, 'US', 'L'),
(43, '2021e', 'EX', 'FT', 'BI Data Analyst', 150000, 'USD', 150000, 'IN', 100, 'US', 'L'),
(44, '2020', 'EX', 'FT', 'Data Engineering Manager', 70000, 'EUR', 79833, 'ES', 50, 'ES', 'L'),
(45, '2021e', 'EN', 'FT', 'Machine Learning Scientist', 225000, 'USD', 225000, 'US', 100, 'US', 'L'),
(46, '2021e', 'EN', 'FT', 'Data Science Consultant', 65000, 'EUR', 77481, 'DE', 100, 'DE', 'S'),
(47, '2020', 'MI', 'FT', 'Machine Learning Infrastructure Engineer', 44000, 'EUR', 50180, 'PT', 0, 'PT', 'M'),
(48, '2021e', 'SE', 'FT', 'Marketing Data Analyst', 75000, 'EUR', 89402, 'GR', 100, 'DK', 'L'),
(49, '2021e', 'SE', 'FT', 'Lead Data Engineer', 75000, 'GBP', 103750, 'GB', 100, 'GB', 'S'),
(50, '2021e', 'SE', 'FT', 'Director of Data Engineering', 82500, 'GBP', 114125, 'GB', 100, 'GB', 'M'),
(51, '2021e', 'SE', 'FT', 'Machine Learning Engineer', 80000, 'EUR', 95362, 'DE', 50, 'DE', 'L'),
(52, '2021e', 'EN', 'FT', 'Data Engineer', 2250000, 'INR', 30509, 'IN', 100, 'IN', 'L'),
(53, '2021e', 'SE', 'FT', 'Data Engineer', 150000, 'USD', 150000, 'US', 100, 'US', 'M'),
(54, '2021e', 'SE', 'FT', 'Data Engineer', 115000, 'USD', 115000, 'US', 100, 'US', 'S'),
(55, '2021e', 'MI', 'FT', 'Research Scientist', 235000, 'CAD', 187917, 'CA', 100, 'CA', 'L'),
(56, '2021e', 'MI', 'FT', 'Data Analyst', 37456, 'GBP', 51814, 'GB', 50, 'GB', 'L'),
(57, '2020', 'MI', 'FT', 'Data Engineer', 106000, 'USD', 106000, 'US', 100, 'US', 'L'),
(58, '2020', 'MI', 'FT', 'Data Engineer', 88000, 'GBP', 112872, 'GB', 50, 'GB', 'L'),
(59, '2021e', 'MI', 'FT', 'BI Data Analyst', 11000000, 'HUF', 36732, 'HU', 50, 'US', 'L'),
(60, '2021e', 'SE', 'FT', 'Data Engineer', 150000, 'USD', 150000, 'US', 100, 'US', 'L'),
(61, '2020', 'EN', 'PT', 'ML Engineer', 14000, 'EUR', 15966, 'DE', 100, 'DE', 'S'),
(62, '2021e', 'MI', 'FT', 'Computer Vision Software Engineer', 81000, 'EUR', 96554, 'DE', 100, 'US', 'S'),
(63, '2021e', 'EN', 'FT', 'Computer Vision Software Engineer', 70000, 'USD', 70000, 'US', 100, 'US', 'M'),
(64, '2021e', 'MI', 'FT', 'Financial Data Analyst', 450000, 'USD', 450000, 'US', 100, 'US', 'L'),
(65, '2020', 'MI', 'FT', 'Data Scientist', 60000, 'GBP', 76958, 'GB', 100, 'GB', 'S'),
(66, '2021e', 'MI', 'FT', 'Cloud Data Engineer', 120000, 'SGD', 89514, 'SG', 50, 'SG', 'L'),
(67, '2021e', 'EN', 'FT', 'Data Scientist', 2200000, 'INR', 29831, 'IN', 50, 'IN', 'L'),
(68, '2021e', 'SE', 'FT', 'Lead Data Engineer', 276000, 'USD', 276000, 'US', 0, 'US', 'L'),
(69, '2020', 'SE', 'FT', 'Data Engineer', 188000, 'USD', 188000, 'US', 100, 'US', 'L'),
(70, '2021e', 'SE', 'FT', 'Cloud Data Engineer', 160000, 'USD', 160000, 'BR', 100, 'US', 'S'),
(71, '2020', 'MI', 'FT', 'Data Scientist', 105000, 'USD', 105000, 'US', 100, 'US', 'L'),
(72, '2021e', 'MI', 'FT', 'Data Engineer', 200000, 'USD', 200000, 'US', 100, 'US', 'L'),
(73, '2021e', 'SE', 'FT', 'Data Engineering Manager', 174000, 'USD', 174000, 'US', 100, 'US', 'L'),
(74, '2021e', 'MI', 'FT', 'Data Analyst', 93000, 'USD', 93000, 'US', 100, 'US', 'L'),
(75, '2021e', 'EN', 'FT', 'Data Scientist', 2100000, 'INR', 28475, 'IN', 100, 'IN', 'M'),
(76, '2021e', 'SE', 'FT', 'Research Scientist', 51400, 'EUR', 61270, 'PT', 50, 'PT', 'L'),
(77, '2021e', 'EN', 'FT', 'Data Scientist', 90000, 'USD', 90000, 'US', 100, 'US', 'S'),
(78, '2020', 'MI', 'FT', 'Data Engineer', 61500, 'EUR', 70139, 'FR', 50, 'FR', 'L'),
(79, '2020', 'EN', 'FT', 'Data Analyst', 450000, 'INR', 6072, 'IN', 0, 'IN', 'S'),
(80, '2020', 'SE', 'FT', 'Data Engineer', 720000, 'MXN', 33511, 'MX', 0, 'MX', 'S'),
(81, '2021e', 'SE', 'FT', 'Principal Data Analyst', 170000, 'USD', 170000, 'US', 100, 'US', 'M'),
(82, '2021e', 'SE', 'FT', 'Data Engineer', 70000, 'GBP', 96833, 'GB', 50, 'GB', 'L'),
(83, '2021e', 'MI', 'FT', 'Data Engineer', 108000, 'TRY', 13105, 'TR', 0, 'TR', 'M'),
(84, '2021e', 'EN', 'FT', 'Data Scientist', 31000, 'EUR', 36952, 'FR', 50, 'FR', 'L'),
(85, '2021e', 'MI', 'FT', 'Data Engineer', 52500, 'GBP', 72625, 'GB', 50, 'GB', 'L'),
(86, '2020', 'EN', 'FT', 'Data Analyst', 91000, 'USD', 91000, 'US', 100, 'US', 'L'),
(87, '2021e', 'SE', 'FT', 'Big Data Architect', 125000, 'CAD', 99956, 'CA', 50, 'CA', 'M'),
(88, '2021e', 'SE', 'FT', 'Data Scientist', 165000, 'USD', 165000, 'US', 100, 'US', 'L'),
(89, '2021e', 'MI', 'FT', 'Data Analyst', 80000, 'USD', 80000, 'US', 100, 'US', 'L'),
(90, '2021e', 'SE', 'FT', 'Data Scientist', 130000, 'CAD', 103954, 'CA', 100, 'CA', 'L'),
(91, '2021e', 'EN', 'FT', 'Data Engineer', 1600000, 'INR', 21695, 'IN', 50, 'IN', 'M'),
(92, '2020', 'EN', 'FT', 'Research Scientist', 42000, 'USD', 42000, 'NL', 50, 'NL', 'L'),
(93, '2020', 'MI', 'FT', 'Lead Data Scientist', 115000, 'USD', 115000, 'AE', 0, 'AE', 'L'),
(94, '2021e', 'MI', 'FT', 'Research Scientist', 80000, 'CAD', 63971, 'CA', 100, 'CA', 'M'),
(95, '2020', 'SE', 'FT', 'Machine Learning Scientist', 260000, 'USD', 260000, 'JP', 0, 'JP', 'S'),
(96, '2021e', 'MI', 'FT', 'Head of Data Science', 110000, 'USD', 110000, 'US', 0, 'US', 'S'),
(97, '2021e', 'MI', 'FT', 'Data Architect', 180000, 'USD', 180000, 'US', 100, 'US', 'L'),
(98, '2021e', 'SE', 'FT', 'Data Analyst', 200000, 'USD', 200000, 'US', 100, 'US', 'L'),
(99, '2020', 'SE', 'FT', 'Big Data Engineer', 85000, 'GBP', 109024, 'GB', 50, 'GB', 'M'),
(100, '2021e', 'SE', 'FT', 'Director of Data Engineering', 200000, 'USD', 200000, 'US', 100, 'US', 'L'),
(101, '2021e', 'SE', 'FT', 'ML Engineer', 256000, 'USD', 256000, 'US', 100, 'US', 'S'),
(102, '2021e', 'MI', 'FT', 'Data Engineer', 110000, 'USD', 110000, 'US', 100, 'US', 'L'),
(103, '2020', 'MI', 'FT', 'Data Scientist', 70000, 'EUR', 79833, 'DE', 0, 'DE', 'L'),
(104, '2021e', 'EN', 'FT', 'Data Engineer', 72500, 'USD', 72500, 'US', 100, 'US', 'L'),
(105, '2021e', 'SE', 'FT', 'Machine Learning Engineer', 185000, 'USD', 185000, 'US', 50, 'US', 'L'),
(106, '2021e', 'MI', 'PT', 'Data Engineer', 59000, 'EUR', 70329, 'NL', 100, 'NL', 'L'),
(107, '2021e', 'EN', 'FT', 'Research Scientist', 100000, 'USD', 100000, 'JE', 0, 'CN', 'L'),
(108, '2021e', 'MI', 'FT', 'Data Engineer', 112000, 'USD', 112000, 'US', 100, 'US', 'L'),
(109, '2020', 'SE', 'FT', 'Machine Learning Engineer', 150000, 'USD', 150000, 'US', 50, 'US', 'L'),
(110, '2021e', 'SE', 'FT', 'Data Scientist', 180000, 'TRY', 21843, 'TR', 50, 'TR', 'L'),
(111, '2021e', 'SE', 'FT', 'AI Scientist', 55000, 'USD', 55000, 'ES', 100, 'ES', 'L'),
(112, '2021e', 'EN', 'FT', 'Data Scientist', 58000, 'USD', 58000, 'US', 50, 'US', 'L'),
(113, '2021e', 'EN', 'FT', 'Data Scientist', 100000, 'USD', 100000, 'US', 100, 'US', 'M'),
(114, '2021e', 'SE', 'FT', 'Data Scientist', 65720, 'EUR', 78340, 'FR', 50, 'FR', 'M'),
(115, '2021e', 'EN', 'FT', 'Machine Learning Engineer', 85000, 'USD', 85000, 'NL', 100, 'DE', 'S'),
(116, '2021e', 'EN', 'FT', 'Data Science Consultant', 65000, 'EUR', 77481, 'DE', 0, 'DE', 'L'),
(117, '2021e', 'SE', 'CT', 'Staff Data Scientist', 105000, 'USD', 105000, 'US', 100, 'US', 'M'),
(118, '2020', 'EN', 'FT', 'Data Analyst', 72000, 'USD', 72000, 'US', 100, 'US', 'L'),
(119, '2021e', 'EN', 'FT', 'Data Engineer', 55000, 'EUR', 65561, 'DE', 50, 'DE', 'M'),
(120, '2021e', 'MI', 'FT', 'Data Engineer', 250000, 'TRY', 30337, 'TR', 100, 'TR', 'M'),
(121, '2021e', 'MI', 'FT', 'Data Engineer', 111775, 'USD', 111775, 'US', 0, 'US', 'M'),
(122, '2021e', 'MI', 'FT', 'Data Engineer', 93150, 'USD', 93150, 'US', 0, 'US', 'M'),
(123, '2021e', 'SE', 'FT', 'Lead Data Engineer', 160000, 'USD', 160000, 'PR', 50, 'US', 'S'),
(124, '2021e', 'MI', 'FT', 'Data Scientist', 21600, 'EUR', 25747, 'RS', 100, 'DE', 'S'),
(125, '2021e', 'SE', 'FT', 'Machine Learning Engineer', 4900000, 'INR', 66442, 'IN', 0, 'IN', 'L'),
(126, '2021e', 'MI', 'FT', 'Data Scientist', 1250000, 'INR', 16949, 'IN', 100, 'IN', 'S'),
(127, '2021e', 'SE', 'FT', 'Data Analyst', 54000, 'EUR', 64369, 'DE', 50, 'DE', 'L'),
(128, '2020', 'SE', 'FT', 'Lead Data Scientist', 190000, 'USD', 190000, 'US', 100, 'US', 'S'),
(129, '2021e', 'EX', 'FT', 'Director of Data Science', 120000, 'EUR', 143043, 'DE', 0, 'DE', 'L'),
(130, '2021e', 'EN', 'FT', 'Big Data Engineer', 1200000, 'INR', 16271, 'IN', 100, 'IN', 'L'),
(131, '2021e', 'SE', 'FT', 'Data Analyst', 90000, 'CAD', 71968, 'CA', 100, 'CA', 'M'),
(132, '2020', 'MI', 'FT', 'Data Scientist', 11000000, 'HUF', 35735, 'HU', 50, 'HU', 'L'),
(133, '2021e', 'SE', 'FT', 'Data Scientist', 135000, 'USD', 135000, 'US', 0, 'US', 'L'),
(134, '2021e', 'EN', 'FT', 'Machine Learning Engineer', 21000, 'EUR', 25032, 'DE', 50, 'DE', 'M'),
(135, '2021e', 'SE', 'FT', 'Data Science Manager', 4000000, 'INR', 54238, 'IN', 50, 'US', 'L'),
(136, '2021e', 'SE', 'FT', 'Machine Learning Engineer', 1799997, 'INR', 24407, 'IN', 100, 'IN', 'L'),
(137, '2021e', 'EN', 'FT', 'BI Data Analyst', 9272, 'USD', 9272, 'KE', 100, 'KE', 'S'),
(138, '2021e', 'MI', 'FT', 'Data Scientist', 147000, 'USD', 147000, 'US', 50, 'US', 'L'),
(139, '2021e', 'SE', 'FT', 'Research Scientist', 120500, 'CAD', 96357, 'CA', 50, 'CA', 'L'),
(140, '2021e', 'SE', 'FT', 'Data Science Manager', 174000, 'USD', 174000, 'US', 100, 'US', 'L'),
(141, '2020', 'MI', 'FT', 'Business Data Analyst', 135000, 'USD', 135000, 'US', 100, 'US', 'L'),
(142, '2021e', 'EN', 'FT', 'Machine Learning Engineer', 21844, 'USD', 21844, 'CO', 50, 'CO', 'M'),
(143, '2020', 'SE', 'FT', 'Lead Data Engineer', 125000, 'USD', 125000, 'NZ', 50, 'NZ', 'S'),
(144, '2020', 'EN', 'FT', 'Data Scientist', 45000, 'EUR', 51321, 'FR', 0, 'FR', 'S'),
(145, '2020', 'MI', 'FT', 'Data Scientist', 3000000, 'INR', 40481, 'IN', 0, 'IN', 'L'),
(146, '2021e', 'EX', 'FT', 'Data Science Consultant', 59000, 'EUR', 70329, 'FR', 100, 'ES', 'S'),
(147, '2021e', 'SE', 'FT', 'Data Analytics Engineer', 50000, 'USD', 50000, 'VN', 100, 'GB', 'M'),
(148, '2021e', 'MI', 'FT', 'Data Engineer', 4000, 'USD', 4000, 'IR', 100, 'IR', 'M'),
(149, '2020', 'EN', 'FT', 'Data Scientist', 35000, 'EUR', 39916, 'FR', 0, 'FR', 'M'),
(150, '2020', 'MI', 'FT', 'Lead Data Analyst', 87000, 'USD', 87000, 'US', 100, 'US', 'L'),
(151, '2021e', 'MI', 'FT', 'Data Engineer', 22000, 'EUR', 26224, 'RO', 0, 'US', 'L'),
(152, '2021e', 'MI', 'FT', 'Data Scientist', 76760, 'EUR', 91500, 'DE', 50, 'DE', 'L'),
(153, '2021e', 'MI', 'FT', 'Big Data Engineer', 1672000, 'INR', 22671, 'IN', 0, 'IN', 'L'),
(154, '2021e', 'MI', 'FT', 'Data Scientist', 420000, 'INR', 5695, 'IN', 100, 'US', 'S'),
(155, '2021e', 'EN', 'FT', 'Machine Learning Engineer', 81000, 'USD', 81000, 'US', 50, 'US', 'S'),
(156, '2021e', 'MI', 'FT', 'Data Scientist', 30400000, 'CLP', 40798, 'CL', 100, 'CL', 'L'),
(157, '2021e', 'MI', 'FT', 'Data Scientist', 58000, 'MXN', 2876, 'MX', 0, 'MX', 'S'),
(158, '2021e', 'EN', 'FT', 'Data Science Consultant', 90000, 'USD', 90000, 'US', 100, 'US', 'S'),
(159, '2021e', 'MI', 'FT', 'Data Scientist', 52000, 'EUR', 61985, 'DE', 50, 'AT', 'M'),
(160, '2021e', 'SE', 'FT', 'Machine Learning Infrastructure Engineer', 195000, 'USD', 195000, 'US', 100, 'US', 'M'),
(161, '2021e', 'MI', 'FT', 'Data Scientist', 32000, 'EUR', 38144, 'ES', 100, 'ES', 'L'),
(162, '2020', 'MI', 'FT', 'Data Analyst', 85000, 'USD', 85000, 'US', 100, 'US', 'L'),
(163, '2021e', 'EX', 'CT', 'Principal Data Scientist', 416000, 'USD', 416000, 'US', 100, 'US', 'S'),
(164, '2021e', 'SE', 'FT', 'Machine Learning Scientist', 225000, 'USD', 225000, 'US', 100, 'CA', 'L'),
(165, '2021e', 'MI', 'FT', 'Data Scientist', 40900, 'GBP', 56578, 'GB', 50, 'GB', 'L'),
(166, '2021e', 'MI', 'FT', 'Data Scientist', 2500000, 'INR', 33899, 'IN', 0, 'IN', 'M'),
(167, '2021e', 'MI', 'FT', 'Data Scientist', 85000, 'GBP', 117583, 'GB', 50, 'GB', 'L'),
(168, '2021e', 'MI', 'FT', 'Machine Learning Engineer', 180000, 'PLN', 47129, 'PL', 100, 'PL', 'L'),
(169, '2020', 'MI', 'FT', 'Data Analyst', 8000, 'USD', 8000, 'PK', 50, 'PK', 'L'),
(170, '2020', 'EN', 'FT', 'Data Engineer', 4450000, 'JPY', 41689, 'JP', 100, 'JP', 'S'),
(171, '2020', 'SE', 'FT', 'Big Data Engineer', 100000, 'EUR', 114047, 'PL', 100, 'GB', 'S'),
(172, '2021e', 'MI', 'FT', 'Machine Learning Engineer', 75000, 'EUR', 89402, 'BE', 100, 'BE', 'M'),
(173, '2020', 'EN', 'FT', 'Data Science Consultant', 423000, 'INR', 5707, 'IN', 50, 'IN', 'M'),
(174, '2020', 'MI', 'FT', 'Lead Data Engineer', 56000, 'USD', 56000, 'PT', 100, 'US', 'M'),
(175, '2021e', 'EN', 'PT', 'Computer Vision Engineer', 180000, 'DKK', 28850, 'DK', 50, 'DK', 'S'),
(176, '2021e', 'MI', 'FT', 'Data Scientist', 75000, 'EUR', 89402, 'DE', 50, 'DE', 'L'),
(177, '2020', 'MI', 'FT', 'Machine Learning Engineer', 299000, 'CNY', 43331, 'CN', 0, 'CN', 'M'),
(178, '2020', 'MI', 'FT', 'Product Data Analyst', 450000, 'INR', 6072, 'IN', 100, 'IN', 'L'),
(179, '2020', 'SE', 'FT', 'Data Engineer', 42000, 'EUR', 47899, 'GR', 50, 'GR', 'L'),
(180, '2020', 'MI', 'FT', 'BI Data Analyst', 98000, 'USD', 98000, 'US', 0, 'US', 'M'),
(181, '2021e', 'MI', 'FT', 'Data Engineer', 48000, 'GBP', 66400, 'HK', 50, 'GB', 'S'),
(182, '2021e', 'MI', 'FT', 'Research Scientist', 48000, 'EUR', 57217, 'FR', 50, 'FR', 'S'),
(183, '2021e', 'MI', 'FT', 'Machine Learning Engineer', 21000, 'EUR', 25032, 'SI', 50, 'SI', 'L'),
(184, '2021e', 'SE', 'FT', 'Data Analytics Manager', 120000, 'USD', 120000, 'US', 0, 'US', 'L'),
(185, '2021e', 'MI', 'FL', 'Data Engineer', 20000, 'USD', 20000, 'IT', 0, 'US', 'L'),
(186, '2020', 'EX', 'FT', 'Director of Data Science', 325000, 'USD', 325000, 'US', 100, 'US', 'L'),
(187, '2021e', 'SE', 'FT', 'Machine Learning Engineer', 200000, 'USD', 200000, 'US', 100, 'US', 'L'),
(188, '2020', 'EN', 'FT', 'AI Scientist', 300000, 'DKK', 45896, 'DK', 50, 'DK', 'S'),
(189, '2021e', 'MI', 'FT', 'Data Scientist', 160000, 'USD', 160000, 'US', 100, 'US', 'L'),
(190, '2021e', 'SE', 'FT', 'Research Scientist', 50000, 'USD', 50000, 'FR', 100, 'US', 'S'),
(191, '2021e', 'MI', 'FT', 'Data Science Engineer', 34000, 'EUR', 40529, 'GR', 100, 'GR', 'M'),
(192, '2021e', 'EX', 'FT', 'Principal Data Engineer', 600000, 'USD', 600000, 'US', 100, 'US', 'L'),
(193, '2021e', 'MI', 'FT', 'Data Scientist', 69600, 'BRL', 13000, 'BR', 0, 'BR', 'S'),
(194, '2021e', 'SE', 'FT', 'Data Engineer', 165000, 'USD', 165000, 'US', 0, 'US', 'M'),
(195, '2021e', 'EN', 'FT', 'Big Data Engineer', 435000, 'INR', 5898, 'IN', 0, 'CH', 'L'),
(196, '2020', 'MI', 'FT', 'Data Scientist', 37000, 'EUR', 42197, 'FR', 50, 'FR', 'S'),
(197, '2021e', 'SE', 'FT', 'Principal Data Engineer', 185000, 'USD', 185000, 'US', 100, 'US', 'L'),
(198, '2020', 'EN', 'FT', 'Data Scientist', 55000, 'EUR', 62726, 'DE', 50, 'DE', 'S'),
(199, '2021e', 'MI', 'FT', 'Data Scientist', 76760, 'EUR', 91500, 'DE', 50, 'DE', 'L'),
(200, '2020', 'EN', 'PT', 'Data Scientist', 19000, 'EUR', 21669, 'IT', 50, 'IT', 'S'),
(201, '2020', 'MI', 'FT', 'Data Engineer', 110000, 'USD', 110000, 'US', 100, 'US', 'L'),
(202, '2021e', 'SE', 'FT', 'Data Analytics Manager', 140000, 'USD', 140000, 'US', 100, 'US', 'L'),
(203, '2020', 'SE', 'FT', 'Data Scientist', 120000, 'USD', 120000, 'US', 50, 'US', 'L'),
(204, '2021e', 'SE', 'FT', 'Data Scientist', 110000, 'CAD', 87961, 'CA', 100, 'CA', 'S'),
(205, '2021e', 'SE', 'FT', 'Finance Data Analyst', 45000, 'GBP', 62250, 'GB', 50, 'GB', 'L'),
(206, '2021e', 'MI', 'FL', 'Machine Learning Scientist', 12000, 'USD', 12000, 'PK', 50, 'PK', 'M'),
(207, '2021e', 'SE', 'FT', 'Data Engineer', 65000, 'EUR', 77481, 'RO', 50, 'GB', 'S'),
(208, '2021e', 'MI', 'FT', 'Machine Learning Engineer', 74000, 'USD', 74000, 'JP', 50, 'JP', 'S'),
(209, '2021e', 'SE', 'FT', 'Data Science Manager', 152000, 'USD', 152000, 'US', 100, 'FR', 'L'),
(210, '2021e', 'MI', 'FT', 'Big Data Engineer', 18000, 'USD', 18000, 'MD', 0, 'MD', 'S'),
(211, '2020', 'SE', 'FL', 'Computer Vision Engineer', 60000, 'USD', 60000, 'RU', 100, 'US', 'S'),
(212, '2021e', 'MI', 'FT', 'Data Scientist', 130000, 'USD', 130000, 'US', 50, 'US', 'L'),
(213, '2021e', 'SE', 'FT', 'Computer Vision Engineer', 102000, 'BRL', 19052, 'BR', 0, 'BR', 'M'),
(214, '2021e', 'EN', 'FT', 'Business Data Analyst', 50000, 'EUR', 59601, 'LU', 100, 'LU', 'L'),
(215, '2021e', 'SE', 'FT', 'Principal Data Scientist', 147000, 'EUR', 175228, 'DE', 100, 'DE', 'M'),
(216, '2020', 'SE', 'FT', 'Principal Data Scientist', 130000, 'EUR', 148261, 'DE', 100, 'DE', 'M'),
(217, '2020', 'MI', 'FT', 'Data Scientist', 34000, 'EUR', 38776, 'ES', 100, 'ES', 'M'),
(218, '2021e', 'MI', 'FT', 'Data Scientist', 39600, 'EUR', 47204, 'ES', 100, 'ES', 'M'),
(219, '2021e', 'EN', 'FT', 'Data Scientist', 4000, 'USD', 4000, 'VN', 0, 'VN', 'M'),
(220, '2021e', 'EN', 'FT', 'AI Scientist', 1335000, 'INR', 18102, 'IN', 100, 'AS', 'S'),
(221, '2020', 'SE', 'FT', 'Data Scientist', 80000, 'EUR', 91237, 'AT', 0, 'AT', 'S'),
(222, '2020', 'MI', 'FT', 'Data Scientist', 55000, 'EUR', 62726, 'FR', 50, 'LU', 'S'),
(223, '2021e', 'MI', 'FT', 'Data Scientist', 115000, 'USD', 115000, 'US', 50, 'US', 'L'),
(224, '2021e', 'SE', 'FT', 'Principal Data Scientist', 235000, 'USD', 235000, 'US', 100, 'US', 'L'),
(225, '2021e', 'MI', 'FT', 'Lead Data Analyst', 1450000, 'INR', 19661, 'IN', 100, 'IN', 'L'),
(226, '2021e', 'EN', 'PT', 'AI Scientist', 12000, 'USD', 12000, 'BR', 100, 'US', 'S'),
(227, '2021e', 'MI', 'FT', 'Data Analyst', 75000, 'USD', 75000, 'US', 0, 'US', 'L'),
(228, '2021e', 'MI', 'FT', 'Data Analyst', 62000, 'USD', 62000, 'US', 0, 'US', 'L'),
(229, '2021e', 'MI', 'FT', 'Data Scientist', 73000, 'USD', 73000, 'US', 0, 'US', 'L'),
(230, '2021e', 'MI', 'FT', 'Data Engineer', 38400, 'EUR', 45773, 'NL', 100, 'NL', 'L'),
(231, '2020', 'SE', 'FT', 'Data Science Manager', 190200, 'USD', 190200, 'US', 100, 'US', 'M'),
(232, '2020', 'MI', 'FT', 'Data Scientist', 118000, 'USD', 118000, 'US', 100, 'US', 'M'),
(233, '2020', 'MI', 'FT', 'Data Scientist', 138350, 'USD', 138350, 'US', 100, 'US', 'M'),
(234, '2020', 'MI', 'FT', 'Data Engineer', 130800, 'USD', 130800, 'ES', 100, 'US', 'M'),
(235, '2020', 'SE', 'FT', 'Machine Learning Engineer', 40000, 'EUR', 45618, 'HR', 100, 'HR', 'S'),
(236, '2021e', 'SE', 'FT', 'Director of Data Science', 168000, 'USD', 168000, 'JP', 0, 'JP', 'S'),
(237, '2021e', 'MI', 'FT', 'Data Scientist', 160000, 'SGD', 119353, 'SG', 100, 'IL', 'M'),
(238, '2021e', 'MI', 'FT', 'Applied Machine Learning Scientist', 423000, 'USD', 423000, 'US', 50, 'US', 'L'),
(239, '2021e', 'MI', 'FT', 'Data Engineer', 24000, 'EUR', 28608, 'MT', 50, 'MT', 'L'),
(240, '2021e', 'SE', 'FT', 'Data Specialist', 165000, 'USD', 165000, 'US', 100, 'US', 'L'),
(241, '2020', 'SE', 'FT', 'Data Scientist', 412000, 'USD', 412000, 'US', 100, 'US', 'L'),
(242, '2021e', 'MI', 'FT', 'Principal Data Scientist', 151000, 'USD', 151000, 'US', 100, 'US', 'L'),
(243, '2020', 'EN', 'FT', 'Data Scientist', 105000, 'USD', 105000, 'US', 100, 'US', 'S'),
(244, '2020', 'EN', 'CT', 'Business Data Analyst', 100000, 'USD', 100000, 'US', 100, 'US', 'L'),
(245, '2021e', 'SE', 'FT', 'Data Science Manager', 7000000, 'INR', 94917, 'IN', 50, 'IN', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `EXPERIENCES`
--

CREATE TABLE `EXPERIENCES` (
  `EXP_ID` int(10) NOT NULL,
  `EXP_NAME` varchar(100) DEFAULT NULL,
  `EXP_DATE` date DEFAULT NULL,
  `EXP_TIME` time DEFAULT NULL,
  `ORG_EMAIL` varchar(100) DEFAULT NULL,
  `EXP_LOC` varchar(50) DEFAULT NULL,
  `EXP_DESC` varchar(5000) DEFAULT NULL,
  `EXP_OUT_IN` varchar(3) DEFAULT NULL,
  `EXP_DAY_NT` varchar(3) DEFAULT NULL,
  `EXP_FD_NFD` varchar(3) DEFAULT NULL,
  `EXP_FAM_ADT` varchar(3) DEFAULT NULL,
  `EXP_PRICE` decimal(5,2) DEFAULT NULL,
  `EXP_TIX` varchar(1) DEFAULT NULL,
  `EXP_WEB` varchar(100) NOT NULL,
  `EXP_LIVE` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EXPERIENCES`
--

INSERT INTO `EXPERIENCES` (`EXP_ID`, `EXP_NAME`, `EXP_DATE`, `EXP_TIME`, `ORG_EMAIL`, `EXP_LOC`, `EXP_DESC`, `EXP_OUT_IN`, `EXP_DAY_NT`, `EXP_FD_NFD`, `EXP_FAM_ADT`, `EXP_PRICE`, `EXP_TIX`, `EXP_WEB`, `EXP_LIVE`) VALUES
(2, 'Chicken and Beer Fest Indy', '2023-08-12', '18:00:00', 'alheslin@iu.edu', '1118 E 30th St Indianapolis, IN 46205', 'We team up with our favorite local restaurants, chefs, and brewers for a one-day festival that is sure to be remembered! Chicken and Beer are among the most beloved items in the world and deserve the highest celebration! Expect great music, good food, a hot wing eating contest, and fun activities for you and your crew.\r\n\r\nSamples from vendors are included in each ticket. Extra sample tickets will be available for purchase. This is an outdoor event and you MUST BE 21+ to ATTEND! Please expect lines! Please anticipate restaurants selling out of food!', 'OUT', 'NT', 'FD', 'ADT', '0.00', 'Y', 'https://www.chickenandbeerindy.com/', 'N'),
(4, 'ONEAMERICA 500 FESTIVAL MINI-MARATHON', '2023-05-06', '07:30:00', 'ims@gmail.com', 'Indianapolis Motor Speedway', 'Experience one of America\'s Most Iconic Half Marathons, where you\'ll journey through the heart of downtown Indy, take a lap around the Indianapolis Motor Speedway, and conquer legendary 13.1 miles.\r\n\r\nYou could say the City of Indianapolis is a little obsessed with fast races and massive sporting events. On Saturday, May 6, 2023, more than 20,000 participants will take over the streets of downtown Indianapolis for The Greatest Spectacle in Running - the OneAmerica 500 Festival Mini-Marathon.\r\n\r\nAs participants reach the Indianapolis Motor Speedway’s famed Yard of Bricks, many will stop to kneel and kiss the bricks - because we love a good tradition. The flat, fast course is packed with hundreds of the nicest volunteers you’ll ever meet and nearly 100 course entertainers.\r\n\r\nNamed America’s Best Half Marathon of the Decade by the BibRave 100 and “America’s Most Iconic Races” by Runners World, each year the OneAmerica 500 Festival Mini-Marathon attracts participants from all 50 states and 15+ countries around the world.\r\n\r\n2023 Will Mark the 47th Running of the Indy Mini. Within its history, countless stories have emerged around the heart-pounding excitement of the Indy Mini. From United States Olympians Frank Shorter and Meb Keflezighi, to participants setting World Records, to the six people that have completed every Mini-Marathon, to the one million Hoosiers that have participated to date, the OneAmerica 500 Festival Mini-Marathon is a beloved tradition.', 'OUT', 'DAY', 'NFD', 'FAM', '92.00', 'Y', 'https://www.indymini.com/register', 'Y'),
(5, '107th Indianapolis 500', '2023-05-28', '12:45:00', 'ims@gmail.com', 'Indianapolis Motor Speedway', 'This. is. May\r\nThe Indy 500 is not only one of the biggest races in motorsports, but it offers a unique and memorable experience for fans. From the roar of the engines to the energy of the crowd, the Indy 500 is an unforgettable experience that offers something for everyone. With a long history of tradition and excitement, it\'s no wonder that the Indy 500 draws in fans from all over the world. If you\'re looking for an event that combines the thrill of high-speed racing with an electric atmosphere, come see it for yourself.', 'OUT', 'DAY', 'FD', 'FAM', '35.00', 'Y', 'https://www.indianapolismotorspeedway.com/', 'Y'),
(6, 'An Evening with Neil Degrasse Tyson', '2023-05-11', '07:30:00', 'clowes@gmail.com', 'Clowes Memorial Hall', '“An Astrophysicist Goes to the Movies – II”\r\nDerived from an entirely different set of thirty films, from the Wizard of Oz to Mary Poppins to Game of Thrones to Harry Potter to The Lion King. An entertaining and enlightening review of all the science that our favorite movies got wrong, combined with some of the stuff they got right. Incorporates the latest films as well as some classics that you may not have known had any science in them at all.', 'IN', 'NT', 'NFD', 'FAM', '49.00', 'Y', 'https://butlerartscenter.org/performance/neil-degrasse-tyson/', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ORGANIZER`
--

CREATE TABLE `ORGANIZER` (
  `ORG_ID` int(10) NOT NULL,
  `ORG_NAME` varchar(50) DEFAULT NULL,
  `ORG_CONTACT` varchar(50) DEFAULT NULL,
  `ORG_PASS` varchar(20) DEFAULT NULL,
  `ORG_EMAIL` varchar(50) DEFAULT NULL,
  `ORG_PHONE` varchar(20) DEFAULT NULL,
  `ORG_LOC` varchar(50) DEFAULT NULL,
  `ORG_REGTIME` datetime DEFAULT NULL,
  `ORG_ACTIVE` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ORGANIZER`
--

INSERT INTO `ORGANIZER` (`ORG_ID`, `ORG_NAME`, `ORG_CONTACT`, `ORG_PASS`, `ORG_EMAIL`, `ORG_PHONE`, `ORG_LOC`, `ORG_REGTIME`, `ORG_ACTIVE`) VALUES
(1, 'IUPUI', 'sasha', 'pass', 'alheslin@iu.edu', '3176946290', '123 iupui drive', '2023-03-31 12:56:18', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `REPLIES`
--

CREATE TABLE `REPLIES` (
  `REPLY_ID` int(10) NOT NULL,
  `EXP_ID` int(10) DEFAULT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `REPLY_TEXT` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `REQUESTED_EXP`
--

CREATE TABLE `REQUESTED_EXP` (
  `RE_NUM` int(10) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `RE_NAME` varchar(50) DEFAULT NULL,
  `RE_ORG` varchar(50) DEFAULT NULL,
  `RE_LOC` varchar(50) DEFAULT NULL,
  `RE_DESC` varchar(500) DEFAULT NULL,
  `RE_WHY` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `REVIEWS`
--

CREATE TABLE `REVIEWS` (
  `EXP_ID` int(10) DEFAULT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `USER_USERNAME` varchar(50) NOT NULL,
  `EXP_NAME` varchar(100) NOT NULL,
  `REV_STARS` int(1) DEFAULT NULL,
  `REV_TEXT` varchar(500) DEFAULT NULL,
  `REV_PIC` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `REVIEWS`
--

INSERT INTO `REVIEWS` (`EXP_ID`, `USER_ID`, `USER_USERNAME`, `EXP_NAME`, `REV_STARS`, `REV_TEXT`, `REV_PIC`) VALUES
(NULL, NULL, 'sheslin813', 'Graduation', 4, 'What a beautiful event!', 0x00);

-- --------------------------------------------------------

--
-- Table structure for table `USERS`
--

CREATE TABLE `USERS` (
  `USER_ID` int(10) NOT NULL,
  `USER_USERNAME` varchar(50) DEFAULT NULL,
  `USER_EMAIL` varchar(50) DEFAULT NULL,
  `USER_FNAME` varchar(50) DEFAULT NULL,
  `USER_LNAME` varchar(50) DEFAULT NULL,
  `USER_PHONE` varchar(50) DEFAULT NULL,
  `USER_PASS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `USERS`
--

INSERT INTO `USERS` (`USER_ID`, `USER_USERNAME`, `USER_EMAIL`, `USER_FNAME`, `USER_LNAME`, `USER_PHONE`, `USER_PASS`) VALUES
(1, 'sheslin813', 'srheslin@gmail.com', 'Sasha', 'Heslin', '3176946290', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CEREAL`
--
ALTER TABLE `CEREAL`
  ADD PRIMARY KEY (`CRL_ID`);

--
-- Indexes for table `DS`
--
ALTER TABLE `DS`
  ADD PRIMARY KEY (`DS_ID`);

--
-- Indexes for table `EXPERIENCES`
--
ALTER TABLE `EXPERIENCES`
  ADD PRIMARY KEY (`EXP_ID`);

--
-- Indexes for table `ORGANIZER`
--
ALTER TABLE `ORGANIZER`
  ADD PRIMARY KEY (`ORG_ID`);

--
-- Indexes for table `REPLIES`
--
ALTER TABLE `REPLIES`
  ADD PRIMARY KEY (`REPLY_ID`);

--
-- Indexes for table `REQUESTED_EXP`
--
ALTER TABLE `REQUESTED_EXP`
  ADD PRIMARY KEY (`RE_NUM`);

--
-- Indexes for table `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CEREAL`
--
ALTER TABLE `CEREAL`
  MODIFY `CRL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `DS`
--
ALTER TABLE `DS`
  MODIFY `DS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `EXPERIENCES`
--
ALTER TABLE `EXPERIENCES`
  MODIFY `EXP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ORGANIZER`
--
ALTER TABLE `ORGANIZER`
  MODIFY `ORG_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `USERS`
--
ALTER TABLE `USERS`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
