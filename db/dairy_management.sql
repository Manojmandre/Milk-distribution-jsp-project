-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2018 at 10:06 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dairy_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `particulars` varchar(50) NOT NULL,
  `credit` varchar(50) NOT NULL,
  `debit` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`particulars`, `credit`, `debit`, `balance`, `date`) VALUES
('hfj', 'gdh', '657', '574', '0000-00-00'),
('ghjk', 'fgm', 'fgn', 'tyh', 'null'),
('vbn', 'bn', 'f', '2016-03-22', 'null'),
('To bank account debited to sales account', '100000', '10000', '90000', '2016-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `agent_name` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Joining_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_name`, `area`, `address`, `Phone_No`, `Email`, `Joining_Date`) VALUES
('Aditya', 'Kagwad', 'nearphcquarters', '7619242257', 'aditya@gmail.com', '2017-12-26'),
('swati', 'nipani', 'near gandhinagar', '7619242257', 'swati@gmail.com', '2017-12-26'),
('arunya', 'chennamma ', 'nipani', '8881010342', 'arunya@gmail.com', '2018-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `agent_order`
--

CREATE TABLE IF NOT EXISTS `agent_order` (
  `product_type` varchar(40) NOT NULL,
  `agent_id` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `total_price` varchar(30) NOT NULL,
  `order_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_order`
--

INSERT INTO `agent_order` (`product_type`, `agent_id`, `order_id`, `shop_id`, `order_date`, `order_time`, `quantity`, `total_price`, `order_status`) VALUES
('Milk', 'aditya@gmail.com', 554, 'nisha@gmail.com', '2018-01-01', '17:47:09', '4', '80', 'not accepted'),
('ghee', 'swati@gmail.com', 577, 'nisha@gmail.com', '2018-01-03', '11:09:23', '10', '1000', 'not accepted'),
('Milk', 'aditya@gmail.com', 577, 'nisha@gmail.com', '2018-01-03', '11:09:46', 'fhj', 'NaN', 'not accepted');

-- --------------------------------------------------------

--
-- Table structure for table `agent_product_rate`
--

CREATE TABLE IF NOT EXISTS `agent_product_rate` (
  `shop_id` int(15) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `total_quantity` varchar(30) NOT NULL,
  `price_perltr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `atm_id` varchar(20) NOT NULL,
  `order_date` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `supply_qty` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`atm_id`, `order_date`, `product_id`, `quantity`, `supply_qty`, `price`, `total`) VALUES
('dfghjk', '2016-03-07', 'iugc', 'ertyuj', 'oijhgv', '962', '65210'),
('fghj', '2016-03-03', 'gf87ytfh', '7852', '95620', '852', '4154152'),
('147', '2016-03-01', '457', '250', '250', '18000', '20000'),
('12345', '2017-12-04', '12345', '1', '1', '200', '200');

-- --------------------------------------------------------

--
-- Table structure for table `bulkorder`
--

CREATE TABLE IF NOT EXISTS `bulkorder` (
  `order_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `reciever_name` varchar(20) NOT NULL,
  `recieved_date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `Total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulkorder`
--

INSERT INTO `bulkorder` (`order_id`, `product_id`, `quantity`, `reciever_name`, `recieved_date`, `time`, `price`, `Total`) VALUES
('hgfc', 'fghj', '23ltr', 'qert', '2016-03-07', '13:20', '500', '500'),
('1780', '650', '1000', 'fghjk', '2016-03-13', '2am', '25000', '25000'),
('12345', '2', '1', 'swati', '2017-12-19', '11:00', '200', 'null'),
('12', '2', '1', 'swati', '2017-12-10', '11:00', '200', '200');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `complaint_id` varchar(20) NOT NULL,
  `complaint_name` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `complaint_name`, `date`, `address`, `product_name`, `remarks`) VALUES
('145', 'ghkjbjkjol', '2016-03-08', 'fdjdudhfbn', 'ffgxchbxhxg', 'zxbxzhcgzgczzjh');

-- --------------------------------------------------------

--
-- Table structure for table `contractor_details`
--

CREATE TABLE IF NOT EXISTS `contractor_details` (
  `contractor_name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contract_start` varchar(30) NOT NULL,
  `contract_end` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractor_details`
--

INSERT INTO `contractor_details` (`contractor_name`, `address`, `city`, `phone_no`, `email`, `contract_start`, `contract_end`) VALUES
('Ashok', 'nipani', 'neargandhinagar', '9113842410', 'ashok@gmail.com', '2017-12-19', '2018-09-28'),
('pavan', 'navluru', 'Tumkur', '9876543210', 'pavan@gmail.com', '2018-01-09', '2019-01-15'),
('patil', 'karwar', 'banglore', '9876638782', 'patil@gmail.com', '2018-01-15', '2018-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `contractor_order`
--

CREATE TABLE IF NOT EXISTS `contractor_order` (
  `agent_id` varchar(50) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `total_price` varchar(30) NOT NULL,
  `order_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractor_order`
--

INSERT INTO `contractor_order` (`agent_id`, `product_type`, `order_id`, `customer_id`, `order_date`, `order_time`, `quantity`, `total_price`, `order_status`) VALUES
('aditya@gmail.com', 'Milk', 1127, 'aditya@gmail.com', '2018-01-01', '18:14:40', '200', '4000', 'not accepted'),
('swati@gmail.com', 'Milk', 2886, 'swati@gmail.com', '2018-01-02', '16:12:37', '3', '45', 'not accepted'),
('sushant@gmail.com', 'Milk', 2628, 'sushant@gmail.com', '2018-01-02', '16:24:28', '12', '180', 'not accepted'),
('sushant@gmail.com', 'Milk', 1731, 'sushant@gmail.com', '2018-01-03', '10:49:41', '10', '150', 'not accepted'),
('sushant@gmail.com', 'Milk', 2326, 'sushant@gmail.com', '2018-01-03', '18:21:39', '300', '4500', 'not accepted');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE IF NOT EXISTS `customerinfo` (
  `cust_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`cust_id`, `name`, `address`, `phno`) VALUES
('bdfghj454', 'jhgf', 'jhgfcxzcvgh125', '7854214521'),
('gh', 'ghj', 'vhvj8', '9425623332');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `product_type` varchar(30) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `total_price` varchar(30) NOT NULL,
  `order_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`product_type`, `shop_id`, `order_id`, `customer_id`, `order_date`, `order_time`, `quantity`, `total_price`, `order_status`) VALUES
('Milk', 'nisha@gmail.com', 2599, 'shweta@gmail.com', '2018-01-01', '18:07:11', '12', '240', 'accepted'),
('milk', 'nisha@gmail.com', 165, 'shweta@gmail.com', '2018-01-04', '12:18:56', '10', '300', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment`
--

CREATE TABLE IF NOT EXISTS `customer_payment` (
  `order_id` varchar(20) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `payment_mode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`order_id`, `customer_id`, `price`, `payment_mode`) VALUES
('12345', '2', '200', 'kdjk'),
('1902', 'shweta@gmail.com', '4000', 'cash'),
('Milk', 'nisha@gmail.com', '11:26:22', 'cash'),
('165', 'nisha@gmail.com', '300', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `head` varchar(20) NOT NULL,
  `contact_person` varchar(20) NOT NULL,
  `phno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`, `head`, `contact_person`, `phno`) VALUES
('fghjk', 'jk', 'fghjk', 'fghjk', 'fghj'),
('hhj', 'kjhv', 'vgh', 'hj', '9457894132');

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE IF NOT EXISTS `empdetails` (
  `emp_id` varchar(20) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`emp_id`, `emp_name`, `address`, `dept`, `role`, `email`, `phno`) VALUES
('dfghjk', 'ghjk', 'fvbn', 'cvbnm,', 'fvbnm', 'fghjk', 'fghj'),
('12', 'as', 'asza', 'asa', 'asa', 'a', 'sa'),
('1324', 'dfghnjm', 'fghjm', 'disrticvbhu', 'fyjdsv', 'shri21@gmial.com', '9457845211'),
('1', 'null', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_name`, `password`, `type`) VALUES
('avnii@gmail.com', '1011', 'contractor'),
('swatip@gmail.com', '1234', 'admin'),
('aditya@gmail.com', '789', 'agent'),
('sushant@gmail.com', '2129', 'agent'),
('shweta@gmail.com', '2207', 'customer'),
('nisha@gmail.com', '884', 'shop owner'),
('arunya@gmail.com', '2517', 'agent');

-- --------------------------------------------------------

--
-- Table structure for table `milkdistribution`
--

CREATE TABLE IF NOT EXISTS `milkdistribution` (
  `route_id` varchar(20) NOT NULL,
  `vehicle_id` varchar(20) NOT NULL,
  `atm_id` varchar(20) NOT NULL,
  `dist_date` varchar(20) NOT NULL,
  `dist_time` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milkdistribution`
--

INSERT INTO `milkdistribution` (`route_id`, `vehicle_id`, `atm_id`, `dist_date`, `dist_time`, `product_id`, `quantity`) VALUES
('12', '12', '12345', '2017-12-18', '11:00', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `milkpurchase`
--

CREATE TABLE IF NOT EXISTS `milkpurchase` (
  `provider_id` varchar(20) NOT NULL,
  `provider_name` varchar(20) NOT NULL,
  `qty_recieved` varchar(20) NOT NULL,
  `rev_date` varchar(30) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `price_perltr` varchar(20) NOT NULL,
  `rev_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milkpurchase`
--

INSERT INTO `milkpurchase` (`provider_id`, `provider_name`, `qty_recieved`, `rev_date`, `quantity`, `price_perltr`, `rev_time`) VALUES
('fghj', 'kv', 'bnmpo', 'jhgws', 'dxcvbnml', ';.,rtyu', 'rftghjk'),
('12', 'swa', '1', '2017-12-10', '1', '100', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `shop_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `Total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`shop_id`, `date`, `product_id`, `quantity`, `time`, `Total`) VALUES
('1245', '2016-03-01', '54', '200', '12:12', ''),
('12', '2017-12-05', '1', '1', '11:00', '200'),
('12345', '2017-12-03', '12345', '1', '11:00', '200');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` varchar(20) NOT NULL,
  `atm_id` varchar(20) NOT NULL,
  `amt` varchar(20) NOT NULL,
  `cheque_no` varchar(20) NOT NULL,
  `cheque_date` varchar(20) NOT NULL,
  `bank_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `atm_id`, `amt`, `cheque_no`, `cheque_date`, `bank_name`) VALUES
('dfghjk', 'fghjk', 'cvbnm', 'cvbnm', 'cvbn', 'mvbn');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `price_perkg` varchar(20) NOT NULL,
  `manufacture_date` varchar(20) NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `batch_no` varchar(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `quantity`, `price_perkg`, `manufacture_date`, `exp_date`, `place`, `batch_no`) VALUES
(2, 'Milk', '1000', '20', '2017-12-28', '2017-12-29', 'dharwad', '111'),
(3, 'curd', '1', '20', '2018-01-10', '2018-04-12', 'npn', '1'),
(4, 'ghee', '1', '100', '2018-04-11', '2018-09-12', 'hubli', '10'),
(5, 'milk', '1', '20', '2018-01-04', '2018-01-06', 'kagwad', '111');

-- --------------------------------------------------------

--
-- Table structure for table `product_rate`
--

CREATE TABLE IF NOT EXISTS `product_rate` (
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_rate`
--

INSERT INTO `product_rate` (`product_id`, `product_name`, `quantity`) VALUES
('huyiuytytgu', 'gfytgujkhu', '100'),
('12345', 'swa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `reg_as` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`reg_as`, `fname`, `lname`, `gender`, `city`, `pincode`, `address`, `contact`, `email`) VALUES
('customer', 'Shweta', 'M', 'female', 'kolhapur', 580025, 'kolhapur', '7619242257', 'shweta@gmail.com'),
('shop owner', 'nisha', 'M', 'female', 'Nipani', 567098, 'nipani', '7619242257', 'nisha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

CREATE TABLE IF NOT EXISTS `return_details` (
  `agent_id` varchar(50) NOT NULL,
  `shop_id` varchar(20) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `return_qty` varchar(20) NOT NULL,
  `rdate` varchar(30) NOT NULL,
  `refund_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`agent_id`, `shop_id`, `product_type`, `return_qty`, `rdate`, `refund_amount`) VALUES
('aditya@gmail.com', 'nisha@gmail.com', 'milk', '2', '2017-12-30', 40),
('swati@gmail.com', 'nisha@gmail.com', 'curd', '12', '2018-01-02', 216),
('aditya@gmail.com', 'nisha@gmail.com', 'milk', '12', '2018-01-03', 240);

-- --------------------------------------------------------

--
-- Table structure for table `routedetails`
--

CREATE TABLE IF NOT EXISTS `routedetails` (
  `route_id` varchar(20) NOT NULL,
  `route_name` varchar(20) NOT NULL,
  `route_kms` varchar(20) NOT NULL,
  `area_id` varchar(20) NOT NULL,
  `departure_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routedetails`
--

INSERT INTO `routedetails` (`route_id`, `route_name`, `route_kms`, `area_id`, `departure_time`) VALUES
('ghjm,', 'fghjk', 'cvbnm', 'rtyu', 'xcvbn');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `product_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `sales` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`product_id`, `date`, `sales`, `quantity`) VALUES
('tfgyhjk,l', 'tg', 'yujiko', 'ftgyhujk');

-- --------------------------------------------------------

--
-- Table structure for table `shopper_payment`
--

CREATE TABLE IF NOT EXISTS `shopper_payment` (
  `order_id` varchar(20) NOT NULL,
  `shop_id` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `payment_mode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_owner_order`
--

CREATE TABLE IF NOT EXISTS `shop_owner_order` (
  `agent_id` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `total_price` varchar(30) NOT NULL,
  `order_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_owner_order`
--

INSERT INTO `shop_owner_order` (`agent_id`, `order_id`, `customer_id`, `order_date`, `order_time`, `quantity`, `total_price`, `order_status`) VALUES
('swati@gmail.com', 2625, 'nisha@gmail.com', '2017-12-30', '17:38:54', '20', '400', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `shop_owner_product_rate`
--

CREATE TABLE IF NOT EXISTS `shop_owner_product_rate` (
  `shop_id` varchar(50) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `total_quantity` varchar(30) NOT NULL,
  `price_perltr` varchar(30) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_owner_product_rate`
--

INSERT INTO `shop_owner_product_rate` (`shop_id`, `product_type`, `total_quantity`, `price_perltr`, `total_price`) VALUES
('nisha@gmail.com', 'milk', '20', '30', 600);

-- --------------------------------------------------------

--
-- Table structure for table `stockdetails`
--

CREATE TABLE IF NOT EXISTS `stockdetails` (
  `product_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `stock` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplydetails`
--

CREATE TABLE IF NOT EXISTS `supplydetails` (
  `order_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `qty_ordered` varchar(20) NOT NULL,
  `qty_supplied` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplydetails`
--

INSERT INTO `supplydetails` (`order_id`, `product_id`, `qty_ordered`, `qty_supplied`, `date`) VALUES
('yui', '', 'ghj', 'ghjg', 'hk');

-- --------------------------------------------------------

--
-- Table structure for table `vehicledetails`
--

CREATE TABLE IF NOT EXISTS `vehicledetails` (
  `vehicle_id` varchar(20) NOT NULL,
  `vehicle_name` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `owner_id` varchar(20) NOT NULL,
  `route_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
