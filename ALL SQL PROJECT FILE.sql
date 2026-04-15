-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: retail_project
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` varchar(10) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `segment` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('C101','Rahul Sharma','Corporate','Hyderabad'),('C102','Priya Verma','Consumer','Delhi'),('C103','Amit Patel','Corporate','Mumbai'),('C104','Sneha Reddy','Home Office','Hyderabad'),('C101','Rahul Sharma','Corporate','Hyderabad'),('C102','Priya Verma','Consumer','Delhi'),('C103','Amit Patel','Corporate','Mumbai'),('C104','Sneha Reddy','Home Office','Hyderabad'),('C105','Arjun Singh','Consumer','Bangalore'),('C106','Neha Gupta','Corporate','Pune');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `profit` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,'2024-01-01','South','Laptop','Electronics','C101',55000,7000,1),(1002,'2024-01-02','North','Chair','Furniture','C102',4000,-500,2),(1003,'2024-01-03','East','Mobile','Electronics','C103',20000,3000,1),(1004,'2024-01-04','West','Table','Furniture','C104',7000,1000,1),(1001,'2024-01-01','South','Laptop','Electronics','C101',55000,7000,1),(1002,'2024-01-02','North','Chair','Furniture','C102',4000,-500,2),(1003,'2024-01-03','East','Mobile','Electronics','C103',20000,3000,1),(1004,'2024-01-04','West','Table','Furniture','C104',7000,1000,1),(1005,'2024-01-05','South','Laptop','Electronics','C105',53000,6000,1),(1006,'2024-01-06','North','Chair','Furniture','C106',4200,-400,2),(1007,'2024-01-07','East','Mobile','Electronics','C101',21000,2500,1),(1008,'2024-01-08','West','Table','Furniture','C102',7500,1200,1),(1009,'2024-01-09','South','Mobile','Electronics','C103',22000,2800,1),(1010,'2024-01-10','North','Laptop','Electronics','C104',54000,6500,1),(1011,'2024-01-11','East','Chair','Furniture','C105',3800,-300,1),(1012,'2024-01-12','West','Table','Furniture','C106',7800,1300,1),(1013,'2024-01-13','South','Laptop','Electronics','C101',56000,7500,1),(1014,'2024-01-14','North','Mobile','Electronics','C102',23000,2700,1),(1015,'2024-01-15','East','Table','Furniture','C103',8000,1400,1),(1016,'2024-01-16','West','Laptop','Electronics','C104',57000,8000,1),(1017,'2024-01-17','South','Chair','Furniture','C105',3600,-200,1),(1018,'2024-01-18','North','Mobile','Electronics','C106',24000,2900,1),(1019,'2024-01-19','East','Table','Furniture','C101',8200,1500,1),(1020,'2024-01-20','West','Chair','Furniture','C102',3900,-350,1),(1021,'2024-01-21','South','Laptop','Electronics','C103',58000,8200,1),(1022,'2024-01-22','North','Mobile','Electronics','C104',25000,3000,1),(1023,'2024-01-23','East','Chair','Furniture','C105',3700,-250,1),(1024,'2024-01-24','West','Table','Furniture','C106',8400,1600,1),(1025,'2024-01-25','South','Mobile','Electronics','C101',26000,3200,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `cost_price` int DEFAULT NULL,
  `selling_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Laptop','Electronics',48000,55000),('Chair','Furniture',2000,4000),('Mobile','Electronics',15000,20000),('Table','Furniture',5000,7000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 10:17:16
