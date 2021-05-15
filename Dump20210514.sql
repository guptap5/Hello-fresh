-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: hello_fresh
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_email_id` varchar(45) NOT NULL,
  `cust_password` varchar(45) NOT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_id_UNIQUE` (`cust_id`),
  UNIQUE KEY `cust_email_id_UNIQUE` (`cust_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_phone`
--

DROP TABLE IF EXISTS `customer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_phone` (
  `cust_phone` int NOT NULL,
  `cust_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_phone`
--

LOCK TABLES `customer_phone` WRITE;
/*!40000 ALTER TABLE `customer_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `e_id` int NOT NULL,
  `oreder_ref` varchar(45) NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `d_review` varchar(45) DEFAULT NULL,
  `delivery_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_type`
--

DROP TABLE IF EXISTS `delivery_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_type` (
  `order_ref` int NOT NULL,
  `delivery_option` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_type`
--

LOCK TABLES `delivery_type` WRITE;
/*!40000 ALTER TABLE `delivery_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `d_num` int NOT NULL,
  `d_name` varchar(45) NOT NULL,
  PRIMARY KEY (`d_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_phone`
--

DROP TABLE IF EXISTS `emp_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_phone` (
  `emp_phone` int NOT NULL,
  `emp_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_phone`
--

LOCK TABLES `emp_phone` WRITE;
/*!40000 ALTER TABLE `emp_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `f_name` int NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `salary` varchar(45) NOT NULL,
  `start_date` varchar(45) NOT NULL,
  `emp_id` varchar(45) NOT NULL,
  `ssn` varchar(45) NOT NULL,
  PRIMARY KEY (`f_name`,`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `product_quantity` float NOT NULL,
  `inv_id` varchar(45) NOT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (5,'0001'),(6,'0002'),(6,'0003'),(6,'0004'),(6,'0005'),(6,'0006'),(6,'0007'),(6,'0008'),(6,'0009'),(6,'0010'),(6,'0011'),(6,'0012'),(6,'0013'),(6,'0014'),(6,'0015'),(6,'0016'),(6,'0017'),(6,'0018'),(6,'0019'),(6,'0020'),(6,'0021'),(6,'0022'),(6,'0023'),(6,'0024'),(6,'0025'),(6,'0026');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_date` datetime NOT NULL,
  `order_time` datetime NOT NULL,
  `estimated_date` varchar(45) NOT NULL,
  `store_id` varchar(45) NOT NULL,
  `emp_review` varchar(45) NOT NULL,
  `estimated_time` varchar(45) NOT NULL,
  `e_id` varchar(45) NOT NULL,
  `order_ref` varchar(45) NOT NULL,
  PRIMARY KEY (`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_type`
--

DROP TABLE IF EXISTS `performance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_type` (
  `cust_rating` int NOT NULL,
  `cust_comments` varchar(45) DEFAULT NULL,
  `org_comments` varchar(45) DEFAULT NULL,
  `org_rating` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) NOT NULL,
  `order_ref` varchar(45) NOT NULL,
  PRIMARY KEY (`cust_rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_type`
--

LOCK TABLES `performance_type` WRITE;
/*!40000 ALTER TABLE `performance_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `inv_id` varchar(45) NOT NULL,
  `store_id` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `product_text_details` varchar(45) NOT NULL DEFAULT 'Dummy Text',
  `image_location` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  PRIMARY KEY (`product_name`),
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12,'Apple','012','800',2,'Dummy Text','apple11','fruits'),(11,'Avocado','011','800',3,'Dummy Text','Broccoli11','fruits'),(23,'Bagel','023','800',3,'Dummy Text','Bagel11','bakery'),(9,'Banana','009','800',3,'Dummy Text','banana11','fruits'),(6,'Beans','006','800',2,'Dummy Text','Beans11','vegetable'),(22,'Bread','022','800',2,'Dummy Text','Bread11','bakery'),(1,'Broccoli','001','800',2,'Dummy Text','Broccoli11','vegetable'),(19,'Cake','019','800',3,'Dummy Text','Broccoli11','cake11'),(16,'Cheese','016','800',2,'Dummy Text','Cheese411','dairy'),(21,'Chocolate','021','800',3,'Dummy Text','Bar11','bakery'),(20,'Cup Cake','020','800',2,'Dummy Text','cupcake11','bakery'),(4,'Eggplant','004','800',2,'Dummy Text','Eggplant11','vegetable'),(7,'Grapes','007','800',3,'Dummy Text','grapesedit11','fruits'),(3,'Lemon','003','800',3,'Dummy Text','v211','vegetable'),(2,'Lettuce','002','800',2,'Dummy Text','Lettuce11','vegetable'),(17,'Milk','017','800',3,'Dummy Text','Milk511','dairy'),(5,'Mushroom','005','800',3,'Dummy Text','Mushrooms11','vegetable'),(8,'Orange','008','800',2,'Dummy Text','orang11','fruits'),(24,'Organic Cheese','024','800',2,'Dummy Text','cheese','bakery'),(10,'Organic Orange','010','800',2,'Dummy Text','o','fruits'),(18,'Organic Yogurt','018','800',2,'Dummy Text','Yogurt311','dairy'),(15,'Pudding','015','800',3,'Dummy Text','Pudding11','dairy'),(13,'Sour Cream','013','800',3,'Dummy Text','SourCream','dairy'),(14,'Yogurt','014','800',2,'Dummy Text','Yogurt11','dairy');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `order_ref` int NOT NULL,
  `shopping_products_name` int DEFAULT NULL,
  `product_type` varchar(45) DEFAULT NULL,
  `shopping_cart_products_num` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `cust_id` int DEFAULT NULL,
  `total_amount` varchar(45) DEFAULT NULL,
  `s.n` int DEFAULT NULL,
  PRIMARY KEY (`order_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_number`
--

DROP TABLE IF EXISTS `store_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_number` (
  `store_id` int NOT NULL,
  `store_phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_number`
--

LOCK TABLES `store_number` WRITE;
/*!40000 ALTER TABLE `store_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `s.n` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`s.n`,`email_id`),
  UNIQUE KEY `email_id_UNIQUE` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Creating a table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'customer1@gmail.com','customer1','123');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 20:25:53
