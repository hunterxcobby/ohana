-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 04:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(75) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `repassword` text NOT NULL,
  `last_login` varchar(100) NOT NULL,
  `ip_add` varchar(100) NOT NULL,
  `login_status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `mobile`, `email_id`, `username`, `password`, `repassword`, `last_login`, `ip_add`, `login_status`) VALUES
(1, 'Administrator', '8767228990', 'info@redplanetcomputers.com', 'admin', '8cb2237d0679ca88db6464eac60da96345513964', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `area_name` varchar(20) NOT NULL,
  `area_zipcode` int(6) NOT NULL,
  `area_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(100) NOT NULL,
  `banner_image` text NOT NULL,
  `banner_descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_name`, `banner_image`, `banner_descr`) VALUES
(5, 'LAUNDRY SERVICE', '', ''),
(6, 'SHOP TIMING', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `barcode_data`
--

CREATE TABLE `barcode_data` (
  `bar_id` int(11) NOT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `trans_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bulk_messge`
--

CREATE TABLE `bulk_messge` (
  `id` int(11) NOT NULL,
  `protocol` varchar(100) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` varchar(50) NOT NULL,
  `smtp_user` varchar(100) NOT NULL,
  `smtp_pass` varchar(50) NOT NULL,
  `mailtype` varchar(100) NOT NULL,
  `charset` varchar(100) NOT NULL,
  `limit` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bulk_messge`
--

INSERT INTO `bulk_messge` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `charset`, `limit`) VALUES
(1, 'smtp', 'slkfjs.com', '442', 'dffaj@gmail.com', '123456', 'fjslkfd', 'sfdlkfmsf', 444);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `show_hide` varchar(10) NOT NULL,
  `category_descr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`, `show_hide`, `category_descr`) VALUES
(1, 'GENTS', 'show', ''),
(2, 'LADIES', 'show', ''),
(3, 'BABY', 'show', ''),
(4, 'CURTAINS', 'show', ''),
(5, 'SHOE CARE', 'show', ''),
(6, 'CARPET', 'show', ''),
(7, 'Cutom 1', 'show', '');

-- --------------------------------------------------------

--
-- Table structure for table `cloths`
--

CREATE TABLE `cloths` (
  `id` int(11) NOT NULL,
  `cloth_type` varchar(100) NOT NULL,
  `cloth_type_lang` varchar(200) NOT NULL,
  `no_of_qty` int(2) NOT NULL,
  `cloth_unit` varchar(10) NOT NULL,
  `cloth_code` varchar(200) NOT NULL,
  `cloth_image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cloths`
--

INSERT INTO `cloths` (`id`, `cloth_type`, `cloth_type_lang`, `no_of_qty`, `cloth_unit`, `cloth_code`, `cloth_image`) VALUES
(0, 'Duvet / Blanket / Quil / Comforter Double', '', 1, '', '', ''),
(1, 'Abaya (normal without design)', '', 1, '', '', ''),
(2, 'Baby cloth', '', 1, '', '', ''),
(3, 'Bath Mat/Bath Rug/Door Mat', '', 1, '', '', ''),
(4, 'Bath robe / Robe', '', 1, '', '', ''),
(5, 'Bedsheets /Bedspreed/Duvet Cover', '', 1, '', '', ''),
(6, 'Blouse', '', 1, '', '', ''),
(7, 'Coat', '', 1, '', '', ''),
(8, 'Curtain (per sqm)', '', 1, '', '', ''),
(9, 'Cushion Cover Medium/Large', '', 1, '', '', ''),
(10, 'Cushion Cover Small', '', 1, '', '', ''),
(11, 'Dishdasha', '', 1, '', '', ''),
(12, 'Dress (normal without design)', '', 1, '', '', ''),
(13, 'Duvet / Blanket / Quil / Comforter Single', '', 1, '', '', ''),
(15, 'Gown (normal without design)', '', 1, '', '', ''),
(16, 'Gown (with design / beads/ stones)', '', 1, '', '', ''),
(17, 'JACKET NORMAL', '', 1, '', '', ''),
(18, 'Jacket Winter', '', 1, '', '', ''),
(19, 'Kamis / Kurta', '', 1, '', '', ''),
(20, 'Napkin', '', 1, '', '', ''),
(21, 'Overall', '', 1, '', '', ''),
(22, 'Pillow', '', 1, '', '', ''),
(23, 'Pillowcase', '', 1, '', '', ''),
(24, 'Pyjama shirt', '', 1, '', '', ''),
(25, 'Pyjama trousers', '', 1, '', '', ''),
(26, 'Salwar', '', 1, '', '', ''),
(27, 'Sari Special', '', 1, '', '', ''),
(28, 'Scarf / Shaila / Ghutra / Shawl', '', 1, '', '', ''),
(29, 'SHIRT/TOP', '', 1, '', '', ''),
(30, 'Shorts', '', 1, '', '', ''),
(31, 'Skirt', '', 1, '', '', ''),
(32, 'Socks (pair)', '', 1, '', '', ''),
(33, 'Sofa Cover (per seat)/ Sofa cushion cover', '', 1, '', '', ''),
(34, 'Special Abaya (with design / beads)', '', 1, '', '', ''),
(35, 'Special Blouse/Trousers/Jacket', '', 1, '', '', ''),
(36, 'Special Dress (Evening / with design)', '', 1, '', '', ''),
(37, 'SUIT (2PCS)', '', 2, '', '', ''),
(38, 'SUITS (3PCS)', '', 3, '', '', ''),
(39, 'Sweater', '', 1, '', '', ''),
(40, 'Table Cloth', '', 1, '', '', ''),
(41, 'Tie', '', 1, '', '', ''),
(42, 'Towel (bath)', '', 1, '', '', ''),
(43, 'TOY', '', 1, '', '', ''),
(44, 'TROUSER', '', 1, '', '', ''),
(45, 'T-shirt', '', 1, '', '', ''),
(46, 'Underpants /Underwear/Undergarment', '', 1, '', '', ''),
(47, 'Waist Coat', '', 1, '', '', ''),
(48, 'Wedding Dress', '', 1, '', '', ''),
(49, 'Carpet (per sqm)', '', 1, '', '', ''),
(51, 'COSTUME', '', 1, '', 'COSTUME', ''),
(52, 'Towel (Hand)', '', 1, '', '', ''),
(53, 'Towel (face)', '', 1, '', '', ''),
(54, 'cap', '', 1, '', 'cap', ''),
(55, 'FROKS', '', 1, '', 'FROKS', ''),
(56, 'SHOES (PAIR)', '', 2, '', '', ''),
(57, 'Medi Towels', '', 0, '', 'Towels Medi', '');

-- --------------------------------------------------------

--
-- Table structure for table `credit_history`
--

CREATE TABLE `credit_history` (
  `credit_id` int(5) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `credit_trans_id` varchar(50) NOT NULL,
  `credit_trans_date` date DEFAULT NULL,
  `credit_trans_amt` int(10) DEFAULT NULL,
  `credit_debit` varchar(10) NOT NULL,
  `credit_remarks` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(25) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country_name`, `currency`, `code`, `currency_symbol`, `thousand_separator`, `decimal_separator`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', ',', '.'),
(2, 'America', 'Dollars', 'USD', '$', ',', '.'),
(3, 'Afghanistan', 'Afghanis', 'AF', '؋', ',', '.'),
(4, 'Argentina', 'Pesos', 'ARS', '$', ',', '.'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', ',', '.'),
(6, 'Australia', 'Dollars', 'AUD', '$', ',', '.'),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ман', ',', '.'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', ',', '.'),
(9, 'Barbados', 'Dollars', 'BBD', '$', ',', '.'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', ',', '.'),
(11, 'Belgium', 'Euro', 'EUR', '€', ',', '.'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', ',', '.'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', ',', '.'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', ',', '.'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', ',', '.'),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', ',', '.'),
(17, 'Bulgaria', 'Leva', 'BG', 'лв', ',', '.'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', ',', '.'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', ',', '.'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', ',', '.'),
(21, 'Cambodia', 'Riels', 'KHR', '៛', ',', '.'),
(22, 'Canada', 'Dollars', 'CAD', '$', ',', '.'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', ',', '.'),
(24, 'Chile', 'Pesos', 'CLP', '$', ',', '.'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', ',', '.'),
(26, 'Colombia', 'Pesos', 'COP', '$', ',', '.'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', ',', '.'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', ',', '.'),
(29, 'Cuba', 'Pesos', 'CUP', '₱', ',', '.'),
(30, 'Cyprus', 'Euro', 'EUR', '€', ',', '.'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', ',', '.'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', ',', '.'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', ',', '.'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', ',', '.'),
(35, 'Egypt', 'Pounds', 'EGP', '£', ',', '.'),
(36, 'El Salvador', 'Colones', 'SVC', '$', ',', '.'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', ',', '.'),
(38, 'Euro', 'Euro', 'EUR', '€', ',', '.'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', ',', '.'),
(40, 'Fiji', 'Dollars', 'FJD', '$', ',', '.'),
(41, 'France', 'Euro', 'EUR', '€', ',', '.'),
(42, 'Ghana', 'Cedis', 'GHC', '¢', ',', '.'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', ',', '.'),
(44, 'Greece', 'Euro', 'EUR', '€', ',', '.'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', ',', '.'),
(46, 'Guernsey', 'Pounds', 'GGP', '£', ',', '.'),
(47, 'Guyana', 'Dollars', 'GYD', '$', ',', '.'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', ',', '.'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', ',', '.'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', ',', '.'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', ',', '.'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', ',', '.'),
(53, 'India', 'Rupees', 'INR', '₹', ',', '.'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', ',', '.'),
(55, 'Iran', 'Rials', 'IRR', '﷼', ',', '.'),
(56, 'Ireland', 'Euro', 'EUR', '€', ',', '.'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', ',', '.'),
(58, 'Israel', 'New Shekels', 'ILS', '₪', ',', '.'),
(59, 'Italy', 'Euro', 'EUR', '€', ',', '.'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', ',', '.'),
(61, 'Japan', 'Yen', 'JPY', '¥', ',', '.'),
(62, 'Jersey', 'Pounds', 'JEP', '£', ',', '.'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', ',', '.'),
(64, 'Korea (North)', 'Won', 'KPW', '₩', ',', '.'),
(65, 'Korea (South)', 'Won', 'KRW', '₩', ',', '.'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', ',', '.'),
(67, 'Laos', 'Kips', 'LAK', '₭', ',', '.'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', ',', '.'),
(69, 'Lebanon', 'Pounds', 'LBP', '£', ',', '.'),
(70, 'Liberia', 'Dollars', 'LRD', '$', ',', '.'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', ',', '.'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', ',', '.'),
(73, 'Luxembourg', 'Euro', 'EUR', '€', ',', '.'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', ',', '.'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', ',', '.'),
(76, 'Malta', 'Euro', 'EUR', '€', ',', '.'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', ',', '.'),
(78, 'Mexico', 'Pesos', 'MX', '$', ',', '.'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', ',', '.'),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', ',', '.'),
(81, 'Namibia', 'Dollars', 'NAD', '$', ',', '.'),
(82, 'Nepal', 'Rupees', 'NPR', '₨', ',', '.'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', ',', '.'),
(84, 'Netherlands', 'Euro', 'EUR', '€', ',', '.'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', ',', '.'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', ',', '.'),
(87, 'Nigeria', 'Nairas', 'NG', '₦', ',', '.'),
(88, 'North Korea', 'Won', 'KPW', '₩', ',', '.'),
(89, 'Norway', 'Krone', 'NOK', 'kr', ',', '.'),
(90, 'Oman', 'Rials', 'OMR', '﷼', ',', '.'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', ',', '.'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', ',', '.'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', ',', '.'),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', ',', '.'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', ',', '.'),
(96, 'Poland', 'Zlotych', 'PL', 'zł', ',', '.'),
(97, 'Qatar', 'Rials', 'QAR', '﷼', ',', '.'),
(98, 'Romania', 'New Lei', 'RO', 'lei', ',', '.'),
(99, 'Russia', 'Rubles', 'RUB', 'руб', ',', '.'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', ',', '.'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', ',', '.'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', ',', '.'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', ',', '.'),
(104, 'Singapore', 'Dollars', 'SGD', '$', ',', '.'),
(105, 'Slovenia', 'Euro', 'EUR', '€', ',', '.'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', ',', '.'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', ',', '.'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', ',', '.'),
(109, 'South Korea', 'Won', 'KRW', '₩', ',', '.'),
(110, 'Spain', 'Euro', 'EUR', '€', ',', '.'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', ',', '.'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', ',', '.'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', ',', '.'),
(114, 'Suriname', 'Dollars', 'SRD', '$', ',', '.'),
(115, 'Syria', 'Pounds', 'SYP', '£', ',', '.'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', ',', '.'),
(117, 'Thailand', 'Baht', 'THB', '฿', ',', '.'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', ',', '.'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', ',', '.'),
(120, 'Turkey', 'Liras', 'TRL', '£', ',', '.'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', ',', '.'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', ',', '.'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', ',', '.'),
(124, 'United States of America', 'Dollars', 'USD', '$', ',', '.'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', ',', '.'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', ',', '.'),
(127, 'Vatican City', 'Euro', 'EUR', '€', ',', '.'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', ',', '.'),
(129, 'Vietnam', 'Dong', 'VND', '₫', ',', '.'),
(130, 'Yemen', 'Rials', 'YER', '﷼', ',', '.'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', ',', '.'),
(132, 'Bangladesh', 'Taka ', 'BDT', '৳', ',', '.'),
(133, 'Tanzania', 'shilling', 'TZS', 'TSh', ',', '.'),
(134, 'Iraq', 'Dinar', 'IQD', 'د.ع', ',', '.'),
(135, 'Bahrain', 'Dinar', 'BHD', ' ‎د.ب', ',', '.'),
(136, 'Kuwait', 'Dinar', 'KWD', 'د.ك.', ',', '.'),
(137, 'United Arab Emirates', 'dirham', 'AED', 'د.إ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `auto_id` int(11) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(15) NOT NULL,
  `order_month` varchar(5) NOT NULL,
  `order_get_from` varchar(50) NOT NULL,
  `order_place_from` varchar(100) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `total_qty` varchar(5) NOT NULL,
  `cloth_unit` varchar(15) NOT NULL,
  `discount` text DEFAULT NULL,
  `disc_amt` float(7,2) NOT NULL,
  `cust_extra_amt` float(7,2) DEFAULT NULL,
  `service_tax` text DEFAULT NULL,
  `cust_charges` text NOT NULL,
  `total_paid` varchar(10) NOT NULL,
  `amt_paid` varchar(10) NOT NULL,
  `payment_collect` varchar(20) NOT NULL,
  `pickup_by` varchar(75) DEFAULT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(15) NOT NULL,
  `delivery_by` varchar(75) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(10) NOT NULL,
  `remarks` text DEFAULT NULL,
  `amt_paidby` varchar(25) NOT NULL,
  `paid_date` date NOT NULL,
  `amt_status` varchar(10) NOT NULL,
  `cheque_no` varchar(25) DEFAULT NULL,
  `cheque_date` varchar(25) DEFAULT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_type` varchar(100) DEFAULT NULL,
  `appx_order_qty` varchar(10) NOT NULL,
  `laundry_store` varchar(50) NOT NULL,
  `services` text DEFAULT NULL,
  `promocode` varchar(25) DEFAULT NULL,
  `order_address` text NOT NULL,
  `payment_from` varchar(25) NOT NULL,
  `pref_pkg` varchar(100) NOT NULL,
  `order_pickup_photo` text NOT NULL,
  `order_delivery_photo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`auto_id`, `invoice_no`, `order_date`, `order_time`, `order_month`, `order_get_from`, `order_place_from`, `customer_id`, `customer_name`, `total_qty`, `cloth_unit`, `discount`, `disc_amt`, `cust_extra_amt`, `service_tax`, `cust_charges`, `total_paid`, `amt_paid`, `payment_collect`, `pickup_by`, `pickup_date`, `pickup_time`, `delivery_by`, `delivery_date`, `delivery_time`, `remarks`, `amt_paidby`, `paid_date`, `amt_status`, `cheque_no`, `cheque_date`, `order_status`, `order_type`, `appx_order_qty`, `laundry_store`, `services`, `promocode`, `order_address`, `payment_from`, `pref_pkg`, `order_pickup_photo`, `order_delivery_photo`) VALUES
(1, 'RPL1', '2022-12-24', '11:18 AM', 'Dec', '', 'admin', 1, 'Laundry User', '3', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"3\";s:10:\"product_id\";s:1:\"3\";s:4:\"name\";s:15:\"WASH_IRON_DRESS\";s:5:\"price\";s:5:\"5.000\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '15', '', 'admin', '7', '2022-12-24', '', '', '2022-12-27', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', '', '', '1', '', NULL, '', '', '', '', ''),
(2, 'RPL2', '2022-12-30', '10:56 PM', '', '', 'admin', 1, 'Laundry User', '5', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '20', '', '', '7', '2022-12-30', '10am to 11am', '', '2023-01-02', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', '', '0', '1', 'WASH AND IRON', NULL, '', 'none', '', 'scaled_9e000687-0f4c-4ae6-ad4d-69a309956e3a5130648611677306814.jpg', ''),
(3, 'RPL3', '2023-01-13', '', 'Jan', '', 'admin', 1, 'Laundry User', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"8\";s:10:\"product_id\";s:1:\"8\";s:4:\"name\";s:15:\"WASH_IRON_SALWA\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '7', '', '', '', '2023-01-13', '00:41', '', '2023-01-16', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', '', '', '1', '', NULL, '', 'none', '', '', ''),
(4, 'RPL4', '2023-01-19', '', 'Jan', '', 'admin', 1, 'Laundry User', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '8', '', '', '', '2023-01-19', '16:55', '7', '2023-01-22', '', NULL, 'bycash', '0000-00-00', '', NULL, NULL, 'out_for_delivery', '', '', '1', '', NULL, '', 'none', '', '', ''),
(5, 'RPL5', '2023-02-01', '11:56', '', '', 'From Mobile', 1, 'Laundry User', '0', 'Qty', 'a:0:{}', 0.00, NULL, 'a:0:{}', '', '0', '', '', NULL, '2023-02-01', '12 AM - 1 PM', '', '2023-02-01', '9 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', 'Normal', '10', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(6, 'RPL6', '2023-02-01', '14:35', '', '', 'From Mobile', 1, 'Laundry User', '8', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '42', '', '', NULL, '2023-02-03', '4 PM - 10 PM', '7', '2023-02-05', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'out_for_delivery', NULL, '', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(7, 'RPL7', '2023-02-01', '14:37', '', '', 'From Mobile', 1, 'Laundry User', '7', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '29', '', '', '7', '2023-02-02', '10am to 11am', '', '2023-02-05', '4 PM - 10 ', '', 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '1', 'STEAM / IRON PRESS', NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'scaled_9c2e7425-6dd3-4e5c-bbbf-df94632d7bbb9073810085296873696.jpg', ''),
(8, 'RPL8', '2023-02-01', '14:43', '', '', 'From Mobile', 1, 'Laundry User', '0', 'Qty', 'a:0:{}', 0.00, NULL, 'a:0:{}', '', '0', '', '', NULL, '2023-02-02', '10am to 11am', '', '2023-02-05', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', 'Express', '10', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(9, 'RPL9', '2023-02-01', '14:44', '', '', 'From Mobile', 1, 'Laundry User', '15', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '58', '', '', NULL, '2023-02-04', '9 AM - 1 PM', '', '2023-02-06', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(10, 'RPL10', '2023-02-01', '14:46', '', '', 'From Mobile', 1, 'Laundry User', '16', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '62', '', '', '7', '2023-02-01', '4 PM - 10 PM', '', '2023-02-03', '4 PM - 10 ', 'good', 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '1', 'DRY CLEANING', NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'scaled_9a7323fa-018b-43d7-888d-4a985d6a1eb41880335469979302487.jpg', ''),
(11, 'RPL11', '2023-02-01', '14:48', '', '', 'From Mobile', 1, 'Laundry User', '9', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '35', '', 'admin', '7', '2023-02-03', '9 AM - 1 PM', '', '2023-02-05', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'pickup', NULL, '', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(12, 'RPL12', '2023-02-01', '14:49', '', '', 'From Mobile', 1, 'Laundry User', '15', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '71', '71', '', '7', '2023-02-06', '4 PM - 10 PM', '', '2023-02-10', '4 PM - 10 ', 'na', 'bycash', '2023-02-08', '', NULL, NULL, 'delivered', NULL, '', '1', 'WASH AND IRON', NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'scaled_d3290cbe-9392-4d07-9301-e348e2f1247f7547074445837435769.jpg', 'scaled_7d71bd8f-6354-4730-9faa-3dc60ff8326a4839172131701764515.jpg'),
(13, 'RPL13', '2023-02-02', '20:22', '', '', 'From Mobile', 3, 'Piyush Khullar', '11', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '33', '', 'admin', '7', '2023-02-03', '9 AM - 1 PM', '', '2023-02-05', '4 PM - 10 ', 'clean with best', 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '0', 'DRY CLEANING', NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:8:\"Temp add\";s:8:\"landmark\";s:10:\"Chandigarh\";s:7:\"pincode\";s:6:\"160017\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'scaled_6684ae57-f9e7-4ac3-a84c-b7a9cdc0a9ad6413221709360324198.jpg', ''),
(14, 'RPL14', '2023-02-10', '12:30', '', '', 'From Mobile', 1, 'Laundry User', '0', 'Qty', 'a:0:{}', 0.00, NULL, 'a:0:{}', '', '0', '', '', NULL, '2023-02-10', '1 PM - 2 PM', '', '2023-02-10', '9 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', 'Normal', '20', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(15, 'RPL15', '2023-02-10', '12:45', '', '', 'From Mobile', 1, 'Laundry User', '13', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '49', '', '', NULL, '2023-02-11', '9 AM - 1 PM', '', '2023-02-13', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(16, 'RPL16', '2023-02-11', '', 'Feb', '', 'admin', 3, 'Piyush Khullar', '3', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '12', '', '', '', '2023-02-11', '10:49', '', '2023-02-14', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(17, 'RPL17', '2023-02-11', '', 'Feb', '', 'admin', 1, 'Laundry User', '9', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:3:\"125\";s:10:\"product_id\";s:3:\"125\";s:4:\"name\";s:15:\"STM_PRESS_BEDSH\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"6\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:3:\"131\";s:10:\"product_id\";s:3:\"131\";s:4:\"name\";s:15:\"STM_PRESS_DRSNR\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '36', '', '', '', '2023-02-11', '10:56', '', '2023-02-14', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(21, 'RPL21', '2023-03-09', '', 'Mar', '', 'admin', 3, 'Piyush Khullar', '5', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"4\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"83\";s:10:\"product_id\";s:2:\"83\";s:4:\"name\";s:11:\"DC_BATH_MAT\";s:5:\"price\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '26', '', '', '', '2023-03-09', '00:40', '7', '2023-03-12', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'out_for_delivery', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(18, 'RPL18', '2023-02-11', '', 'Feb', '', 'admin', 2, 'Demo User', '5', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"3\";s:10:\"product_id\";s:1:\"3\";s:4:\"name\";s:15:\"WASH_IRON_DRESS\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '23', '', '', '', '2023-02-11', '11:16', '', '2023-02-14', '', NULL, 'bycash', '2023-02-11', '', NULL, NULL, 'done', NULL, '', '', NULL, NULL, '', '', '', '', ''),
(19, 'RPL19', '2023-02-11', '', 'Feb', '', 'admin', 3, 'Piyush Khullar', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"13\";s:10:\"product_id\";s:2:\"13\";s:4:\"name\";s:15:\"WASH_IRON_NTROU\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '3', '', '', '', '2023-02-11', '11:48', '', '2023-02-14', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(20, 'RPL20', '2023-02-13', '01:34', '', '', 'From Mobile', 4, 'w w', '20', 'Qty', 'a:0:{}', 0.00, NULL, 's:2:\" A\";', '', '125', '', '', '7', '2023-02-13', '9 AM - 1 PM', '', '2023-02-15', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:19:\"Add Dhfkrjgh S J 56\";s:8:\"landmark\";s:6:\"S J 56\";s:7:\"pincode\";s:7:\"4000303\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(22, 'RPL22', '2023-03-08', '', 'Mar', '', 'admin', 4, 'w w', '302', 'Qty', 'a:0:{}', 0.00, NULL, 'a:4:{i:0;a:13:{s:2:\"id\";s:1:\"8\";s:10:\"product_id\";s:1:\"8\";s:4:\"name\";s:15:\"WASH_IRON_SALWA\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:3:\"100\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:1:\"7\";s:10:\"product_id\";s:1:\"7\";s:4:\"name\";s:15:\"WASH_IRON_TROUS\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:3:\"100\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:3;a:13:{s:2:\"id\";s:1:\"6\";s:10:\"product_id\";s:1:\"6\";s:4:\"name\";s:15:\"WASH_IRON_PYJAM\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:3:\"100\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '1006', '', '', '', '2023-03-08', '22:31', '', '2023-03-11', '', NULL, 'bycash', '2023-03-08', '', NULL, NULL, 'done', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(23, 'RPL23', '2023-03-14', '', 'Mar', '', 'admin', 4, 'w w', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '4', '', '', '', '2023-03-14', '09:32', '', '2023-03-17', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(24, 'RPL24', '2023-03-14', '', 'Mar', '', 'admin', 4, 'w w', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"13\";s:10:\"product_id\";s:2:\"13\";s:4:\"name\";s:15:\"WASH_IRON_NTROU\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '3', '', '', '', '2023-03-14', '10:41', '', '2023-03-17', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(25, 'RPL25', '2023-03-24', '09:07 PM', 'Mar', '', 'admin', 3, 'Piyush Khullar', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '4', '', 'admin', '', '2023-03-24', '', '', '2023-03-27', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(26, 'RPL26', '2023-03-25', '01:59 AM', '', '', 'admin', 8, 'NELSON AIMIENOHO', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"7\";s:10:\"product_id\";s:1:\"7\";s:4:\"name\";s:15:\"WASH_IRON_TROUS\";s:5:\"price\";s:5:\"3.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '3', '', 'admin', '7', '2023-03-25', '10am to 11am', '7', '2023-03-28', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'out_for_delivery', NULL, '0', '1', 'none', NULL, '', 'none', '', '', ''),
(27, 'RPL27', '2023-06-21', '', 'Jun', '', 'admin', 3, 'Piyush Khullar', '4', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"4\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '16', '', '', '', '2023-06-21', '21:56', '', '2023-06-24', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(28, 'RPL28', '2023-06-22', '02:47', '', '', 'From Mobile', 1, 'Demo User', '0', 'Qty', 'a:0:{}', 0.00, NULL, 'a:0:{}', '', '0', '', '', NULL, '2023-06-22', '9 AM - 1 PM', '', '2023-06-24', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', 'Normal', '12', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', '', ''),
(29, 'RPL29', '2023-06-27', '', 'Jun', '', 'Admin', 3, 'Piyush Khullar', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"15\";s:10:\"product_id\";s:2:\"15\";s:4:\"name\";s:9:\"WASH_FOLD\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '4', '', '', '', '2023-06-27', '04:51', '', '2023-06-30', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(30, 'RPL30', '2023-07-06', '', 'Jul', '', 'admin', 8, 'NELSON AIMIENOHO', '4', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"16\";s:10:\"product_id\";s:2:\"16\";s:4:\"name\";s:14:\"WASH_FOLD_ROBE\";s:5:\"price\";s:1:\"6\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '20', '', '', '', '2023-07-06', '00:25', '', '2023-07-09', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(31, 'RPL31', '2023-07-06', '', 'Jul', '', 'admin', 10, 'Petre Bizo', '5', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:4:{i:0;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"4\";s:10:\"product_id\";s:1:\"4\";s:4:\"name\";s:15:\"WASH_IRON_KURTA\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:2:\"38\";s:10:\"product_id\";s:2:\"38\";s:4:\"name\";s:15:\"WASH_FOLD_TROUS\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:3;a:13:{s:2:\"id\";s:2:\"73\";s:10:\"product_id\";s:2:\"73\";s:4:\"name\";s:15:\"DC_PRESS_SUIT3P\";s:5:\"price\";s:2:\"30\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '47', '', '', '7', '2023-07-06', '00:47', '', '2023-07-09', '', NULL, 'bycash', '0000-00-00', '', NULL, NULL, 'pickup', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(32, 'RPL32', '2023-07-10', '14:46', '', '', 'From Mobile', 1, 'Demo User', '11', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:5:\"5.000\";s:8:\"quantity\";s:1:\"6\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '50', '', 'admin', NULL, '2023-07-11', '9 AM - 1 PM', '', '2023-07-11', '4 PM - 10 ', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', 'Normal', '10', '1', NULL, NULL, 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', 'none', '', '', ''),
(33, 'RPL33', '2023-07-11', '12:42 PM', 'Jul', '', 'admin', 9, 'Riccardo Borga', '5', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:5:\"5.000\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '27', '', 'admin', '', '2023-07-11', '', '', '2023-07-14', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(34, 'RPL34', '2023-07-11', '12:45 PM', '', '', 'admin', 2, 'Demo User', '', '', 'a:0:{}', 0.00, NULL, 'a:0:{}', '', '', '', '', '7', '2023-07-11', '10am to 11am', '', '2023-07-14', '', '', 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '0', '0', 'none', NULL, '', '', '', '', ''),
(35, 'RPL35', '2023-07-12', '', 'Jul', '', 'admin', 2, 'Demo User', '10', 'Qty', 'a:0:{}', 3.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"9\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"3\";s:10:\"product_id\";s:1:\"3\";s:4:\"name\";s:15:\"WASH_IRON_DRESS\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '38', '', '', '', '2023-07-12', '11:23', '', '2023-07-15', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(36, 'RPL36', '2023-07-17', '', 'Jul', '', 'admin', 8, 'NELSON AIMIENOHO', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"10\";s:10:\"product_id\";s:2:\"10\";s:4:\"name\";s:15:\"WASH_IRON_SHIRT\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '3', '', '', '', '2023-07-17', '07:12', '', '2023-07-20', '', NULL, 'bycash', '2023-10-27', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(37, 'RPL37', '2023-07-18', '03:03 PM', 'Jul', '', 'admin', 9, 'Riccardo Borga', '1', 'Kg', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:3:\"163\";s:10:\"product_id\";s:3:\"163\";s:4:\"name\";s:8:\"DC_SHOES\";s:5:\"price\";s:6:\"40.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";N;s:6:\"starch\";N;s:6:\"defect\";N;s:5:\"color\";N;s:5:\"brand\";N;s:4:\"unit\";s:2:\"Kg\";s:6:\"kgitem\";s:81:\"a:3:{i:0;s:26:\"Bath Mat/Bath Rug/Door Mat\";i:1;s:6:\"Blouse\";i:2;s:9:\"Dishdasha\";}\";s:5:\"kgqty\";s:45:\"a:3:{i:0;s:2:\"10\";i:1;s:2:\"15\";i:2;s:2:\"20\";}\";}}', 'a:1:{i:0;s:1:\"1\";}', '42', '', 'admin', '', '2023-07-18', '', '', '2023-07-21', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'processing', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(38, 'RPL38', '2023-07-23', '', 'Jul', '', 'admin', 9, 'Riccardo Borga', '2', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '10', '', '', '', '2023-07-23', '15:34', '', '2023-07-27', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(39, 'RPL39', '2023-07-27', '', 'Jul', '', 'admin', 10, 'Petre Bizo', '1', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"82\";s:10:\"product_id\";s:2:\"82\";s:4:\"name\";s:12:\"DC_BABY_CLTH\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '5', '', '', '', '2023-07-27', '00:24', '', '2023-07-30', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(40, 'RPL40', '2023-07-30', '', 'Jul', '', 'admin', 12, 'SAMWEL ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"12\";s:10:\"product_id\";s:2:\"12\";s:4:\"name\";s:15:\"WASH_IRON_SKIRT\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '3', '', '', '', '2023-07-30', '02:17', '', '2023-08-02', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(41, 'RPL41', '2023-08-02', '', 'Aug', '', 'admin', 3, 'Piyush Khullar', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '9', '', '', '', '2023-08-02', '15:16', '', '2023-08-05', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(42, 'RPL42', '2023-08-13', '', 'Aug', '', 'admin', 12, 'SAMWEL ', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '8', '', '', '', '2023-08-13', '13:11', '', '2023-08-16', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(43, 'RPL43', '2023-08-14', '', 'Aug', '', 'admin', 1, 'Demo User', '4', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"81\";s:10:\"product_id\";s:2:\"81\";s:4:\"name\";s:8:\"DC_ABAYA\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"4\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '20', '', '', '', '2023-08-14', '23:53', '', '2023-08-17', '', NULL, 'bypackage', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', 'package', 'EXPRESS', '', ''),
(44, 'RPL44', '2023-08-20', '05:53 PM', 'Aug', '', 'admin', 12, 'SAMWEL ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '4', '', 'admin', '', '2023-08-20', '', '', '2023-08-23', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(45, 'RPL45', '2023-08-22', '', 'Aug', '', 'admin', 12, 'SAMWEL ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"15\";s:10:\"product_id\";s:2:\"15\";s:4:\"name\";s:9:\"WASH_FOLD\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '2', '', '', '', '2023-08-22', '21:49', '', '2023-08-25', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(46, 'RPL46', '2023-08-22', '', 'Aug', '', 'admin', 12, 'SAMWEL ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"15\";s:10:\"product_id\";s:2:\"15\";s:4:\"name\";s:9:\"WASH_FOLD\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '2', '', '', '', '2023-08-22', '21:51', '', '2023-08-25', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(47, 'RPL47', '2023-09-02', '', 'Sep', '', 'admin', 12, 'SAMWEL ', '4', 'Qty', 'a:0:{}', 0.00, NULL, 'a:3:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"10\";s:10:\"product_id\";s:2:\"10\";s:4:\"name\";s:15:\"WASH_IRON_SHIRT\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:2:\"28\";s:10:\"product_id\";s:2:\"28\";s:4:\"name\";s:15:\"WASH_FOLD_PYTRO\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '13', '', '', '', '2023-09-02', '11:01', '', '2023-09-05', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(48, 'RPL48', '2023-09-06', '', 'Sep', '', 'admin', 12, 'SAMWEL ', '4', 'Qty', 'a:0:{}', 4.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:2:\"15\";s:10:\"product_id\";s:2:\"15\";s:4:\"name\";s:9:\"WASH_FOLD\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"17\";s:10:\"product_id\";s:2:\"17\";s:4:\"name\";s:15:\"WASH_FOLD_BEDSH\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:5:\"White\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '10', '', '', '', '2023-09-06', '18:13', '', '2023-09-09', '', NULL, 'bycash', '2023-09-06', '', NULL, NULL, 'delivered', NULL, '', '2', NULL, NULL, '', '', '', '', ''),
(49, 'RPL49', '2023-09-26', '', 'Sep', '', 'admin', 15, 'Naveed Anjum', '4', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:3:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:5:\"White\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"7\";s:10:\"product_id\";s:1:\"7\";s:4:\"name\";s:15:\"WASH_IRON_TROUS\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:2:\"32\";s:10:\"product_id\";s:2:\"32\";s:4:\"name\";s:15:\"WASH_FOLD_SHORT\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:5:\"White\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '15', '', '', '', '2023-09-26', '16:32', '', '2023-09-29', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(50, 'RPL50', '2023-10-05', '', 'Oct', '', 'admin', 14, 'Gbolahan ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '4', '', '', '', '2023-10-05', '06:05', '', '2023-10-08', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(51, 'RPL51', '2023-10-07', '', 'Oct', '', 'admin', 16, 'Michael Owusu', '13', 'Qty', 'a:0:{}', 0.00, NULL, 'a:3:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:1:\"4\";s:10:\"product_id\";s:1:\"4\";s:4:\"name\";s:15:\"WASH_IRON_KURTA\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"7\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '46', '', '', '', '2023-10-07', '19:46', '', '2023-10-10', '', NULL, '', '1970-01-01', '', NULL, NULL, '', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(52, 'RPL52', '2023-10-07', '', 'Oct', '', 'store', 17, 'Appiah Kwame', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '4', '', '', '', '2023-10-07', '19:55', '', '2023-10-10', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '3', NULL, NULL, '', 'none', '', '', ''),
(53, 'RPL53', '2023-10-08', '', 'Oct', '', 'admin', 16, 'Michael Owusu', '4', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:5:\"White\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"10\";s:10:\"product_id\";s:2:\"10\";s:4:\"name\";s:15:\"WASH_IRON_SHIRT\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '15', '', '', '', '2023-10-08', '04:02', '', '2023-10-11', '', NULL, 'bycash', '2023-10-08', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(54, 'RPL54', '2023-10-08', '', 'Oct', '', 'admin', 10, 'Petre Bizo', '3', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '14', '', '', '', '2023-10-08', '04:04', '', '2023-10-11', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(55, 'RPL55', '2023-10-13', '', 'Oct', '', 'admin', 19, 'Sagar Har', '5', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"4\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"84\";s:10:\"product_id\";s:2:\"84\";s:4:\"name\";s:11:\"DC_BEDSHEET\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '20', '', '', '', '2023-10-13', '12:26', '', '2023-10-16', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'pickup', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(56, 'RPL56', '2023-10-18', '', 'Oct', '', 'admin', 20, 'asdfhzrs SDFGdhszt', '5', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '22', '', '', '', '2023-10-18', '06:11', '', '2023-10-21', '', NULL, 'bycash', '2023-10-18', '', NULL, NULL, 'done', NULL, '', '1', NULL, NULL, '', '', '', '', ''),
(57, 'RPL57', '2023-10-19', '', 'Oct', '', 'admin', 20, 'asdfhzrs SDFGdhszt', '2', 'Qty', 'a:0:{}', 40.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"73\";s:10:\"product_id\";s:2:\"73\";s:4:\"name\";s:15:\"DC_PRESS_SUIT3P\";s:5:\"price\";s:2:\"30\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '20', '', '', '', '2023-10-19', '06:46', '', '2023-10-22', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(58, 'RPL58', '2023-10-26', '', 'Oct', '', 'admin', 21, 'THABO ', '10', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"5\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '45', '', '', '', '2023-10-26', '07:13', '', '2023-10-29', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(59, 'RPL59', '2023-10-27', '', 'Oct', '', 'admin', 3, 'Piyush Khullar', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:2:\"42\";s:10:\"product_id\";s:2:\"42\";s:4:\"name\";s:15:\"DC_PRESS_BABYCL\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"48\";s:10:\"product_id\";s:2:\"48\";s:4:\"name\";s:15:\"DC_PRESS_CUSCSM\";s:5:\"price\";s:1:\"6\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '10', '', '', '', '2023-10-27', '17:58', '', '2023-10-30', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(60, 'RPL60', '2023-10-27', '', 'Oct', '', 'admin', 15, 'Naveed Anjum', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"77\";s:10:\"product_id\";s:2:\"77\";s:4:\"name\";s:15:\"DC_PRESS_TROUSR\";s:5:\"price\";s:1:\"5\";s:8:\"quantity\";s:1:\"2\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'N;', '10', '', '', '', '2023-10-27', '17:59', '', '2023-10-30', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(61, 'RPL61', '2023-10-31', '', 'Oct', '', 'admin', 10, 'Petre Bizo', '1', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '6', '', '', '', '2023-10-31', '05:56', '', '2023-11-03', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(62, 'RPL62', '2023-10-31', '', 'Oct', '', 'admin', 20, 'asdfhzrs SDFGdhszt', '4', 'Qty', 'a:0:{}', 40.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:2:\"95\";s:10:\"product_id\";s:2:\"95\";s:4:\"name\";s:15:\"DC_JACKET_NORML\";s:5:\"price\";s:1:\"4\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:2:\"73\";s:10:\"product_id\";s:2:\"73\";s:4:\"name\";s:15:\"DC_PRESS_SUIT3P\";s:5:\"price\";s:2:\"30\";s:8:\"quantity\";s:1:\"3\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '54', '', '', '', '2023-10-31', '06:13', '', '2023-11-03', '', NULL, 'byonline', '0000-00-00', '', NULL, NULL, 'done', NULL, '', '2', NULL, NULL, '', 'none', '', '', '');
INSERT INTO `customer_order` (`auto_id`, `invoice_no`, `order_date`, `order_time`, `order_month`, `order_get_from`, `order_place_from`, `customer_id`, `customer_name`, `total_qty`, `cloth_unit`, `discount`, `disc_amt`, `cust_extra_amt`, `service_tax`, `cust_charges`, `total_paid`, `amt_paid`, `payment_collect`, `pickup_by`, `pickup_date`, `pickup_time`, `delivery_by`, `delivery_date`, `delivery_time`, `remarks`, `amt_paidby`, `paid_date`, `amt_status`, `cheque_no`, `cheque_date`, `order_status`, `order_type`, `appx_order_qty`, `laundry_store`, `services`, `promocode`, `order_address`, `payment_from`, `pref_pkg`, `order_pickup_photo`, `order_delivery_photo`) VALUES
(63, 'RPL63', '2023-11-02', '04:12 PM', 'Nov', '', 'admin', 22, 'ahmad shah', '5', 'Qty', 'a:0:{}', 0.00, NULL, 'a:5:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:1:\"2\";s:10:\"product_id\";s:1:\"2\";s:4:\"name\";s:14:\"WASH_IRON_DISH\";s:5:\"price\";s:5:\"5.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:2;a:13:{s:2:\"id\";s:1:\"3\";s:10:\"product_id\";s:1:\"3\";s:4:\"name\";s:15:\"WASH_IRON_DRESS\";s:5:\"price\";s:5:\"5.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:3;a:13:{s:2:\"id\";s:1:\"4\";s:10:\"product_id\";s:1:\"4\";s:4:\"name\";s:15:\"WASH_IRON_KURTA\";s:5:\"price\";s:5:\"3.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:4;a:13:{s:2:\"id\";s:1:\"5\";s:10:\"product_id\";s:1:\"5\";s:4:\"name\";s:15:\"WASH_IRON_PILLO\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '21', '', 'admin', '', '2023-11-02', '', '', '2023-11-05', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(64, 'RPL64', '2023-11-03', '06:44 PM', 'Nov', '', 'admin', 22, 'ahmad shah', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"1\";s:10:\"product_id\";s:1:\"1\";s:4:\"name\";s:14:\"WASH_IRON_BABY\";s:5:\"price\";s:5:\"4.000\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '4', '', 'admin', '', '2023-11-03', '', '', '2023-11-06', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'new_order', NULL, '', '1', NULL, NULL, '', 'none', '', '', ''),
(65, 'RPL65', '2023-11-07', '', 'Nov', '', 'Admin', 17, 'Appiah Kwame', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:1:\"4\";s:10:\"product_id\";s:1:\"4\";s:4:\"name\";s:15:\"WASH_IRON_KURTA\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:13:\"Loose Buttons\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '3', '', '', '', '2023-11-07', '08:31', '', '2023-11-10', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', ''),
(66, 'RPL66', '2023-11-07', '', 'Nov', '', 'Admin', 19, 'Sagar Har', '2', 'Qty', 'a:0:{}', 0.00, NULL, 'a:2:{i:0;a:13:{s:2:\"id\";s:2:\"31\";s:10:\"product_id\";s:2:\"31\";s:4:\"name\";s:15:\"WASH_FOLD_SHIRT\";s:5:\"price\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:13:\"Loose Buttons\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}i:1;a:13:{s:2:\"id\";s:3:\"165\";s:10:\"product_id\";s:3:\"165\";s:4:\"name\";s:5:\"SHIRT\";s:5:\"price\";s:4:\"3.75\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:13:\"Loose Buttons\";s:5:\"color\";s:4:\"Blah\";s:5:\"brand\";s:4:\"Nike\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:0:\"\";}', '5.75', '', '', '', '2023-11-07', '08:38', '', '2023-11-10', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(67, 'RPL67', '2023-11-07', '', 'Nov', '', 'Admin', 9, 'Riccardo Borga', '1', 'Qty', 'a:1:{i:2;a:2:{s:11:\"charge_name\";s:6:\"urgent\";s:10:\"charge_amt\";s:4:\"2.00\";}}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"12\";s:10:\"product_id\";s:2:\"12\";s:4:\"name\";s:15:\"WASH_IRON_SKIRT\";s:5:\"price\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:0:\"\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', 'a:1:{i:0;s:1:\"1\";}', '5', '', '', '', '2023-11-07', '08:45', '', '2023-11-10', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '2', NULL, NULL, '', 'none', '', '', ''),
(68, 'RPL68', '2023-11-07', '', 'Nov', '', 'admin', 23, 'Ba ', '1', 'Qty', 'a:0:{}', 0.00, NULL, 'a:1:{i:0;a:13:{s:2:\"id\";s:2:\"94\";s:10:\"product_id\";s:2:\"94\";s:4:\"name\";s:14:\"DC_GOWN_DESIGN\";s:5:\"price\";s:2:\"25\";s:8:\"quantity\";s:1:\"1\";s:4:\"pack\";s:0:\"\";s:6:\"starch\";s:0:\"\";s:6:\"defect\";s:13:\"Loose Buttons\";s:5:\"color\";s:0:\"\";s:5:\"brand\";s:0:\"\";s:4:\"unit\";s:3:\"Qty\";s:6:\"kgitem\";s:2:\"N;\";s:5:\"kgqty\";s:2:\"N;\";}}', '', '25', '', '', '', '2023-11-07', '14:23', '', '2023-11-10', '', NULL, 'notpaid', '0000-00-00', '', NULL, NULL, 'in-process', NULL, '', '', NULL, NULL, '', 'none', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cust_packages`
--

CREATE TABLE `cust_packages` (
  `pkg_id` int(11) NOT NULL,
  `cust_id` varchar(50) NOT NULL,
  `store_id` int(11) NOT NULL,
  `pkg_order_date` date NOT NULL,
  `pref_pkg` varchar(100) NOT NULL,
  `pref_period` varchar(10) NOT NULL,
  `pref_pickup` varchar(50) NOT NULL,
  `pref_pickup_date` date NOT NULL,
  `pkg_expire_date` date NOT NULL,
  `payment_mode` text NOT NULL,
  `payment_date` date NOT NULL,
  `amount` int(5) NOT NULL,
  `usage_limit` varchar(100) NOT NULL,
  `pkg_unit` varchar(10) NOT NULL,
  `pkg_active` varchar(15) NOT NULL,
  `paytm_trans_id` text NOT NULL,
  `why_cancel` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_packages`
--

INSERT INTO `cust_packages` (`pkg_id`, `cust_id`, `store_id`, `pkg_order_date`, `pref_pkg`, `pref_period`, `pref_pickup`, `pref_pickup_date`, `pkg_expire_date`, `payment_mode`, `payment_date`, `amount`, `usage_limit`, `pkg_unit`, `pkg_active`, `paytm_trans_id`, `why_cancel`, `description`) VALUES
(1, '4', 0, '0000-00-00', 'EXPRESS', '1M', 'Weekly', '2023-08-02', '2023-09-02', 'bycash', '2023-08-02', 9, '5', 'Quantity', 'active', '', '', ''),
(2, '1', 0, '0000-00-00', 'EXPRESS', '1M', 'Weekly', '2023-08-14', '2023-09-14', 'bycash', '2023-08-14', 9, '5', 'Quantity', 'active', '', '', ''),
(3, '15', 0, '0000-00-00', 'EXPRESS', '1M', 'Weekly', '2023-09-26', '2023-10-26', 'bycash', '2023-09-26', 9, '5', 'Quantity', 'active', '', '', ''),
(4, '20', 0, '0000-00-00', 'EXPRESS', '1M', 'Weekly', '2023-10-18', '2023-11-18', 'bycash', '2023-10-19', 9, '5', 'Quantity', 'inactive', '', '', ''),
(5, '22', 0, '0000-00-00', 'EXPRESS', '1M', 'Weekly', '2023-10-27', '2023-11-27', 'bycash', '2023-10-27', 9, '5', 'Quantity', 'active', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_track`
--

CREATE TABLE `driver_track` (
  `track_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_lat` varchar(50) NOT NULL,
  `emp_lng` varchar(50) NOT NULL,
  `location_address` text NOT NULL,
  `location_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_track`
--

INSERT INTO `driver_track` (`track_id`, `emp_id`, `emp_name`, `emp_lat`, `emp_lng`, `location_address`, `location_date`) VALUES
(10, 7, 'PANVEL', '18.9801693', '73.1356374', 'Panvel, Raigad District, Maharashtra, 497586, India', '2023-08-14 19:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `email_id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `email_add` varchar(150) NOT NULL,
  `email_msg` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `sent_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`email_id`, `user_id`, `email_add`, `email_msg`, `status`, `platform`, `sent_time`) VALUES
(2, 'FIRIMP', '8108702999', 'Hi Ajit, Please pay the outstanding balance 1.000 online or visit branch, <br/> Please download our app to schedule pick up, Track your order, View your order history, Make payments online. <br/> Thank you for choosing Al hayat laundry.<br/>', 'The following SMTP error was encountered: 10060 A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connec', '', '20/04/2022 03:26:30PM'),
(3, 'FIRIMP', 'laundry@user.com', 'Dear Laundry, <br/> Your laundry order generated and pick on 13-Jan-2023 between 00:41 is received by Red Planet Laundry, <br/> Your Order No :  RPL3. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/01/2023 12:41:06AM'),
(4, 'FIRIMP', 'laundry@user.com', 'Hi, Laundry your Invoice RPL3 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.7<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/01/2023 12:41:06AM'),
(5, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Laundry( 8767228990 ), has placed laundry order and pick on 13-Jan-2023 between 00:41 Order No :  RPL3. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/01/2023 12:41:06AM'),
(6, 'FIRIMP', 'laundry@user.com', 'Dear Laundry, <br/> Your laundry order generated and pick on 19-Jan-2023 between 16:55 is received by Red Planet Laundry, <br/> Your Order No :  RPL4. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/01/2023 04:55:14PM'),
(7, 'FIRIMP', 'laundry@user.com', 'Hi, Laundry your Invoice RPL4 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.8<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/01/2023 04:55:14PM'),
(8, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Laundry( 8767228990 ), has placed laundry order and pick on 19-Jan-2023 between 16:55 Order No :  RPL4. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/01/2023 04:55:14PM'),
(9, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 11-Feb-2023 between 10:49 is received by Red Planet Laundry, <br/> Your Order No :  RPL16. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:49:09AM'),
(10, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL16 challen has generated successfully<br/> Total Qty : 3 & Payable Amount is Rs.12<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:49:09AM'),
(11, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 11-Feb-2023 between 10:49 Order No :  RPL16. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:49:09AM'),
(12, 'FIRIMP', 'laundry@user.com', 'Dear Laundry, <br/> Your laundry order generated and pick on 11-Feb-2023 between 10:56 is received by Red Planet Laundry, <br/> Your Order No :  RPL17. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:56:33AM'),
(13, 'FIRIMP', 'laundry@user.com', 'Hi, Laundry your Invoice RPL17 challen has generated successfully<br/> Total Qty : 9 & Payable Amount is Rs.36<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:56:33AM'),
(14, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Laundry( 918767228990 ), has placed laundry order and pick on 11-Feb-2023 between 10:56 Order No :  RPL17. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:56:33AM'),
(15, 'FIRIMP', 'e.jiiji@hotmail.com', 'Dear w, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :e.jiiji@hotmail.com<br/><br/> Password : 5526<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 10:59:46AM'),
(16, 'FIRIMP', '', 'Dear Demo, <br/> Your laundry order generated and pick on 11-Feb-2023 between 11:16 is received by Red Planet Laundry, <br/> Your Order No :  RPL18. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:16:09AM'),
(17, 'FIRIMP', '', 'Hi, Demo your Invoice RPL18 challen has generated successfully<br/> Total Qty : 5 & Payable Amount is Rs.23<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:16:09AM'),
(18, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Demo( 918108702999 ), has placed laundry order and pick on 11-Feb-2023 between 11:16 Order No :  RPL18. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:16:09AM'),
(19, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 11-Feb-2023 between 11:48 is received by Red Planet Laundry, <br/> Your Order No :  RPL19. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:48:06AM'),
(20, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL19 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.3<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:48:06AM'),
(21, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 11-Feb-2023 between 11:48 Order No :  RPL19. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 11:48:06AM'),
(22, 'FIRIMP', 'e.jiiji@hotmail.com', 'Dear ee, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :e.jiiji@hotmail.com<br/><br/> Password : 8150<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '11/02/2023 02:56:38PM'),
(23, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 09-Mar-2023 between 00:40 is received by Red Planet Laundry, <br/> Your Order No :  RPL21. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '09/03/2023 12:40:44AM'),
(24, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL21 challen has generated successfully<br/> Total Qty : 5 & Payable Amount is Rs.26<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '09/03/2023 12:40:44AM'),
(25, 'FIRIMP', 'ammarnaeem@gmail.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 09-Mar-2023 between 00:40 Order No :  RPL21. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '09/03/2023 12:40:44AM'),
(26, 'FIRIMP', 'e.jiiji@hotmail.com', 'Dear w, <br/> Your laundry order generated and pick on 08-Mar-2023 between 22:31 is received by Red Planet Laundry, <br/> Your Order No :  RPL22. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/03/2023 10:31:37PM'),
(27, 'FIRIMP', 'e.jiiji@hotmail.com', 'Hi, w your Invoice RPL22 challen has generated successfully<br/> Total Qty : 302 & Payable Amount is Rs.1006<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/03/2023 10:31:37PM'),
(28, 'FIRIMP', 'ammarnaeem@gmail.com', 'The w( 03452112 ), has placed laundry order and pick on 08-Mar-2023 between 22:31 Order No :  RPL22. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/03/2023 10:31:37PM'),
(29, 'FIRIMP', 'e.jiiji@hotmail.com', 'Dear w, <br/> Your laundry order generated and pick on 14-Mar-2023 between 09:32 is received by Red Planet Laundry, <br/> Your Order No :  RPL23. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 09:32:54AM'),
(30, 'FIRIMP', 'e.jiiji@hotmail.com', 'Hi, w your Invoice RPL23 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.4<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 09:32:54AM'),
(31, 'FIRIMP', 'info@redplanetcomputers.com', 'The w( 03452112 ), has placed laundry order and pick on 14-Mar-2023 between 09:32 Order No :  RPL23. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 09:32:54AM'),
(32, 'FIRIMP', 'e.jiiji@hotmail.com', 'Dear w, <br/> Your laundry order generated and pick on 14-Mar-2023 between 10:41 is received by Red Planet Laundry, <br/> Your Order No :  RPL24. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 10:41:22AM'),
(33, 'FIRIMP', 'e.jiiji@hotmail.com', 'Hi, w your Invoice RPL24 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.3<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 10:41:22AM'),
(34, 'FIRIMP', 'info@redplanetcomputers.com', 'The w( 03452112 ), has placed laundry order and pick on 14-Mar-2023 between 10:41 Order No :  RPL24. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/03/2023 10:41:22AM'),
(35, 'FIRIMP', 'riccardobog07@gmail.com', 'Dear Riccardo, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :riccardobog07@gmail.com<br/><br/> Password : 4008<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '21/06/2023 08:13:23PM'),
(36, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 21-Jun-2023 between 21:56 is received by Red Planet Laundry, <br/> Your Order No :  RPL27. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '21/06/2023 09:56:37PM'),
(37, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL27 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.16<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '21/06/2023 09:56:37PM'),
(38, 'FIRIMP', 'info@redplanetcomputers.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 21-Jun-2023 between 21:56 Order No :  RPL27. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '21/06/2023 09:56:37PM'),
(39, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 27-Jun-2023 between 04:51 is received by Red Planet Laundry, <br/> Your Order No :  RPL29. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/06/2023 04:51:21AM'),
(40, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL29 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.4<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/06/2023 04:51:21AM'),
(41, 'FIRIMP', 'info@redplanetcomputers.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 27-Jun-2023 between 04:51 Order No :  RPL29. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/06/2023 04:51:21AM'),
(42, 'FIRIMP', 'nelsonn0001@gmail.com', 'Dear NELSON, <br/> Your laundry order generated and pick on 06-Jul-2023 between 00:25 is received by Red Planet Laundry, <br/> Your Order No :  RPL30. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:25:23AM'),
(43, 'FIRIMP', 'nelsonn0001@gmail.com', 'Hi, NELSON your Invoice RPL30 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.20<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:25:23AM'),
(44, 'FIRIMP', 'info@redplanetcomputers.com', 'The NELSON( 2348037002385 ), has placed laundry order and pick on 06-Jul-2023 between 00:25 Order No :  RPL30. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:25:23AM'),
(45, 'FIRIMP', 'petrubizo@gmail.com', 'Dear Petre, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :petrubizo@gmail.com<br/><br/> Password : 5182<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:45:11AM'),
(46, 'FIRIMP', 'petrubizo@gmail.com', 'Dear Petre, <br/> Your laundry order generated and pick on 06-Jul-2023 between 00:47 is received by Red Planet Laundry, <br/> Your Order No :  RPL31. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:47:10AM'),
(47, 'FIRIMP', 'petrubizo@gmail.com', 'Hi, Petre your Invoice RPL31 challen has generated successfully<br/> Total Qty : 5 & Payable Amount is Rs.47<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:47:10AM'),
(48, 'FIRIMP', 'info@redplanetcomputers.com', 'The Petre( 0767700200 ), has placed laundry order and pick on 06-Jul-2023 between 00:47 Order No :  RPL31. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/07/2023 12:47:10AM'),
(49, 'FIRIMP', '', 'Dear Demo, <br/> Your laundry order generated and pick on 12-Jul-2023 between 11:23 is received by Red Planet Laundry, <br/> Your Order No :  RPL35. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '12/07/2023 11:23:19AM'),
(50, 'FIRIMP', '', 'Hi, Demo your Invoice RPL35 challen has generated successfully<br/> Total Qty : 10 & Payable Amount is Rs.38<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '12/07/2023 11:23:19AM'),
(51, 'FIRIMP', 'info@redplanetcomputers.com', 'The Demo( 918108702999 ), has placed laundry order and pick on 12-Jul-2023 between 11:23 Order No :  RPL35. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '12/07/2023 11:23:19AM'),
(52, 'FIRIMP', 'nelsonn0001@gmail.com', 'Dear NELSON, <br/> Your laundry order generated and pick on 17-Jul-2023 between 07:12 is received by Red Planet Laundry, <br/> Your Order No :  RPL36. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '17/07/2023 07:12:34AM'),
(53, 'FIRIMP', 'nelsonn0001@gmail.com', 'Hi, NELSON your Invoice RPL36 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.3<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '17/07/2023 07:12:34AM'),
(54, 'FIRIMP', 'info@redplanetcomputers.com', 'The NELSON( 2348037002385 ), has placed laundry order and pick on 17-Jul-2023 between 07:12 Order No :  RPL36. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '17/07/2023 07:12:34AM'),
(55, 'FIRIMP', 'riccardobog07@gmail.com', 'Dear Riccardo, <br/> Your laundry order generated and pick on 23-Jul-2023 between 15:34 is received by Red Planet Laundry, <br/> Your Order No :  RPL38. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '23/07/2023 03:34:36PM'),
(56, 'FIRIMP', 'riccardobog07@gmail.com', 'Hi, Riccardo your Invoice RPL38 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.10<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '23/07/2023 03:34:36PM'),
(57, 'FIRIMP', 'info@redplanetcomputers.com', 'The Riccardo( +393713814358 ), has placed laundry order and pick on 23-Jul-2023 between 15:34 Order No :  RPL38. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '23/07/2023 03:34:36PM'),
(58, 'FIRIMP', 'drrjud@ass.pp', 'Dear Antonio almeid, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :drrjud@ass.pp<br/><br/> Password : 6818<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/07/2023 12:24:28AM'),
(59, 'FIRIMP', 'petrubizo@gmail.com', 'Dear Petre, <br/> Your laundry order generated and pick on 27-Jul-2023 between 00:24 is received by Red Planet Laundry, <br/> Your Order No :  RPL39. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/07/2023 12:24:46AM'),
(60, 'FIRIMP', 'petrubizo@gmail.com', 'Hi, Petre your Invoice RPL39 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.5<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/07/2023 12:24:46AM'),
(61, 'FIRIMP', 'info@redplanetcomputers.com', 'The Petre( 0767700200 ), has placed laundry order and pick on 27-Jul-2023 between 00:24 Order No :  RPL39. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/07/2023 12:24:46AM'),
(62, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/>Thanking you for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :milosevicsevido@gmail.com<br/><br/> Password : 2818<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '29/07/2023 08:32:42PM'),
(63, 'FIRIMP', 'info@redplanetcomputers.com', 'Hi SAMWEL, has registered through website in your Red Planet Laundry, please contact to on : 0768865701 Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '29/07/2023 08:32:42PM'),
(64, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 30-Jul-2023 between 02:17 is received by Red Planet Laundry, <br/> Your Order No :  RPL40. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '30/07/2023 02:17:43AM'),
(65, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL40 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.3<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '30/07/2023 02:17:43AM'),
(66, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 30-Jul-2023 between 02:17 Order No :  RPL40. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '30/07/2023 02:17:43AM'),
(67, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 02-Aug-2023 between 15:16 is received by Red Planet Laundry, <br/> Your Order No :  RPL41. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/08/2023 03:16:31PM'),
(68, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL41 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.9<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/08/2023 03:16:31PM'),
(69, 'FIRIMP', 'info@redplanetcomputers.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 02-Aug-2023 between 15:16 Order No :  RPL41. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/08/2023 03:16:31PM'),
(70, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 13-Aug-2023 between 13:11 is received by Red Planet Laundry, <br/> Your Order No :  RPL42. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/08/2023 01:11:24PM'),
(71, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL42 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.8<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/08/2023 01:11:24PM'),
(72, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 13-Aug-2023 between 13:11 Order No :  RPL42. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/08/2023 01:11:24PM'),
(73, 'FIRIMP', 'info@redplanetcomputers.com', 'Dear Demo, <br/> Your laundry order generated and pick on 14-Aug-2023 between 23:53 is received by Red Planet Laundry, <br/> Your Order No :  RPL43. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/08/2023 11:53:32PM'),
(74, 'FIRIMP', 'info@redplanetcomputers.com', 'Hi, Demo your Invoice RPL43 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.20<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/08/2023 11:53:32PM'),
(75, 'FIRIMP', 'info@redplanetcomputers.com', 'The Demo( 918767228990 ), has placed laundry order and pick on 14-Aug-2023 between 23:53 Order No :  RPL43. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '14/08/2023 11:53:32PM'),
(76, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 22-Aug-2023 between 21:49 is received by Red Planet Laundry, <br/> Your Order No :  RPL45. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:49:59PM'),
(77, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL45 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.2<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:50:00PM'),
(78, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 22-Aug-2023 between 21:49 Order No :  RPL45. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:50:00PM'),
(79, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 22-Aug-2023 between 21:51 is received by Red Planet Laundry, <br/> Your Order No :  RPL46. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:51:49PM'),
(80, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL46 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.2<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:51:49PM'),
(81, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 22-Aug-2023 between 21:51 Order No :  RPL46. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '22/08/2023 09:51:49PM'),
(82, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 02-Sep-2023 between 11:01 is received by Red Planet Laundry, <br/> Your Order No :  RPL47. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/09/2023 11:01:15AM'),
(83, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL47 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.13<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/09/2023 11:01:15AM'),
(84, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 02-Sep-2023 between 11:01 Order No :  RPL47. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '02/09/2023 11:01:15AM'),
(85, 'FIRIMP', 'milosevicsevido@gmail.com', 'Dear SAMWEL, <br/> Your laundry order generated and pick on 06-Sep-2023 between 18:13 is received by Red Planet Laundry, <br/> Your Order No :  RPL48. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/09/2023 06:13:26PM'),
(86, 'FIRIMP', 'milosevicsevido@gmail.com', 'Hi, SAMWEL your Invoice RPL48 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.10<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/09/2023 06:13:27PM'),
(87, 'FIRIMP', 'info@redplanetcomputers.com', 'The SAMWEL( 0768865701 ), has placed laundry order and pick on 06-Sep-2023 between 18:13 Order No :  RPL48. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '06/09/2023 06:13:27PM'),
(88, 'FIRIMP', 'owolabigbolahan003@gmail.com', 'Dear Gbolahan, <br/>Thanking you for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :owolabigbolahan003@gmail.com<br/><br/> Password : 1834<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '25/09/2023 09:44:29PM'),
(89, 'FIRIMP', 'info@redplanetcomputers.com', 'Hi Gbolahan, has registered through website in your Red Planet Laundry, please contact to on : 8089123538 Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '25/09/2023 09:44:29PM'),
(90, 'FIRIMP', 'naveed.anjum@gmail.com', 'Dear Naveed, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :naveed.anjum@gmail.com<br/><br/> Password : 1460<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/09/2023 04:30:13PM'),
(91, 'FIRIMP', 'naveed.anjum@gmail.com', 'Dear Naveed, <br/> Your laundry order generated and pick on 26-Sep-2023 between 16:32 is received by Red Planet Laundry, <br/> Your Order No :  RPL49. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/09/2023 04:32:24PM'),
(92, 'FIRIMP', 'naveed.anjum@gmail.com', 'Hi, Naveed your Invoice RPL49 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.15<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/09/2023 04:32:24PM'),
(93, 'FIRIMP', 'info@redplanetcomputers.com', 'The Naveed( 03335555444 ), has placed laundry order and pick on 26-Sep-2023 between 16:32 Order No :  RPL49. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/09/2023 04:32:25PM'),
(94, 'FIRIMP', 'owolabigbolahan003@gmail.com', 'Dear Gbolahan, <br/> Your laundry order generated and pick on 05-Oct-2023 between 06:05 is received by Red Planet Laundry, <br/> Your Order No :  RPL50. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '05/10/2023 06:05:47AM'),
(95, 'FIRIMP', 'owolabigbolahan003@gmail.com', 'Hi, Gbolahan your Invoice RPL50 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.4<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '05/10/2023 06:05:47AM'),
(96, 'FIRIMP', 'info@redplanetcomputers.com', 'The Gbolahan( 8089123538 ), has placed laundry order and pick on 05-Oct-2023 between 06:05 Order No :  RPL50. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '05/10/2023 06:05:47AM'),
(97, 'FIRIMP', 'herbertboateng663@gmail.com', 'Dear Michael, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :herbertboateng663@gmail.com<br/><br/> Password : 4740<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:45:17PM'),
(98, 'FIRIMP', 'herbertboateng663@gmail.com', 'Dear Michael, <br/> Your laundry order generated and pick on 07-Oct-2023 between 19:46 is received by Red Planet Laundry, <br/> Your Order No :  RPL51. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:46:12PM'),
(99, 'FIRIMP', 'herbertboateng663@gmail.com', 'Hi, Michael your Invoice RPL51 challen has generated successfully<br/> Total Qty : 13 & Payable Amount is Rs.46<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:46:12PM'),
(100, 'FIRIMP', 'info@redplanetcomputers.com', 'The Michael( 0548121384 ), has placed laundry order and pick on 07-Oct-2023 between 19:46 Order No :  RPL51. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:46:12PM'),
(101, 'FIRIMP', 'appiank@gmail.com', 'Dear Appiah, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :appiank@gmail.com<br/><br/> Password : 3210<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:54:35PM'),
(102, 'FIRIMP', 'appiank@gmail.com', 'Dear Appiah, <br/> Your laundry order generated and pick on 07-Oct-2023 between 19:55 is received by Red Planet Laundry, <br/> Your Order No :  RPL52. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:55:09PM'),
(103, 'FIRIMP', 'appiank@gmail.com', 'Hi, Appiah your Invoice RPL52 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.4<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:55:09PM'),
(104, 'FIRIMP', 'info@redplanetcomputers.com', 'The Appiah( 0244770150 ), has placed laundry order and pick on 07-Oct-2023 between 19:55 Order No :  RPL52. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/10/2023 07:55:09PM'),
(105, 'FIRIMP', 'herbertboateng663@gmail.com', 'Dear Michael, <br/> Your laundry order generated and pick on 08-Oct-2023 between 04:02 is received by Red Planet Laundry, <br/> Your Order No :  RPL53. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:02:52AM'),
(106, 'FIRIMP', 'herbertboateng663@gmail.com', 'Hi, Michael your Invoice RPL53 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.15<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:02:52AM'),
(107, 'FIRIMP', 'info@redplanetcomputers.com', 'The Michael( 0548121384 ), has placed laundry order and pick on 08-Oct-2023 between 04:02 Order No :  RPL53. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:02:52AM'),
(108, 'FIRIMP', 'petrubizo@gmail.com', 'Dear Petre, <br/> Your laundry order generated and pick on 08-Oct-2023 between 04:04 is received by Red Planet Laundry, <br/> Your Order No :  RPL54. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:04:24AM'),
(109, 'FIRIMP', 'petrubizo@gmail.com', 'Hi, Petre your Invoice RPL54 challen has generated successfully<br/> Total Qty : 3 & Payable Amount is Rs.14<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:04:24AM'),
(110, 'FIRIMP', 'info@redplanetcomputers.com', 'The Petre( 0767700200 ), has placed laundry order and pick on 08-Oct-2023 between 04:04 Order No :  RPL54. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '08/10/2023 04:04:24AM'),
(111, 'FIRIMP', 'sagsmbhn7567toshshri1wash@gmail.com', 'Dear Vsab, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :sagsmbhn7567toshshri1wash@gmail.com<br/><br/> Password : 5128<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '12/10/2023 12:41:56PM'),
(112, 'FIRIMP', 'lar@msn.com', 'Dear Sagar, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :lar@msn.com<br/><br/> Password : 7568<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/10/2023 12:21:53PM'),
(113, 'FIRIMP', 'lar@msn.com', 'Dear Sagar, <br/> Your laundry order generated and pick on 13-Oct-2023 between 12:26 is received by Red Planet Laundry, <br/> Your Order No :  RPL55. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/10/2023 12:26:51PM'),
(114, 'FIRIMP', 'lar@msn.com', 'Hi, Sagar your Invoice RPL55 challen has generated successfully<br/> Total Qty : 5 & Payable Amount is Rs.20<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/10/2023 12:26:51PM'),
(115, 'FIRIMP', 'info@redplanetcomputers.com', 'The Sagar( 07982365456 ), has placed laundry order and pick on 13-Oct-2023 between 12:26 Order No :  RPL55. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '13/10/2023 12:26:51PM'),
(116, 'FIRIMP', '', 'Dear asdfhzrs, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :<br/><br/> Password : 8328<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '18/10/2023 11:45:41AM');
INSERT INTO `email_logs` (`email_id`, `user_id`, `email_add`, `email_msg`, `status`, `platform`, `sent_time`) VALUES
(117, 'FIRIMP', '', 'Dear asdfhzrs, <br/> Your laundry order generated and pick on 18-Oct-2023 between 06:11 is received by Red Planet Laundry, <br/> Your Order No :  RPL56. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '18/10/2023 06:11:39AM'),
(118, 'FIRIMP', '', 'Hi, asdfhzrs your Invoice RPL56 challen has generated successfully<br/> Total Qty : 5 & Payable Amount is Rs.22<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '18/10/2023 06:11:39AM'),
(119, 'FIRIMP', 'info@redplanetcomputers.com', 'The asdfhzrs( 1235644896513 ), has placed laundry order and pick on 18-Oct-2023 between 06:11 Order No :  RPL56. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '18/10/2023 06:11:40AM'),
(120, 'FIRIMP', '', 'Dear asdfhzrs, <br/> Your laundry order generated and pick on 19-Oct-2023 between 06:46 is received by Red Planet Laundry, <br/> Your Order No :  RPL57. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/10/2023 06:46:18AM'),
(121, 'FIRIMP', '', 'Hi, asdfhzrs your Invoice RPL57 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.20<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/10/2023 06:46:18AM'),
(122, 'FIRIMP', 'info@redplanetcomputers.com', 'The asdfhzrs( 1235644896513 ), has placed laundry order and pick on 19-Oct-2023 between 06:46 Order No :  RPL57. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '19/10/2023 06:46:19AM'),
(123, 'FIRIMP', 'thaboramotshela0@gmail.com', 'Dear THABO, <br/>Thanking you for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :thaboramotshela0@gmail.com<br/><br/> Password : 8429<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/10/2023 04:46:30AM'),
(124, 'FIRIMP', 'info@redplanetcomputers.com', 'Hi THABO, has registered through website in your Red Planet Laundry, please contact to on : 0613272102 Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/10/2023 04:46:30AM'),
(125, 'FIRIMP', 'thaboramotshela0@gmail.com', 'Dear THABO, <br/> Your laundry order generated and pick on 26-Oct-2023 between 07:13 is received by Red Planet Laundry, <br/> Your Order No :  RPL58. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/10/2023 07:13:50AM'),
(126, 'FIRIMP', 'thaboramotshela0@gmail.com', 'Hi, THABO your Invoice RPL58 challen has generated successfully<br/> Total Qty : 10 & Payable Amount is Rs.45<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/10/2023 07:13:50AM'),
(127, 'FIRIMP', 'info@redplanetcomputers.com', 'The THABO( 0613272102 ), has placed laundry order and pick on 26-Oct-2023 between 07:13 Order No :  RPL58. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '26/10/2023 07:13:50AM'),
(128, 'FIRIMP', 'aaaa@gmail.com', 'Dear ahmad, <br/>Thanks for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :aaaa@gmail.com<br/><br/> Password : 4006<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 10:37:06AM'),
(129, 'FIRIMP', '', 'Dear Piyush, <br/> Your laundry order generated and pick on 27-Oct-2023 between 17:58 is received by Red Planet Laundry, <br/> Your Order No :  RPL59. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:58:36PM'),
(130, 'FIRIMP', '', 'Hi, Piyush your Invoice RPL59 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.10<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:58:36PM'),
(131, 'FIRIMP', 'info@redplanetcomputers.com', 'The Piyush( 919888442933 ), has placed laundry order and pick on 27-Oct-2023 between 17:58 Order No :  RPL59. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:58:36PM'),
(132, 'FIRIMP', 'naveed.anjum@gmail.com', 'Dear Naveed, <br/> Your laundry order generated and pick on 27-Oct-2023 between 17:59 is received by Red Planet Laundry, <br/> Your Order No :  RPL60. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:59:41PM'),
(133, 'FIRIMP', 'naveed.anjum@gmail.com', 'Hi, Naveed your Invoice RPL60 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.10<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:59:41PM'),
(134, 'FIRIMP', 'info@redplanetcomputers.com', 'The Naveed( 03335555444 ), has placed laundry order and pick on 27-Oct-2023 between 17:59 Order No :  RPL60. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '27/10/2023 05:59:41PM'),
(135, 'FIRIMP', 'petrubizo@gmail.com', 'Dear Petre, <br/> Your laundry order generated and pick on 31-Oct-2023 between 05:56 is received by Red Planet Laundry, <br/> Your Order No :  RPL61. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 05:56:05AM'),
(136, 'FIRIMP', 'petrubizo@gmail.com', 'Hi, Petre your Invoice RPL61 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.6<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 05:56:05AM'),
(137, 'FIRIMP', 'info@redplanetcomputers.com', 'The Petre( 0767700200 ), has placed laundry order and pick on 31-Oct-2023 between 05:56 Order No :  RPL61. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 05:56:05AM'),
(138, 'FIRIMP', '', 'Dear asdfhzrs, <br/> Your laundry order generated and pick on 31-Oct-2023 between 06:13 is received by Red Planet Laundry, <br/> Your Order No :  RPL62. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 06:13:42AM'),
(139, 'FIRIMP', '', 'Hi, asdfhzrs your Invoice RPL62 challen has generated successfully<br/> Total Qty : 4 & Payable Amount is Rs.54<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 06:13:42AM'),
(140, 'FIRIMP', 'info@redplanetcomputers.com', 'The asdfhzrs( 1235644896513 ), has placed laundry order and pick on 31-Oct-2023 between 06:13 Order No :  RPL62. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '31/10/2023 06:13:42AM'),
(141, 'FIRIMP', 'appiank@gmail.com', 'Dear Appiah, <br/> Your laundry order generated and pick on 07-Nov-2023 between 08:31 is received by Red Planet Laundry, <br/> Your Order No :  RPL65. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:31:17AM'),
(142, 'FIRIMP', 'appiank@gmail.com', 'Hi, Appiah your Invoice RPL65 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.3<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:31:17AM'),
(143, 'FIRIMP', 'info@redplanetcomputers.com', 'The Appiah( 0244770150 ), has placed laundry order and pick on 07-Nov-2023 between 08:31 Order No :  RPL65. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:31:17AM'),
(144, 'FIRIMP', 'lar@msn.com', 'Dear Sagar, <br/> Your laundry order generated and pick on 07-Nov-2023 between 08:38 is received by Red Planet Laundry, <br/> Your Order No :  RPL66. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:38:08AM'),
(145, 'FIRIMP', 'lar@msn.com', 'Hi, Sagar your Invoice RPL66 challen has generated successfully<br/> Total Qty : 2 & Payable Amount is Rs.5.75<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:38:09AM'),
(146, 'FIRIMP', 'info@redplanetcomputers.com', 'The Sagar( 07982365456 ), has placed laundry order and pick on 07-Nov-2023 between 08:38 Order No :  RPL66. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:38:09AM'),
(147, 'FIRIMP', 'djsjs@dndj.com', 'Dear Ba, <br/>Thanking you for registration to Red Planet Laundry, <br/>Your Login Details :<br/><br/> username :djsjs@dndj.com<br/><br/> Password : 1218<br/> <br/>https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:44:29AM'),
(148, 'FIRIMP', 'info@redplanetcomputers.com', 'Hi Ba, has registered through website in your Red Planet Laundry, please contact to on : 5555 Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:44:29AM'),
(149, 'FIRIMP', 'riccardobog07@gmail.com', 'Dear Riccardo, <br/> Your laundry order generated and pick on 07-Nov-2023 between 08:45 is received by Red Planet Laundry, <br/> Your Order No :  RPL67. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:45:45AM'),
(150, 'FIRIMP', 'riccardobog07@gmail.com', 'Hi, Riccardo your Invoice RPL67 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.5<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:45:45AM'),
(151, 'FIRIMP', 'info@redplanetcomputers.com', 'The Riccardo( +393713814358 ), has placed laundry order and pick on 07-Nov-2023 between 08:45 Order No :  RPL67. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 08:45:45AM'),
(152, 'FIRIMP', 'djsjs@dndj.com', 'Dear Ba, <br/> Your laundry order generated and pick on 07-Nov-2023 between 14:23 is received by Red Planet Laundry, <br/> Your Order No :  RPL68. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 02:23:15PM'),
(153, 'FIRIMP', 'djsjs@dndj.com', 'Hi, Ba your Invoice RPL68 challen has generated successfully<br/> Total Qty : 1 & Payable Amount is Rs.25<br/> Check it on https://laundry.redplanetcomputers.com/demo/', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 02:23:15PM'),
(154, 'FIRIMP', 'info@redplanetcomputers.com', 'The Ba( 5555 ), has placed laundry order and pick on 07-Nov-2023 between 14:23 Order No :  RPL68. <br/> Thanks', 'The following SMTP error was encountered: 0 php_network_getaddresses: getaddrinfo failed: Name or service not known<br />Unable to send email using PHP SMTP. Your server might not be configured to sen', '', '07/11/2023 02:23:15PM');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `join_date` varchar(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `emp_add1` varchar(150) NOT NULL,
  `emp_add2` varchar(100) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_state` varchar(50) NOT NULL,
  `emp_zip` varchar(10) NOT NULL,
  `emp_map_pos` varchar(250) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(400) NOT NULL,
  `leave_date` varchar(15) NOT NULL,
  `last_login` varchar(50) NOT NULL,
  `salary` text NOT NULL,
  `designation` varchar(50) NOT NULL,
  `group_id` varchar(10) NOT NULL,
  `emp_role` varchar(100) NOT NULL,
  `laundry_store` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `join_date`, `first_name`, `last_name`, `mobile`, `email_id`, `emp_add1`, `emp_add2`, `emp_city`, `emp_state`, `emp_zip`, `emp_map_pos`, `birth_date`, `gender`, `status`, `password`, `leave_date`, `last_login`, `salary`, `designation`, `group_id`, `emp_role`, `laundry_store`) VALUES
(7, '08-06-2022', 'PANVEL', 'SHOP', '123456', '', 'B-002', 'Sai Sanklap Complex', 'Panvel', 'India', '410206', '25.15519916318982, 55.25335590784202', '', '', 'enable', 'MTIzNDU2', '', '', '', 'SHOP DELIVERY', '1', 'enable', ''),
(8, '16-06-2022', 'PANVEL SHOP', 'DRIVER', '1122334455', '', 'B-002', 'Sai Sanklap Complex', 'Panvel', 'India', '410206', '25.153723035132586, 55.252733635350566', '', '', 'enable', 'MTEyMjMzNDQ1NQ==', '', '', '', 'DELIVERY DRIVER', '1', 'enable', ''),
(5, '03-06-2022', 'SHOP', 'CASHIER', '123456789', '', ', al khail heights, alquoz 4, dubai', ', al khail heights, alquoz 4, dubai', 'DUBAI', 'India', '', '25.153723035132586, 55.252733635350566', '', '', 'enable', 'MTIzNDU2Nzg5', '', '', '', 'CASHIER', '2', 'disable', ''),
(9, '13-10-2023', 'Pankaj', 'B', '07982365458', 'never68169@cohodl.com', 'Gjgf', '', '', '', '685567', '18.980262563943064, 73.13549588863502', '', '', 'enable', 'OTk5MDUy', '', '', '', 'Delivery boy', '1', 'enable', '');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` int(11) NOT NULL,
  `exps_date` date NOT NULL,
  `exp_payee_name` varchar(100) NOT NULL,
  `exp_type` varchar(100) NOT NULL,
  `exp_amt` float(8,2) NOT NULL,
  `exp_taxable` varchar(10) NOT NULL,
  `exp_paidby` varchar(10) NOT NULL,
  `exp_chequeno` varchar(20) NOT NULL,
  `exp_cheque_date` varchar(15) NOT NULL,
  `exp_remarks` text NOT NULL,
  `laundry_store` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `exps_date`, `exp_payee_name`, `exp_type`, `exp_amt`, `exp_taxable`, `exp_paidby`, `exp_chequeno`, `exp_cheque_date`, `exp_remarks`, `laundry_store`) VALUES
(1, '2022-04-06', 'ANURRUDHA KUMAR', 'SALARY', 330.00, '', 'bycash', '', '', '', '1'),
(2, '2022-04-08', 'S J Enterprises', 'Chemical', 275.00, 'yes', 'bycash', '', '', 'Taxable Amount', '1'),
(3, '2023-10-18', 'lkgjfdgfhj', 'repair', 0.00, '', 'bycash', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `exps_id` int(11) NOT NULL,
  `exps_type` varchar(100) NOT NULL,
  `exps_code` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`exps_id`, `exps_type`, `exps_code`) VALUES
(1, 'SALARY', 'STAFF SALARIES'),
(2, 'Chemical', 'Purchase Chemical Bottles'),
(3, 'repair', 'store repair'),
(4, 'utility bills', 'water & power');

-- --------------------------------------------------------

--
-- Table structure for table `flutter_user`
--

CREATE TABLE `flutter_user` (
  `flutter_id` int(11) NOT NULL,
  `flutter_mobile` varchar(15) NOT NULL,
  `flutter_login_otp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flutter_user`
--

INSERT INTO `flutter_user` (`flutter_id`, `flutter_mobile`, `flutter_login_otp`) VALUES
(1, '8767228990', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `garment_brand`
--

CREATE TABLE `garment_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `brand_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `garment_brand`
--

INSERT INTO `garment_brand` (`id`, `brand_name`, `brand_remark`) VALUES
(1, 'Nike', '');

-- --------------------------------------------------------

--
-- Table structure for table `garment_color`
--

CREATE TABLE `garment_color` (
  `id` int(11) NOT NULL,
  `color_name` varchar(100) NOT NULL,
  `color_image` varchar(100) NOT NULL,
  `color_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `garment_color`
--

INSERT INTO `garment_color` (`id`, `color_name`, `color_image`, `color_remark`) VALUES
(1, 'White', '', ''),
(2, 'Blah', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `garment_defect`
--

CREATE TABLE `garment_defect` (
  `id` int(11) NOT NULL,
  `defect_name` varchar(100) NOT NULL,
  `defect_remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `garment_defect`
--

INSERT INTO `garment_defect` (`id`, `defect_name`, `defect_remark`) VALUES
(1, 'Loose Buttons', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempt`
--

CREATE TABLE `login_attempt` (
  `auto` int(11) NOT NULL,
  `ip_add` text NOT NULL,
  `attempt` int(5) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempt`
--

INSERT INTO `login_attempt` (`auto`, `ip_add`, `attempt`, `date_time`, `email`) VALUES
(71, '2001:d08:e4:498c:8909:89c6:d4de:156e', 0, '2023-06-14 03:09:01 pm', ''),
(72, '5.36.249.107', 0, '2023-06-14 04:40:10 pm', ''),
(73, '164.215.22.84', 0, '2023-06-15 01:04:22 am', ''),
(74, '143.44.196.120', 0, '2023-06-15 10:20:23 pm', ''),
(75, '105.112.114.26', 0, '2023-06-16 03:40:23 pm', ''),
(76, '111.125.219.59', 0, '2023-06-20 12:45:51 pm', ''),
(77, '111.125.219.59', 0, '2023-06-20 12:46:31 pm', ''),
(78, '151.36.8.174', 0, '2023-06-21 02:43:06 pm', ''),
(79, '151.49.60.106', 0, '2023-06-21 07:54:52 pm', ''),
(80, '151.49.60.106', 0, '2023-06-21 08:11:47 pm', ''),
(81, '103.167.122.215', 0, '2023-06-21 09:56:15 pm', ''),
(82, '2401:4900:1f3f:fc05:248c:f35a:f898:1b4', 0, '2023-06-23 04:49:25 pm', ''),
(83, '154.121.28.169', 0, '2023-06-24 07:44:23 pm', ''),
(84, '120.28.178.119', 0, '2023-06-26 04:59:48 pm', ''),
(85, '120.28.178.119', 0, '2023-06-26 05:02:29 pm', ''),
(86, '120.28.177.100', 0, '2023-06-27 04:48:59 am', ''),
(89, '2401:4900:7017:869b:4e5:6402:bc67:b84e', 0, '2023-06-29 01:55:41 pm', ''),
(90, '185.177.229.138', 0, '2023-06-30 08:34:30 am', ''),
(91, '185.177.229.138', 0, '2023-06-30 08:35:34 am', ''),
(92, '2a02:2f04:a13:6300:60b5:ef05:da93:1c52', 0, '2023-07-06 12:21:11 am', ''),
(93, '2a02:2f04:a13:6300:60b5:ef05:da93:1c52', 0, '2023-07-06 12:43:10 am', ''),
(94, '103.53.31.13', 0, '2023-07-07 10:18:05 am', ''),
(95, '111.125.219.55', 0, '2023-07-10 02:31:06 pm', ''),
(96, '2806:1016:6:23d2:a490:e8a4:cfcc:4208', 0, '2023-07-11 12:40:25 pm', ''),
(97, '2401:4900:5469:2a43::a30:b125', 0, '2023-07-12 01:14:50 am', ''),
(98, '102.176.65.143', 0, '2023-07-12 08:13:56 am', ''),
(99, '185.71.133.137', 0, '2023-07-12 11:19:10 am', ''),
(100, '140.213.37.231', 0, '2023-07-17 07:10:20 am', ''),
(102, '196.189.182.118', 0, '2023-07-19 07:22:55 pm', ''),
(103, '196.189.182.118', 0, '2023-07-19 07:25:00 pm', ''),
(104, '102.218.51.179', 0, '2023-07-20 04:27:27 pm', ''),
(105, '136.158.78.127', 0, '2023-07-21 07:56:58 pm', ''),
(106, '37.186.39.150', 0, '2023-07-22 12:01:43 am', ''),
(107, '103.89.235.46', 0, '2023-07-22 11:12:20 pm', ''),
(108, '2001:1670:18:7e18:e10e:5bfb:42f3:1ce4', 0, '2023-07-23 03:33:42 pm', ''),
(109, '180.190.248.178', 0, '2023-07-26 12:26:06 pm', ''),
(110, '213.228.170.200', 0, '2023-07-27 12:21:41 am', ''),
(111, '102.84.24.46', 0, '2023-07-29 10:26:06 pm', ''),
(112, '111.88.63.247', 0, '2023-07-30 02:16:17 am', ''),
(113, '103.91.232.0', 0, '2023-07-30 08:11:48 pm', ''),
(114, '103.157.186.1', 0, '2023-08-01 08:30:08 pm', ''),
(115, '2405:201:4019:e008:9500:a7bc:192f:526e', 0, '2023-08-02 03:12:13 pm', ''),
(116, '196.25.50.4', 0, '2023-08-03 10:46:27 am', ''),
(117, '103.157.186.1', 0, '2023-08-03 12:09:08 pm', ''),
(118, '111.88.57.247', 0, '2023-08-04 03:21:14 am', ''),
(119, '111.88.57.247', 0, '2023-08-04 03:27:24 am', ''),
(120, '102.188.105.137', 0, '2023-08-06 11:48:26 am', ''),
(121, '103.91.232.0', 0, '2023-08-08 08:44:30 pm', ''),
(123, '197.211.63.97', 0, '2023-08-11 11:18:13 pm', ''),
(124, '2401:4900:1f38:6157:b167:132f:c0c2:4175', 0, '2023-08-13 01:09:13 pm', ''),
(125, '2401:4900:6294:b1a1:c5ed:30e2:7a00:76c5', 0, '2023-08-14 06:09:54 pm', ''),
(130, '197.211.63.106', 0, '2023-08-15 12:17:01 pm', ''),
(131, '2405:201:c003:c009:3dd6:87bd:b700:219c', 0, '2023-08-18 12:31:50 am', ''),
(132, '2404:160:8041:3e4a:970:26c7:ad87:83b7', 0, '2023-08-19 05:46:53 am', ''),
(133, '119.155.41.153', 0, '2023-08-20 09:10:29 am', ''),
(134, '103.157.48.37', 0, '2023-08-20 09:41:20 am', ''),
(135, '111.88.86.200', 0, '2023-08-20 05:52:44 pm', ''),
(136, '197.210.55.36', 0, '2023-08-21 11:52:20 am', ''),
(137, '111.92.25.203', 0, '2023-08-21 05:19:31 pm', ''),
(138, '2a09:bac5:4efc:1478::20a:5a', 0, '2023-08-22 01:48:04 pm', ''),
(139, '2001:8f8:2d12:4475:7c6f:133c:914f:726c', 0, '2023-08-22 09:48:43 pm', ''),
(140, '169.150.196.69', 0, '2023-08-23 02:03:35 pm', ''),
(141, '103.35.134.191', 0, '2023-08-25 09:08:09 am', ''),
(142, '103.35.134.191', 0, '2023-08-25 07:08:53 pm', ''),
(143, '103.35.134.191', 0, '2023-08-25 08:07:33 pm', ''),
(144, '169.150.196.68', 0, '2023-08-26 02:46:30 pm', ''),
(145, '169.150.196.66', 0, '2023-08-28 01:00:04 am', ''),
(146, '92.99.159.46', 0, '2023-09-02 10:59:21 am', ''),
(147, '2001:e68:5429:a1ef:785b:f02d:6602:a9c4', 0, '2023-09-04 07:40:25 am', ''),
(148, '105.112.112.251', 0, '2023-09-04 02:03:55 pm', ''),
(149, '2001:e68:6685:b600:85ff:3833:744c:ba4f', 0, '2023-09-06 11:25:20 am', ''),
(150, '105.71.133.123', 0, '2023-09-06 06:11:30 pm', ''),
(151, '2001:e68:6685:b600:b4c9:8d85:983d:d10c', 0, '2023-09-07 02:38:52 pm', ''),
(152, '103.157.186.5', 0, '2023-09-07 08:31:00 pm', ''),
(153, '37.214.59.192', 0, '2023-09-08 04:02:40 pm', ''),
(154, '105.163.1.177', 0, '2023-09-09 06:37:06 am', ''),
(155, '2001:e68:6685:b600:b942:a16a:8f43:e32c', 0, '2023-09-12 08:21:01 am', ''),
(156, '2001:e68:6685:b600:f08a:8a0a:296b:1835', 0, '2023-09-13 01:26:56 pm', ''),
(157, '196.249.103.62', 0, '2023-09-25 01:30:12 pm', ''),
(158, '143.44.196.147', 0, '2023-09-25 09:01:38 pm', ''),
(159, '102.89.46.5', 0, '2023-09-25 09:42:50 pm', ''),
(160, '202.47.35.43', 0, '2023-09-26 04:26:00 pm', ''),
(161, '202.47.35.43', 0, '2023-09-26 04:34:32 pm', ''),
(162, '202.47.35.43', 0, '2023-09-26 04:34:34 pm', ''),
(163, '78.191.70.20', 0, '2023-09-27 12:48:42 am', ''),
(164, '103.11.219.5', 0, '2023-09-28 01:58:37 am', ''),
(165, '123.27.255.14', 0, '2023-09-28 07:00:06 am', ''),
(166, '78.191.70.20', 0, '2023-09-29 06:26:08 pm', ''),
(167, '78.191.70.20', 0, '2023-09-30 12:32:40 pm', ''),
(168, '78.191.70.20', 0, '2023-09-30 01:07:29 pm', ''),
(169, '197.237.86.228', 0, '2023-10-01 03:32:19 pm', ''),
(170, '59.8.253.120', 0, '2023-10-03 01:45:55 pm', ''),
(171, '2401:4900:1722:45e3:1:1:e61a:cd7f', 0, '2023-10-03 04:10:54 pm', ''),
(172, '94.129.69.246', 0, '2023-10-04 01:56:26 pm', ''),
(173, '94.129.69.246', 0, '2023-10-04 02:51:33 pm', ''),
(174, '154.160.5.116', 0, '2023-10-04 03:01:47 pm', ''),
(175, '102.90.44.251', 0, '2023-10-04 03:41:38 pm', ''),
(176, '2804:431:cff4:fe8a:7f97:bd95:81cb:9b84', 0, '2023-10-05 02:24:07 am', ''),
(177, '154.160.0.37', 0, '2023-10-05 02:34:47 pm', ''),
(178, '103.167.122.212', 0, '2023-10-05 06:52:43 pm', ''),
(179, '154.160.10.186', 0, '2023-10-07 07:42:23 pm', ''),
(180, '154.160.10.186', 0, '2023-10-07 07:53:27 pm', ''),
(181, '154.160.10.186', 0, '2023-10-07 07:55:52 pm', ''),
(182, '2806:108e:1f:1f52:9118:784a:69fe:ae53', 0, '2023-10-08 04:01:32 am', ''),
(183, '2409:4050:d95:71ba:833e:7f29:7088:4487', 0, '2023-10-08 12:47:46 pm', ''),
(184, '165.231.253.252', 0, '2023-10-08 01:09:58 pm', ''),
(185, '2402:3a80:1f43:cdf9::cd8:6c73', 0, '2023-10-08 01:12:49 pm', ''),
(186, '165.231.253.246', 0, '2023-10-08 03:43:31 pm', ''),
(187, '2409:4050:d95:71ba:833e:7f29:7088:4487', 0, '2023-10-08 06:55:04 pm', ''),
(188, '2409:4050:d95:71ba:833e:7f29:7088:4487', 0, '2023-10-08 06:55:41 pm', ''),
(189, '103.115.124.108', 0, '2023-10-08 06:57:37 pm', ''),
(190, '197.221.102.7', 0, '2023-10-09 03:09:33 am', ''),
(191, '105.160.61.239', 0, '2023-10-09 07:28:49 pm', ''),
(193, '103.115.124.108', 0, '2023-10-12 12:40:11 pm', ''),
(194, '2402:3a80:1c63:ed35::d894:1c80', 0, '2023-10-12 05:41:39 pm', ''),
(195, '2409:4050:d91:1950:5506:5e69:e616:fe75', 0, '2023-10-12 05:42:34 pm', ''),
(196, '2409:4050:d91:1950:5506:5e69:e616:fe75', 0, '2023-10-13 12:18:19 pm', ''),
(197, '103.115.124.108', 0, '2023-10-13 12:31:52 pm', ''),
(198, '103.115.124.108', 0, '2023-10-13 12:33:31 pm', ''),
(199, '197.248.20.58', 0, '2023-10-13 06:15:05 pm', ''),
(200, '111.125.219.61', 0, '2023-10-16 10:06:54 am', ''),
(201, '72.255.51.9', 0, '2023-10-17 10:28:46 am', ''),
(202, '41.90.184.230', 0, '2023-10-18 12:26:43 pm', ''),
(203, '105.163.0.10', 0, '2023-10-18 12:37:12 pm', ''),
(204, '41.90.184.230', 0, '2023-10-18 02:12:40 pm', ''),
(205, '41.90.181.166', 0, '2023-10-19 02:51:40 pm', ''),
(206, '130.193.203.109', 0, '2023-10-20 10:55:44 pm', ''),
(207, '102.23.89.73', 0, '2023-10-22 04:07:07 am', ''),
(208, '202.65.79.114', 0, '2023-10-23 10:17:13 am', ''),
(209, '118.96.21.165', 0, '2023-10-23 06:13:58 pm', ''),
(210, '89.147.153.81', 0, '2023-10-26 03:41:30 pm', ''),
(211, '89.147.153.81', 0, '2023-10-27 07:05:16 pm', ''),
(212, '98.113.199.47', 0, '2023-10-27 11:54:36 pm', ''),
(213, '154.72.171.131', 0, '2023-10-28 02:13:58 am', ''),
(214, '41.90.187.159', 0, '2023-10-30 02:46:24 pm', ''),
(215, '41.89.31.31', 0, '2023-10-31 02:23:44 pm', ''),
(216, '41.90.187.159', 0, '2023-11-01 02:45:35 pm', ''),
(217, '89.39.106.228', 0, '2023-11-02 12:05:17 pm', ''),
(221, '89.147.153.81', 0, '2023-11-02 04:09:14 pm', ''),
(222, '89.147.153.81', 0, '2023-11-03 06:35:28 pm', ''),
(223, '89.147.153.81', 0, '2023-11-06 03:39:20 pm', ''),
(224, '2001:e68:5473:351f:b5d3:1d95:aa5e:46de', 0, '2023-11-06 10:50:50 pm', ''),
(225, '2603:7080:9740:c8:34bf:bc86:5d:d6f5', 0, '2023-11-07 08:28:44 am', ''),
(226, '193.47.189.3', 0, '2023-11-07 02:21:24 pm', '');

-- --------------------------------------------------------

--
-- Table structure for table `mem_group`
--

CREATE TABLE `mem_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `group_permission` text NOT NULL,
  `group_status` varchar(50) NOT NULL,
  `group_descr` text NOT NULL,
  `laundry_store` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mem_group`
--

INSERT INTO `mem_group` (`id`, `group_name`, `group_permission`, `group_status`, `group_descr`, `laundry_store`) VALUES
(1, 'Driver', 'a:1:{i:0;s:8:\"services\";}', 'enable', '', ''),
(2, 'Manager', 'a:5:{i:0;s:7:\"desktop\";i:1;s:7:\"garment\";i:2;s:8:\"services\";i:3;s:8:\"joborder\";i:4;s:7:\"reports\";}', 'enable', '', ''),
(3, 'CASHIER', 'a:4:{i:0;s:7:\"desktop\";i:1;s:6:\"master\";i:2;s:8:\"joborder\";i:3;s:7:\"reports\";}', 'enable', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_template`
--

CREATE TABLE `message_template` (
  `msg_id` int(11) NOT NULL,
  `msg_title` varchar(100) NOT NULL,
  `msg_body` text NOT NULL,
  `message_for` varchar(20) NOT NULL,
  `active` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message_template`
--

INSERT INTO `message_template` (`msg_id`, `msg_title`, `msg_body`, `message_for`, `active`) VALUES
(1, 'Outstanding Amount', 'Hello {CUSTOMER_NAME},<br />\r\nThank you for choosing laundry.<br />\r\nPlease pay the outstanding balance {OUTSTAND_AMT},<br />\r\nPlease download our app to schedule pick up, track your order, view your order history,<br />\r\nMake payments online.<br />\r\n{ONLINE_PAYMENT}\r\n{ANDROID_LINK}', 'outstanding', 'yes'),
(3, 'Order Delivered message', 'Thank you for choosing laundry. Your order no. {INVOICE} has been delivered. <br />\r\nDelivered on : {DELIVERY_DATE}<br />\r\nDelivered by: {DELIVERY_BY}<br />\r\nPayment status: {PAYMENT_STATUS}<br />\r\nPayment mode:{PAYMENT_MODE}<br />\r\nPayment amount: {PAID_AMT}<br />\r\nYour outstanding balance {OUTSTAND_AMT}.', 'delivered', 'yes'),
(5, 'NEW PICK UP', 'Dear {CUSTOMER_NAME} , Thank you for choosing Laundry. Your pick up request {INVOICE} dated {PICKUP_DATE} has been received. It will be picked up by our associate.', 'new_order', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `offerfor` varchar(200) NOT NULL,
  `offdesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_payment_details`
--

CREATE TABLE `online_payment_details` (
  `pay_id` int(11) NOT NULL,
  `trans_id` text NOT NULL,
  `invoice_no` varchar(20) NOT NULL,
  `payment_result` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_temp`
--

CREATE TABLE `order_temp` (
  `order_id` int(11) NOT NULL,
  `order_invoice` varchar(25) NOT NULL,
  `cust_order_no` varchar(10) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` int(5) NOT NULL,
  `price_shortcode` text NOT NULL,
  `order_service` varchar(50) NOT NULL,
  `order_cloth` varchar(50) NOT NULL,
  `order_price` varchar(50) NOT NULL,
  `order_qty` varchar(5) NOT NULL,
  `garment_brand` varchar(100) DEFAULT NULL,
  `garment_pack` varchar(50) NOT NULL,
  `garment_starch` varchar(100) NOT NULL,
  `garment_defect` varchar(50) NOT NULL,
  `garment_color` varchar(50) NOT NULL,
  `garment_unit` varchar(10) NOT NULL,
  `garment_kg_desc` text NOT NULL,
  `garment_kg_qty` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_temp`
--

INSERT INTO `order_temp` (`order_id`, `order_invoice`, `cust_order_no`, `order_date`, `customer_id`, `price_shortcode`, `order_service`, `order_cloth`, `order_price`, `order_qty`, `garment_brand`, `garment_pack`, `garment_starch`, `garment_defect`, `garment_color`, `garment_unit`, `garment_kg_desc`, `garment_kg_qty`) VALUES
(2, 'RPL1', '1', '2022-12-24', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5.000', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(3, 'RPL3', '3', '2023-01-13', 1, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(4, 'RPL3', '3', '2023-01-13', 1, '8', 'WASH AND IRON', 'Salwar', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(5, 'RPL4', '4', '2023-01-19', 1, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(6, 'RPL6', '6', '2023-02-01', 1, '5', 'WASH AND IRON', 'Pillowcase', '4', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(7, 'RPL6', '6', '2023-02-01', 1, '83', 'DRY CLEANING', 'Bath Mat/Bath Rug/Door Mat', '6', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(8, 'RPL7', '7', '2023-02-01', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(9, 'RPL7', '7', '2023-02-01', 1, '7', 'WASH AND IRON', 'Pyjama trousers', '3', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(10, 'RPL9', '9', '2023-02-01', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(11, 'RPL9', '9', '2023-02-01', 1, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(12, 'RPL9', '9', '2023-02-01', 1, '5', 'WASH AND IRON', 'Pillowcase', '4', '7', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(13, 'RPL10', '10', '2023-02-01', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(14, 'RPL10', '10', '2023-02-01', 1, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '7', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(15, 'RPL10', '10', '2023-02-01', 1, '5', 'WASH AND IRON', 'Pillowcase', '4', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(16, 'RPL11', '11', '2023-02-01', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(17, 'RPL11', '11', '2023-02-01', 1, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(18, 'RPL12', '12', '2023-02-01', 1, '17', 'WASH AND FOLD', 'Bedsheets /Bedspreed/Duvet Cover', '4', '6', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(19, 'RPL12', '12', '2023-02-01', 1, '19', 'WASH AND FOLD', 'Cushion Cover Medium/Large', '7.000', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(20, 'RPL12', '12', '2023-02-01', 1, '20', 'WASH AND FOLD', 'Cushion Cover Small', '3', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(21, 'RPL13', '13', '2023-02-02', 3, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(22, 'RPL13', '13', '2023-02-02', 3, '8', 'WASH AND IRON', 'Salwar', '3', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(23, 'RPL13', '13', '2023-02-02', 3, '25', 'WASH AND FOLD', 'Overall', '3', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(24, 'RPL15', '15', '2023-02-10', 1, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(25, 'RPL15', '15', '2023-02-10', 1, '6', 'WASH AND IRON', 'Pyjama shirt', '3', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(26, 'RPL15', '15', '2023-02-10', 1, '7', 'WASH AND IRON', 'Pyjama trousers', '3', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(27, 'RPL2', '2', '2022-12-30', 1, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(28, 'RPL16', '16', '2023-02-11', 3, '1', 'WASH AND IRON', 'Baby cloth', '4', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(29, 'RPL17', '17', '2023-02-11', 1, '125', 'STEAM / IRON PRESS', 'Bedsheets /Bedspreed/Duvet Cover', '4', '6', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(30, 'RPL17', '17', '2023-02-11', 1, '131', 'STEAM / IRON PRESS', 'Dress (normal without design)', '4', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(31, 'RPL18', '18', '2023-02-11', 2, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(32, 'RPL18', '18', '2023-02-11', 2, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(33, 'RPL19', '19', '2023-02-11', 3, '13', 'WASH AND IRON', 'TROUSER', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(34, 'RPL20', '20', '2023-02-13', 4, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '3', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(35, 'RPL20', '20', '2023-02-13', 4, '16', 'WASH AND FOLD', 'Bath robe / Robe', '6', '5', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(36, 'RPL20', '20', '2023-02-13', 4, '83', 'DRY CLEANING', 'Bath Mat/Bath Rug/Door Mat', '6', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(37, 'RPL20', '20', '2023-02-13', 4, '84', 'DRY CLEANING', 'Bedsheets /Bedspreed/Duvet Cover', '4', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(38, 'RPL20', '20', '2023-02-13', 4, '87', 'DRY CLEANING', 'Cushion Cover Medium/Large', '10', '4', NULL, '', '', '', '', 'Qty', 'N;', 'N;'),
(39, 'RPL21', '21', '2023-03-09', 3, '2', 'WASH AND IRON', 'Dishdasha', '5', '4', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(40, 'RPL21', '21', '2023-03-09', 3, '83', 'DRY CLEANING', 'Bath Mat/Bath Rug/Door Mat', '6', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(41, 'RPL22', '22', '2023-03-08', 4, '8', 'WASH AND IRON', 'Salwar', '3', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(42, 'RPL22', '22', '2023-03-08', 4, '1', 'WASH AND IRON', 'Baby cloth', '4', '100', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(43, 'RPL22', '22', '2023-03-08', 4, '7', 'WASH AND IRON', 'Pyjama trousers', '3', '100', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(44, 'RPL22', '22', '2023-03-08', 4, '6', 'WASH AND IRON', 'Pyjama shirt', '3', '100', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(45, 'RPL23', '23', '2023-03-14', 4, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(46, 'RPL24', '24', '2023-03-14', 4, '13', 'WASH AND IRON', 'TROUSER', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(47, 'RPL25', '25', '2023-03-24', 3, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(48, 'RPL26', '26', '2023-03-25', 8, '7', 'WASH AND IRON', 'Pyjama trousers', '3.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(49, 'RPL27', '27', '2023-06-21', 3, '1', 'WASH AND IRON', 'Baby cloth', '4', '4', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(50, 'RPL29', '29', '2023-06-27', 3, '15', 'WASH AND FOLD', 'Baby cloth', '2', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(51, 'RPL30', '30', '2023-07-06', 8, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(52, 'RPL30', '30', '2023-07-06', 8, '16', 'WASH AND FOLD', 'Bath robe / Robe', '6', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(53, 'RPL31', '31', '2023-07-06', 10, '2', 'WASH AND IRON', 'Dishdasha', '5', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(54, 'RPL31', '31', '2023-07-06', 10, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(55, 'RPL31', '31', '2023-07-06', 10, '38', 'WASH AND FOLD', 'TROUSER', '2', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(56, 'RPL31', '31', '2023-07-06', 10, '73', 'DRY CLEAN AND PRESS', 'SUITS (3PCS)', '30', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(57, 'RPL32', '32', '2023-07-10', 1, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(58, 'RPL32', '32', '2023-07-10', 1, '2', 'WASH AND IRON', 'Dishdasha', '5.000', '6', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(59, 'RPL33', '33', '2023-07-11', 9, '2', 'WASH AND IRON', 'Dishdasha', '5.000', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(60, 'RPL35', '35', '2023-07-12', 2, '1', 'WASH AND IRON', 'Baby cloth', '4', '9', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(61, 'RPL35', '35', '2023-07-12', 2, '3', 'WASH AND IRON', 'Dress (normal without design)', '5', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(62, 'RPL36', '36', '2023-07-17', 8, '10', 'WASH AND IRON', 'SHIRT/TOP', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(63, 'RPL37', '37', '2023-07-18', 9, '163', 'DRY CLEANING', 'SHOES (PAIR)', '40.000', '1', '', '', '', '', '', 'Kg', 'a:3:{i:0;s:26:\"Bath Mat/Bath Rug/Door Mat\";i:1;s:6:\"Blouse\";i:2;s:9:\"Dishdasha\";}', 'a:3:{i:0;s:2:\"10\";i:1;s:2:\"15\";i:2;s:2:\"20\";}'),
(64, 'RPL38', '38', '2023-07-23', 9, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(65, 'RPL39', '39', '2023-07-27', 10, '82', 'DRY CLEANING', 'Baby cloth', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(66, 'RPL40', '40', '2023-07-30', 12, '12', 'WASH AND IRON', 'Skirt', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(67, 'RPL41', '41', '2023-08-02', 3, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', 'Blah', 'Qty', 'N;', 'N;'),
(68, 'RPL41', '41', '2023-08-02', 3, '2', 'WASH AND IRON', 'Dishdasha', '5', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(69, 'RPL42', '42', '2023-08-13', 12, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(70, 'RPL43', '43', '2023-08-14', 1, '81', 'DRY CLEANING', 'Abaya (normal without design)', '5', '4', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(71, 'RPL44', '44', '2023-08-20', 12, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(72, 'RPL45', '45', '2023-08-22', 12, '15', 'WASH AND FOLD', 'Baby cloth', '2', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(73, 'RPL46', '46', '2023-08-22', 12, '15', 'WASH AND FOLD', 'Baby cloth', '2', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(74, 'RPL47', '47', '2023-09-02', 12, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(75, 'RPL47', '47', '2023-09-02', 12, '10', 'WASH AND IRON', 'SHIRT/TOP', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(76, 'RPL47', '47', '2023-09-02', 12, '28', 'WASH AND FOLD', 'Pyjama trousers', '2', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(77, 'RPL48', '48', '2023-09-06', 12, '15', 'WASH AND FOLD', 'Baby cloth', '2', '1', '', '', '', '', 'Blah', 'Qty', 'N;', 'N;'),
(78, 'RPL48', '48', '2023-09-06', 12, '17', 'WASH AND FOLD', 'Bedsheets /Bedspreed/Duvet Cover', '4', '3', '', '', '', '', 'White', 'Qty', 'N;', 'N;'),
(79, 'RPL49', '49', '2023-09-26', 15, '1', 'WASH AND IRON', 'Baby cloth', '4', '2', '', '', '', '', 'White', 'Qty', 'N;', 'N;'),
(80, 'RPL49', '49', '2023-09-26', 15, '7', 'WASH AND IRON', 'Pyjama trousers', '3', '1', '', '', '', '', 'Blah', 'Qty', 'N;', 'N;'),
(81, 'RPL49', '49', '2023-09-26', 15, '32', 'WASH AND FOLD', 'Shorts', '2', '1', '', '', '', '', 'White', 'Qty', 'N;', 'N;'),
(82, 'RPL50', '50', '2023-10-05', 14, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(83, 'RPL51', '51', '2023-10-07', 16, '1', 'WASH AND IRON', 'Baby cloth', '4', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(84, 'RPL51', '51', '2023-10-07', 16, '2', 'WASH AND IRON', 'Dishdasha', '5', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(85, 'RPL51', '51', '2023-10-07', 16, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '7', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(86, 'RPL52', '52', '2023-10-07', 17, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(87, 'RPL53', '53', '2023-10-08', 16, '1', 'WASH AND IRON', 'Baby cloth', '4', '3', '', '', '', '', 'White', 'Qty', 'N;', 'N;'),
(88, 'RPL53', '53', '2023-10-08', 16, '10', 'WASH AND IRON', 'SHIRT/TOP', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(89, 'RPL54', '54', '2023-10-08', 10, '1', 'WASH AND IRON', 'Baby cloth', '4', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(90, 'RPL55', '55', '2023-10-13', 19, '1', 'WASH AND IRON', 'Baby cloth', '4', '4', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(91, 'RPL55', '55', '2023-10-13', 19, '84', 'DRY CLEANING', 'Bedsheets /Bedspreed/Duvet Cover', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(92, 'RPL56', '56', '2023-10-18', 20, '1', 'WASH AND IRON', 'Baby cloth', '4', '5', '', '', '', '', 'Blah', 'Qty', 'N;', 'N;'),
(93, 'RPL57', '57', '2023-10-19', 20, '73', 'DRY CLEAN AND PRESS', 'SUITS (3PCS)', '30', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(94, 'RPL58', '58', '2023-10-26', 21, '1', 'WASH AND IRON', 'Baby cloth', '4', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(95, 'RPL58', '58', '2023-10-26', 21, '2', 'WASH AND IRON', 'Dishdasha', '5', '5', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(96, 'RPL59', '59', '2023-10-27', 3, '42', 'DRY CLEAN AND PRESS', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(97, 'RPL59', '59', '2023-10-27', 3, '48', 'DRY CLEAN AND PRESS', 'Cushion Cover Small', '6', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(98, 'RPL60', '60', '2023-10-27', 15, '77', 'DRY CLEAN AND PRESS', 'TROUSER', '5', '2', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(99, 'RPL61', '61', '2023-10-31', 10, '1', 'WASH AND IRON', 'Baby cloth', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(100, 'RPL62', '62', '2023-10-31', 20, '95', 'DRY CLEANING', 'JACKET NORMAL', '4', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(101, 'RPL62', '62', '2023-10-31', 20, '73', 'DRY CLEAN AND PRESS', 'SUITS (3PCS)', '30', '3', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(102, 'RPL63', '63', '2023-11-02', 22, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(103, 'RPL63', '63', '2023-11-02', 22, '2', 'WASH AND IRON', 'Dishdasha', '5.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(104, 'RPL63', '63', '2023-11-02', 22, '3', 'WASH AND IRON', 'Dress (normal without design)', '5.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(105, 'RPL63', '63', '2023-11-02', 22, '4', 'WASH AND IRON', 'Kamis / Kurta', '3.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(106, 'RPL63', '63', '2023-11-02', 22, '5', 'WASH AND IRON', 'Pillowcase', '4.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(107, 'RPL64', '64', '2023-11-03', 22, '1', 'WASH AND IRON', 'Baby cloth', '4.000', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(108, 'RPL65', '65', '2023-11-07', 17, '4', 'WASH AND IRON', 'Kamis / Kurta', '3', '1', '', '', '', 'Loose Buttons', 'Blah', 'Qty', 'N;', 'N;'),
(109, 'RPL66', '66', '2023-11-07', 19, '31', 'WASH AND FOLD', 'SHIRT/TOP', '2', '1', '', '', '', 'Loose Buttons', '', 'Qty', 'N;', 'N;'),
(110, 'RPL66', '66', '2023-11-07', 19, '165', 'DRY CLEANING', 'T-shirt', '3.75', '1', 'Nike', '', '', 'Loose Buttons', 'Blah', 'Qty', 'N;', 'N;'),
(111, 'RPL67', '67', '2023-11-07', 9, '12', 'WASH AND IRON', 'Skirt', '3', '1', '', '', '', '', '', 'Qty', 'N;', 'N;'),
(112, 'RPL68', '68', '2023-11-07', 23, '94', 'DRY CLEANING', 'Gown (with design / beads/ stones)', '25', '1', '', '', '', 'Loose Buttons', '', 'Qty', 'N;', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `other_settings`
--

CREATE TABLE `other_settings` (
  `id` int(11) NOT NULL,
  `order_limit` int(5) NOT NULL,
  `gmap_key` text NOT NULL,
  `firebase_key` text NOT NULL,
  `default_payment_gatway` text NOT NULL,
  `default_bulk_sms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outstand_history`
--

CREATE TABLE `outstand_history` (
  `outstand_id` int(5) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `trans_date` date DEFAULT NULL,
  `outstand_amt` varchar(10) DEFAULT NULL,
  `outstand_remarks` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outstand_history`
--

INSERT INTO `outstand_history` (`outstand_id`, `customer_id`, `trans_date`, `outstand_amt`, `outstand_remarks`) VALUES
(3, 634, '2022-05-21', '242', 'BL60026	17/04/2022	RB 6A G16	Invoice	In	44.00	0.00	44.00 BL60242	24/04/2022	RB 6A G16	Invoice	In	147.00	100.00	47.00 BL60426	29/04/2022	RB 6A G16	Invo'),
(5, 18, '2022-05-21', '14', '1	BL54877	02/01/2022	RB 2B G23	Invoice	In	16.00	14.00	2.00	'),
(6, 20, '2022-05-21', '6', '38	BL56665	30/01/2022	RB 2B 132 MR SHAHID GM TEXTURE	Invoice	In	6.00	0.00	6.00	'),
(7, 24, '2022-05-21', '10', '3	BL499	18/06/2019	RB 7A 402	Invoice	In	10.00	0.00	10.00	'),
(8, 27, '2022-05-21', '113.25', '2	BL281	31/05/2019	RB-04A G15	Invoice	In	24.50	0.00	24.50 3	BL328	03/06/2019	RB-04A G15	Invoice	In	27.50	0.00	27.50 4	BL566	22/06/2019	RB-04A G15	Invo'),
(9, 34, '2022-05-21', '8', '1	BL42	10/05/2019	VILLA NO. 3 ROOM 6	Invoice	In	8.00	8.00	0.00	'),
(10, 38, '2022-05-21', '36', '50	BL60464	01/05/2022	RB 9A 109	Invoice	In	36.00	0.00	36.00	'),
(11, 45, '2022-05-21', '4', '1	BL864	10/07/2019	VILLA 50	Invoice	In	12.00	10.00	2.00	 2	BL33439	19/03/2021	VILLA 50	Invoice	In	20.00	18.00	2.00	'),
(12, 53, '2022-05-21', '110', '42	BL60143	21/04/2022	RB 7B 238	Invoice	In	32.50	0.00	32.5036	BL53961	02/12/2021	RB 7B 238	Invoice	In	41.00	0.00	41.0033	BL50064	30/09/2021	RB 7B 238	');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `pkg_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `pkg_name` varchar(100) NOT NULL,
  `usage_limit` varchar(100) NOT NULL,
  `pickup` varchar(50) NOT NULL,
  `duration` int(2) NOT NULL,
  `amount` int(5) NOT NULL,
  `pkg_unit` varchar(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pkg_id`, `category`, `pkg_name`, `usage_limit`, `pickup`, `duration`, `amount`, `pkg_unit`, `description`) VALUES
(1, 'dry_clean', 'EXPRESS', '5', 'Alternative / Weekly', 1, 9, 'Quantity', '');

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `id` int(11) NOT NULL,
  `service_id` varchar(10) NOT NULL,
  `category_id` int(5) NOT NULL,
  `cloth_id` varchar(5) NOT NULL,
  `price` varchar(8) NOT NULL,
  `service_unit` varchar(10) NOT NULL,
  `short_code` varchar(17) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `cloth_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`id`, `service_id`, `category_id`, `cloth_id`, `price`, `service_unit`, `short_code`, `service_name`, `cloth_name`) VALUES
(1, '1', 3, '2', '4', 'qty', 'WASH_IRON_BABY', '', 'Baby cloth'),
(2, '1', 2, '11', '5', 'qty', 'WASH_IRON_DISH', '', 'Dishdasha'),
(3, '1', 1, '12', '5', 'qty', 'WASH_IRON_DRESS', '', 'Dress (normal without design)'),
(4, '1', 1, '19', '3', 'qty', 'WASH_IRON_KURTA', '', 'Kamis / Kurta'),
(5, '1', 1, '23', '4', 'qty', 'WASH_IRON_PILLO', '', 'Pillowcase'),
(6, '1', 1, '24', '3', 'qty', 'WASH_IRON_PYJAM', '', 'Pyjama shirt'),
(7, '1', 1, '25', '3', 'qty', 'WASH_IRON_TROUS', '', 'Pyjama trousers'),
(8, '1', 1, '26', '3', 'qty', 'WASH_IRON_SALWA', '', 'Salwar'),
(9, '1', 1, '28', '3', 'qty', 'WASH_IRON_SCARF', '', 'Scarf / Shaila / Ghutra / Shawl'),
(10, '1', 1, '29', '3', 'qty', 'WASH_IRON_SHIRT', '', 'SHIRT/TOP'),
(11, '1', 1, '30', '3', 'qty', 'WASH_IRON_SHORT', '', 'Shorts'),
(12, '1', 1, '31', '3', 'qty', 'WASH_IRON_SKIRT', '', 'Skirt'),
(13, '1', 1, '44', '3', 'qty', 'WASH_IRON_NTROU', '', 'TROUSER'),
(14, '1', 1, '45', '3', 'qty', 'WASH_IRON_TSHIR', '', 'T-shirt'),
(15, '2', 1, '2', '2', 'qty', 'WASH_FOLD', '', 'Baby cloth'),
(16, '2', 1, '4', '6', 'qty', 'WASH_FOLD_ROBE', '', 'Bath robe / Robe'),
(17, '2', 1, '5', '4', 'qty', 'WASH_FOLD_BEDSH', '', 'Bedsheets /Bedspreed/Duvet Cover'),
(18, '2', 2, '6', '2', 'qty', 'WASH_FOLD_BLOUS', '', 'Blouse'),
(19, '2', 1, '9', '7.000', 'qty', 'WASH_FOLD_CUSIN', '', 'Cushion Cover Medium/Large'),
(20, '2', 1, '10', '3', 'qty', 'WASH_FOLD_CUSSM', '', 'Cushion Cover Small'),
(21, '2', 1, '11', '5', 'qty', 'WASH_FOLD_DISHD', '', 'Dishdasha'),
(22, '2', 1, '12', '3', 'qty', 'WASH_FOLD_DRESS', '', 'Dress (normal without design)'),
(23, '2', 1, '19', '2', 'qty', 'WASH_FOLD_KURTA', '', 'Kamis / Kurta'),
(24, '2', 1, '20', '1', 'qty', 'WASH_FOLD_NAPKI', '', 'Napkin'),
(25, '2', 1, '21', '3', 'qty', 'WASH_FOLD_OVRAL', '', 'Overall'),
(26, '2', 1, '23', '2', 'qty', 'WASH_FOLD_PILCS', '', 'Pillowcase'),
(27, '2', 1, '24', '2', 'qty', 'WASH_FOLD_PYSHR', '', 'Pyjama shirt'),
(28, '2', 1, '25', '2', 'qty', 'WASH_FOLD_PYTRO', '', 'Pyjama trousers'),
(29, '2', 1, '26', '2', 'qty', 'WASH_FOLD_SALWA', '', 'Salwar'),
(30, '2', 1, '28', '2', 'qty', 'WASH_FOLD_SCARF', '', 'Scarf / Shaila / Ghutra / Shawl'),
(31, '2', 1, '29', '2', 'qty', 'WASH_FOLD_SHIRT', '', 'SHIRT/TOP'),
(32, '2', 1, '30', '2', 'qty', 'WASH_FOLD_SHORT', '', 'Shorts'),
(33, '2', 2, '31', '2', 'qty', 'WASH_FOLD_SKIRT', '', 'Skirt'),
(34, '2', 1, '32', '1', 'qty', 'WASH_FOLD_SOCKP', '', 'Socks (pair)'),
(35, '2', 1, '33', '10', 'qty', 'WASH_FOLD_SOFAC', '', 'Sofa Cover (per seat)/ Sofa cushion cover'),
(36, '2', 1, '40', '5', 'qty', 'WASH_FOLD_TBCLO', '', 'Table Cloth'),
(37, '2', 1, '42', '3', 'qty', 'WASH_FOLD_TOWEL', '', 'Towel (bath)'),
(38, '2', 1, '44', '2', 'qty', 'WASH_FOLD_TROUS', '', 'TROUSER'),
(39, '2', 1, '45', '2', 'qty', 'WASH_FOLD_TSHIR', '', 'T-shirt'),
(40, '2', 1, '46', '1.000', 'qty', 'WASH_FOLD_UNDER', '', 'Underpants /Underwear/Undergarment'),
(41, '5', 1, '1', '10', 'qty', 'DC_PRESS_ABAYA', '', 'Abaya (normal without design)'),
(42, '5', 3, '2', '4', 'qty', 'DC_PRESS_BABYCL', '', 'Baby cloth'),
(43, '5', 1, '5', '7', 'qty', 'DC_PRESS_BEDSHT', '', 'Bedsheets /Bedspreed/Duvet Cover'),
(44, '5', 2, '6', '5', 'qty', 'DC_PRESS_BLOUSE', '', 'Blouse'),
(45, '5', 1, '7', '8', 'qty', 'DC_PRESS_COAT', '', 'Coat'),
(46, '5', 1, '8', '10', 'sqft', 'DC_PRESS_CURTAN', '', 'Curtain (per sqm)'),
(47, '5', 1, '9', '15', 'qty', 'DC_PRESS_CUSCLR', '', 'Cushion Cover Medium/Large'),
(48, '5', 1, '10', '6', 'qty', 'DC_PRESS_CUSCSM', '', 'Cushion Cover Small'),
(49, '5', 1, '11', '7', 'qty', 'DC_PRESS_DISHA', '', 'Dishdasha'),
(50, '5', 1, '12', '6', 'qty', 'DC_PRESS_DRESS', '', 'Dress (normal without design)'),
(51, '5', 2, '15', '30', 'qty', 'DC_PRESS_GWN_NR', '', 'Gown (normal without design)'),
(52, '5', 1, '16', '50', 'qty', 'DC_PRESS_GWN_DS', '', 'Gown (with design / beads/ stones)'),
(53, '5', 1, '17', '10', 'qty', 'DC_PRESS_JKT_NR', '', 'JACKET NORMAL'),
(54, '5', 1, '18', '15', 'qty', 'DC_PRESS_JKT_WN', '', 'Jacket Winter'),
(55, '5', 1, '19', '5', 'qty', 'DC_PRESS_KAMIS', '', 'Kamis / Kurta'),
(56, '5', 1, '20', '3', 'qty', 'DC_PRESS_NAPKIN', '', 'Napkin'),
(57, '5', 1, '21', '7', 'qty', 'DC_PRESS_OVERAL', '', 'Overall'),
(58, '5', 1, '22', '8', 'qty', 'DC_PRESS_PILLOW', '', 'Pillow'),
(59, '5', 1, '23', '4', 'qty', 'DC_PRESS_PILCAS', '', 'Pillowcase'),
(60, '5', 1, '24', '5', 'qty', 'DC_PRESS_PYSHIR', '', 'Pyjama shirt'),
(61, '5', 1, '25', '5', 'qty', 'DC_PRESS_PJTROU', '', 'Pyjama trousers'),
(62, '5', 1, '26', '5', 'qty', 'DC_PRESS_SALWAR', '', 'Salwar'),
(63, '5', 1, '27', '30', 'qty', 'DC_PRESS_SARSPL', '', 'Sari Special'),
(64, '5', 1, '28', '5', 'qty', 'DC_PRESS_SCARF', '', 'Scarf / Shaila / Ghutra / Shawl'),
(65, '5', 1, '29', '5', 'qty', 'DC_PRESS_SHIRT', '', 'SHIRT/TOP'),
(66, '5', 1, '30', '5', 'qty', 'DC_PRESS_SHORT', '', 'Shorts'),
(67, '5', 2, '31', '5', 'qty', 'DC_PRESS_SKIRT', '', 'Skirt'),
(68, '5', 1, '33', '18', 'qty', 'DC_PRESS_SF_CVR', '', 'Sofa Cover (per seat)/ Sofa cushion cover'),
(69, '5', 1, '34', '14', 'qty', 'DC_PRESS_SPL_AB', '', 'Special Abaya (with design / beads)'),
(70, '5', 1, '35', '15', 'qty', 'DC_PRESS_SPL_BL', '', 'Special Blouse/Trousers/Jacket'),
(71, '5', 1, '36', '14', 'qty', 'DC_PRESS_SPL_EV', '', 'Special Dress (Evening / with design)'),
(72, '5', 1, '37', '20', 'qty', 'DC_PRESS_SUIT2P', '', 'SUIT (2PCS)'),
(73, '5', 1, '38', '30', 'qty', 'DC_PRESS_SUIT3P', '', 'SUITS (3PCS)'),
(74, '5', 1, '39', '5', 'qty', 'DC_PRESS_SWEATE', '', 'Sweater'),
(75, '5', 1, '40', '10', 'qty', 'DC_PRESS_TBLCLH', '', 'Table Cloth'),
(76, '5', 1, '41', '2', 'qty', 'DC_PRESS_TIE', '', 'Tie'),
(77, '5', 1, '44', '5', 'qty', 'DC_PRESS_TROUSR', '', 'TROUSER'),
(78, '5', 1, '45', '5', 'qty', 'DC_PRESS_TSHIRT', '', 'T-shirt'),
(79, '5', 1, '47', '7', 'qty', 'DC_PRESS_WAISCT', '', 'Waist Coat'),
(80, '5', 1, '48', '300', 'qty', 'DC_PRESS_WEDDRS', '', 'Wedding Dress'),
(81, '3', 1, '1', '5', 'qty', 'DC_ABAYA', '', 'Abaya (normal without design)'),
(82, '3', 3, '2', '3', 'qty', 'DC_BABY_CLTH', '', 'Baby cloth'),
(83, '3', 1, '3', '6', 'qty', 'DC_BATH_MAT', '', 'Bath Mat/Bath Rug/Door Mat'),
(84, '3', 1, '5', '4', 'qty', 'DC_BEDSHEET', '', 'Bedsheets /Bedspreed/Duvet Cover'),
(85, '3', 2, '6', '3', 'qty', 'DC_BLOUSE', '', 'Blouse'),
(86, '3', 1, '7', '5', 'qty', 'DC_COAT', '', 'Coat'),
(87, '3', 1, '9', '10', 'qty', 'DC_CUSIN_LARGE', '', 'Cushion Cover Medium/Large'),
(88, '3', 1, '10', '3', 'qty', 'DC_CUSIN_SMALL', '', 'Cushion Cover Small'),
(89, '3', 1, '11', '5', 'qty', 'DC_DISHDASHA', '', 'Dishdasha'),
(90, '3', 1, '12', '5', 'qty', 'DC_DRESS_NRM', '', 'Dress (normal without design)'),
(91, '3', 1, '13', '15', 'qty', 'DC_BLANKT_SING', '', 'Duvet / Blanket / Quil / Comforter Single'),
(92, '3', 1, '0', '20', 'qty', 'DC_BLANKT_DOUB', '', 'Duvet / Blanket / Quil / Comforter Double'),
(93, '3', 2, '15', '20', 'qty', 'DC_GOWN_NORMAL', '', 'Gown (normal without design)'),
(94, '3', 2, '16', '25', 'qty', 'DC_GOWN_DESIGN', '', 'Gown (with design / beads/ stones)'),
(95, '3', 1, '17', '4', 'qty', 'DC_JACKET_NORML', '', 'JACKET NORMAL'),
(96, '3', 1, '18', '20', 'qty', 'DC_JACKET_WINTE', '', 'Jacket Winter'),
(97, '3', 1, '19', '3', 'qty', 'DC_KAMIS', '', 'Kamis / Kurta'),
(98, '3', 1, '20', '2', 'qty', 'DC_NAPKIN', '', 'Napkin'),
(99, '3', 1, '21', '4', 'qty', 'DC_OVERALL', '', 'Overall'),
(100, '3', 1, '23', '2', 'qty', 'DC_PILLOW_CASE', '', 'Pillowcase'),
(101, '3', 1, '24', '3', 'qty', 'DC_PYJAM_SHIRT', '', 'Pyjama shirt'),
(102, '3', 1, '25', '3', 'qty', 'DC_PYJAM_TROUS', '', 'Pyjama trousers'),
(103, '3', 1, '26', '3', 'qty', 'DC_SALWAR', '', 'Salwar'),
(104, '3', 1, '27', '15', 'qty', 'DC_SAREE_SPEAL', '', 'Sari Special'),
(105, '3', 1, '28', '3', 'qty', 'DC_SCARF', '', 'Scarf / Shaila / Ghutra / Shawl'),
(106, '3', 1, '29', '3', 'qty', 'DC_SHIRT', '', 'SHIRT/TOP'),
(107, '3', 1, '30', '3', 'qty', 'DC_SHORTS', '', 'Shorts'),
(108, '3', 2, '31', '3', 'qty', 'DC_SKIRT', '', 'Skirt'),
(109, '3', 1, '32', '2', 'qty', 'DC_SOCK_PAIR', '', 'Socks (pair)'),
(110, '3', 1, '33', '10', 'qty', 'DC_SOFA_CUSIN_C', '', 'Sofa Cover (per seat)/ Sofa cushion cover'),
(111, '3', 1, '34', '7', 'qty', 'DC_SPEIAL_ABY', '', 'Special Abaya (with design / beads)'),
(112, '3', 1, '35', '10', 'qty', 'DC_SPECIL_BLOUS', '', 'Special Blouse/Trousers/Jacket'),
(113, '3', 1, '36', '7', 'qty', 'DC_SPECIAL_DRES', '', 'Special Dress (Evening / with design)'),
(114, '3', 1, '39', '3', 'qty', 'DC_SEWATER', '', 'Sweater'),
(115, '3', 1, '40', '8', 'qty', 'DC_TABLE_CLOTH', '', 'Table Cloth'),
(116, '3', 1, '41', '1', 'qty', 'DC_TIE', '', 'Tie'),
(117, '3', 1, '42', '5', 'qty', 'DC_TOWEL', '', 'Towel (bath)'),
(118, '3', 1, '44', '3', 'qty', 'DC_TROUSER', '', 'TROUSER'),
(119, '3', 1, '45', '3', 'qty', 'DC_TSHIRT', '', 'T-shirt'),
(120, '3', 1, '46', '2', 'qty', 'DC_UNDER', '', 'Underpants /Underwear/Undergarment'),
(121, '3', 1, '47', '4', 'qty', 'DC_WAIST_COAT', '', 'Waist Coat'),
(122, '3', 1, '49', '10', 'sqft', 'DC_CARPERT', '', 'Carpet (per sqm)'),
(123, '4', 1, '1', '5', 'qty', 'STM_PRESS_ABAYA', '', 'Abaya (normal without design)'),
(124, '4', 3, '2', '2', 'qty', 'STM_PRESS_BABYC', '', 'Baby cloth'),
(125, '4', 1, '5', '4', 'qty', 'STM_PRESS_BEDSH', '', 'Bedsheets /Bedspreed/Duvet Cover'),
(126, '4', 2, '6', '2', 'qty', 'STM_PRESS_BLOSE', '', 'Blouse'),
(127, '4', 1, '7', '4', 'qty', 'STM_PRESS_COAT', '', 'Coat'),
(128, '4', 1, '9', '10', 'qty', 'STM_PRESS_CUSLR', '', 'Cushion Cover Medium/Large'),
(129, '4', 1, '10', '3', 'qty', 'STM_PRESS_CUSSM', '', 'Cushion Cover Small'),
(130, '4', 1, '11', '4', 'qty', 'STM_PRESS_DISHD', '', 'Dishdasha'),
(131, '4', 1, '12', '4', 'qty', 'STM_PRESS_DRSNR', '', 'Dress (normal without design)'),
(132, '4', 2, '15', '15', 'qty', 'STM_PRESS_GWNRM', '', 'Gown (normal without design)'),
(133, '4', 2, '16', '25', 'qty', 'STM_PRESS_GWNDS', '', 'Gown (with design / beads/ stones)'),
(134, '4', 1, '17', '4', 'qty', 'STM_PRESS_JKTNR', '', 'JACKET NORMAL'),
(135, '4', 1, '18', '10', 'qty', 'STM_PRESS_JKTWN', '', 'Jacket Winter'),
(136, '4', 1, '19', '2', 'qty', 'STM_PRESS_KURT', '', 'Kamis / Kurta'),
(137, '4', 1, '20', '1', 'qty', 'STM_PRESS_NAPKN', '', 'Napkin'),
(138, '4', 1, '21', '4', 'qty', 'STM_PRESS_OVERL', '', 'Overall'),
(139, '4', 1, '23', '2', 'qty', 'STM_PRESS_PILCS', '', 'Pillowcase'),
(140, '4', 1, '24', '2', 'qty', 'STM_PRESS_PYJSH', '', 'Pyjama shirt'),
(141, '4', 1, '25', '2', 'qty', 'STM_PRESS_PJTRU', '', 'Pyjama trousers'),
(142, '4', 1, '26', '2', 'qty', 'STM_PRESS_SALWR', '', 'Salwar'),
(143, '4', 1, '27', '15', 'qty', 'STM_PRESS_SRSPL', '', 'Sari Special'),
(144, '4', 1, '28', '2', 'qty', 'STM_PRESS_SCARF', '', 'Scarf / Shaila / Ghutra / Shawl'),
(145, '4', 1, '29', '2', 'qty', 'STM_PRESS_SHIRT', '', 'SHIRT/TOP'),
(146, '4', 1, '30', '2', 'qty', 'STM_PRESS_SHORT', '', 'Shorts'),
(147, '4', 1, '31', '2', 'qty', 'STM_PRESS_SKRT', '', 'Skirt'),
(148, '4', 1, '34', '7', 'qty', 'STM_PRESS_SPABH', '', 'Special Abaya (with design / beads)'),
(149, '4', 1, '35', '5', 'qty', 'STM_PRESS_SPLBL', '', 'Special Blouse/Trousers/Jacket'),
(150, '4', 1, '36', '7', 'qty', 'STM_PRESS_SPLDR', '', 'Special Dress (Evening / with design)'),
(151, '4', 1, '39', '2', 'qty', 'STM_PRESS_SWTER', '', 'Sweater'),
(152, '4', 1, '40', '5', 'qty', 'STM_PRESS_TBLCL', '', 'Table Cloth'),
(153, '4', 1, '41', '1', 'qty', 'STM_PRESS_TIE', '', 'Tie'),
(154, '4', 1, '44', '2', 'qty', 'STM_PRESS_TROUS', '', 'TROUSER'),
(155, '4', 1, '45', '2', 'qty', 'STM_PRESS_TSHIR', '', 'T-shirt'),
(156, '4', 1, '47', '3', 'qty', 'STM_PRESS_WCOAT', '', 'Waist Coat'),
(157, '3', 1, '51', '0', 'qty', 'DC_COSTUME', '', 'COSTUME'),
(158, '2', 1, '42', '5', 'qty', 'WASH_FOLD_TBATH', '', 'Towel (bath)'),
(159, '2', 1, '53', '2', 'qty', 'WASH_FOLD_TFACE', '', 'Towel (face)'),
(160, '2', 1, '52', '3', 'qty', 'WASH_FOLD_THAND', '', 'Towel (Hand)'),
(161, '5', 1, '55', '8', 'qty', 'DRC_PR_FROKS', '', 'FROKS'),
(162, '3', 1, '54', '2', 'qty', 'DRC_CAP', '', 'cap'),
(163, '3', 1, '56', '40', 'kg', 'DC_SHOES', '', 'SHOES (PAIR)'),
(164, '7', 7, '6', '340.89', 'qty', 'CUS', '', 'Blouse'),
(165, '3', 1, '45', '3.75', 'qty', 'SHIRT', '', 'T-shirt');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_name_lang` varchar(200) NOT NULL,
  `service_unit` varchar(10) NOT NULL,
  `service_code` varchar(200) NOT NULL,
  `show_hide` varchar(15) NOT NULL,
  `priority` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_name_lang`, `service_unit`, `service_code`, `show_hide`, `priority`) VALUES
(1, 'WASH AND IRON', '', '', '', 'show', 1),
(2, 'WASH AND FOLD', '', '', '', 'show', 2),
(3, 'DRY CLEANING', '', '', '', 'show', 4),
(5, 'DRY CLEAN AND PRESS', '', '', '', 'show', 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(150) NOT NULL,
  `shop_add` text NOT NULL,
  `shop_add1` varchar(100) NOT NULL,
  `shop_add2` varchar(100) NOT NULL,
  `shop_city` varchar(50) NOT NULL,
  `shop_state` varchar(100) NOT NULL,
  `shop_zip` varchar(10) NOT NULL,
  `shop_gmap` text NOT NULL,
  `shop_phone` varchar(15) NOT NULL,
  `shop_mobile` varchar(15) NOT NULL,
  `shop_email` varchar(75) NOT NULL,
  `shop_logo` text NOT NULL,
  `sys_lang` varchar(50) NOT NULL,
  `sys_currency` varchar(50) NOT NULL,
  `sys_currency_show` varchar(50) NOT NULL,
  `sys_timezone` varchar(100) NOT NULL,
  `terms` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `shop_name`, `shop_add`, `shop_add1`, `shop_add2`, `shop_city`, `shop_state`, `shop_zip`, `shop_gmap`, `shop_phone`, `shop_mobile`, `shop_email`, `shop_logo`, `sys_lang`, `sys_currency`, `sys_currency_show`, `sys_timezone`, `terms`) VALUES
(1, 'Red Planet Laundry', 'B-02, Sai Sanklap Chs', 'Sai Sanklap Complex, ', 'S.No. 145', 'Panvel', 'Maharashtra', '410206', '18.980262563943064, 73.13549588863502', '+918767228990', '+918767228990', 'panvel@store.com', '', 'english', 'India', 'code', 'Asia/Kolkata', 'Terms and Conditions\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `shop_session`
--

CREATE TABLE `shop_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('033d7365430b359bfcdf4b8ae769ded30d17a07f', '72.255.51.9', 1697519618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373531393631383b),
('0449b700fd805e7760cdac9658e5e6d8d7d17dba', '66.249.93.199', 1697969051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035313b),
('055ee8b58a21d6ef41804a4d6e2888c18823c551', '66.249.93.200', 1697969055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035353b7765626d656e757c733a343a22686f6d65223b),
('05f311bd0b4d781e11d93b8fe0bfe23dfafab241', '193.47.189.3', 1699347666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393334373538363b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a31303a2267726f75707573657273223b7375626d656e757c733a363a2267726f757073223b5365727669636549647c733a313a2233223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('06c9353a91564be4235f4f79907d43aeb1288933', '74.125.208.128', 1697927534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373533343b7765626d656e757c733a343a22686f6d65223b),
('0a33fe40bfda2ec4f8e3793118e5c50f4bf3b104', '66.249.93.200', 1697928029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383032393b),
('0abe7ad2c664dbc3ddfd2af4f9ec3c8e43581ce8', '66.249.93.206', 1697927833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373833333b),
('0d73e3f79067df2104140b626207b17e98170fdf', '102.23.89.73', 1697971418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313431383b7765626d656e757c733a343a22686f6d65223b),
('0ecc86f1b268bbcb9d8a3d4e1d0404f359f2550f', '66.249.93.195', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('12a4ff80091ef7b933c7b65a6eaa8970cd09b6db', '130.193.203.109', 1697827013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373832373031333b),
('12b9b8c937992d0c1d3e72e7e44911b09e08786d', '14.142.99.214', 1698903450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383930333435303b),
('153ec09c8230c84d06f905d029a94ec03624b352', '66.249.93.195', 1697969007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030373b),
('156243ab76a5fd2c9ab81da4655146370e15da77', '66.102.9.78', 1697928965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383936353b),
('163dfa27addbd71b3900b400d0384d92f4cdd0f0', '66.249.93.192', 1697928717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383731373b),
('171ecd81668bacd6cdc78963a2051080b4dad541', '89.147.153.81', 1698315393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383331353339333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a383a22656d706c6f796565223b70617274796e616d657c4e3b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('1b2f4ace35761066d091d6bda4ef3e8546f36114', '66.249.83.71', 1697969446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393434363b7765626d656e757c733a343a22686f6d65223b),
('1c4b16555a9bfabc8edbc0af89c3c30ee011adc9', '66.249.93.193', 1697969453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393435333b7765626d656e757c733a363a22707269636573223b),
('1ce4e0d831ee19c7a1bf088fd6f8d9e51eafffe6', '41.90.184.230', 1697621454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373632313139353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b6f726465725f646174657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b5365727669636549647c733a313a2230223b47726f757049647c733a313a2233223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b),
('1f58c0e20052885ee53121974006e07310a39feb', '2603:7080:9740:c8:34bf:bc86:5d:d6f5', 1699326965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393332363734313b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2241646d696e223b6c6f67696e5f757365727c733a353a2241646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274796e616d657c4e3b736974655f6c616e677c733a373a22656e676c697368223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b70617274795f6e616d657c733a303a22223b),
('20a08e3b0559d7f4049deab72bd7b633c5114bba', '66.249.93.200', 1697928965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383936353b),
('246f9cf45c4bbf1b420dc30141d6796708002d20', '66.249.93.201', 1697969052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035323b),
('25b11206343240520543be168f199c028cd18430', '74.125.208.135', 1697927458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373435383b7765626d656e757c733a343a22686f6d65223b),
('27212c3879bd1995fb2c1b2e1bc68f3a29d86bae', '14.142.99.214', 1697706707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373730363730313b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('27840aff12b581f3cfd54d6344c04a591b56daeb', '72.255.51.9', 1697519825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373531393832353b),
('27c7b230817e2840fb3717ecc60bb9eda50e124f', '41.90.187.159', 1698657386, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383635373338343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b),
('2b0e0eec3a938462ee7ab392de2c454d6074cb91', '66.249.93.201', 1697927800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373830303b),
('2db4abbd60686d73e39afe33f6b1edef3be9ab8e', '111.125.219.61', 1697435132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373433343937333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b),
('2f9d7345197484b79bce7ac5deb052b77048f608', '41.89.31.31', 1698745968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734353836343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b7375626d656e757c733a303a22223b6f726465725f646174657c733a303a22223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a343a2273756974223b5365727669636549647c733a313a2230223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b),
('307f68f5a47cc7c8d82b1708c7ca5518d9195469', '66.249.93.200', 1697969055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035353b),
('316de1bf7824bd76ec94b8fdd248a0f1ca58b3e3', '102.23.89.73', 1697965474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936353437343b7765626d656e757c733a363a22707269636573223b),
('32353486aaf7013cff44bc7c02a4055469455c57', '14.142.99.214', 1699506527, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393530363532373b),
('332ed675022b8967ed5291214e8c7cf37f78f72b', '41.90.181.166', 1697708792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373730383530383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b6f726465725f646174657c733a303a22223b5365617263685f4974656d7c733a343a2273756974223b70617274795f6e616d657c733a303a22223b),
('3406a12a1357b5d0c2aad33a4af4ccc0202f074d', '102.23.89.73', 1697964784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936343738343b),
('34cd37472458ccd17ea1f01c3cc4a4989a8e57c1', '89.147.153.81', 1698922052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383932313930373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b70617274796e616d657c4e3b5365727669636549647c733a313a2233223b70617274795f6e616d657c733a303a22223b),
('35b2d9045fe2cc069f6d4562546a2f1b710503cb', '89.147.153.81', 1698315393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383331353339333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a393a22637573746f6d657273223b70617274796e616d657c4e3b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('37e5fbf366b6e1f5a287e2723da42298407e0da3', '66.249.93.195', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('38e2add99a3f280c0600854da3a2b54516f7c1a8', '41.90.184.230', 1697612867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631323836373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b5365727669636549647c733a313a2233223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b),
('393c65c3aeaa4cc08f25547ea588e4e7a9c81805', '66.249.93.200', 1697969055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035353b),
('3c3c52656de34336dbfe505da0954880cd625bae', '41.89.31.31', 1698743131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734333133313b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a227061636b6167656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b),
('3e1780e2b090a3022961980f4208a455e8b3d9cd', '66.102.9.65', 1697927637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373633363b7765626d656e757c733a363a22707269636573223b),
('3e858ae61151ae593c96a87bd9afb24ebcfb0c49', '66.249.93.193', 1697969182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393138323b),
('3ef325864b37c024042e5462c9a766105e3285c5', '118.96.21.165', 1698068993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383036383939333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('3f0a60bd5e9d847076d806c72d1d819601c47223', '14.142.99.214', 1698993677, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383939333637373b),
('3f1c717a6ad9c107d1d403bc625eb9ea49c93041', '41.89.31.31', 1698743552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734333535323b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b5365727669636549647c733a313a2233223b5365617263685f4974656d7c733a353a227375697465223b73686f7070696e675f636172747c613a313a7b693a303b613a31333a7b733a323a226964223b733a323a223935223b733a31303a2270726f647563745f6964223b733a323a223935223b733a343a226e616d65223b733a31353a2244435f4a41434b45545f4e4f524d4c223b733a353a227072696365223b733a313a2234223b733a383a227175616e74697479223b733a313a2231223b733a343a227061636b223b733a303a22223b733a363a22737461726368223b733a303a22223b733a363a22646566656374223b733a303a22223b733a353a22636f6c6f72223b733a303a22223b733a353a226272616e64223b733a303a22223b733a343a22756e6974223b733a333a22517479223b733a363a226b676974656d223b733a323a224e3b223b733a353a226b67717479223b733a323a224e3b223b7d7d),
('42a6df1a1c43a1085da77b9826d3ff244c9c00fa', '2603:7080:9740:c8:34bf:bc86:5d:d6f5', 1699326741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393332363734313b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2241646d696e223b6c6f67696e5f757365727c733a353a2241646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b5365727669636549647c733a313a2233223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b),
('43cca3835b6719d3c8d021c7e988e132b0dec4cf', '89.147.153.81', 1698921907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383932313930373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b6f726465725f646174657c733a303a22223b70617274796e616d657c4e3b5365727669636549647c733a313a2233223b70617274795f6e616d657c733a303a22223b),
('44eb7e3a6298615b50e3d9d29437cf65a4264f68', '130.193.203.109', 1697822878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373832323734343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a31303a2267726f75707573657273223b7375626d656e757c733a31303a227065726d697373696f6e223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b47726f757049647c733a313a2232223b47726f75705065726d7c733a343a2276696577223b),
('45cf124290f05c931876e23883aa6f1e4a5a88f4', '66.249.93.194', 1697969052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035323b),
('489dc0b5803f145ed85906d60cc54ad9437af75f', '105.245.12.111', 1698306400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383330363330333b7765626d656e757c733a343a22686f6d65223b),
('4a93e79b25ce030c12c62b9eac022471de0711d9', '14.142.99.214', 1698311951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383331313935313b),
('4bdd5f36178d1751f29059ee44cb52df4e75f4b2', '66.249.93.193', 1697969077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393037373b7765626d656e757c733a343a22686f6d65223b),
('4c40fe7847a94db21d041dc42f14d85b0a1f33ff', '102.23.89.73', 1697961699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936313639393b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('4f56fc57c488ec6312cac09801a8720062945cef', '41.89.31.31', 1698742757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734323735373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('50b2a86d7a94b83e41b75fe5809b7968f179a8cc', '102.23.89.73', 1697969116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393131363b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('50b3f47dba4f88b426ceb87ab3f96dbdacad7fd0', '118.96.21.165', 1698068993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383036383939333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b),
('514977058a9c6b27a6a5450fc17ff02e7fcb0de1', '102.23.89.73', 1697962789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936323738393b7765626d656e757c733a343a22686f6d65223b),
('53340c61eeb7dc85e659644994f42deb052096ae', '197.248.20.58', 1697201297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373230313239363b7765626d656e757c733a343a22686f6d65223b),
('5391d4265b90ba93179c809c98a5e57bc64efbbd', '66.249.93.200', 1697969453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393435333b7765626d656e757c733a363a22707269636573223b),
('55026dd4e55a36dc7c4669b522c045c5a4fc978d', '66.249.93.194', 1697927636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373633363b7765626d656e757c733a363a22707269636573223b),
('56635180b0ff63a955b9527c05b14d24ebcca029', '14.142.99.214', 1698910296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383931303236343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b7375626d656e757c733a303a22223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('5695ab16695727782b97cca37699232710a6b0aa', '43.249.232.57', 1698828293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383832383137323b7765626d656e757c733a363a22707269636573223b),
('56c1b23d76822eb29c473a9a380f559d3402d0c5', '2001:e68:5473:351f:b5d3:1d95:aa5e:46de', 1699291319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393239313236373b7765626d656e757c733a343a22686f6d65223b),
('575ca9de83d1b1644520b71e083b269a1e3398a8', '66.102.9.64', 1697927425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432353b7765626d656e757c733a343a22686f6d65223b),
('57d8fbac1bb7460cba527ea984453ff444a0b15e', '111.125.219.61', 1697706449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373730363434393b),
('5804f461cba2e15727b8e82b3eadb62a5bc15b7a', '111.125.219.61', 1697706478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373730363437383b),
('581cc50e19d4cb3ea7eff6dfa1f42aba061a200e', '41.90.184.230', 1697620422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373632303432323b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a383a227365727669636573223b6f726465725f646174657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b5365727669636549647c733a313a2230223b47726f757049647c733a313a2233223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a303a22223b70617274795f6e616d657c733a303a22223b),
('59b88033e0137028328e224a621432230548a1ee', '67.219.201.132', 1698439517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383433393531373b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b),
('5c2acd2bde7ecf9b4b473e46e85feef8b97e2b70', '202.65.79.114', 1698036483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383033363433333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b7375626d656e757c733a303a22223b),
('5f2508eecbccf4ee53b917992d388a9ed47cad1b', '66.102.9.64', 1697927425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432353b7765626d656e757c733a343a22686f6d65223b),
('5f5777189aa1d6b04d936d99e0e44435d877977d', '14.142.99.214', 1698910247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383931303234373b),
('638e1610a4dc07aaea3ce44fe4a971317bcc0d4b', '66.102.9.64', 1697927424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432343b7765626d656e757c733a343a22686f6d65223b),
('66b35a74923cfe56aef6b892ed369865245feca2', '41.90.184.230', 1697617463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631373436333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a373a2262616e6e657273223b7375626d656e757c733a31313a2262616e6e65725f6c697374223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b),
('695e65ff065b2cc969aefa20ee40decc4da8a122', '66.249.93.200', 1697969452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393435323b7765626d656e757c733a363a22707269636573223b),
('6994c71f1f191c9bb7402e7c5dcaca8d024abff6', '154.72.171.131', 1698439797, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383433393739373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b5570646174654f726465727c733a393a226164645f6f72646572223b),
('6a748922f815ff714f3f56bd76134d29d6bb2aef', '102.23.89.73', 1697969307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393330373b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('6c90d0d49468ddabfe09f600614e70fcd9ca897d', '102.23.89.73', 1697928303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383330333b7765626d656e757c733a343a22686f6d65223b),
('6dd33d0830315782a74c6e831d710c3e46e21949', '102.23.89.73', 1697964784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936343738343b),
('6fbeb6add458fed5e958e8e922729a483e25cf05', '66.249.93.201', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('74010f2b35dbec83a8052648c9db88e0c3b90d37', '14.142.99.214', 1699256978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393235363936303b),
('7426449c01e194b56a4437d0b86e349a97ab6d64', '66.249.93.195', 1697928834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383833343b7765626d656e757c733a343a22686f6d65223b),
('7485bae08e5c410f03c7665ed4f57aebd4d10673', '111.125.219.61', 1697434973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373433343937333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b),
('7bae17ca8b911cc8acee3af39ed4446aa5288007', '102.23.89.73', 1697966131, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936363133303b7765626d656e757c733a343a22686f6d65223b),
('7befb7d000e1d261755a3b9f9d4e3c26afe2df30', '2409:4050:d91:1950:5506:5e69:e616:fe75', 1697180003, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373138303030333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('7c7e710a0b577976a660660f8103227ea7195bee', '154.72.168.68', 1698440918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383434303931383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a31303a22323032332d31302d3237223b70617274796e616d657c4e3b5365617263685f4974656d7c733a323a227472223b70617274795f6e616d657c733a323a223230223b5365727669636549647c733a313a2231223b73686f7070696e675f636172747c613a313a7b693a303b613a31333a7b733a323a226964223b733a313a2237223b733a31303a2270726f647563745f6964223b733a313a2237223b733a343a226e616d65223b733a31353a22574153485f49524f4e5f54524f5553223b733a353a227072696365223b733a313a2233223b733a383a227175616e74697479223b733a313a2231223b733a343a227061636b223b733a303a22223b733a363a22737461726368223b733a303a22223b733a363a22646566656374223b733a303a22223b733a353a22636f6c6f72223b733a303a22223b733a353a226272616e64223b733a303a22223b733a343a22756e6974223b733a333a22517479223b733a363a226b676974656d223b733a323a224e3b223b733a353a226b67717479223b733a323a224e3b223b7d7d),
('7cc71a035174f4772b23c741cb48c454a14086ae', '72.255.51.9', 1697519893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373531393839333b),
('7f5bfc128dad19cf820d3cc330925b04020f1c86', '89.147.153.81', 1699438250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393433383233373b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('8005eda264b61ac1ce6f36c4b9243f5434e3b42d', '66.249.93.207', 1697927424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432343b7765626d656e757c733a343a22686f6d65223b),
('83501550c4397c885ce2e7b5cf9c01cc0e994ff9', '89.147.153.81', 1699438237, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393433383233373b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('89ca41cf16e2913db4bda98124aeba0482609d9b', '103.167.122.223', 1697815057, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373831353033383b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('8b6421079483ad020da9d44cc1ccb999a9b72f67', '66.249.93.195', 1697969445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393434353b7765626d656e757c733a343a22686f6d65223b),
('8b9b1262e85e18636197a5447a8d3124dde49842', '102.23.89.73', 1697929969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932393936393b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('8c72390bcc146cb0c0578e4aaaa0882c33c859a5', '66.249.93.193', 1697969183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393138333b7765626d656e757c733a343a22686f6d65223b),
('8e4f292f900f7093c79f8f02eed71c59cffe74ea', '102.23.89.73', 1697968658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936383635383b7765626d656e757c733a343a22686f6d65223b),
('8edaea6073f686c320518c0500af17ae85b791ca', '41.90.184.230', 1697618118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631383131383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2273746f7265223b6c6f67696e5f757365727c733a31313a2244656c68692053746f7265223b6d656e757c733a373a2262616e6e657273223b7375626d656e757c733a31313a2262616e6e65725f6c697374223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b736974655f6c616e677c733a373a22656e676c697368223b73746f72655f69647c733a313a2232223b),
('8f65a012e821da5b288c07afba25c15671b53485', '41.90.184.230', 1697618435, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631383433353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2273746f7265223b6c6f67696e5f757365727c733a31323a2250616e76656c2053746f7265223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a22657870656e736573223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b736974655f6c616e677c733a373a22656e676c697368223b73746f72655f69647c733a313a2231223b),
('904963ebb0fd1e167024ac22e6fa80357098e4de', '66.249.93.206', 1697927506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373530363b7765626d656e757c733a343a22686f6d65223b),
('9290bec3648278ceead8de87173945196dbb2b91', '41.90.184.230', 1697619115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631393131353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a31303a22323032332d31302d3138223b70617274795f6e616d657c733a323a223230223b5365727669636549647c733a313a2231223b),
('92a9f7199199de9c925cb24dc220519187c6b60c', '66.249.93.194', 1697927424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432343b7765626d656e757c733a343a22686f6d65223b),
('9450626e01f41d8a1552344ceccad79212e56dc9', '130.193.203.109', 1697826953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373832363935333b),
('9459e667110d392f7e3abdf9a2ec5a5e3097a0a7', '66.102.9.78', 1697928965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383936353b),
('9480efa13e8104abcc7dcc4be4d08d30bba1f3c6', '130.193.203.109', 1697827073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373832373037333b),
('96b8285a7fed93de2b9581a724bc3600d1c99ccd', '66.249.83.69', 1697969446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393434363b7765626d656e757c733a343a22686f6d65223b),
('98aaabd25ac62c98dbd9c5d8c9117a0292034c8d', '66.249.93.206', 1697928717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383731373b7765626d656e757c733a343a22686f6d65223b),
('991034d840421d64cd1f2d47205aa3105f6fdefb', '14.142.99.214', 1698401852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383430313835323b),
('9a5eb699acdbb05a7d115c63e571641d6ef9ae0b', '66.249.93.193', 1697969052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035323b7765626d656e757c733a343a22686f6d65223b),
('9b4f8f062e3d090695546d681bb4197b35d92881', '103.167.122.213', 1699028492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393032383339333b),
('9c8ce2ca29eaeb71335e785f9b42f927e5e51b6c', '102.23.89.73', 1697930407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373933303430373b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('9d34d0e4a92597c633c397f24b4e17582771fb8b', '66.249.93.195', 1697927534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373533343b7765626d656e757c733a343a22686f6d65223b),
('9d45e174841312d2c0d365bcbb52c39dbd924497', '41.89.31.31', 1698745463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734353436333b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b7375626d656e757c733a303a22223b6f726465725f646174657c733a31303a22323032332d31302d3331223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a343a2273756974223b5365727669636549647c733a313a2230223b70617274796e616d657c4e3b),
('9db6cd7c4aec901907c8c9a1bd28e2e81755df3d', '103.115.124.108', 1697180379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373138303337393b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a383a22656d706c6f796565223b6f726465725f646174657c733a303a22223b5365727669636549647c733a313a2233223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b),
('9eebbad25a8c91fa50aafe020919291fa7af6d63', '66.249.93.197', 1697969309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393330393b7765626d656e757c733a343a22686f6d65223b),
('9f023826c01bb5ccd9d5dca43fe41878a56e848d', '2603:7080:9740:c8:34bf:bc86:5d:d6f5', 1699326411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393332363431313b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2241646d696e223b6c6f67696e5f757365727c733a353a2241646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('9f36dd68d9ac0f3c48be5ecd53ae99016c5c2f9d', '103.167.122.212', 1698765848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383736353834383b),
('a27cd43cd7bcb90d3254d432b5611f256da29958', '102.23.89.73', 1697961350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936313335303b7765626d656e757c733a343a22686f6d65223b),
('a289d377016db86886dd998ddf2b1dfc44e46a63', '41.90.184.230', 1697617790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631373739303b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b),
('a2d0b6777e10d20cddd5c84dacc8cb384bca19cb', '66.249.93.197', 1697969308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393330383b),
('a3219e298f963d5a4e083cc37014713414604d04', '41.90.184.230', 1697619421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631393432313b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a2273746f726573223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b5365727669636549647c733a313a2231223b),
('a36fda6ef49f48f356457b1964e123fc85f2bedf', '89.147.153.81', 1699017218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393031373231383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b),
('a57bb385be0175bd7345d3fce7f7d7bae95cec0b', '41.210.141.67', 1698053592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383035333531323b7765626d656e757c733a343a22686f6d65223b),
('a848d1447d53d58fbffe7ac2bd7b6d5d2122501c', '66.249.93.194', 1697969398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393339383b),
('aa45764b8c40277e50eac6c760e500bcfe45bfdf', '103.167.122.212', 1698765940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383736353839393b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b),
('ab5cec404d3875aaca48a7a2744c08bc9bf3feb7', '66.249.93.193', 1697969077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393037373b),
('ad4d6eadf87c9409b277361441c74704e6adbcd0', '66.249.93.193', 1697969398, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393339383b7765626d656e757c733a343a22686f6d65223b),
('aea180865cb5ad0462514b17385629673c75e94d', '111.125.219.52', 1698034630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383033343531313b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('af5b06ed3f5937d7a3c006f4316a02fbac7d54b1', '98.113.199.47', 1698431166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383433313037363b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a373a226761726d656e74223b7375626d656e757c733a383a226761725f74797065223b),
('b251b57ce56b7d9b9e38e8a3ad31005f86408b02', '66.249.93.195', 1697969077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393037373b),
('b43ea900ca0abdf18e2d74a988d060b799ae6d61', '66.249.93.201', 1697927458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373435383b7765626d656e757c733a343a22686f6d65223b),
('b5b9a64679d83853f0b5d2213cf665abba7368b0', '154.72.171.131', 1698440186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383434303138363b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a31323a22657870656e73657374797065223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('b99cf108603a36965cbea402944c34cbcddc4d8d', '41.90.184.230', 1697619729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631393732393b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a383a22656d706c6f796565223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b5365727669636549647c733a313a2230223b),
('bc41813e798f85ff4ae6c208d2f2d09825ae49b3', '111.125.219.61', 1697521458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373532313435383b),
('bd68b6adb04c655bea8f32c2c93c812d6b0e1c78', '102.23.89.73', 1697971418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937313431383b7765626d656e757c733a343a22686f6d65223b),
('c0934b82fab1e53c0ca6195e8894f122b684e2fa', '66.249.93.192', 1697927506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373530363b),
('c57506864a3c2b1a9276213c86397e82667c4962', '41.90.187.159', 1698830209, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383833303133353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a22657870656e736573223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('c5b2672be0a154abb5275450e7bc75afc7406f26', '89.39.106.228', 1698906947, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383930363931373b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a2264617368626f617264223b7375626d656e757c733a303a22223b),
('c5d2a9a13d035acfcabbbae8b3db3e64a26f951c', '89.147.153.81', 1699017254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393031373231383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b736974655f6c616e677c733a373a22656e676c697368223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('c5e878f1eeab5d52aeb6e1fd7dc1816da4a228bd', '154.72.168.68', 1698440918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383434303931383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a31303a22323032332d31302d3237223b70617274796e616d657c4e3b5365617263685f4974656d7c733a323a227472223b70617274795f6e616d657c733a323a223230223b5365727669636549647c733a313a2231223b73686f7070696e675f636172747c613a313a7b693a303b613a31333a7b733a323a226964223b733a313a2237223b733a31303a2270726f647563745f6964223b733a313a2237223b733a343a226e616d65223b733a31353a22574153485f49524f4e5f54524f5553223b733a353a227072696365223b733a313a2233223b733a383a227175616e74697479223b733a313a2231223b733a343a227061636b223b733a303a22223b733a363a22737461726368223b733a303a22223b733a363a22646566656374223b733a303a22223b733a353a22636f6c6f72223b733a303a22223b733a353a226272616e64223b733a303a22223b733a343a22756e6974223b733a333a22517479223b733a363a226b676974656d223b733a323a224e3b223b733a353a226b67717479223b733a323a224e3b223b7d7d),
('c76179319ec6cb3be8be93ff111d39dc27a2fe52', '102.23.89.73', 1697970219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373937303231393b7765626d656e757c733a343a22686f6d65223b),
('c8d4ab91437e87e5cc9ac46ee78cb334723cc194', '172.232.13.51', 1699180437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393138303433373b),
('c9492ef6577ffbdc55031433cebb2aa1f57d49fd', '66.249.93.195', 1697969182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393138323b),
('c9659ef8ee3a8bc708542a373f211ee2d9e32ba3', '197.210.71.71', 1698086989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383038363938383b666c75747465724c6f67676564557365727c733a31333a2232333438303337303032333835223b6d757365725f6c6f67696e7c693a313b6d6f62696c655f65786973747c733a31333a2232333438303337303032333835223b637573745f69647c733a313a2238223b736974655f6c616e677c733a373a22656e676c697368223b73686f7070696e675f636172747c733a303a22223b73656c65637465645f7069636b75707c733a303a22223b73656c65637465645f7069636b75705f73686f777c733a303a22223b7069636b75705f646174657c733a303a22223b7069636b75705f74696d657c733a303a22223b64656c69766572795f646174657c733a303a22223b64656c69766572795f74696d657c733a303a22223b70726f6d6f5f69647c733a303a22223b6469736368617267655f74656d707c733a303a22223b636f75706f6e5f616d747c733a303a22223b6d656e757c733a343a22686f6d65223b),
('ca7b7507201f458e74af5cedd7a51902b80f50c7', '102.23.89.73', 1697969465, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393330373b7765626d656e757c733a363a22707269636573223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('cf126c15c2973357ccbc6a7074d1cbafd61569c2', '111.125.219.61', 1697688461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373638383436303b),
('cfb732ca92dc0d9e425a54263682427f167806f8', '41.89.31.31', 1698744945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734343934353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b6f726465725f646174657c733a31303a22323032332d31302d3331223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a343a2273756974223b5365727669636549647c733a313a2230223b70617274796e616d657c4e3b),
('d0c0b838ea75d3f3bdf7e21fd945c02e72dba85f', '66.249.93.200', 1697969052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035323b7765626d656e757c733a343a22686f6d65223b),
('d0e2c6ccae7d1a6d0e84f6d8688ddfbb4a411878', '74.125.208.142', 1697927458, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373435383b7765626d656e757c733a343a22686f6d65223b),
('d19a27d46693f7bc91db2b836bbb6a7c318dd4bc', '41.90.181.166', 1697708508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373730383530383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a31323a22657870656e73657374797065223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('d226d0b85bd0e2c81fb23db805547e1b5cde2b9c', '89.147.153.81', 1698413830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383431333731363b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a393a2270726963656c697374223b5365727669636549647c733a313a2232223b),
('d353fbc353f4cb301eeed4ab5979f7c32521b7e7', '66.102.9.64', 1697927534, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373533343b7765626d656e757c733a343a22686f6d65223b),
('d3899f8d04ff03a2cf6baabcaf63da93c1db5929', '66.249.93.194', 1697969052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393035323b),
('d6399162c20587ad84da61068052506ba33defb3', '66.249.93.200', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('d7a712c0382b3430c5e36dc7597b4ee70109d009', '102.23.89.73', 1697930407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373933303430373b7765626d656e757c733a363a22707269636573223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('d7ef2ddac07cc4a61d1a44de4a20b4ef5ecf628d', '89.147.153.81', 1699265500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393236353336303b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a226e65776f72646572223b736974655f6c616e677c733a373a22656e676c697368223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('d935746cd8dff51f8be4493808369ad4eb65d784', '102.23.89.73', 1697964957, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936343935373b7765626d656e757c733a343a22686f6d65223b),
('da99095337360e505b096b9d7e69ac2b248b2074', '41.90.184.230', 1697621195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373632313139353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b6f726465725f646174657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b5365727669636549647c733a313a2230223b47726f757049647c733a313a2233223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a303a22223b70617274795f6e616d657c733a303a22223b),
('dae8d1ff89443180ff1e033349787111bfe6bfc1', '197.136.0.5', 1697612956, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631323935363b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('dc46122e3636457b1fd44d9fda2e32edc42cd336', '41.90.181.166', 1698030557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383033303535373b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('dc58213730aa122aa3cb13e6af3f28916d303d52', '193.47.189.3', 1699347586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393334373538363b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a31313a22696e766f6963656c697374223b5365727669636549647c733a313a2233223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('dccfce03feced5861a3a9ba3f72bcf9228c69896', '66.249.93.201', 1697928029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383032393b7765626d656e757c733a343a22686f6d65223b),
('e0cb556bf415595902f860558addffe0c8332010', '41.90.184.230', 1697612504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631323530343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a373a227265706f727473223b7375626d656e757c733a383a226d6f6e7468726570223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b),
('e10952ad34f1fd19271fbc71d1417ce5534e1b32', '66.249.93.192', 1697928717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383731373b),
('e495e83973243facde8b1d03e30267eff9cbe3b6', '102.23.89.73', 1697965168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936353136383b),
('e4e38125587f0724d0c771503bacc62f52444dc8', '105.163.0.10', 1697613161, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631333136313b7765626d656e757c733a363a22707269636573223b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a383a227365727669636573223b7375626d656e757c733a383a227365727669636573223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274795f6e616d657c733a303a22223b),
('e54127e2f445b5db75bf285c1106e31d35454fa7', '66.102.9.78', 1697927637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373633363b7765626d656e757c733a363a22707269636573223b),
('e7f45bb66c0df338bae2e09769dd734279303cac', '66.249.93.200', 1697928029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383032393b),
('e8c03fdc34ce85a9ec317f6c032ed9d7f7957e26', '103.167.122.215', 1699540713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393534303638363b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b);
INSERT INTO `shop_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('e9160c381475e6388b8bbd86caec7fa20c2658a6', '66.249.93.194', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('e983d2fc51700f1d4884b5f3615a1eea084428ad', '14.142.99.214', 1698207128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383230373132383b),
('ea62ef4549a2eba7507de079d86e2b712aa07020', '41.90.184.230', 1697613168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631333136383b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a31303a2267726f75707573657273223b7375626d656e757c733a31303a227065726d697373696f6e223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b7765626d656e757c733a343a22686f6d65223b5365727669636549647c733a313a2231223b),
('ececc177db08ec04b26a970319e1822af1fe3568', '102.23.89.73', 1697928883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383838333b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('ed866b1e8b7a9f8cccd7ae8f690adcd7b7877981', '41.90.181.166', 1698030557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383033303535373b7765626d656e757c733a343a22686f6d65223b),
('f13061ba5fd283495b610eb4243d930b38b3f359', '66.249.93.198', 1697969309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393330393b),
('f154576721631ae82f409ee56bb8bf5811c91b9b', '208.70.45.4', 1699326555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639393332363535333b6d656e757c733a383a2273657474696e6773223b7375626d656e757c733a363a22737973736574223b),
('f1c4ba474fba27a9cc26fd31315c964fa1e2a51f', '102.23.89.73', 1697962200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936323230303b7765626d656e757c733a343a22686f6d65223b637573745f69647c733a313a2231223b6c6f67696e757365727c733a31323a22393138373637323238393930223b637573745f6c6f67696e7c693a313b73686f706e616d657c733a31383a2252656420506c616e6574204c61756e647279223b),
('f3169025f48979799a35b7f103f2b27016a3ad56', '197.210.71.71', 1698086988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383038363938383b),
('f4afca7e39dc83dd82a480ad1d0ae3cb26eca269', '41.90.184.230', 1697620105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373632303130353b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a393a226a6f625f6f72646572223b7375626d656e757c733a383a22657870656e736573223b6f726465725f646174657c733a303a22223b70617274795f6e616d657c733a303a22223b736974655f6c616e677c733a373a22656e676c697368223b5365727669636549647c733a313a2230223b47726f757049647c733a313a2233223b47726f75705065726d7c733a343a2276696577223b),
('f4c98a5c35841aa594f954e7aad4e0789269cdb5', '66.249.93.200', 1697927800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373830303b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2273746f7265223b6c6f67696e5f757365727c733a303a22223b73746f72655f69647c733a313a2233223b),
('f50d941ef15a6e7a1064a22fee40ef2db39aa11f', '105.163.0.10', 1697613171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631333136313b7765626d656e757c733a363a22707269636573223b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a373a227265706f727473223b7375626d656e757c733a363a22696e636f6d65223b6f726465725f646174657c733a303a22223b5570646174654f726465727c733a393a226164645f6f72646572223b6f726465725f6175746f5f69647c733a323a223535223b6f7264657266726f6d7c733a363a2263686b726563223b70617274795f6e616d657c733a303a22223b),
('f5903841b930bcd6eadf83f2cb8a34a693b2d774', '66.249.93.193', 1697927424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432343b),
('f81449d2596750db064dbc2b766bd74fc6ca4553', '66.249.93.195', 1697928834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383833343b),
('f8c02bacd03c806e4ac99d66984cdb5a3c998764', '66.249.93.194', 1697927424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932373432343b7765626d656e757c733a343a22686f6d65223b),
('f99892b65c1eee18e89c4f555633907091e3e268', '50.116.35.148', 1698153281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383135333238313b),
('fa23763761e90555e184a5a7c611b758422a14a0', '66.249.93.193', 1697969008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373936393030383b7765626d656e757c733a343a22686f6d65223b),
('fc913afe1da53a0e5d02ef0aa2c006725a1bb56c', '66.249.93.195', 1697928834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373932383833343b),
('ff5e302b72c1a0e51bce8d4c19621b9a90eb2c86', '41.89.31.31', 1698745864, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639383734353836343b61646d696e5f6c6f67696e7c693a313b757365725f66726f6d7c733a353a2261646d696e223b6c6f67696e5f757365727c733a353a2261646d696e223b6d656e757c733a363a226d6173746572223b7375626d656e757c733a393a22637573746f6d657273223b6f726465725f646174657c733a303a22223b47726f757049647c733a313a2231223b47726f75705065726d7c733a343a2276696577223b5365617263685f4974656d7c733a343a2273756974223b5365727669636549647c733a313a2230223b70617274796e616d657c4e3b70617274795f6e616d657c733a303a22223b);

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `sms_id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `email_status` text NOT NULL,
  `platform` varchar(50) NOT NULL,
  `sent_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `create_date` varchar(10) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `short_name` varchar(15) NOT NULL,
  `store_add1` text NOT NULL,
  `store_add2` varchar(200) NOT NULL,
  `store_city` varchar(50) NOT NULL,
  `store_state` varchar(50) NOT NULL,
  `store_zip` varchar(7) NOT NULL,
  `store_phone` varchar(15) NOT NULL,
  `store_email` varchar(150) DEFAULT NULL,
  `store_password` text NOT NULL,
  `emp_assign` text NOT NULL,
  `store_tax_no` text NOT NULL,
  `show_hide` varchar(10) NOT NULL,
  `store_main` varchar(3) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `store_taxable` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `create_date`, `store_name`, `short_name`, `store_add1`, `store_add2`, `store_city`, `store_state`, `store_zip`, `store_phone`, `store_email`, `store_password`, `emp_assign`, `store_tax_no`, `show_hide`, `store_main`, `remarks`, `store_taxable`) VALUES
(1, '17-03-2022', 'Panvel Store', 'panvel', 'Sai Sanklap Complex, ', 'S.No. 145', 'Panvel', 'Maharashtra', '410206', '+918767228990', 'panvel@store.com', 'cGFudmVsMTIz', '', '20', 'show', 'yes', 'Main Branch', 'no'),
(2, '30-01-2023', 'Mumbai Store', 'delhi', 'asaas', 'asdsad', 'sdsad', 'asdsa', '4444', '0224568767', 'delhi@store.com', 'c3RvcmVAMTIzNA==', '', '34543545', 'show', '', '', ''),
(3, '', '', '', '', '', '', '', '', '', '', 'NDQ1Nw==', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_services`
--

CREATE TABLE `sub_services` (
  `sub_id` int(11) NOT NULL,
  `sub_service_name` varchar(100) NOT NULL,
  `sub_service_lang` varchar(150) NOT NULL,
  `sub_service_code` varchar(150) NOT NULL,
  `show_hide` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tax_charges`
--

CREATE TABLE `tax_charges` (
  `charge_id` int(11) NOT NULL,
  `charge_name` varchar(100) NOT NULL,
  `charge_type` varchar(10) NOT NULL,
  `charge_amt` float NOT NULL,
  `transaction` int(1) NOT NULL,
  `defaults` varchar(5) NOT NULL,
  `coupon` varchar(5) NOT NULL,
  `expire_date` date NOT NULL,
  `charge_remarks` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax_charges`
--

INSERT INTO `tax_charges` (`charge_id`, `charge_name`, `charge_type`, `charge_amt`, `transaction`, `defaults`, `coupon`, `expire_date`, `charge_remarks`) VALUES
(1, 'urgent', 'amount', 2, 1, '', '', '0000-00-00', ''),
(2, 'DAMAGE CLAIM', 'amount', 80, 0, '', '', '0000-00-00', 'DAMAGE CLAIM'),
(3, 'hj', 'amount', 1000, 0, '', 'yes', '2023-03-31', '											');

-- --------------------------------------------------------

--
-- Table structure for table `temp_card`
--

CREATE TABLE `temp_card` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL,
  `amt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `laundry_store` int(5) NOT NULL,
  `join_date` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address1` text NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `cust_map_pos` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` varchar(50) NOT NULL,
  `cust_charges` text NOT NULL,
  `cust_discount` text NOT NULL,
  `cust_extra_charge` text NOT NULL,
  `address3` varchar(200) NOT NULL,
  `landmrk` varchar(200) NOT NULL,
  `offlanmrk` varchar(200) NOT NULL,
  `othlandmrk` varchar(200) NOT NULL,
  `offzip` varchar(10) NOT NULL,
  `othzip` varchar(10) NOT NULL,
  `add_home` text NOT NULL,
  `add_office` text NOT NULL,
  `add_others` text NOT NULL,
  `add_default` varchar(50) NOT NULL,
  `credit_limit` int(10) NOT NULL,
  `ref_code` varchar(20) NOT NULL,
  `mob_lang` varchar(50) NOT NULL,
  `outstand_amt` varchar(10) NOT NULL,
  `outstand_remarks` text NOT NULL,
  `mobile_login_status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `laundry_store`, `join_date`, `first_name`, `last_name`, `address1`, `address2`, `city`, `state`, `zipcode`, `country`, `cust_map_pos`, `email_id`, `phone`, `mobile`, `status`, `password`, `last_login`, `cust_charges`, `cust_discount`, `cust_extra_charge`, `address3`, `landmrk`, `offlanmrk`, `othlandmrk`, `offzip`, `othzip`, `add_home`, `add_office`, `add_others`, `add_default`, `credit_limit`, `ref_code`, `mob_lang`, `outstand_amt`, `outstand_remarks`, `mobile_login_status`) VALUES
(1, 1, '24-12-2022', 'Demo', 'User', 'temp add', '', 'temp', '', '', 'India', '25.155189451879316, 55.25342028085838', 'info@redplanetcomputers.com', '', '918767228990', 'enable', '1983', '', 'N;', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:11:\"Navi Mumbai\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, 'RPL-269070', '', '', '', 'enable'),
(2, 0, '2023-02-01', 'Demo', 'User', '', '', '', '', '', '', '', '', '', '918108702999', 'enable', '2999', '', '', '3', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:5:\"Dhdhh\";s:8:\"landmark\";s:3:\"Zxj\";s:7:\"pincode\";s:3:\"Ddd\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', ''),
(3, 2, '2023-02-02', 'Piyush', 'Khullar', '', '', '', '', '', '', '', '', '', '919888442933', 'enable', '2933', '', 'N;', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:8:\"Temp add\";s:8:\"landmark\";s:10:\"Chandigarh\";s:7:\"pincode\";s:6:\"160017\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', ''),
(4, 2, '11-02-2023', 'w', 'w', 'w', '', 'w', '', '', '', '18.980262563943064, 73.13549588863502', 'e.jiiji@hotmail.com', '', '03452112', 'enable', '5526', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:19:\"Add Dhfkrjgh S J 56\";s:8:\"landmark\";s:6:\"S J 56\";s:7:\"pincode\";s:7:\"4000303\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', 'disable'),
(5, 1, '11-02-2023', 'ee', 'ee', 'e', '', 'e', '', '', '', '18.980262563943064, 73.13549588863502', 'e.jiiji@hotmail.com', '', '333', 'enable', '8150', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(8, 1, '25-03-2023', 'NELSON', 'AIMIENOHO', 'ABUJA', '', 'ABUJA', '', '', 'Qatar', '18.980262563943064, 73.13549588863502', 'nelsonn0001@gmail.com', '', '2348037002385', 'enable', '8055', '', 'N;', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:19:\"No 9 LAFIA CRESCENT\";s:8:\"landmark\";s:5:\"Orozo\";s:7:\"pincode\";s:6:\"900271\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', 'enable'),
(9, 2, '21-06-2023', 'Riccardo', 'Borga', 'Via S. Antonio, 29', '', 'San Vito di Leguzzano', '', '', '', '18.980262563943064, 73.13549588863502', 'riccardobog07@gmail.com', '', '+393713814358', 'enable', '4008', '', 'a:1:{i:0;s:1:\"1\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(10, 0, '06-07-2023', 'Petre', 'Bizo', 'Bals , Nicolae Balcescu, 30', '', 'OLT', '', '', '', '18.980262563943064, 73.13549588863502', 'petrubizo@gmail.com', '', '0767700200', 'enable', '5182', '', 'a:1:{i:0;s:1:\"1\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(11, 1, '27-07-2023', 'Antonio almeid', 'Teste', 'Ddee', '', 'Dddd', '', '', '', '18.980262563943064, 73.13549588863502', 'drrjud@ass.pp', '', '8898876', 'enable', '6818', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(12, 2, '2023-07-29', 'SAMWEL', '', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'milosevicsevido@gmail.com', '', '0768865701', 'enable', '2818', '', '', '4', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(13, 0, '2023-08-08', 'Demo', 'User', '', '', '', '', '', '', '', 'demo@rpcs.com', '', '8767228990', 'enable', '8990', '', '', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:99:\"Block-B, D\'silva Realtors Sai Sankalp Complex, Usarli Khurd, Navi Mumbai, Maharashtra 410206, India\";s:8:\"landmark\";s:12:\"Usarli Khurd\";s:7:\"pincode\";s:6:\"410206\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', 'disable'),
(14, 0, '2023-09-25', 'Gbolahan', '', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'owolabigbolahan003@gmail.com', '', '8089123538', 'enable', '1834', '', '', '', '', '', '', '', '', '', '', 'a:5:{s:8:\"location\";s:8:\"add_home\";s:6:\"street\";s:17:\"26d,olowu street,\";s:8:\"landmark\";s:5:\"Ikeja\";s:7:\"pincode\";s:6:\"100371\";s:9:\"addlatlng\";s:0:\"\";}', '', '', 'add_home', 0, '', '', '', '', 'enable'),
(15, 2, '26-09-2023', 'Naveed', 'Anjum', 'Gizri Road', '', 'Karachi', '', '', '', '18.980262563943064, 73.13549588863502', 'naveed.anjum@gmail.com', '', '03335555444', 'enable', '1460', '', 'N;', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(16, 1, '07-10-2023', 'Michael', 'Owusu', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'herbertboateng663@gmail.com', '', '0548121384', 'enable', '4740', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(17, 0, '07-10-2023', 'Appiah', 'Kwame', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'appiank@gmail.com', '', '0244770150', 'enable', '3210', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(18, 2, '12-10-2023', 'Vsab', 'Test order', 'Bhopal', '', 'Bhopal', '', '', '', '18.980262563943064, 73.13549588863502', 'sagsmbhn7567toshshri1wash@gmail.com', '', '07982339976', 'enable', '5128', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(19, 2, '13-10-2023', 'Sagar', 'Har', 'Johan nagar ghaziabad', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'lar@msn.com', '', '07982365456', 'enable', '7568', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(20, 2, '18-10-2023', 'asdfhzrs', 'SDFGdhszt', '', '', '', '', '', 'India', '18.980262563943064, 73.13549588863502', '', '', '1235644896513', 'enable', '8328', '', 'a:1:{i:0;s:0:\"\";}', '40', '300', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(21, 0, '2023-10-26', 'THABO', '', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'thaboramotshela0@gmail.com', '', '0613272102', 'enable', '8429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(22, 1, '27-10-2023', 'ahmad', 'shah', 'alkhoud', '', 'muscat', '', '', '', '18.980262563943064, 73.13549588863502', 'aaaa@gmail.com', '', '99966699', 'enable', '4006', '', 'a:1:{i:0;s:0:\"\";}', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(23, 0, '2023-11-07', 'Ba', '', '', '', '', '', '', '', '18.980262563943064, 73.13549588863502', 'djsjs@dndj.com', '', '5555', 'enable', '1218', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_history`
--

CREATE TABLE `wallet_history` (
  `wallet_id` int(11) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_trans_id` varchar(50) NOT NULL COMMENT 'invoice no',
  `payment_date` date DEFAULT NULL,
  `payment_amt` int(10) DEFAULT NULL,
  `credit_debit` varchar(50) NOT NULL,
  `payment_remark` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wallet_history`
--

INSERT INTO `wallet_history` (`wallet_id`, `customer_id`, `payment_trans_id`, `payment_date`, `payment_amt`, `credit_debit`, `payment_remark`) VALUES
(1, 2598, 'WAL001', '2022-07-05', 10, 'credit', NULL),
(3, 2598, 'WAL003', '2022-07-07', 30, 'credit', NULL),
(4, 2598, 'WAL004', '2022-07-08', 20, 'credit', NULL),
(5, 2598, 'WAL005', '2022-07-16', 80, 'credit', NULL),
(6, 2598, 'WAL006', '2022-07-27', 32, 'credit', NULL),
(7, 2598, 'WAL007', '2022-07-28', 60, 'credit', NULL),
(8, 2598, 'WAL008', '2022-07-30', 20, 'credit', NULL),
(9, 2598, 'WAL009', '2022-08-06', 30, 'credit', NULL),
(11, 2598, 'WAL0011', '2022-08-16', 110, 'credit', NULL),
(12, 1, 'WAL0012', '2022-12-30', 1000, 'credit', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `world_language`
--

CREATE TABLE `world_language` (
  `lang_id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL,
  `language_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `world_language`
--

INSERT INTO `world_language` (`lang_id`, `language_name`, `language_code`) VALUES
(1, 'Afrikaans', 'af'),
(2, 'Akan', 'ak'),
(3, 'Albanian', 'sq'),
(4, 'Amharic', 'am'),
(5, 'Arabic', 'ar'),
(6, 'Armenian', 'hy'),
(7, 'Aromanian', 'rup'),
(8, 'Assamese', 'as'),
(9, 'Azerbaijani', 'az'),
(10, 'Azerbaijani (Turkey)', 'az-tr'),
(11, 'Bashkir', 'ba'),
(12, 'Basque', 'eu'),
(13, 'Belarusian', 'bel'),
(14, 'Bengali', 'bn'),
(15, 'Bosnian', 'bs'),
(16, 'Bulgarian', 'bg'),
(17, 'Burmese', 'mya'),
(18, 'Catalan', 'ca'),
(19, 'Catalan (Balear)', 'bal'),
(20, 'Chinese (China)', 'zh-cn'),
(21, 'Chinese (Hong Kong)', 'zh-hk'),
(22, 'Chinese (Taiwan)', 'zh-tw'),
(23, 'Corsican', 'co'),
(24, 'Croatian', 'hr'),
(25, 'Czech', 'cs'),
(26, 'Danish', 'da'),
(27, 'Dhivehi', 'dv'),
(28, 'Dutch', 'nl'),
(29, 'Dutch (Belgium)', 'nl-be'),
(30, 'English', 'en'),
(31, 'English (Australia)', 'en-au'),
(32, 'English (Canada)', 'en-ca'),
(33, 'English (UK)', 'en-gb'),
(34, 'Esperanto', 'eo'),
(35, 'Estonian', 'et'),
(36, 'Faroese', 'fo'),
(37, 'Finnish', 'fi'),
(38, 'French (Belgium)', 'fr-be'),
(39, 'French (France)', 'fr'),
(40, 'Frisian', 'fy'),
(41, 'Fulah', 'fuc'),
(42, 'Galician', 'gl'),
(43, 'Georgian', 'ka'),
(44, 'German', 'de'),
(45, 'German (Switzerland)', 'de-ch'),
(46, 'Greek', 'el'),
(47, 'Guaran¡', 'gn'),
(48, 'Gujarati', 'gu'),
(49, 'Hawaiian', 'haw'),
(50, 'Hazaragi', 'haz'),
(51, 'Hebrew', 'he'),
(52, 'Hindi', 'hi'),
(53, 'Hungarian', 'hu'),
(54, 'Icelandic', 'is'),
(55, 'Ido', 'ido'),
(56, 'Indonesian', 'id'),
(57, 'Irish', 'ga'),
(58, 'Italian', 'it'),
(59, 'Japanese', 'ja'),
(60, 'Javanese', 'jv'),
(61, 'Kannada', 'kn'),
(62, 'Kazakh', 'kk'),
(63, 'Khmer', 'km'),
(64, 'Kinyarwanda', 'kin'),
(65, 'Kirghiz', 'ky'),
(66, 'Korean', 'ko'),
(67, 'Kurdish (Sorani)', 'ckb'),
(68, 'Lao', 'lo'),
(69, 'Latvian', 'lv'),
(70, 'Limburgish', 'li'),
(71, 'Lingala', 'lin'),
(72, 'Lithuanian', 'lt'),
(73, 'Luxembourgish', 'lb'),
(74, 'Macedonian', 'mk'),
(75, 'Malagasy', 'mg'),
(76, 'Malay', 'ms'),
(77, 'Malayalam', 'ml'),
(78, 'Marathi', 'mr'),
(79, 'Mingrelian', 'xmf'),
(80, 'Mongolian', 'mn'),
(81, 'Montenegrin', 'me'),
(82, 'Nepali', 'ne'),
(83, 'Norwegian (Bokml)', 'nb'),
(84, 'Norwegian (Nynorsk)', 'nn'),
(85, 'Oriya', 'ory'),
(86, 'Ossetic', 'os'),
(87, 'Pashto', 'ps'),
(88, 'Persian', 'fa'),
(89, 'Persian (Afghanistan)', 'fa-af'),
(90, 'Polish', 'pl'),
(91, 'Portuguese (Brazil)', 'pt-br'),
(92, 'Portuguese (Portugal)', 'pt'),
(93, 'Punjabi', 'pa'),
(94, 'Rohingya', 'rhg'),
(95, 'Romanian', 'ro'),
(96, 'Russian', 'ru'),
(97, 'Russian (Ukraine)', 'ru-ua'),
(98, 'Rusyn', 'rue'),
(99, 'Sakha', 'sah'),
(100, 'Sanskrit', 'sa-in'),
(101, 'Sardinian', 'srd'),
(102, 'Scottish Gaelic', 'gd'),
(103, 'Serbian', 'sr'),
(104, 'Sindhi', 'sd'),
(105, 'Sinhala', 'si'),
(106, 'Slovak', 'sk'),
(107, 'Slovenian', 'sl'),
(108, 'Somali', 'so'),
(109, 'South Azerbaijani', 'azb'),
(110, 'Spanish (Argentina)', 'es-ar'),
(111, 'Spanish (Chile)', 'es-cl'),
(112, 'Spanish (Colombia)', 'es-co'),
(113, 'Spanish (Mexico)', 'es-mx'),
(114, 'Spanish (Peru)', 'es-pe'),
(115, 'Spanish (Puerto Rico)', 'es-pr'),
(116, 'Spanish (Spain)', 'es'),
(117, 'Spanish (Venezuela)', 'es-ve'),
(118, 'Sundanese', 'su'),
(119, 'Swahili', 'sw'),
(120, 'Swedish', 'sv'),
(121, 'Swiss German', 'gsw'),
(122, 'Tagalog', 'tl'),
(123, 'Tajik', 'tg'),
(124, 'Tamazight (Central Atlas)', 'tzm'),
(125, 'Tamil', 'ta'),
(126, 'Tamil (Sri Lanka)', 'ta-lk'),
(127, 'Tatar', 'tt'),
(128, 'Telugu', 'te'),
(129, 'Thai', 'th'),
(130, 'Tibetan', 'bo'),
(131, 'Tigrinya', 'tir'),
(132, 'Turkish', 'tr'),
(133, 'Turkmen', 'tuk'),
(134, 'Uighur', 'ug'),
(135, 'Ukrainian', 'uk'),
(136, 'Urdu', 'ur'),
(137, 'Uzbek', 'uz'),
(138, 'Vietnamese', 'vi'),
(139, 'Walloon', 'wa'),
(140, 'Welsh', 'cy'),
(141, 'Yoruba', 'yor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcode_data`
--
ALTER TABLE `barcode_data`
  ADD PRIMARY KEY (`bar_id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `bulk_messge`
--
ALTER TABLE `bulk_messge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cloths`
--
ALTER TABLE `cloths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cloth_type` (`cloth_type`);

--
-- Indexes for table `credit_history`
--
ALTER TABLE `credit_history`
  ADD PRIMARY KEY (`credit_id`),
  ADD UNIQUE KEY `credit_trans_id` (`credit_trans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`auto_id`),
  ADD KEY `invoice_no` (`invoice_no`),
  ADD KEY `amt_paidby` (`amt_paidby`),
  ADD KEY `customer_id` (`customer_id`,`customer_name`);

--
-- Indexes for table `cust_packages`
--
ALTER TABLE `cust_packages`
  ADD PRIMARY KEY (`pkg_id`);

--
-- Indexes for table `driver_track`
--
ALTER TABLE `driver_track`
  ADD PRIMARY KEY (`track_id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`exps_id`),
  ADD UNIQUE KEY `exps_type` (`exps_type`);

--
-- Indexes for table `flutter_user`
--
ALTER TABLE `flutter_user`
  ADD PRIMARY KEY (`flutter_id`),
  ADD UNIQUE KEY `flutter_mobile` (`flutter_mobile`);

--
-- Indexes for table `garment_brand`
--
ALTER TABLE `garment_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `garment_brand` (`brand_name`);

--
-- Indexes for table `garment_color`
--
ALTER TABLE `garment_color`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color_name` (`color_name`);

--
-- Indexes for table `garment_defect`
--
ALTER TABLE `garment_defect`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `defect_name` (`defect_name`);

--
-- Indexes for table `login_attempt`
--
ALTER TABLE `login_attempt`
  ADD PRIMARY KEY (`auto`);

--
-- Indexes for table `mem_group`
--
ALTER TABLE `mem_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `message_template`
--
ALTER TABLE `message_template`
  ADD PRIMARY KEY (`msg_id`),
  ADD UNIQUE KEY `order_status` (`message_for`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_payment_details`
--
ALTER TABLE `online_payment_details`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `order_temp`
--
ALTER TABLE `order_temp`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_invoice` (`order_invoice`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `other_settings`
--
ALTER TABLE `other_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outstand_history`
--
ALTER TABLE `outstand_history`
  ADD PRIMARY KEY (`outstand_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pkg_id`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_code` (`short_code`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_name` (`shop_name`);

--
-- Indexes for table `shop_session`
--
ALTER TABLE `shop_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_name` (`store_name`),
  ADD UNIQUE KEY `store_phone` (`store_phone`),
  ADD UNIQUE KEY `store_email` (`store_email`);

--
-- Indexes for table `sub_services`
--
ALTER TABLE `sub_services`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `sub_service_name` (`sub_service_name`,`sub_service_lang`);

--
-- Indexes for table `tax_charges`
--
ALTER TABLE `tax_charges`
  ADD PRIMARY KEY (`charge_id`),
  ADD UNIQUE KEY `charge_name` (`charge_name`);

--
-- Indexes for table `temp_card`
--
ALTER TABLE `temp_card`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `mobile` (`mobile`),
  ADD KEY `first_name` (`first_name`,`last_name`);

--
-- Indexes for table `wallet_history`
--
ALTER TABLE `wallet_history`
  ADD PRIMARY KEY (`wallet_id`),
  ADD UNIQUE KEY `payment_trans_id` (`payment_trans_id`);

--
-- Indexes for table `world_language`
--
ALTER TABLE `world_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `barcode_data`
--
ALTER TABLE `barcode_data`
  MODIFY `bar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cloths`
--
ALTER TABLE `cloths`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `credit_history`
--
ALTER TABLE `credit_history`
  MODIFY `credit_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cust_packages`
--
ALTER TABLE `cust_packages`
  MODIFY `pkg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver_track`
--
ALTER TABLE `driver_track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `exps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flutter_user`
--
ALTER TABLE `flutter_user`
  MODIFY `flutter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `garment_brand`
--
ALTER TABLE `garment_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `garment_color`
--
ALTER TABLE `garment_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `garment_defect`
--
ALTER TABLE `garment_defect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempt`
--
ALTER TABLE `login_attempt`
  MODIFY `auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `mem_group`
--
ALTER TABLE `mem_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message_template`
--
ALTER TABLE `message_template`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_payment_details`
--
ALTER TABLE `online_payment_details`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_temp`
--
ALTER TABLE `order_temp`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `other_settings`
--
ALTER TABLE `other_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outstand_history`
--
ALTER TABLE `outstand_history`
  MODIFY `outstand_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `pkg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_services`
--
ALTER TABLE `sub_services`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_charges`
--
ALTER TABLE `tax_charges`
  MODIFY `charge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_card`
--
ALTER TABLE `temp_card`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wallet_history`
--
ALTER TABLE `wallet_history`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `world_language`
--
ALTER TABLE `world_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
