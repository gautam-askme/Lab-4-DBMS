--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CAT_ID` int(11) NOT NULL,
  `CAT_NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CAT_ID`, `CAT_NAME`) VALUES
(1, 'BOOKS'),
(2, 'GAMES'),
(3, 'GROCERIES'),
(4, 'ELECTRONICS'),
(5, 'CLOTHES');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUS_ID` int(11) NOT NULL,
  `CUS_NAME` varchar(20) NOT NULL,
  `CUS_PHONE` varchar(10) NOT NULL,
  `CUS_CITY` varchar(30) NOT NULL,
  `CUS_GENDER` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUS_ID`, `CUS_NAME`, `CUS_PHONE`, `CUS_CITY`, `CUS_GENDER`) VALUES
(1, 'AAKASH', '9999999999', 'DELHI', 'M'),
(2, 'AMAN', '9785463215', 'NOIDA', 'M'),
(3, 'NEHA', '9999999999', 'MUMBAI', 'F'),
(4, 'MEGHA', '9994562399', 'KOLKATA', 'F'),
(5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ORD_ID` int(11) NOT NULL,
  `ORD_AMOUNT` int(11) NOT NULL,
  `ORD_DATE` date DEFAULT NULL,
  `CUS_ID` int(11) NOT NULL,
  `PRICING_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ORD_ID`, `ORD_AMOUNT`, `ORD_DATE`, `CUS_ID`, `PRICING_ID`) VALUES
(101, 1500, '2021-10-06', 2, 1),
(102, 1000, '2021-10-12', 3, 5),
(103, 30000, '2021-09-16', 5, 2),
(104, 1500, '2021-10-05', 1, 1),
(105, 3000, '2021-08-16', 4, 3),
(106, 1450, '2021-08-18', 1, 9),
(107, 789, '2021-09-01', 3, 7),
(108, 780, '2021-09-07', 5, 6),
(109, 3000, '2021-09-10', 5, 3),
(110, 2500, '2021-09-10', 2, 4),
(111, 1000, '2021-09-15', 4, 5),
(112, 789, '2021-09-16', 4, 7),
(113, 31000, '2021-09-16', 1, 8),
(114, 1000, '2021-09-16', 3, 5),
(115, 3000, '2021-09-16', 5, 3),
(116, 99, '2021-09-17', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRO_ID` int(11) NOT NULL,
  `PRO_NAME` varchar(20) NOT NULL DEFAULT 'Dummy',
  `PRO_DESC` varchar(60) DEFAULT NULL,
  `CAT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRO_ID`, `PRO_NAME`, `PRO_DESC`, `CAT_ID`) VALUES
(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2),
(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5),
(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4),
(4, 'OATS', 'Highly Nutritious from Nestle', 3),
(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1),
(6, 'MILK', '1L Toned MIlk', 3),
(7, 'Boat EarPhones', '1.5Meter long Dolby Atmos', 4),
(8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5),
(9, 'Project IGI', 'compatible with windows 7 and above', 2),
(10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5),
(11, 'Rich Dad Poor Dad', 'Written by RObert Kiyosaki', 1),
(12, 'Train Your Brain', 'By Shireen Stephen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `RAT_ID` int(11) NOT NULL,
  `ORD_ID` int(11) NOT NULL,
  `RAT_RATSTARS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`RAT_ID`, `ORD_ID`, `RAT_RATSTARS`) VALUES
