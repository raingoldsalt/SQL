

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


DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `Customer_ID` int NOT NULL,
  `CustFirst_Name` varchar(30) DEFAULT NULL,
  `CustLast_Name` varchar(30) DEFAULT NULL,
  `CustStreet_Address` varchar(50) DEFAULT NULL,
  `CustCity` varchar(30) DEFAULT NULL,
  `CustState` varchar(30) DEFAULT NULL,
  `CustZipcode` varchar(30) DEFAULT NULL,
  `CustPhone` varchar(15) DEFAULT NULL,
  `CustEmail_Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Jun','Kang','123 ABC Avenue','Wooster','OH','44691','123-456-7890','jkang@example.com'),(2,'Juun','Kang','456 DEF Avenue','Cleveland','OH','12456','456-789-0123','jukang@example.com'),(3,'Jun','Kaang','168 ACV Avenue','Wooster','OH','45612','123-456-7810','juuuukang@example.com'),(4,'Juun','Kaang','143 SCV Avenue','Cleveland','OH','12453','456-789-0233','juakang@example.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_Number` int NOT NULL,
  `EmpFirst_Name` varchar(30) DEFAULT NULL,
  `EmpLast_Name` varchar(30) DEFAULT NULL,
  `EmpStreet_Address` varchar(50) DEFAULT NULL,
  `EmpCity` varchar(30) DEFAULT NULL,
  `EmpState` varchar(30) DEFAULT NULL,
  `EmpZipcode` varchar(30) DEFAULT NULL,
  `EmpPhone_Number` varchar(15) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Hourly_Rate` int DEFAULT NULL,
  `Date_Hired` date DEFAULT NULL,
  PRIMARY KEY (`Employee_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1001,'Bruce','Lee','789 QWE Avenue','Wooster','OH','12345','514-555-7890','Professor',20,'2020-01-15'),(1002,'Bruuce','Lee','456 ZXC Avenue','Cleveland','OH','14352','403-555-6789','Manager',35,'2019-07-10'),(1003,'Brucee','Lee','654 POI Avenue','Wooster','OH','09243','416-555-3030','Chef',18,'2021-03-01'),(1004,'Bruc','Lee','123 MNB Avenue','Wooster','OH','15436','604-555-4040','Barber',16,'2022-09-12');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `Order_Number` int NOT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Order_Date` date DEFAULT NULL,
  `Ship_Date` date DEFAULT NULL,
  `Employee_Number` int DEFAULT NULL,
  PRIMARY KEY (`Order_Number`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Employee_Number` (`Employee_Number`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Employee_Number`) REFERENCES `Employee` (`Employee_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (5001,1,'2024-11-01','2024-11-05',1001),(5002,2,'2024-11-02','2024-11-06',1002),(5003,3,'2024-11-03','2024-11-07',1003),(5004,4,'2024-11-04','2024-11-08',1004),(5005,1,'2024-11-05','2024-11-09',1002),(5006,2,'2024-11-06','2024-11-10',1001);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