(1, 101, 4),
(2, 102, 3),
(3, 103, 1),
(4, 104, 2),
(5, 105, 4),
(6, 106, 3),
(7, 107, 4),
(8, 108, 4),
(9, 109, 3),
(10, 110, 5),
(11, 111, 3),
(12, 112, 4),
(13, 113, 2),
(14, 114, 1),
(15, 115, 1),
(16, 116, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPP_ID` int(11) NOT NULL,
  `SUPP_NAME` varchar(50) NOT NULL,
  `SUPP_CITY` varchar(50) DEFAULT NULL,
  `SUPP_PHONE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPP_ID`, `SUPP_NAME`, `SUPP_CITY`, `SUPP_PHONE`) VALUES
(1, 'Rajesh Retails', 'Delhi', '1234567890'),
(2, 'Appario Ltd.', 'Mumbai', '2589631470'),
(3, 'Knome products', 'Banglore', '9785462315'),
(4, 'Bansal Retails', 'Kochi', '8975463285'),
(5, 'Mittal Ltd.', 'Lucknow', '7898456532');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_pricing`
--

CREATE TABLE `supplier_pricing` (
  `PRICING_ID` int(11) NOT NULL,
  `PRO_ID` int(11) NOT NULL,
  `SUPP_ID` int(11) NOT NULL,
  `SUPP_PRICE` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_pricing`
--

INSERT INTO `supplier_pricing` (`PRICING_ID`, `PRO_ID`, `SUPP_ID`, `SUPP_PRICE`) VALUES
(1, 1, 2, 1500),
(2, 3, 5, 30000),
(3, 5, 1, 3000),
(4, 2, 3, 2500),
(5, 4, 1, 1000),
(6, 12, 2, 780),
(7, 12, 4, 789),
(8, 3, 1, 31000),
(9, 1, 5, 1450),
(10, 4, 2, 999),
(11, 7, 3, 549),
(12, 7, 4, 529),
(13, 6, 2, 105),
(14, 6, 1, 99),
(15, 2, 5, 2999),
(16, 5, 2, 2999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CAT_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ORD_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `PRICING_ID` (`PRICING_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRO_ID`),
  ADD KEY `CAT_ID` (`CAT_ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`RAT_ID`),
  ADD KEY `ORD_ID` (`ORD_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPP_ID`);

--
-- Indexes for table `supplier_pricing`
--
ALTER TABLE `supplier_pricing`
  ADD PRIMARY KEY (`PRICING_ID`),
  ADD KEY `PRO_ID` (`PRO_ID`),
  ADD KEY `SUPP_ID` (`SUPP_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `customer` (`CUS_ID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`PRICING_ID`) REFERENCES `supplier_pricing` (`PRICING_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CAT_ID`) REFERENCES `category` (`CAT_ID`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`ORD_ID`) REFERENCES `order` (`ORD_ID`);

--
-- Constraints for table `supplier_pricing`
--
ALTER TABLE `supplier_pricing`
  ADD CONSTRAINT `supplier_pricing_ibfk_1` FOREIGN KEY (`PRO_ID`) REFERENCES `product` (`PRO_ID`),
  ADD CONSTRAINT `supplier_pricing_ibfk_2` FOREIGN KEY (`SUPP_ID`) REFERENCES `supplier` (`SUPP_ID`);
COMMIT;


--  4. Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000

SELECT COUNT( DISTINCT C.CUS_ID ) AS CustomerCt, C.CUS_GENDER As Gender FROM customer AS C
INNER JOIN
`order` AS O ON C.CUS_ID = O.CUS_ID
WHERE O.ORD_AMOUNT >= 3000 
GROUP BY C.CUS_GENDER

-- 5. Display all the orders along with product name ordered by a customer having Customer_Id=2
SELECT DISTINCT O.*,P.PRO_NAME FROM customer AS C
INNER JOIN
`order` AS O ON C.CUS_ID = O.CUS_ID
INNER JOIN
supplier_pricing AS S ON S.PRICING_ID = O.PRICING_ID
INNER JOIN
product AS P ON P.PRO_ID = S.PRO_ID
WHERE C.CUS_ID = 2

-- 6. Display the Supplier details who can supply more than one product
SELECT S.*, COUNT(SP.PRO_ID) FROM supplier AS S
INNER JOIN 
supplier_pricing AS SP ON S.SUPP_ID = SP.SUPP_ID
GROUP BY SP.SUPP_ID 
having COUNT(SP.PRO_ID) > 1

-- 7. Find the least expensive product from each category and print the table with category id, name, product name and price of the product

SELECT P.CAT_ID,P.PRO_NAME,P.PRO_NAME, MIN(SP.SUPP_PRICE) AS PRICE
FROM product AS P 
INNER JOIN 
category AS C ON P.CAT_ID = C.CAT_ID
INNER JOIN
supplier_pricing AS SP ON SP.PRO_ID = P.PRO_ID
GROUP BY P.CAT_ID 

-- 8. Display the Id and Name of the Product ordered after “2021-10-05”

SELECT DISTINCT P.PRO_ID, P.PRO_NAME FROM 
`order` AS O 
INNER JOIN
supplier_pricing AS SP ON SP.PRICING_ID = O.PRICING_ID
INNER JOIN
product AS P ON P.PRO_ID = SP.PRO_ID
WHERE O.ORD_DATE > '2021-10-05'

-- 9. Display customer name and gender whose names start or end with character 'A'

SELECT C.CUS_NAME, C.CUS_GENDER FROM customer AS C WHERE c.CUS_NAME LIKE 'A%' OR c.CUS_NAME LIKE '%A' 

-- 10.Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) and
-- Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average
-- Service” else print “Poor Service”. Note that there should be one rating per supplier.


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getRating`()
BEGIN 
	SELECT supplier.SUPP_ID, supplier.SUPP_NAME, avg( RAT_RATSTARS ) as rate, 
CASE 
WHEN avg( RAT_RATSTARS ) = 5 THEN 'Excellent'
WHEN avg( RAT_RATSTARS ) > 2 THEN 'Good Service'
ELSE 'Average Service'
END as typeOfService
FROM supplier 
INNER JOIN 
supplier_pricing ON supplier_pricing.SUPP_ID = supplier.SUPP_ID
INNER JOIN 
`order` ON `order`.PRICING_ID = supplier_pricing.PRICING_ID
INNER JOIN 
rating ON rating.ORD_ID = `order`.ORD_ID
 GROUP BY supplier.SUPP_ID;


END$$
DELIMITER ;
